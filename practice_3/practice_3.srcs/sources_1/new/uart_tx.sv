`timescale 1ns / 1ps

module uart_tx
(
    input logic clk, // fpga clk 12Mhz IN cmod (주파수 : 12Mhz, 주기 : 83.333ns) 
    output logic tx
);

    logic tx_reg;
    assign tx = tx_reg;
    
    logic rst;
    
    logic mmcm_clk;    
    integer cnt_uart_clk;
    logic uart_clk;    
    
    // After 1sec(1_000_000), Text print. 
    localparam WAIT_TICKS = 1_000; 
    logic [26-1:0] cnt_wait_1sec_ticks;
    
    localparam char_LEG = 12;
    logic [(char_LEG*8)-1 : 0] char_A = "Hello world\n";
    logic [3:0] cnt_data_byte;
    logic [3:0] cnt_data_bit;
    
    //reg [7:0] cnt_10ms;
    //logic [7:0] data;
    
    // 12Mhz -> 50Mhz 
    mmcm_50m mmcm
    (
        //.rese(rst) 왜 이렇게 하면 안되지? 
        .reset(1'b0),
        .clk_in1(clk), // IN 12MHz 
        
        .clk_out1(mmcm_clk) // OUT 50MHz
     );
     
     // FPGA를 데이터적으로 리셋 
     vio_0 vio
    (
        .clk(mmcm_clk),
        .probe_out0(rst)
    );
    
    // 신호 모니터링, 테스트벤치 대역 
    ila_0 ila
    (
        .clk(clk),                      //clk
        
        .probe0(tx),                    //tx                    1bit_num0
        .probe1(tx_reg),                //tx_reg                1bit_num1
        .probe2(rst),                   //rst                   1bit_num2
        .probe3(mmcm_clk),              //mmcm_clk              1bit_num3
        .probe4(cnt_uart_clk),          //cnt_uart_clk          32bit_num4
        .probe5(uart_clk),              //uart_clk              1bit_num5
        .probe6(WAIT_TICKS),            //WAIT_TICKS            32bit_num6
        .probe7(cnt_wait_1sec_ticks),   //cnt_wait_1sec_ticks   26bit_num7
        .probe8(char_LEG),              //char_LEG              32bit_num8
        .probe9(char_A),                //char_A                96bit_num9
        .probe10(cnt_data_byte),        //cnt_data_byte         4bit_num10
        .probe11(cnt_data_bit),         //cnt_data_bit          4bit_num11
        .probe12(state),                //state                 3bit_num12
        .probe13(next_state)            //next_state            3bit_num13
    );
    
    // frequency : 50Mhz -> 1Mhz
    // period   : 0.02us -> 1us
    always @(posedge mmcm_clk) begin
        cnt_uart_clk <= cnt_uart_clk + 1; 
        if (cnt_uart_clk == (50/2)-1) begin 
            uart_clk <= ~uart_clk;
            cnt_uart_clk <= 0;
        end 
    end
    
    // 5개의 상태만 있는데 나머지 3개의 값에 대해서는 에러가 나올수 있다. 
    enum logic [3-1:0] {RESET, WAIT_1S, START_BIT, DATA_BIT, STOP_BIT, ERROR} state, next_state; 
    
    // State 변경 로직 
    always @ (posedge uart_clk or negedge rst) begin
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
        RESET : 
            next_state = WAIT_1S;
            
        WAIT_1S : begin 
            if (cnt_wait_1sec_ticks >= WAIT_TICKS) begin  
                next_state = START_BIT;
            end
            // 안갔을 때는 next_state = state가 된다. 
        end
        
        START_BIT :
            next_state = DATA_BIT;
            
        DATA_BIT :
            if(cnt_data_bit >= 8) 
                next_state = STOP_BIT;
                
        STOP_BIT : 
            if(cnt_data_byte == 0) 
                next_state = WAIT_1S;
            else 
                next_state = START_BIT;
            
        /* 실제 프로그램 상으로는 복구를 해야함. */ 
        ERROR : next_state = ERROR;
        default : next_state = ERROR;
        endcase
    end
    
    
    initial begin 
        uart_clk        <= 0;
        cnt_uart_clk    <= 0;
//        rst             <= 1; 
//        #100
//        rst             <= 0;
//        #100
//        rst             <= 1;
    end
    
    // Output Logic 
    always @(posedge uart_clk or negedge rst) begin
        
        if(!rst) begin 
            tx_reg              <= 1;
            cnt_data_bit        <= 0;
            cnt_data_byte       <= 0;
            cnt_wait_1sec_ticks <= 0;
        end
        
        else begin 
            case (next_state)
            
            RESET : begin 
            end 
    
            WAIT_1S : begin
                cnt_data_bit        <= 0;
                cnt_wait_1sec_ticks <= cnt_wait_1sec_ticks+1;
                cnt_data_byte       <= char_LEG;
            end
            
            START_BIT : begin 
                cnt_data_bit        <= 0;
                cnt_wait_1sec_ticks <= 0;
                tx_reg              <= 0;
            end
            
            DATA_BIT : begin
                cnt_data_bit    <= cnt_data_bit + 1;
                tx_reg          <= char_A[( ((cnt_data_byte-1)*8) ) + cnt_data_bit]; 
                //data <= (data << 1) | tx_reg;
            end
            
            STOP_BIT : begin
               cnt_data_bit     <= cnt_data_bit + 1;
               cnt_data_byte    <= cnt_data_byte - 1;
               tx_reg <= 1;
               //data <= 0;
            end  
            
            // 정지 상태니까 HIGH로 놔준다. 
            ERROR : tx_reg      <= 1;
            default : tx_reg    <= 1; 
            endcase
        end 
       
    end 
    
endmodule
