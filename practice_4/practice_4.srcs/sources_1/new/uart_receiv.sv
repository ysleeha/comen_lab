/*
`timescale 1ns / 1ps

module uart_receiv
(
    input logic clk,  // 1Khz  (주기 : 0.1ms) 
    input logic rst,
    input logic [7:0] rx,
    
    output logic [0:9] data_buffer // 수신된 문자열 데이터 버퍼
);
    // 10ms, 100클럭 대기한다. .
    localparam WAIT_TICKS = 100; 
    logic [7:0] cnt_wait_ticks;
    
//    logic rx_reg;
//    assign rx_reg = rx; 
    
    logic [3:0] cnt_data_bit;           // 데이터 비트 카운터
    logic [0:9] data_receive;           // 현재 수신된 데이터
    
    //logic [0:9] data_buffer;            // 수신된 문자열 데이터 버퍼
    logic [3:0] cnt_buffer_index = 0;   // 버퍼 저장 카운터 
    logic string_received = 0; // 버퍼 수신 상태 
    
    logic [7:0] HELLO_WORLD = "H";
    
    enum logic [3:0] {
        RESET,
        WAITS,
        START_BIT,
        DATA_BITS,
        STOP_BIT,
        DATA_TRANS
    } state, next_state;
    
    // 상태 전환 로직
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= RESET;
        end 
        else begin
            state <= next_state;
        end
    end
    
    // 다음 상태 결정
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
                if(cnt_data_bit >= 9) begin 
                    next_state = STOP_BIT;
                end
            end
            
            STOP_BIT: begin
                if(cnt_data_bit >= 10) begin 
                    next_state = DATA_TRANS;
                end
            end
            
            DATA_TRANS : begin 
                if(string_received >= 1) begin
                    next_state = WAITS;
                end
            end 
        endcase
    end

    // 데이터 수신 및 처리 로직
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            cnt_wait_ticks <= 0;
            
            cnt_data_bit <= 0;
            data_receive <= 0;
            
            cnt_buffer_index <= 0;
            data_buffer <= 0;
        end 
        else begin
            case (next_state)
                RESET: begin 
                end 
                
                WAITS: begin
                    cnt_wait_ticks <= cnt_wait_ticks + 1;
                    
                    cnt_data_bit <= 0;
                    data_receive <= 0;
                    
                    cnt_buffer_index <= 0;
                    data_buffer <= 0;
                    
                    string_received <= 0;
                end
                
                START_BIT: begin
                    cnt_wait_ticks <= 0;
                    
                    cnt_data_bit <= cnt_data_bit + 1;
                    data_receive[cnt_data_bit] <= 0; // 데이터 비트 수신
                end
                
                DATA_BITS: begin
                    cnt_data_bit <= cnt_data_bit + 1;
                    // 이 rx를 어떻게 해야 H 라는 데이터를 집어넣을 수 있을까????
                    data_receive[cnt_data_bit] <= rx[cnt_data_bit-1]; // 데이터 비트 수신
                end
                
                STOP_BIT: begin
                    cnt_data_bit <= cnt_data_bit + 1;
                    data_receive[cnt_data_bit] <= 1; // 데이터 비트 수신
                end
                
                DATA_TRANS : begin 
                    data_buffer[cnt_buffer_index] <= data_receive[cnt_buffer_index];
                    cnt_buffer_index <= cnt_buffer_index + 1;
                    // "H" 문자열 길이 확인
                    if (cnt_buffer_index == 10) begin
                        string_received <= 1;
                        cnt_buffer_index <= 0;
                        for (int i = 1; i <= 8; i++) begin
                            if (data_buffer[i] != HELLO_WORLD[i-1]) begin
                                string_received <= 0;
                                cnt_buffer_index <= 0;
                            end
                        end
                    end
                end
                 
            endcase
        
        end
    
    end

endmodule
*/

`timescale 1ns / 1ps

module uart_receiv
(
    input logic clk,  // 1Khz  (주기 : 0.1ms) 
    input logic rst,
    input logic rx,   // 10bit 데이터가 들어옴. 
    
    output logic [9:0] data_buffer // 수신된 문자열 데이터 버퍼
);

    //logic [9:0] data;
    //logic [4:0] cnt_data;
    
    // 10ms, 100클럭 대기한다. .
    localparam WAIT_TICKS = 100; 
    logic [7:0] cnt_wait_ticks;
    
    logic [3:0] cnt_data_bit;           // 데이터 비트 카운터
    logic [9:0] data_receive;           // 현재 수신된 데이터

    logic [3:0] cnt_buffer_index = 0;   // 버퍼 저장 카운터 
    logic string_received = 0; // 버퍼 수신 상태 
    
    logic [7:0] HELLO_WORLD = "H";
    
    enum logic [3:0] {
        RESET,
        WAITS,
        START_BIT,
        DATA_BITS,
        STOP_BIT,
        DATA_TRANS
    } state, next_state;
    
    // 상태 전환 로직
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= RESET;
        end 
        else begin
            state <= next_state;
        end
    end
    
    // 다음 상태 결정
    always_comb begin
        next_state = state;
        
        case (state)
            RESET: begin 
                next_state = WAITS;
            end 
            
            WAITS: begin 
                if(~rx) begin 
                    next_state = START_BIT;
                end
            end
            
            START_BIT: begin 
                next_state = DATA_BITS;
            end
            
            DATA_BITS: begin
                if(cnt_data_bit >= 9) begin 
                    next_state = STOP_BIT;
                end
            end
            
            STOP_BIT: begin
                if(cnt_data_bit >= 10) begin 
                    next_state = DATA_TRANS;
                end
            end
            
            DATA_TRANS : begin 
                if(string_received >= 1) begin
                    next_state = WAITS;
                end
            end 
        endcase
    end

    // 데이터 수신 및 처리 로직
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            cnt_wait_ticks <= 0;
            
            cnt_data_bit <= 0;
            data_receive <= 0;
            
            cnt_buffer_index <= 0;
            data_buffer <= 0;
            
            string_received <= 0;
        end 
        else begin
            case (next_state)
                RESET: begin 
                end 
                
                WAITS: begin
                    cnt_wait_ticks <= cnt_wait_ticks + 1;
                    
                    cnt_data_bit <= 0;
                    data_receive <= 0;
                    
                    cnt_buffer_index <= 0;
                    data_buffer <= 0;
                    
                    string_received <= 0;
                end
                
                START_BIT: begin
                    cnt_wait_ticks <= 0;
                    
                    cnt_data_bit <= cnt_data_bit + 1;
                    data_receive[cnt_data_bit] <= rx; // 데이터 비트 수신 [0bit]
                end
                
                DATA_BITS: begin
                    cnt_data_bit <= cnt_data_bit + 1;
                    // 이 rx를 어떻게 해야 H 라는 데이터를 집어넣을 수 있을까????
                    data_receive[cnt_data_bit] <= rx; // 데이터 비트 수신 [1bit~8bit]
                end
                
                STOP_BIT: begin
                    cnt_data_bit <= cnt_data_bit + 1;
                    data_receive[cnt_data_bit] <= rx; // 데이터 비트 수신 [9bit] 
                end
                
                DATA_TRANS : begin  
                    data_buffer[cnt_buffer_index] <= data_receive[cnt_buffer_index]; 
                    cnt_buffer_index <= cnt_buffer_index + 1;
                    // "H" 문자열 길이 확인
                    if (cnt_buffer_index == 10) begin
                        string_received <= 1;
                        cnt_buffer_index <= 0;
                        for (int i = 1; i <= 8; i++) begin
                            if (data_buffer[i] != HELLO_WORLD[i]) begin
                                string_received <= 0;
                                cnt_buffer_index <= 0;
                            end
                        end
                    end
                end
                 
            endcase
        
        end
    
    end

endmodule
