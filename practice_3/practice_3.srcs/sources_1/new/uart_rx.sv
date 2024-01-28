`timescale 1ns / 1ps

module uart_rx
(
    input   wire            clk,
    input   wire            rst, 
    input   wire            rx, 
    
    output  logic   [7:0]   data_receive // 수신된 데이터 출력 
);

    enum logic [2:0] {
        RESET,      // 리셋 
        WAITS,      // 대기 상태
        START_BIT,  // 시작 비트 검출
        DATA_BITS,  // 데이터 비트 수신
        STOP_BIT    // 정지 비트 검출
    } state, next_state;
    

    logic [7:0] data_buffer;      // 데이터 버퍼 
    logic [3:0] cnt_data_bit;     // 비트 카운터
    
    
    // 상태 전환 
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= RESET;
        end else begin
            state <= next_state;
        end
    end

    // 다음 상태 
    always @(*) begin
        next_state = state;
        case (state)
            // RESET
            RESET : begin
                next_state = WAITS;
            end 
            //WAITS
            WAITS : begin
                // 시작 비트 감지 시 
                if (rx == 0) begin 
                    next_state = START_BIT;
                end 
            end
            // START
            START_BIT : begin
                // 데이터 비트 수신 시작
                next_state = DATA_BITS;
            end
            // DATA
            DATA_BITS : begin
                // 모든 데이터 비트 수신
                if (cnt_data_bit == 7) begin 
                    next_state = STOP_BIT;
                end
            end
            // STOP 
            STOP_BIT :  begin
                // 정지 비트 후, WAITS로 
                next_state = WAITS;
            end
        endcase 
    end
    
    // 상태 알고리즘 
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
                // 시작 비트 기다림 
                START_BIT : begin
                end 
                DATA_BITS : begin
                    cnt_data_bit <= cnt_data_bit + 1;
                    data_buffer[cnt_data_bit] <= rx; // 데이터 비트 임시저장
                end
                STOP_BIT : begin 
                    data_receive <= data_buffer; // 수신된 데이터 저장 및 출력 
                end
            endcase
        end
    end

endmodule
