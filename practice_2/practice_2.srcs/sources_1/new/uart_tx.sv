`timescale 1ns / 1ps

module uart_tx 
#(
	parameter CLK_FREQ_MHZ 	= 50,
	parameter CLK_UART_MHZ 	= CLK_FREQ_MHZ/50,
	parameter CLK_PERIOD_NS	= 1000/CLK_UART_MHZ,
	parameter WAIT_TIME_NS 	= 10**9,
	parameter WAIT_TICKS 	= WAIT_TIME_NS / CLK_PERIOD_NS,
	parameter STR_LEN = 14
)(
	input wire clk,
	output logic tx
);


logic [STR_LEN*8-1:0] test_str = "Hello World!\n";

wire 	mclk;
logic	clk_uart;
wire 	rst_n;


logic [7:0] data;
logic [3:0] idx_byte;
logic [3:0] idx_bit;
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

/* MMCM */
mmcm_50m mmcm (
	 .reset(1'b0)
	,.clk_in1(clk)
	,.clk_out1(mclk)
);


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

		READY:
			next_state = WAIT_1SEC;

		WAIT_1SEC:		
			if (wait_ticks >= WAIT_TICKS)
				next_state = GET_DATA;

		GET_DATA:
			next_state = SEND_START_BIT;

		SEND_START_BIT:	
			next_state = SEND_DATA;

		SEND_DATA: 		
			if (idx_bit == 8) 
				next_state = SEND_STOP_BIT;

		SEND_STOP_BIT: begin
			if (idx_byte == 0)
				next_state = READY;
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
	end else begin
		case (next_state)
			READY: begin
				data 		<= 0;
				idx_bit 	<= 0;
				idx_byte 	<= STR_LEN;
				wait_ticks 	<= 0;
				tx 			<= 1;
			end

			WAIT_1SEC:
				wait_ticks <= wait_ticks + 1;

			GET_DATA: begin
				data <= test_str[idx_byte*8-1 -: 8];
				idx_bit <= 0;
			end

			SEND_START_BIT:
				tx <= 0;

			SEND_DATA: begin
				tx 	<= data[idx_bit];
				idx_bit <= idx_bit + 1;
			end

			SEND_STOP_BIT: begin
				tx <= 1;
				idx_byte <= idx_byte - 1;
			end
		endcase
	end
end


endmodule
