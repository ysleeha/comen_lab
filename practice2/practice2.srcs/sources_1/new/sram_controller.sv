
`timescale 1ns/1ps 

/* SRAM WRITE 
    word line 값이 1이면, NMOS gate가 ON 
    bit line 값이 1이면, 데이터 1이 흘러간다. 
*/
/* SRAM READ
    bit line 값이 0.5이면, 피드백에 있던 값이 0.5로 이동한다. (1[feedback] -> 0.5[bit line])
    이동된 0.5 값이 증폭되면서 0.5에서 1로 증가한다. 
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
	output 	logic ce_n, //chip select enable, 0이면 동작 
	output 	logic oe_n, //output enable(=read enable) 데이터 읽을 때 동작 
	output 	logic we_n //write enalbe, 데이터 쓸 때 동작 
);

wire 	mclk;  // prescale 
wire 	rst_n; // reset 


logic 	[DWIDTH-1:0] data_out; // 데이터를 출력해주기 위한 선
//logic   data_valid;
logic 	tri_sel;

// 아래 변수들은 state랑 next_state만 사용이 가능하다. 
enum logic [2:0] { 
	RESET,
	READY,
	WRITE,
	READ,
	DONE
} state, next_state; 


/* 테스트 입출력 데이터 */
logic [7:0] test_data [NUM_TEST_DATA] = {
	8'd0, 8'd1, 8'd2, 8'd3, 8'd4,
	8'd5, 8'd6, 8'd7, 8'd8, 8'd9
};

/* read index & write index */
logic [3:0] wr_idx; 
logic [3:0] rd_idx;


// tri_sel은 보통 읽기 동작에서 활성화, 1=읽기, 0=쓰기
assign data = tri_sel ? data_out : 8'bz;




/*********************************************
*                 서브모듈
**********************************************/

// 클럭 조절 용
/* PLL */ 
mmcm_50m mmcm (
	 .reset(1'b0)
	,.clk_in1(clk)
	,.clk_out1(mclk)
	,.locked()
);

// 신호 모니터링 용 
/* 로직 아날라이저 */
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

// rst 신호 시뮬레이션 용 
/* 가상 입출력 */
vio_0 vio(
	 .clk 	(mclk)
	,.probe_out0 (rst_n)
);




/*********************************************
*                   FSM 구현
**********************************************/

/* 상태 저장 */
always_ff @(posedge mclk or negedge rst_n) begin
	if (~rst_n) state <= RESET;
	else 		state <= next_state;
end


/* 다음 상태 계산 */
always_comb begin

	next_state = state;
    
	unique case(state)
		RESET:	
		    // reset후, 준비 상태로
			next_state	= READY;
		READY:
		    // 테스트 할 데이터가 덜 쓰여졌다면, 쓰는 상태로 
			if (wr_idx < NUM_TEST_DATA)
				next_state = WRITE;
			  // 테스트 할 데이터를 덜 읽었다면, 읽는 상태로 
			else if (rd_idx < NUM_TEST_DATA)
				next_state = READ;
		      // 테스트 할 데이터가 읽기와 쓰기에 다 있는 경우 
			else 
				next_state = DONE;
		WRITE:
		      // SRAM 비활성화 & 쓰기 모드 비활성화 & 1 -> 준비 상태 
			if ((ce_n) & (we_n) & tri_sel)
				next_state = READY;
		READ: 
		      // SRAM 활성화 & 읽기 모드 활성화 -> 준비 상태 
			if ((~ce_n) & (~oe_n))
				next_state = READY;
		DONE:
			next_state = state;
	endcase
end


/* 출력 프로시저 */
always_ff @(posedge mclk or negedge rst_n) begin
	if (~rst_n) begin
		wr_idx 	<= 0;
		rd_idx 	<= 0;
		tri_sel <= 0; // write 시 1로 활성화 
		ce_n 	<= 1; // chip select enable, 0일때 활성화
		oe_n 	<= 1; // output enable(=read enable) 0일때 활성화
		we_n	<= 1; // write enable(=write enable)  0일떄 활성화 
	end else begin
		case (next_state)
		      // 준비 상태 시, 모든 신호 비활성화 
			READY: begin
				ce_n 	<= 1;
				oe_n 	<= 1;
				we_n 	<= 1;
				tri_sel <= 0;
			end

			WRITE: begin
			     // SRAM 주소 설정(쓰기) 
				if (ce_n) begin
					ce_n <= 0;
					addr <= wr_idx; // (sram 어떤 주소에 <= 어떤 write data를 쓸것인지), 
					data_out <= test_data[wr_idx]; // data out에 테스트한 값을 출력 
				end 
				// data 쓰기 및 활성화 
				else if (we_n) begin 
					we_n <= 0;  // 데이터 쓰기 모드 활성화 
					tri_sel <= 1; // 쓰기 모드 이므로 high Z 
				end
				// data 다 쓴 후, 초기화 및 비활성화  
				else begin
					we_n <= 1;
					ce_n <= 1;
					wr_idx <= wr_idx + 1; // 다음 데이터 항목(if구문) 때 넣기 위해 증가 
				end
			end
            
			READ: begin
			     // SRAM 주소 설정(읽기)
				if (ce_n) begin
					ce_n <= 0;
					addr <= rd_idx;
				end 
				// data 읽기 및 다음 데이터 일기 위해 증가 
				else if (oe_n) begin
					oe_n <= 0; // 데이터 읽기 모드 활성화 
					rd_idx <= rd_idx + 1;
				end 
			end
            
            // 다 읽으면 모두 초기화 
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