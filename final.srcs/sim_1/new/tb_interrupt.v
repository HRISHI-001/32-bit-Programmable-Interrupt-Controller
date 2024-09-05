`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 15:30:36
// Design Name: 
// Module Name: tb_interrupt
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//Test Bench to write into the mask register in write mode
`timescale 1ns / 1ps

module tb_intrcntrl;

    // Parameters
    parameter CLK_PERIOD = 20; // Clock period in ns

    // Signals
    reg clk = 0;               // Clock signal
    reg reset;             // Reset signal
    reg read = 0;             // Read/Write control signal
    reg int_ack = 0;           // Interrupt acknowledgment from microprocessor
    reg [31:0] irq = 32'b0;  // Interrupt requests from 8 sources (IR0 - IR7)
    reg [1:0] s = 2'b00;       // Select lines to select the register whose value is to be read by the processor
    reg [31:0] imq = 32'b0; // Data to write on mask register
    wire int_req;              // Interrupt request output to microprocessor
    wire [31:0] data_bus;       // Data bus to transmit vector address to microprocessor

    // Instantiate the intrcntrl module
    intrcntrl intrcntrl_inst (
        .clk(clk),
        .reset(reset),
        .read(read),
        .irq(irq),
        .int_ack(int_ack),
        .int_req(int_req),
        .data_bus(data_bus),
        .s(s),
        .imq(imq)
    );
        
    // Clock generation
    always #((CLK_PERIOD / 2)) clk = ~clk;

   initial begin
        // Test case 1: Write to mask register and acknowledge interrupt
        reset = 1;
        #100 reset = 0;
        irq = 32'b10000000000000000110011011001111;//(31,14,13,10,9,7,6,3,2,1,0)
        imq = 32'b11111111111111111111111111110111;  //(3)
        repeat(3)
        @(posedge clk);        
        int_ack = 1;  //31st interrupt served
        @(posedge clk);
        int_ack = 0;        
        irq = 32'b00000000000000000110011011000111; //31st interrupt served so disable it
        repeat(3)
        @(posedge clk);        
        int_ack = 1; //14th from prev set will be served here
        @(posedge clk);
        int_ack = 0; 
        irq = 32'b01000000000000000000000000000110;  //new set of interrupt came and remaining interrupts of previous set are unserved (30,2,1)
        repeat(3)
        @(posedge clk);        
        int_ack = 1;   //30th 
        @(posedge clk);
        int_ack = 0; 
        irq = 32'b00000000000000000000000000000110;  //donot disable 30th here as it is not served yet 
        repeat(3)
       @(posedge clk);        
        int_ack = 1;  //13th from new set served
        @(posedge clk);
        int_ack = 0; 
        
        repeat(3)
        @(posedge clk);        
        int_ack = 1;  //10th from unserved set served
        @(posedge clk);
        int_ack = 0; 
        repeat(3)
       @(posedge clk);        
        int_ack = 1;  //9th from unserved set
        @(posedge clk);
        int_ack = 0; 
        repeat(3)
       @(posedge clk);        
        int_ack = 1;  //7th from unserved
        @(posedge clk);
        int_ack = 0; 
        repeat(3)
       @(posedge clk);        
        int_ack = 1;  //6th from unserved set
        @(posedge clk);
        int_ack = 0; repeat(3)
       @(posedge clk);        
        int_ack = 1;  //2th from unserved
        @(posedge clk);
        int_ack = 0; 
        irq = 32'b00000000000000000000000000000010;  //disable 2nd reqrepeat(3)
       @(posedge clk);        
        int_ack = 1;  //1st from current set
        @(posedge clk);
        int_ack = 0; 
        int_ack = 0; irq = 32'b00000000000000000000000000000000; 
        repeat(3)
       @(posedge clk);        
        int_ack = 1; //0th from unserved set
        @(posedge clk);
        int_ack = 0; 
        repeat(3)
       @(posedge clk);        
        int_ack = 1; 
        @(posedge clk);
        int_ack = 0; 
        repeat(3)
       @(posedge clk);        
        int_ack = 1;
        @(posedge clk);
        int_ack = 0; 
        read= 1; s = 2'b10;
       
        /*#5 int_ack = 1; *//*irq = 32'b00000000000000000110011011000111; //31st unterrupt served//*
        #20 int_ack = 0*/; 
       /* #5 read= 1; s = 2'b01; 
        #5 read= 0;
        #15 int_ack = 1; irq = 32'b00000000000000000010011011000111; //14th interrupt served
        #5 int_ack = 0;  
        #10 int_ack = 1;irq = 32'b00000000000000000000011011000111;  //13th interrupt served
        #5 int_ack = 0; 
        
        //new masking added (2,3,6,7)
        
        
        #5 imq = 32'b0000000000000000000011001100;
       #25 int_ack = 1;irq = 32'b00000000000000000000001011000111;  //10th interrupt served
        #5 int_ack = 0;irq = 32'b01000000000000000000000011000101;  //new irq added (0,2,6,7,30)
        
        //pending interrupts from previous reqs (9,1,0) 
        //total requests (0,1,2,6,7,9,30)
        //after masking new active reqs(30,9,1,0)
        //out of this (1,9) are from previous requests son no need to update this bits after being servedas they are already zero
        #10 int_ack = 1; irq = 32'b00000000000000000000000011000101; //30th interrupt served
        #5 int_ack = 0; 
        #10 int_ack = 1; 
        #5 int_ack = 0;
        #5 read= 1; s = 2'b10;
       #5 s = 2'b11;
       #5 s = 2'b00;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1; irq = 32'b00000000000000000000000011000100; //0th interrupt is served
        #5 int_ack = 0;
         #10 int_ack = 1;
        #5 int_ack = 0;
         #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;*/
               
               
               
               
               
        /* #5 irq = 32'b10000000000001110000110000000000;
         #10 int_ack = 1;
        #5 int_ack = 0;
        
         #10 int_ack = 1;
        #5 int_ack = 0;
         #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0;
        #10 int_ack = 1;
        #5 int_ack = 0; */
       
        #500 $finish;
    
        // Test case 3: Enable all interrupts, trigger multiple interrupts, and acknowledge them
      /*  #5 wr_data = 8'b11111111;
        #5 irq = 8'b10101010;
        #5 int_ack = 1;
        #5 int_ack = 0;
        #5 irq = 8'b01010101;
        #5 int_ack = 1;
        #5 int_ack = 0;
        // st case 4: Read from different registers
        #5 s = 2'b00;
        #5 rdnwr = 1;
        #5 int_ack = 1;
        #5 int_ack = 0;
        #5 s = 2'b01;
        #5 rdnwr = 1;
        #5 int_ack = 1;
        #5 int_ack = 0;
        #5 s = 2'b11;
        #5 rdnwr = 1;
        #5 int_ack = 1;
        #5 int_ack = 0;  */
        
        // Test case 5: Reset the system  
        
        
    end

endmodule
