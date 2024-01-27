`timescale 1ns / 1ps

/* ��ȣ�� ��� Ÿ�� */ 
// traffic_light�� 2bit 1���� �迭, north south east west�� �� �� �ȿ����� ���.
//typedef enum logic [1:0] {
//	GREEN,
//	YELLOW,
//	RED,
//	LEFT
//} traffic_light;   


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
		south_north_green_1,
		south_north_yellow_2_8,
		east_west_left_3,
		east_west_yellow_4_6,
		east_west_green_5,
		south_north_left_7
	} state, n_state;
    
    // ��ȣ�� ON OFF �ð� 
	integer DURATION_GREEN             = 40;
	integer DURATION_LEFT              = 20;
	integer DURATION_YELLOW            = 5;
	
	integer south_north_dupulication   = 0;
    integer east_west_dupulication     = 0;
	
	logic south_value;
	logic east_value;
	
    /* garbage */
    /* 
	always_ff @(posedge clk or negedge rst_n) begin
		if(!rst_n) begin
		      state    <= south_north_green_1;
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
		
        else if (state != n_state) begin
            state <= n_state; 
        end
	end
    */ 
    
    // state initialization 
	always_ff @(posedge clk or negedge rst_n) begin
		if(!rst_n) begin
		      state    <= south_north_green_1;
		      cnt      <= 0;
		end
		else begin
		  if(state != n_state) begin
		      state   <= n_state;
              cnt     <= 0; 
		  end
		  else begin 
		      cnt     <= cnt + 1;
		  end
		end
	end

	// state change 
    always @(*) begin
        n_state = state;
        
//        south_north_dupulication = 0;
//        east_west_dupulication = 0;

        south_north_dupulication = south_value;
        east_west_dupulication = east_value;
        
        case (state)
            // 1 �������� �ʷϺ�
            south_north_green_1 : begin
                if(cnt==DURATION_GREEN) begin
                    n_state = south_north_yellow_2_8; 
                end
                else begin
                    south_value = 0;
//                    south_north_dupulication = 0;
                end
            end 
            
            // 2 & 8 �������� �����
            // �ߺ� �˻縦 ����, ���°� ��������. 
            south_north_yellow_2_8 : begin
                
                // 8
                if(cnt==DURATION_YELLOW && south_north_dupulication==1) begin
                    n_state = south_north_green_1;
                end
                // 2
                else if(cnt==DURATION_YELLOW) begin         
                    n_state = east_west_left_3;
                end
//                if(cnt==DURATION_YELLOW && south_north_dupulication==0) begin         
//                    n_state = east_west_left_3;
//                end
//                else if(cnt==DURATION_YELLOW && south_north_dupulication==1) begin
//                    n_state = south_north_green_1;
//                end
            end 
            
            // 3 �������� ��ȸ��
            east_west_left_3 : begin
                if(cnt==DURATION_GREEN) begin 
                    n_state = east_west_yellow_4_6;
                end 
//                else begin
//                    south_north_dupulication = 1;
//                end 
            end 
            
            // 4 & 6  �������� �����
            // �ߺ� �˻縦 ����, ���°� ��������. 
            east_west_yellow_4_6 : begin
                // 6
                if(cnt==DURATION_YELLOW && east_west_dupulication == 1) begin 
                    n_state = south_north_left_7; 
                end
                // 4
                else if(cnt==DURATION_YELLOW) begin 
                    n_state = east_west_green_5; 
                end
//                if(cnt==DURATION_YELLOW && east_west_dupulication == 0) begin 
//                    n_state = east_west_green_5; 
//                end
//                else if(cnt==DURATION_YELLOW && east_west_dupulication == 1) begin 
//                    n_state = south_north_left_7; 
//                end                
            end 
            
            // 5 �������� �ʷϺ�
            east_west_green_5 : begin
                if(cnt==DURATION_GREEN) begin
                    n_state = east_west_yellow_4_6;
                end
                else begin
                    east_value=1;
                    //east_west_dupulication = 1;
                end
            end 
            
            // 7 �������� ��ȸ�� 
            south_north_left_7 : begin
                if(cnt==DURATION_GREEN) begin
                    n_state = south_north_yellow_2_8;
                end
                else begin
                    east_value=0;
                    south_value=1;
                    //east_west_dupulication = 0;
                end
            end     
        endcase     
    end
    
    
    // value change 
    always_ff @ (posedge clk or negedge rst_n) begin
        if (!rst_n) begin 
            north <= RED;
            south <= RED;
            east <= RED;
            west <= RED;
        end
        
        else begin 
            case (n_state)
                // 1
                south_north_green_1 : begin
                    north <= GREEN;
                    south <= GREEN;
                    east  <= RED;
                    west  <= RED;
                end
                // 2 & 8
                south_north_yellow_2_8 : begin
                    north <= YELLOW;
                    south <= YELLOW;
                    east  <= RED;
                    west  <= RED;
                end
                // 3
                east_west_left_3 : begin
                    north <= RED;
                    south <= RED;
                    east  <= LEFT;
                    west  <= LEFT;
                end 
                // 4 & 6 
                east_west_yellow_4_6 : begin
                    north <= RED;
                    south <= RED;
                    east  <= YELLOW;
                    west  <= YELLOW;
                end
                // 5
                east_west_green_5 : begin
                    north <= RED;
                    south <= RED;
                    east  <= GREEN;
                    west  <= GREEN;
                end
                // 7 
                south_north_left_7 : begin
                    north <= LEFT;
                    south <= LEFT;
                    east  <= RED;
                    west  <= RED;
                end
            endcase
        end
    end
    
endmodule

