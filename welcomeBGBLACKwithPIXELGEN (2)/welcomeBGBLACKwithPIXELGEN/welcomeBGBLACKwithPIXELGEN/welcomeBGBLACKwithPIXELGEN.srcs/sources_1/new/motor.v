
module Servo_Control(
    input ir_signal, // This comes from the IR sensor.
    input ir_signal2,
    input ir_signal3,
    input clk, // This is the internal clock from the basys 3.
    output PWM // This is what drives the servo motor.
    );
    reg [20:0] Counter; // The counter is increments 
    reg [20:0] Width; // The width sets the size of our PWM.
    reg temp_PWM;    // This is how we modify the output.
    
    initial begin // Initializes all the values to zero.
    Counter = 0;
    Width = 0;
    temp_PWM = 0;
    end
                                                           
    always@(posedge clk) begin // Increments the Counter as every lock cycle.
        Counter<= Counter + 1;
        
    if (ir_signal == 0) // This sets our width based on the input from the sensor.
        Width = 100000; // This sets our width to our 90% angle.
    else
        Width = 200000; // This sets our width to our 45% angle.
    if (Counter < Width) // This generates the PWM by comparing the counter to width.
        temp_PWM <= 1; // Output is 1 when the counter is less than the width.
    else
        temp_PWM <=0; // Output is 0 when the counter is greater than the width.
    end
    
 assign PWM = temp_PWM; // This lets us control the output.
 
    
endmodule



//module sensor_screens(
//    input clk, // 100 Mhz clock source on Basys 3 FPGA
//    input reset, // reset
//    input wire ir_signal,
//    input wire ir_signal2,
//    input wire ir_signal3,
    
//    output reg [3:0] Anode_Activate, // anode signals of the 7-segment LED display
//    output reg [6:0] LED_out// cathode patterns of the 7-segment LED display
//    );
    
//    reg [15:0] displayed_number; // Number to be increased and decreased by the mouse 
//    reg [3:0] LED_BCD;
//    reg [20:0] refresh_counter;
//    wire [1:0] LED_activating_counter; 

//    always @(posedge clk or posedge reset)
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
    

//    always @(posedge clk or posedge reset)
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
// endmodule





