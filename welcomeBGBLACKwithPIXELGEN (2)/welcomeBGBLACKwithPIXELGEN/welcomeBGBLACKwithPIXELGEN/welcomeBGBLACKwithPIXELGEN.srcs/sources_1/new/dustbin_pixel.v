
`timescale 1ns / 1ps

//    input clk, // 100 Mhz clock source on Basys 3 FPGA
//    input reset, // reset
//    input wire ir_signal,
//    input wire ir_signal2,
//    input wire ir_signal3,
    
//    output reg [3:0] Anode_Activate, // anode signals of the 7-segment LED display
//    output reg [6:0] LED_out// cathode patterns of the 7-segment LED display
//    );
    
//    reg [15:0] displayed_number;  
//    reg [3:0] LED_BCD;
//    reg [20:0] refresh_counter;
//    wire [1:0] LED_activating_counter; 

//    always @(posedge clk_d or posedge reset)
//    begin
    
    
    
//    if(reset)
//        displayed_number <= 0;
    
//    else 
//    begin
//        if (ir_signal == 1'b1) //means ir 1 is off, no obj at ir1 
        
//        //smartbin screen
//        //put 0% screen
        
//         begin
//            displayed_number=0; // Display '1' on the seven-segment display      
            
             
            
//            if (ir_signal3 == 1)
//            begin 
            
//            if (ir_signal2 == 0)
//            begin
//            displayed_number=2; // Display '1' on the seven-segment display 
            
            
//            // put 50% screeen
            
            
            
//            end  
            
//            end
            
//            if (ir_signal3 == 0)
//            begin
//            displayed_number=3; // Display '1' on the seven-segment display 
            
            
//            // put 100% screeen
            
            
//            end            
         
            
//        end 
//        else 
//            begin
            
//            displayed_number=1; // Turn off the seven-segment display
            
            
//            //lid open screen
//            end

    
    
    
        
//    end       
//    end   


module dustbin_pixel(
    input clk_d,
    input [9:0] pixel_x,
    input [9:0] pixel_y,
    input video_on,
    output reg [3:0] red = 0,
    output reg [3:0] green = 0,
    output reg [3:0] blue = 0
    
//    input reset, // reset
//    input wire ir_signal,
//    input wire ir_signal2,
//    input wire ir_signal3,
    
//    output reg [3:0] Anode_Activate, // anode signals of the 7-segment LED display
//    output reg [6:0] LED_out// cathode patterns of the 7-segment LED display

);
    reg [9:0] x = 120; 
    reg [8:0] y = 70; 
    reg [8:0] w =0;
    reg [8:0] h = 0;
    reg [7:0] palette [0:191]; 
    reg [7:0] COL = 0;      
    wire [7:0] dout;  
    reg [16:0] address; 

//    reg [15:0] displayed_number;  
//    reg [3:0] LED_BCD;
//    reg [20:0] refresh_counter;
//    wire [1:0] LED_activating_counter;  
    
//              open_lid (
//            .address(address[16:0]),
//            .clk_pix(clk_d),
//            .dataout(dout)
//        );  
        
        
//              closed_lid (
//            .address(address[16:0]),
//            .clk_pix(clk_d),
//            .dataout(dout)
//        );

////             lvl_50 (
////            .address(address[16:0]),
////            .clk_pix(clk_d),
////            .dataout(dout)
////        );
        
////    lvl_100 (
////        .address(address[16:0]),
////        .clk_pix(clk_d),
////        .dataout(dout)
////    );               
 
//     always @(posedge clk_d )
//    begin
    
    
    
//    if(reset)
//        displayed_number <= 0;
    
//    else 
//    begin
//        if (ir_signal == 1'b1) //means ir 1 is off, no obj at ir1 
        
//        w = 367; // for closed
//        h = 304; //for closed dustbin
////             closed_lid (
////            .address(address[16:0]),
////            .clk_pix(clk_d),
////            .dataout(dout)
////        );      

//        begin
//            $readmemh("pal24bit.mem", palette); //diff files
//        end 
        

//            displayed_number=0; // Display '1' on the seven-segment display      
         
//            if (ir_signal3 == 1)
//            begin 
            
//            if (ir_signal2 == 0)
//            begin
//            displayed_number=2; // Display '1' on the seven-segment display 
            
            
////           w = 363; // for lvl 50
////           h = 303;  // for lvl 50
//////             lvl_50 (
//////            .address(address[16:0]),
//////            .clk_pix(clk_d),
//////            .dataout(dout)
//////        );      

////        begin
////            $readmemh("lvl50pal24bit.mem", palette); //diff files
////        end   
            
            
            
//            end  
            
//            end
            
//            if (ir_signal3 == 0)
//            begin
//            displayed_number=3; // Display '1' on the seven-segment display 
            
            
////   w = 365; // for lvl 100
////   h = 290; // for lvl 100
////   lvl_100 (
////        .address(address[16:0]),
////        .clk_pix(clk_d),
////        .dataout(dout)
////    );
    

////    begin
////        $readmemh("lvl100pal24bit.mem", palette); //diff files
////    end  
    
            
            
//            end            
         
            

//        else 
//            begin
            
//            displayed_number=1; // Turn off the seven-segment display
            
            
//         w = 334; // for opem
//         h = 357;  // for open
////             open_lid (
////            .address(address[16:0]),
////            .clk_pix(clk_d),
////            .dataout(dout)
////        );      

//        begin
//            $readmemh("openpal24bit.mem", palette); //diff files
//        end  
    
//            end

      
 

 
 
 
 
    
//    localparam w = 371; // for lvl 0
//    localparam h = 300; // for lvl 0   

     
//    localparam w = 367; for closed
//    localparam h = 304; for closed dustbin
//             closed_lid (
//            .address(address[16:0]),
//            .clk_pix(clk_d),
//            .dataout(dout)
//        );      
//        initial 
//        begin
//            $readmemh("pal24bit.mem", palette); //diff files
//        end     
    
    
        localparam w = 334; // for opem
        localparam h = 357;  // for open
             open_lid (
            .address(address[16:0]),
            .clk_pix(clk_d),
            .dataout(dout)
        );      
        initial 
        begin
            $readmemh("openpal24bit.mem", palette); //diff files
        end  



//          localparam w = 363; // for lvl 50
//          localparam h = 303;  // for lvl 50
//             lvl_50 (
//            .address(address[16:0]),
//            .clk_pix(clk_d),
//            .dataout(dout)
//        );      
//        initial 
//        begin
//            $readmemh("lvl50pal24bit.mem", palette); //diff files
//        end       
          
   
      
//   localparam w = 365; // for lvl 100
//   localparam h = 290; // for lvl 100
//   lvl_100 (
//        .address(address[16:0]),
//        .clk_pix(clk_d),
//        .dataout(dout)
//    );
    
//    initial 
//    begin
//        $readmemh("lvl100pal24bit.mem", palette); //diff files
//    end  
    
    
//    end 
//    end

    
    always @(posedge clk_d) begin
        if ((pixel_x == 0) || (pixel_x == 639) || (pixel_y == 0) || (pixel_y == 479)) begin
            red <= 4'h0;
            green <= 4'h0;
            blue <= 4'h0;
        end
        else 
        begin
                if ((pixel_x >= x) && (pixel_x < x + w) && (pixel_y >= y) && (pixel_y < y + h))
                    begin
                        address <= (pixel_x -x) + ((pixel_y - y) * w);
                        red = (palette[(dout*3)])>>4;    // RED bits(7:4) from colour palette
                        green = (palette[(dout*3)+1])>>4;  // GREEN bits(7:4) from colour palette
                        blue = (palette[(dout*3)+2])>>4;  // BLUE bits(7:4) from colour palette
                    end
                    else
                    begin
                    // the three lines are working properly i am commenting them out for experimentation
                        red <= (palette[(COL*3)])>>4;     // RED bits(7:4) from colour palette
                        green <= (palette[(COL*3)+1])>>4;   // GREEN bits(7:4) from colour palette
                        blue <= (palette[(COL*3)+2])>>4;   // BLUE bits(7:4) from colour palette
                    end
            end
                
        end
        
 endmodule       
        
        
        
            

//    always @(posedge clk_d or posedge reset)
//    begin 
//        if(reset==1)
//            refresh_counter <= 0;
//        else
//            refresh_counter <= refresh_counter + 1;
//    end 
//    assign LED_activating_counter = refresh_counter[20:19];
//    always @(*)
//    begin
//        case(LED_activating_counter)
//        2'b00: begin
//            Anode_Activate = 4'b0111; 
//            LED_BCD = displayed_number/1000;
//              end
//        2'b01: begin
//            Anode_Activate = 4'b1011; 
//            LED_BCD = (displayed_number % 1000)/100;
//              end
//        2'b10: begin
//            Anode_Activate = 4'b1101; 
//            LED_BCD = ((displayed_number % 1000)%100)/10;
//                end
//        2'b11: begin
//            Anode_Activate = 4'b1110; 
//            LED_BCD = ((displayed_number % 1000)%100)%10;
//               end
//        endcase
//    end
//    always @(*)
//    begin
//        case(LED_BCD)
//        4'b0000: LED_out = 7'b0000001; // "0"     
//        4'b0001: LED_out = 7'b1001111; // "1" 
//        4'b0010: LED_out = 7'b0010010; // "2" 
//        4'b0011: LED_out = 7'b0000110; // "3" 
//        4'b0100: LED_out = 7'b1001100; // "4" 
//        4'b0101: LED_out = 7'b0100100; // "5" 
//        4'b0110: LED_out = 7'b0100000; // "6" 
//        4'b0111: LED_out = 7'b0001111; // "7" 
//        4'b1000: LED_out = 7'b0000000; // "8"     
//        4'b1001: LED_out = 7'b0000100; // "9" 
//        default: LED_out = 7'b0000001; // "0"
//        endcase
//    end
//endmodule


//module lvl_100(
//    input wire [16:0] address,
//    input wire clk_pix,
//    output reg [7:0] dataout 
//    );

//    (*ROM_STYLE="block"*) reg [7:0] memory_array [0:200000]; 
    
//    initial 
//    begin
//        $readmemh("lvl100.mem", memory_array);
//    end

//    always@(posedge clk_pix)
//            dataout <= memory_array[address];     
//endmodule

//`timescale 1ns / 1ps

//module closed_lid(
//    input wire [16:0] address,
//    input wire clk_pix,
//    output reg [7:0] dataout 
//    );

//    (*ROM_STYLE="block"*) reg [7:0] memory_array [0:200000]; 
    
//    initial 
//    begin
//        $readmemh("trex.mem", memory_array);
//    end

//    always@(posedge clk_pix)
//            dataout <= memory_array[address];     
//endmodule


//module lvl_50(
//    input wire [16:0] address,
//    input wire clk_pix,
//    output reg [7:0] dataout 
//    );

//    (*ROM_STYLE="block"*) reg [7:0] memory_array [0:200000]; 
    
//    initial 
//    begin
//        $readmemh("lvl50.mem", memory_array);
//    end

//    always@(posedge clk_pix)
//            dataout <= memory_array[address];     
//endmodule


//module open_lid(
//    input wire [16:0] address,
//    input wire clk_pix,
//    output reg [7:0] dataout 
//    );

//    (*ROM_STYLE="block"*) reg [7:0] memory_array [0:200000]; 
    
//    initial 
//    begin
//        $readmemh("open.mem", memory_array);
//    end

//    always@(posedge clk_pix)
//            dataout <= memory_array[address];     
//endmodule

