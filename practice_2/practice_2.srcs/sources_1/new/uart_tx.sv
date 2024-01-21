`timescale 1ns / 1ps

module uart_tx 
#(
    // 시스템 클록 주파수 50Mhz 
	parameter CLK_FREQ_MHZ 	= 50,
	// UART 클록의 주파수 0.5Mhz 
	parameter real CLK_UART_MHZ    = real'(CLK_FREQ_MHZ)/100,
	// 2us를 1000배 확장 시켜서 "2000ns"로 만들어준다라는 느낌으로 접근해야함. 
    parameter CLK_PERIOD_NS   = int'(1000/CLK_UART_MHZ),
	// 대기시간 1s = "10^9 * ns"  
	parameter WAIT_TIME_NS 	= 10**9,
	// 10^9ns/ 1000ns = 10^6 clock 
	parameter WAIT_TICKS 	= WAIT_TIME_NS / CLK_PERIOD_NS,
	// 전송 길이 
	parameter STR_LEN = 14
)
(
    // 시스템 클록 
	input  wire clk,
    // 송신 할 데이터 출력 
	output logic tx
);

    // 문자열 길이 * 한 문자당 8bit(실제론 10bit) = 총 문자의 비트 개수 
    logic [STR_LEN*8-1:0] test_str = "Hello World!\n";
    
    // 모듈 내부 클럭으로 사용 
    wire 	mclk;
    // uart clock 위한 clock 
    logic	clk_uart;
    wire 	rst_n;
    
    // 8bit 데이터 저장 레지스터 
    logic [7:0] data;
    // 현재 처리중인 바이트 ex 0x64(H)
    logic [3:0] idx_byte;
    // 현재 처리중인 비트 ex 01000110 
    logic [3:0] idx_bit;
    // 일정 시간 대기 후, 다음 "바이트" 송신 
    int wait_ticks;
    
    
    
    /* 상태 레지스터 */
    enum logic [2:0] {
        READY,			// 대기상태 (초기 상태)
        WAIT_1SEC,		// 각 "Hello World" 메세지 사이에 1초 기다림
        GET_DATA,		// 송신할 바이트를 data 레지스터에 가져옴
        SEND_START_BIT,	// UART Start 비트 송신
        SEND_DATA,		// 8비트 데이터 송신
        SEND_STOP_BIT	// Stop 비트 송신
    } state, next_state;
    
    
    
    
    /*********************************************
    *                 클럭생성
    **********************************************/
    // UART 클럭 생성  (50Mhz / 100 = 0.5Mhz)
    // Baudrate: 500,000  (0.5Mhz 클럭이므로 초당 50만비트 송신)
    always_ff @(posedge mclk) begin
        static int cnt;
    
        if (cnt >= 50) begin
            cnt <= 0;
            clk_uart <= ~clk_uart;
        end else begin
            cnt <= cnt + 1;
        end
    end
    
    
    
    /*********************************************
    *                 서브모듈
    **********************************************/
    
    // 12Mhz to 50Mhz 
    /* MMCM */
    mmcm_50m mmcm (
         .reset(1'b0)
        ,.clk_in1(clk)
        ,.clk_out1(mclk)
    );
    
    // 검증 모듈 모니터링 
    /* FPGA 내부 로직 분석기 */
    ila_uart ila(
         .clk		(mclk)
        ,.probe0 	(clk_uart)
        ,.probe1 	(tx)
        ,.probe2 	(data)
        ,.probe3 	(mmcm_locked)
        ,.probe4 	(idx_byte)
        ,.probe5 	(idx_bit)
        ,.probe6 	(state)
        ,.probe7 	(next_state)
    );
    
    
    // 리셋 신호 
    /* 가상 입출력 */
    vio_0 vio(
         .clk 	(mclk)
        ,.probe_out0 (rst_n)
    );
    
    
    
    
    /*********************************************
    *                 FSM
    **********************************************/
    
    /* 상태 레지스터 쓰기 */
    always_ff @(posedge clk_uart or negedge rst_n) begin
        if (~rst_n) state <= READY;
        else 		state <= next_state;
    end
    
    
    /* 다음 상태 계산 */
    always_comb begin
    
        next_state = state;
    
        unique case(state)
            
            // 대기 상태 
            READY:
                next_state = WAIT_1SEC;
            // 1초 기다림 상태 
            WAIT_1SEC:		
                if (wait_ticks >= WAIT_TICKS)
                    next_state = GET_DATA;
            // 보낼 데이터 바이트를 data 레지스터에 로드 
            GET_DATA:
                next_state = SEND_START_BIT;
            // 시작 비트 송신 
            SEND_START_BIT:	
                next_state = SEND_DATA;
            // 데이터 비트 송신
            SEND_DATA:  
                // 모든 비트 송신 시 ex H -> 0x46 -> 00100110
                if (idx_bit == 8) 
                    next_state = SEND_STOP_BIT;
            // 정지 비트 송신 
            SEND_STOP_BIT: begin
                // 바이트가 0이면 대기상태로 
                if (idx_byte == 0)
                    next_state = READY;
                // 다음 바이트를 전송하기 위해 data 레지스트에 로드 상태로 
                else
                    next_state = GET_DATA;
            end
    
            default:
                next_state = READY;	// Undefined State
        endcase
    end
    
    
    
    always_ff @(posedge clk_uart or negedge rst_n) begin
        if(~rst_n) begin
            data 		<= 0;
            idx_bit 	<= 0;
            idx_byte 	<= 0;
            wait_ticks 	<= 0;
            tx 			<= 1;
        end 
        else begin
            case (next_state)
                // 준비 상태
                READY: begin
                    data 		<= 0;
                    idx_bit 	<= 0;
                    idx_byte 	<= STR_LEN;
                    wait_ticks 	<= 0;
                    tx 			<= 1;
                end
                // 1초 대기 시간을 계산
                WAIT_1SEC:
                    wait_ticks <= wait_ticks + 1;
                // 다음 전송할 "바이트"를 data에 로드 
                // idx_bit를 0으로 설정
                GET_DATA: begin
                    data <= test_str[idx_byte*8-1 -: 8];
                    idx_bit <= 0;
                end
                // tx가 0일때 데이터 전송 
                SEND_START_BIT:
                    tx <= 0;
                // 데이터의 해당하는 비트에 따라서 tx에 전송 
                // idx_bit를 증가시켜 다음 비트로 이동 
                SEND_DATA: begin
                    tx 	<= data[idx_bit];
                    idx_bit <= idx_bit + 1;
                end
                
                //tx를 1로 해서 정지 비트 송신 
                //idx를 감소, 다음 바이트도 이동하게끔. 
                SEND_STOP_BIT: begin
                    tx <= 1;
                    idx_byte <= idx_byte - 1;
                end
            endcase
        end
    end


endmodule
