`timescale 1ns / 1ps

module uart_tx 
#(
    // �ý��� Ŭ�� ���ļ� 50Mhz 
	parameter CLK_FREQ_MHZ 	= 50,
	// UART Ŭ���� ���ļ� 1Mhz 
	parameter real CLK_UART_MHZ    = real'(CLK_FREQ_MHZ)/100,
	// 1us�� 1000�� Ȯ�� ���Ѽ� "1000ns"�� ������شٶ�� �������� �����ؾ���. 
    parameter CLK_PERIOD_NS   = int'(1000/CLK_UART_MHZ),
	// ���ð� 1s = "10^9ns"  
	parameter WAIT_TIME_NS 	= 10**9,
	// 10^9ns/ 1000ns = 10^6 clock 
	parameter WAIT_TICKS 	= WAIT_TIME_NS / CLK_PERIOD_NS,
	// ���� ���� 
	parameter STR_LEN = 14
)
(
    // �ý��� Ŭ�� 
	input  wire clk,
    // �۽� �� ������ ��� 
	output logic tx
);

    // ���ڿ� ���� * �� ���ڴ� 8bit(������ 10bit) = �� ������ ��Ʈ ���� 
    logic [STR_LEN*8-1:0] test_str = "Hello World!\n";
    
    // ��� ���� Ŭ������ ��� 
    wire 	mclk;
    // uart clock ���� clock 
    logic	clk_uart;
    wire 	rst_n;
    
    // 8bit ������ ���� �������� 
    logic [7:0] data;
    // ���� ó������ ����Ʈ ex 0x64(H)
    logic [3:0] idx_byte;
    // ���� ó������ ��Ʈ ex 01000110 
    logic [3:0] idx_bit;
    // ���� �ð� ��� ��, ���� "����Ʈ" �۽� 
    int wait_ticks;
    
    
    
    /* ���� �������� */
    enum logic [2:0] {
        READY,			// ������ (�ʱ� ����)
        WAIT_1SEC,		// �� "Hello World" �޼��� ���̿� 1�� ��ٸ�
        GET_DATA,		// �۽��� ����Ʈ�� data �������Ϳ� ������
        SEND_START_BIT,	// UART Start ��Ʈ �۽�
        SEND_DATA,		// 8��Ʈ ������ �۽�
        SEND_STOP_BIT	// Stop ��Ʈ �۽�
    } state, next_state;
    
    
    
    
    /*********************************************
    *                 Ŭ������
    **********************************************/
    // UART Ŭ�� ����  (50Mhz / 100 = 0.5Mhz)
    // Baudrate: 500,000  (0.5Mhz Ŭ���̹Ƿ� �ʴ� 50����Ʈ �۽�)
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
    *                 ������
    **********************************************/
    
    // 12Mhz to 50Mhz 
    /* MMCM */
    mmcm_50m mmcm (
         .reset(1'b0)
        ,.clk_in1(clk)
        ,.clk_out1(mclk)
    );
    
    // ���� ��� ����͸� 
    /* FPGA ���� ���� �м��� */
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
    
    
    // ���� ��ȣ 
    /* ���� ����� */
    vio_0 vio(
         .clk 	(mclk)
        ,.probe_out0 (rst_n)
    );
    
    
    
    
    /*********************************************
    *                 FSM
    **********************************************/
    
    /* ���� �������� ���� */
    always_ff @(posedge clk_uart or negedge rst_n) begin
        if (~rst_n) state <= READY;
        else 		state <= next_state;
    end
    
    
    /* ���� ���� ��� */
    always_comb begin
    
        next_state = state;
    
        unique case(state)
            
            // ��� ���� 
            READY:
                next_state = WAIT_1SEC;
            // 1�� ��ٸ� ���� 
            WAIT_1SEC:		
                if (wait_ticks >= WAIT_TICKS)
                    next_state = GET_DATA;
            // ���� ������ ����Ʈ�� data �������Ϳ� �ε� 
            GET_DATA:
                next_state = SEND_START_BIT;
            // ���� ��Ʈ �۽� 
            SEND_START_BIT:	
                next_state = SEND_DATA;
            // ������ ��Ʈ �۽�
            SEND_DATA:  
                // ��� ��Ʈ �۽� �� ex H -> 0x46 -> 00100110
                if (idx_bit == 8) 
                    next_state = SEND_STOP_BIT;
            // ���� ��Ʈ �۽� 
            SEND_STOP_BIT: begin
                // ����Ʈ�� 0�̸� �����·� 
                if (idx_byte == 0)
                    next_state = READY;
                // ���� ����Ʈ�� �����ϱ� ���� data ������Ʈ�� �ε� ���·� 
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
                // �غ� ����
                READY: begin
                    data 		<= 0;
                    idx_bit 	<= 0;
                    idx_byte 	<= STR_LEN;
                    wait_ticks 	<= 0;
                    tx 			<= 1;
                end
                // 1�� ��� �ð��� ���
                WAIT_1SEC:
                    wait_ticks <= wait_ticks + 1;
                // ���� ������ "����Ʈ"�� data�� �ε� 
                // idx_bit�� 0���� ����
                GET_DATA: begin
                    data <= test_str[idx_byte*8-1 -: 8];
                    idx_bit <= 0;
                end
                // tx�� 0�϶� ������ ���� 
                SEND_START_BIT:
                    tx <= 0;
                // �������� �ش��ϴ� ��Ʈ�� ���� tx�� ���� 
                // idx_bit�� �������� ���� ��Ʈ�� �̵� 
                SEND_DATA: begin
                    tx 	<= data[idx_bit];
                    idx_bit <= idx_bit + 1;
                end
                
                //tx�� 1�� �ؼ� ���� ��Ʈ �۽� 
                //idx�� ����, ���� ����Ʈ�� �̵��ϰԲ�. 
                SEND_STOP_BIT: begin
                    tx <= 1;
                    idx_byte <= idx_byte - 1;
                end
            endcase
        end
    end


endmodule
