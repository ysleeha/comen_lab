`timescale 1ns / 1ps

module test_fifo();
    
    //  FIFO�� �����͸� �� �� ����ϴ� Ŭ�� ��ȣ
    //  FIFO�� �����Ͱ� �� á���� �˷��ִ� ��ȣ
    //  FIFO�� ����Ǵ� 8bit �Է� 
    //  FIFO�� ������ ���� ��ȣ
    logic wr_clk;
    logic full;
    logic [7:0] din;
    logic wr_en;
    
    // FIFO�� �����͸� ���� �� ����ϴ� Ŭ��  
    // FIFO�� �����Ͱ� ������� �� �˷��ִ� ��ȣ 
    // �����Ͱ� ������ ���� 8bit 
    // FIFO�� �����Ͱ� ���� �� ����ϴ� ��ȣ 
    logic rd_clk;
    logic empty;
    logic [7:0] dout; 
    logic rd_en;
    
    logic rst;
    // FIFO�� �����͸� ���ų� ���� �غ� �Ǿ��� �� 
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
   
   // ���� Ŭ���� ����ϰų� ���½� ���� 
    always_ff @(posedge wr_clk or posedge rst) begin
        // �����ϸ�, ���� �����Ͷ� ���� ��ȣ �ʱ�ȭ 
        if(rst) begin
            din 	<= 0;
            wr_en 	<= 0;
        end 
        // FIFO�� ���� �Ǵ� �б� �غ� �Ǿ��� �� 
        // �����͸� �ϳ��� ����..
        else begin
            if (fifo_ready) begin
                din <= din + 1;
                wr_en <= 1;
            end
        end
    end
    
   // �б� Ŭ���� ����ϰų� ���½� ���� 
    always_ff @(posedge rd_clk or posedge rst) begin
        // ���� ��, "�о�� !" ��� ��ȣ�� �����.  
        if(rst) begin
            rd_en <= 0;
        end 
        // �� �� ������ �� 
        else begin
            // �̹��� ,FIFO�� �����Ͱ� �� �׿��ٸ� 
            // �о�� ��� ��ȣ�� �ش�. 
            if (fifo_ready)
                rd_en <= 1;
        end
    end


endmodule
