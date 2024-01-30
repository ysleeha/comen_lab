
//logic rx_mem;
//logic [7:0] HELLO_WORLD = "H";
//assign rx = rx_mem; 

`timescale 1ns / 1ps

module uart_rx
(
    input wire clk,   // 9600baud, 0.1ms 
    input wire rst,
    input wire rx            
);
    
    // 10ms, 100Ŭ�� ����Ѵ�. .
    localparam WAIT_TICKS = 100; 
    logic [6:0] cnt_wait_ticks;
    
    logic [3:0] cnt_data_bit; // ������ ��Ʈ ī����
    logic [9:0] data_receive; // ���� ���ŵ� ������
    
    logic [3:0] cnt_buffer_index = 0; // ���� ���� ī���� 
    logic [9:0] data_buffer; // ���ŵ� ���ڿ� ������ ����
    logic string_received = 0; // ���� ���� ���� 
    
    logic [7:0] HELLO_WORLD = "H";
    
    enum logic [3:0] {
        RESET,
        WAITS,
        START_BIT,
        DATA_BITS,
        STOP_BIT,
        DATA_TRANS
    } state, next_state;
    
    // ���� ��ȯ ����
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= RESET;
        end 
        else begin
            state <= next_state;
        end
    end
    
    // ���� ���� ����
    always_comb begin
        next_state = state;
        case (state)
            RESET: begin 
                next_state = WAITS;
            end 
            WAITS: begin 
                if(cnt_wait_ticks == WAIT_TICKS) begin 
                    next_state = START_BIT;
                end
            end
            START_BIT: begin 
                next_state = DATA_BITS;
            end
            DATA_BITS: begin
                if(cnt_data_bit >= 10) begin 
                    next_state = STOP_BIT;
                end
            end
            STOP_BIT: begin
                next_state = DATA_TRANS;
            end
            DATA_TRANS : begin 
                if(string_received >= 1) begin
                    next_state = WAITS;
                end
            end 
        endcase
    end

    // ������ ���� �� ó�� ����
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            cnt_wait_ticks <= 0;
            data_receive <= 0;
            cnt_data_bit <= 0;
            data_buffer <= 0;
            cnt_buffer_index <= 0;
        end 
        else begin
            case (next_state)
                RESET: begin 
                end 
                WAITS: begin
                    cnt_wait_ticks <= cnt_wait_ticks + 1;
                    data_receive <= 0;
                    cnt_data_bit <= 0;
                    data_buffer <= 0;
                    cnt_buffer_index <= 0;
                end
                
                START_BIT: begin
                    cnt_wait_ticks <= 0;
                    cnt_data_bit <= cnt_data_bit + 1;
                    data_receive[cnt_data_bit] <= 0; // ������ ��Ʈ ����
                    // ���� ��Ʈ ó�� ���� (�ʿ��� ���)
                end
                
                DATA_BITS: begin
                    cnt_data_bit <= cnt_data_bit + 1;
                    // �� rx�� ��� �ؾ� H ��� �����͸� ������� �� ������????
                    data_receive[cnt_data_bit] <= rx; // ������ ��Ʈ ����
                end
                
                STOP_BIT: begin
                    //cnt_data_bit <= cnt_data_bit + 1;
                    data_receive[cnt_data_bit] <= 1; // ������ ��Ʈ ����
                end
                
                DATA_TRANS : begin 
                    data_buffer[cnt_buffer_index] <= data_receive[cnt_buffer_index];
                    cnt_buffer_index <= cnt_buffer_index + 1;
                    // "H" ���ڿ� ���� Ȯ��
                    if (cnt_buffer_index == 10) begin
                        string_received <= 1;
                        for (int i = 1; i <= 8; i++) begin
                            if (data_buffer[i] != HELLO_WORLD[i]) begin
                                string_received <= 0;
                            end
                        end
                    end
                end 
            endcase
        end
    end

endmodule