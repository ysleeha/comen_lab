
`timescale 1ns / 1ps

module uart_tx
(
    input clk, // fpga clk 12Mhz~50Mhz cmod (���ļ� : 20Mhz, �ֱ� : 0.05us) 
    input rst,
    
    output tx
);
    
    logic uart_clk;
    integer cnt_uart_clk;
    
    // 1MHz(1ms)���� 1_000_000Ŭ�� ����Ѵ�. .
    localparam WAIT_TICKS = 1_000_000; 
    logic [28-1:0] cnt_wait_1sec_ticks;
    
    localparam char_LEG = 11;
    reg [(char_LEG*8)-1 : 0] char_A = "Hello world";
    
    reg tx_reg;
    reg [3:0] cnt_data_byte;
    reg [3:0] cnt_data_bit;
    
    //reg [7:0] cnt_10ms;
    //logic [7:0] data;
    
    // 20Mhz -> 1Mhz 
    always @(posedge clk) begin
        cnt_uart_clk <= cnt_uart_clk + 1; 
        
        if (cnt_uart_clk == 9) begin 
            uart_clk <= ~uart_clk;
            cnt_uart_clk <= 0;
        end 
    end
    
    // 5���� ���¸� �ִµ� ������ 3���� ���� ���ؼ��� ������ ���ü� �ִ�. 
    enum reg [2:0] {RESET, WAIT_1S, START_BIT, DATA_BIT, STOP_BIT, ERROR} state, next_state; 
    
    assign tx = tx_reg;
    
    // State ���� ���� 
    always @ (posedge uart_clk or negedge rst) begin
        if (!rst) begin 
            state <= RESET;
        end
        else begin 
            state <= next_state;
        end  
    end
    
    // NEXT State ���� 
    always @(*) begin 
        next_state = state;
        
        case (state)
        RESET : 
            next_state = WAIT_1S;
            
        WAIT_1S : begin 
            if (cnt_wait_1sec_ticks >= WAIT_TICKS) begin  
                next_state = START_BIT;
            end
            // �Ȱ��� ���� next_state = state�� �ȴ�. 
        end
        
        START_BIT :
            next_state = DATA_BIT;
            
        DATA_BIT :
            if(cnt_data_bit >= 8) 
                next_state = STOP_BIT;
            else
                next_state = DATA_BIT;
                
        STOP_BIT : 
            if(cnt_data_byte == 0) 
                next_state = WAIT_1S;
            else 
                next_state = START_BIT;
            
        /* ���� ���α׷� �����δ� ������ �ؾ���. */ 
        ERROR : next_state = ERROR;
        default : next_state = ERROR;
        endcase
    end
    
    initial begin 
        uart_clk        <= 0;
        cnt_uart_clk    <= 0;
    end
    
    // Output Logic 
    always @(posedge uart_clk or negedge rst) begin
        
        if(!rst) begin 
            tx_reg              <= 1;
            cnt_data_bit        <= 0;
            cnt_data_byte       <= 0;
            cnt_wait_1sec_ticks <= 0;
            //data            <= 0;
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
            
            // ���� ���´ϱ� HIGH�� ���ش�. 
            ERROR : tx_reg      <= 1;
            default : tx_reg    <= 1; 
            endcase
    end 
       
end 
    
endmodule
