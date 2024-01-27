`timescale 1ns / 1ps

/* 신호등 출력 타입 */ 
// traffic_light는 2bit 1차원 배열, north south east west는 저 값 안에서만 써라.
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
    
    // state랑 n_state는 저 값 안에서만 써라.
	enum logic [2:0] {
		south_north_green_1,
		south_north_yellow_2_8,
		east_west_left_3,
		east_west_yellow_4_6,
		east_west_green_5,
		south_north_left_7
	} state, n_state;
    
    // 신호등 ON OFF 시간 
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
            // 1 남북차로 초록불
            south_north_green_1 : begin
                if(cnt==DURATION_GREEN) begin
                    n_state = south_north_yellow_2_8; 
                end
                else begin
                    south_value = 0;
//                    south_north_dupulication = 0;
                end
            end 
            
            // 2 & 8 남북차로 노란불
            // 중복 검사를 통해, 상태가 나뉘어짐. 
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
            
            // 3 동서차로 좌회전
            east_west_left_3 : begin
                if(cnt==DURATION_GREEN) begin 
                    n_state = east_west_yellow_4_6;
                end 
//                else begin
//                    south_north_dupulication = 1;
//                end 
            end 
            
            // 4 & 6  동서차로 노란불
            // 중복 검사를 통해, 상태가 나뉘어짐. 
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
            
            // 5 동서차로 초록불
            east_west_green_5 : begin
                if(cnt==DURATION_GREEN) begin
                    n_state = east_west_yellow_4_6;
                end
                else begin
                    east_value=1;
                    //east_west_dupulication = 1;
                end
            end 
            
            // 7 남북차로 좌회전 
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

