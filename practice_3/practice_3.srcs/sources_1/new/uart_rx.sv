`timescale 1ns / 1ps

module uart_rx
(
    input   wire            clk,
    input   wire            rst, 
    input   wire            rx, 
    
    output  logic   [7:0]   data_receive // ���ŵ� ������ ��� 
);

    enum logic [2:0] {
        RESET,      // ���� 
        WAITS,      // ��� ����
        START_BIT,  // ���� ��Ʈ ����
        DATA_BITS,  // ������ ��Ʈ ����
        STOP_BIT    // ���� ��Ʈ ����
    } state, next_state;
    

    logic [7:0] data_buffer;      // ������ ���� 
    logic [3:0] cnt_data_bit;     // ��Ʈ ī����
    
    
    // ���� ��ȯ 
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= RESET;
        end else begin
            state <= next_state;
        end
    end

    // ���� ���� 
    always @(*) begin
        next_state = state;
        case (state)
            // RESET
            RESET : begin
                next_state = WAITS;
            end 
            //WAITS
            WAITS : begin
                // ���� ��Ʈ ���� �� 
                if (rx == 0) begin 
                    next_state = START_BIT;
                end 
            end
            // START
            START_BIT : begin
                // ������ ��Ʈ ���� ����
                next_state = DATA_BITS;
            end
            // DATA
            DATA_BITS : begin
                // ��� ������ ��Ʈ ����
                if (cnt_data_bit == 7) begin 
                    next_state = STOP_BIT;
                end
            end
            // STOP 
            STOP_BIT :  begin
                // ���� ��Ʈ ��, WAITS�� 
                next_state = WAITS;
            end
        endcase 
    end
    
    // ���� �˰��� 
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            data_buffer <= 0;
            cnt_data_bit <= 0;
            data_receive <= 0;
            

        end 
        else begin
            case (state)
                RESET : begin 
                end   
                WAITS : begin
                    cnt_data_bit <= 0;
                    data_receive <= 0;
                end  
                // ���� ��Ʈ ��ٸ� 
                START_BIT : begin
                end 
                DATA_BITS : begin
                    cnt_data_bit <= cnt_data_bit + 1;
                    data_buffer[cnt_data_bit] <= rx; // ������ ��Ʈ �ӽ�����
                end
                STOP_BIT : begin 
                    data_receive <= data_buffer; // ���ŵ� ������ ���� �� ��� 
                end
            endcase
        end
    end

endmodule
