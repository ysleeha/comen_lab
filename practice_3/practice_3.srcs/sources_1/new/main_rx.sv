`timescale 1ns / 1ps
module main_rx
(
    input wire clk,          // 20MHz �Է� Ŭ��
    input wire rst,
    input wire rx,
    
    output reg string_received, // ��ü ���ڿ� ���� ����
    output reg [7:0] data_buffer[10:0] // ���ŵ� ���ڿ� ������ ������� 
);

    // 20Mhz -> 1Mhz 
    logic uart_clk;
    integer cnt_uart_clk;

    enum logic [2:0] {
        RESET,
        WAITS,
        START_BIT,
        DATA_BITS,
        STOP_BIT
    } state, next_state;

    logic [7:0] data_receive; //���ŵ� ������ 
    logic [3:0] cnt_data_bit; // ������ ��Ʈ ī����
    logic [3:0] string_index = 0; // ���ŵ� ���ڿ��� �ε���
    
    logic       rx_reg;
    assign      rx_reg = rx;
   
    logic [7:0] HELLO_WORLD[10:0] = "Hello world"; 
    
    
    // 20MHz Ŭ���� 1MHz��
    always @(posedge clk) begin
        cnt_uart_clk <= cnt_uart_clk + 1;
        if (cnt_uart_clk >= 9) begin
            uart_clk <= ~uart_clk;
            cnt_uart_clk <= 0;
        end
    end

    // ���� ��ȯ ����
    always @(posedge uart_clk or negedge rst) begin
        if (!rst) begin
            state <= RESET;
        end else begin
            state <= next_state;
        end
    end

    // ���� ���� ����
    always @(*) begin
        next_state = state;
        case (state)
            RESET: begin 
                next_state = WAITS;
            end
            WAITS: begin 
                if(rx==0) begin 
                    next_state = START_BIT;
                end
            end
            START_BIT: begin 
                next_state = DATA_BITS;
            end
            DATA_BITS: begin 
                if(cnt_data_bit==7) begin 
                    next_state = STOP_BIT;
                end
            end
            STOP_BIT: next_state = WAITS;
        endcase
    end

    // ������ ���� �� ó�� ����
    always @(posedge uart_clk or negedge rst) begin
        if (!rst) begin
            data_receive <= 0;
            cnt_data_bit <= 0;
            string_index <= 0;
            string_received <= 0;
        end 
        else begin
            case (state)
                WAITS: begin
                    cnt_data_bit <= 0;
                    data_receive <= 0;
                end
                START_BIT: begin
                    // ���� ��Ʈ ó�� ����
                end
                DATA_BITS: begin
                    cnt_data_bit <= cnt_data_bit + 1;
                    data_receive[cnt_data_bit] <= rx;
                end
                STOP_BIT: begin
                    data_buffer[string_index] <= data_receive;
                    string_index <= string_index + 1;

                    // "Hello World" ���ڿ� ���� Ȯ��
                    if (string_index == 10) begin
                        string_received <= 1;
                        for (int i = 0; i <= 10; i++) begin
                            if (data_buffer[i] != HELLO_WORLD[i]) begin
                                string_received <= 0;
                                break;
                            end
                        end
                        string_index <= 0;
                    end
                end
            endcase
        end
    end

endmodule
