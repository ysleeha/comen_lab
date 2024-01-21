`timescale 1ns / 1ps

module test_fifo();
    
    //  FIFO로 데이터를 쓸 때 사용하는 클럭 신호
    //  FIFO에 데이터가 꽉 찼을때 알려주는 신호
    //  FIFO에 저장되는 8bit 입력 
    //  FIFO에 데이터 쓰기 신호
    logic wr_clk;
    logic full;
    logic [7:0] din;
    logic wr_en;
    
    // FIFO의 데이터를 읽을 때 사용하는 클럭  
    // FIFO에 데이터가 비어있을 때 알려주는 신호 
    // 데이터가 나가는 공간 8bit 
    // FIFO의 데이터가 나갈 때 사용하는 신호 
    logic rd_clk;
    logic empty;
    logic [7:0] dout; 
    logic rd_en;
    
    logic rst;
    // FIFO가 데이터를 쓰거나 읽을 준비가 되었을 떄 
    logic fifo_ready;
    
    // not dual, fifo gen 
    fifo_dual fifo
    (
        .wr_clk(wr_clk),
        .full(full),
        .din(din),
        .wr_en(wr_en),
        
        .rd_clk(rd_clk),
        .empty(empty),
        .dout(dout),
        .rd_en(rd_en),
        
        .rst(rst)
    );
    
    initial begin
        rst             = 0;
        wr_clk          = 0;
        rd_clk          = 0;
        fifo_ready      = 0;
    
        #50 rst         = 1;
        #50 rst         = 0;
    
        #200 fifo_ready = 1;
    end
    
    always begin
        #5
        wr_clk = ~wr_clk;
    end
    
    always begin
        #10
        rd_clk = ~rd_clk;
    end
   
   // 쓰기 클럭이 상승하거나 리셋시 실행 
    always_ff @(posedge wr_clk or posedge rst) begin
        // 리셋하면, 들어온 데이터랑 쓰기 신호 초기화 
        if(rst) begin
            din 	<= 0;
            wr_en 	<= 0;
        end 
        // FIFO가 쓰기 또는 읽기 준비가 되었을 때 
        // 데이터를 하나씩 쓴다..
        else begin
            if (fifo_ready) begin
                din <= din + 1;
                wr_en <= 1;
            end
        end
    end
    
   // 읽기 클럭이 상승하거나 리셋시 실행 
    always_ff @(posedge rd_clk or posedge rst) begin
        // 리셋 시, "읽어라 !" 라는 신호를 멈춘다.  
        if(rst) begin
            rd_en <= 0;
        end 
        // 그 외 조건일 때 
        else begin
            // 이번엔 ,FIFO에 데이터가 다 쌓였다면 
            // 읽어라 라는 신호를 준다. 
            if (fifo_ready)
                rd_en <= 1;
        end
    end


endmodule
