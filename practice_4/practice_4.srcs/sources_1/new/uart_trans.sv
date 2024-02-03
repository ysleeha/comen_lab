
`timescale 1ns / 1ps

module uart_trans
(
    input logic clk, // 1Khz  (주기 : 0.1ms) 
    input logic rst,
    
    output logic tx
);
    
    // 10ms 대기, 0.1ms를 100클럭 대기한다.
    localparam WAIT_TICKS = 100;
    logic [7:0] cnt_10ms;
    
    logic [3:0] cnt_data_bit;
    localparam char_LEG = 1;
    logic [(char_LEG*8)-1 : 0] char_test = "H";
    
    logic tx_reg;
    //reg [3:0] cnt_data_byte;
    //logic [7:0] data;
    
    assign tx = tx_reg;
    
    // 5개의 상태만 있는데 나머지 3개의 값에 대해서는 에러가 나올수 있다. 
    enum logic [2:0] {
        RESET, 
        WAIT_10MS, 
        START_BIT, 
        DATA_BIT, 
        STOP_BIT,
        ERROR
    }state, next_state; 
    
    // State 변경 로직 
    always @ (posedge clk or negedge rst) begin
        if (!rst) begin 
            state <= RESET;
        end
        else begin 
            state <= next_state;
        end  
    end
    
    // NEXT State 로직 
    always_comb begin 
        next_state = state;
        
        case (state)
            RESET : begin 
                next_state = WAIT_10MS;
            end 
            
            WAIT_10MS : begin 
                if (cnt_10ms >= WAIT_TICKS) begin  
                    next_state = START_BIT;
                end
                // 안갔을 때는 next_state = state가 된다. 
            end
            
            START_BIT : begin 
                next_state = DATA_BIT;
            end
            
            DATA_BIT : begin
                if(cnt_data_bit >= 8) begin 
                    next_state = STOP_BIT;
                end
            end
            
            STOP_BIT : begin
//                if(cnt_data_byte == 0) 
                    next_state = WAIT_10MS;
//                else 
//                    next_state = START_BIT;
            end
            
            /* 실제 프로그램 상으로는 복구를 해야함. */ 
            ERROR : next_state = ERROR;
            default : next_state = ERROR;
        endcase
    end
    
    // Output Logic 
    always @(posedge clk or negedge rst) begin
        
        if(!rst) begin 
            tx_reg          <= 1;
            cnt_data_bit    <= 0;
//            cnt_data_byte   <= 0;
            cnt_10ms        <= 0;
        end
        else begin 
            case (next_state)
                RESET : begin 
                end 
                
                WAIT_10MS : begin 
                    cnt_data_bit <= 0;
                    cnt_10ms <= cnt_10ms+1;
                    //cnt_data_byte <= char_LEG;
                end
                
                START_BIT : begin 
                    cnt_data_bit <= 0;
                    cnt_10ms    <= 0;
                    tx_reg      <= 0;
                end 
                
                DATA_BIT : begin
                    cnt_data_bit <= cnt_data_bit + 1;
//                    tx_reg <= char_A[( ( (cnt_data_byte-1)*8)) + cnt_data_bit];
                    tx_reg <= char_test[cnt_data_bit];
                end
                
                STOP_BIT : begin
                   cnt_data_bit <= cnt_data_bit + 1;
//                   cnt_data_byte <= cnt_data_byte - 1;
                   tx_reg <= 1;
                   //data <= 0;
                end  
                // 정지 상태니까 HIGH로 놔준다. 
                ERROR : tx_reg <= 1;
                default : tx_reg <= 1; 
            endcase
        end    
    end 
    
endmodule
