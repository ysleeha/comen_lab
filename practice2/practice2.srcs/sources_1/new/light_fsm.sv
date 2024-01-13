
`timescale 1ns/1ps 

/* ��ȣ�� ��� Ÿ�� */ 
// traffic_light�� 2bit 1���� �迭, north south east west�� �� �� �ȿ����� ���.
typedef enum logic [1:0] {
	GREEN,
	YELLOW,
	RED,
	LEFT
} traffic_light;   


module light_fsm (
    
    output  traffic_light   north, // north = green, yellow, red, left
    output  traffic_light   south, // south = green, yellow, red, left 
    output  traffic_light   east,  // east  = green, yellow, red, left
    output  traffic_light   west,  // west  = green, yellow, red, left
    
    input   logic           clk, rst_n
);

            logic   [7:0]   cnt;
    
    // state�� n_state�� �� �� �ȿ����� ���.
	enum logic [2:0] {
		south_north_green,
		south_north_yellow,
		east_west_left,
		east_west_yellow,
		east_west_green,
		south_north_left
	} state, n_state;
    
    // ��ȣ�� ON OFF �ð� 
	integer DURATION_GREEN             = 40;
	integer DURATION_LEFT              = 20;
	integer DURATION_YELLOW            = 5;
	integer south_north_dupulication   = 0;
	integer east_west_dupulication     = 0;
	
    // state initialization 
	always_ff @(posedge clk or negedge rst_n) begin
		if(!rst_n) begin
		      state    <= south_north_green;
		      north    <= RED;
		      south    <= RED;
		      east     <= RED;
		      west     <= RED;
		      cnt      <= 0;
		end
		else begin
		  if(state != n_state) begin
		      cnt     <= 0;
		      state   <= n_state; 
		  end
		  else begin 
		      cnt     <= cnt + 1;
		  end
		end
	end
   
	// state change 
    always_comb begin
        case (state)
            // 1 �������� �ʷϺ�
            south_north_green : begin
                if(cnt==DURATION_GREEN) begin
                    n_state = south_north_yellow;
                end
                else begin
                    n_state = state;
                    south_north_dupulication = 0;
                end
            end 
            
            // 2 & 8 �������� �����
            // �ߺ� �˻縦 ����, ���°� ��������. 
            south_north_yellow : begin
                if(cnt==DURATION_YELLOW && south_north_dupulication==0) begin         
                    n_state = east_west_left;
                end
                else if(cnt==DURATION_YELLOW && south_north_dupulication==1) begin
                    n_state = south_north_green;
                end
                else begin
                    n_state = state; 
                end
            end 
            
            // 3 �������� ��ȸ��
            east_west_left : begin
                if(cnt==DURATION_GREEN) begin 
                    n_state = east_west_yellow;
                end 
                else begin
                    n_state = state;
                    south_north_dupulication = 1;
                end 
            end 
            
            // 4 & 6  �������� �����
            // �ߺ� �˻縦 ����, ���°� ��������. 
            east_west_yellow : begin
                if(cnt==DURATION_YELLOW && east_west_dupulication == 0) begin 
                    n_state = east_west_green; 
                end
                else if(cnt==DURATION_YELLOW && east_west_dupulication == 1) begin 
                    n_state = south_north_left; 
                end                
                else begin
                    n_state = state;
                end
            end 
            
            // 5 �������� �ʷϺ�
            east_west_green : begin
                if(cnt==DURATION_GREEN) begin
                    n_state = east_west_yellow;
                end
                else begin
                    n_state = state;
                    east_west_dupulication = 1;
                end
            end 
            
            // 7 �������� ��ȸ�� 
            south_north_left : begin
                if(cnt==DURATION_GREEN) begin
                    n_state = south_north_yellow;
                end
                else begin
                    n_state = state;
                    east_west_dupulication = 0;
                end
            end     
        endcase     
    end
    
    // value change 
    always_ff @ (posedge clk) begin
        case (n_state)
            // 1
            south_north_green : begin
                north <= GREEN;
                south <= GREEN;
                east  <= RED;
                west  <= RED;
		    end
		    // 2 & 8
            south_north_yellow : begin
                north <= YELLOW;
				south <= YELLOW;
                east  <= RED;
                west  <= RED;
			end
		    // 3
            east_west_left : begin
                north <= RED;
				south <= RED;
                east  <= LEFT;
                west  <= LEFT;
			end 
			// 4 & 6 
            east_west_yellow : begin
                north <= RED;
				south <= RED;
                east  <= YELLOW;
                west  <= YELLOW;
			end
			// 5
            east_west_green : begin
                north <= RED;
				south <= RED;
                east  <= GREEN;
                west  <= GREEN;
			end
			// 7 
            south_north_left : begin
                north <= LEFT;
				south <= LEFT;
                east  <= RED;
                west  <= RED;
			end
		endcase
    end
    
endmodule
