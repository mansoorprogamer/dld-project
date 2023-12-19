module toplevelmodulelab11 (
    input clk,   
    output PWM,  
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue,
    output h_sync,
    output v_sync
);

wire ir_signal;
wire ir_signal2;
wire ir_signal3; 

wire clk_d;
wire [9:0] h_count;
wire [9:0] v_count;
wire v_trig;
wire video_on;
wire [9:0] x_loc;
wire [9:0] y_loc;
dustbin_clock_divider(clk, clk_d);
dustbin_h(clk_d, h_count, v_trig);
dustbin_v(clk_d, v_trig, v_count);

//cahnges
dustbin_vga_sync(h_count, v_count, h_sync, v_sync, video_on, x_loc, y_loc); 
dustbin_pixel(clk_d, x_loc, y_loc, video_on, red, green, blue);


Servo_Control(
    ir_signal, // This comes from the IR sensor.
    ir_signal2,
    ir_signal3,
    clk, // This is the internal clock from the basys 3.
    PWM);
endmodule


//module TopModule(
//    input reset, // reset
//    input ir_signal,
//    input ir_signal2,
//    input ir_signal3,
//    input clk,
    
    
//    output PWM, // This is what drives the servo motor.
////    output reg [3:0] Anode_Activate, // anode signals of the 7-segment LED display
////    output reg [6:0] LED_out, // cathode patterns of the 7-segment LED display
//    output [3:0] red,
//    output [3:0] green,
//    output [3:0] blue,
//    output h_sync,
//    output v_sync
    
//    );

//    wire clk_d;
//    wire [9:0] h_count;
//    wire [9:0] v_count;
//    wire v_trig;
//    wire video_on;
//    wire [9:0] x_loc;
//    wire [9:0] y_loc;
//    dustbin_clock_divider(clk, clk_d);
//    dustbin_h(clk_d, h_count, v_trig);
//    dustbin_v(clk_d, v_trig, v_count);
    
//    //cahnges
//    dustbin_vga_sync(h_count, v_count, h_sync, v_sync, video_on, x_loc, y_loc); 
//    dustbin_pixel(clk_d, x_loc, y_loc, video_on, red, green, blue);


//    wire PWM_wire; // Wire to connect the output of Servo_Control to PWM input of TopModule

//    // Instantiate Servo_Control module
//    Servo_Control servo_inst(
//        .ir_signal(ir_signal),
//        .ir_signal2(ir_signal2),
//        .ir_signal3(ir_signal3),
//        .Mouse_Clk(clk),
//        .PWM(PWM)
//    );

//    // Instantiate sensor_screens module
////    sensor_screens sensor_inst(
////        .clock_100Mhz(clk),
////        .reset(reset),
////        .ir_signal(ir_signal),
////        .ir_signal2(ir_signal2),
////        .ir_signal3(ir_signal3),
////        .Anode_Activate(Anode_Activate),
////        .LED_out(LED_out)
////    );

//    // Connect the PWM output from Servo_Control to PWM output of TopModule
////    assign PWM = PWM_wire;

//endmodule
