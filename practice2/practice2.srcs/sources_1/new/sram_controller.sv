
`timescale 1ns/1ps 

/* SRAM WRITE 
    word line ���� 1�̸�, NMOS gate�� ON 
    bit line ���� 1�̸�, ������ 1�� �귯����. 
*/
/* SRAM READ
    bit line ���� 0.5�̸�, �ǵ�鿡 �ִ� ���� 0.5�� �̵��Ѵ�. (1[feedback] -> 0.5[bit line])
    �̵��� 0.5 ���� �����Ǹ鼭 0.5���� 1�� �����Ѵ�. 
*/

// 8bit x 512K 
module sram_controller #(
	parameter AWIDTH = 19,
	parameter DWIDTH = 8,
	parameter NUM_TEST_DATA = 10
)

(
	input 	wire  clk,
	output	logic [AWIDTH-1:0] addr,
	inout 	wire  [DWIDTH-1:0] data,
	output 	logic ce_n, //chip select enable, 0�̸� ���� 
	output 	logic oe_n, //output enable(=read enable) ������ ���� �� ���� 
	output 	logic we_n //write enalbe, ������ �� �� ���� 
);

wire 	mclk;  // prescale 
wire 	rst_n; // reset 


logic 	[DWIDTH-1:0] data_out; // �����͸� ������ֱ� ���� ��
//logic   data_valid;
logic 	tri_sel;

// �Ʒ� �������� state�� next_state�� ����� �����ϴ�. 
enum logic [2:0] { 
	RESET,
	READY,
	WRITE,
	READ,
	DONE
} state, next_state; 


/* �׽�Ʈ ����� ������ */
logic [7:0] test_data [NUM_TEST_DATA] = {
	8'd0, 8'd1, 8'd2, 8'd3, 8'd4,
	8'd5, 8'd6, 8'd7, 8'd8, 8'd9
};

/* read index & write index */
logic [3:0] wr_idx; 
logic [3:0] rd_idx;


// tri_sel�� ���� �б� ���ۿ��� Ȱ��ȭ, 1=�б�, 0=����
assign data = tri_sel ? data_out : 8'bz;




/*********************************************
*                 ������
**********************************************/

// Ŭ�� ���� ��
/* PLL */ 
mmcm_50m mmcm (
	 .reset(1'b0)
	,.clk_in1(clk)
	,.clk_out1(mclk)
	,.locked()
);

// ��ȣ ����͸� �� 
/* ���� �Ƴ������� */
ila_sram_ctrl ila(
	 .clk		(mclk)
	,.probe0 	(rst_n)
	,.probe1 	(oe_n)
	,.probe2 	(ce_n)
	,.probe3 	(we_n)
	,.probe4 	(addr)
	,.probe5 	(data)
	,.probe6 	(tri_sel)
	,.probe7 	(state)
	,.probe8 	(next_state)
);

// rst ��ȣ �ùķ��̼� �� 
/* ���� ����� */
vio_0 vio(
	 .clk 	(mclk)
	,.probe_out0 (rst_n)
);




/*********************************************
*                   FSM ����
**********************************************/

/* ���� ���� */
always_ff @(posedge mclk or negedge rst_n) begin
	if (~rst_n) state <= RESET;
	else 		state <= next_state;
end


/* ���� ���� ��� */
always_comb begin

	next_state = state;
    
	unique case(state)
		RESET:	
		    // reset��, �غ� ���·�
			next_state	= READY;
		READY:
		    // �׽�Ʈ �� �����Ͱ� �� �������ٸ�, ���� ���·� 
			if (wr_idx < NUM_TEST_DATA)
				next_state = WRITE;
			  // �׽�Ʈ �� �����͸� �� �о��ٸ�, �д� ���·� 
			else if (rd_idx < NUM_TEST_DATA)
				next_state = READ;
		      // �׽�Ʈ �� �����Ͱ� �б�� ���⿡ �� �ִ� ��� 
			else 
				next_state = DONE;
		WRITE:
		      // SRAM ��Ȱ��ȭ & ���� ��� ��Ȱ��ȭ & 1 -> �غ� ���� 
			if ((ce_n) & (we_n) & tri_sel)
				next_state = READY;
		READ: 
		      // SRAM Ȱ��ȭ & �б� ��� Ȱ��ȭ -> �غ� ���� 
			if ((~ce_n) & (~oe_n))
				next_state = READY;
		DONE:
			next_state = state;
	endcase
end


/* ��� ���ν��� */
always_ff @(posedge mclk or negedge rst_n) begin
	if (~rst_n) begin
		wr_idx 	<= 0;
		rd_idx 	<= 0;
		tri_sel <= 0; // write �� 1�� Ȱ��ȭ 
		ce_n 	<= 1; // chip select enable, 0�϶� Ȱ��ȭ
		oe_n 	<= 1; // output enable(=read enable) 0�϶� Ȱ��ȭ
		we_n	<= 1; // write enable(=write enable)  0�ϋ� Ȱ��ȭ 
	end else begin
		case (next_state)
		      // �غ� ���� ��, ��� ��ȣ ��Ȱ��ȭ 
			READY: begin
				ce_n 	<= 1;
				oe_n 	<= 1;
				we_n 	<= 1;
				tri_sel <= 0;
			end

			WRITE: begin
			     // SRAM �ּ� ����(����) 
				if (ce_n) begin
					ce_n <= 0;
					addr <= wr_idx; // (sram � �ּҿ� <= � write data�� ��������), 
					data_out <= test_data[wr_idx]; // data out�� �׽�Ʈ�� ���� ��� 
				end 
				// data ���� �� Ȱ��ȭ 
				else if (we_n) begin 
					we_n <= 0;  // ������ ���� ��� Ȱ��ȭ 
					tri_sel <= 1; // ���� ��� �̹Ƿ� high Z 
				end
				// data �� �� ��, �ʱ�ȭ �� ��Ȱ��ȭ  
				else begin
					we_n <= 1;
					ce_n <= 1;
					wr_idx <= wr_idx + 1; // ���� ������ �׸�(if����) �� �ֱ� ���� ���� 
				end
			end
            
			READ: begin
			     // SRAM �ּ� ����(�б�)
				if (ce_n) begin
					ce_n <= 0;
					addr <= rd_idx;
				end 
				// data �б� �� ���� ������ �ϱ� ���� ���� 
				else if (oe_n) begin
					oe_n <= 0; // ������ �б� ��� Ȱ��ȭ 
					rd_idx <= rd_idx + 1;
				end 
			end
            
            // �� ������ ��� �ʱ�ȭ 
			DONE: begin
				ce_n 	<= 1;
				oe_n 	<= 1;
				we_n 	<= 1;
				tri_sel <= 0;
			end
		endcase
	end
end


endmodule