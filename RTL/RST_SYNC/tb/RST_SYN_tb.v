// ************************************************************* //
//                      Module : RST_SYN_tb                      //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

`timescale 1ns/1ps

module RST_SYN_tb;

//******************************* Parameters *******************************
parameter NUM_STAGES = 2;   // Number of sync stages


//******************************* DUT Signals ******************************
reg  RST;
reg  CLK;
wire SYNC_RST;

//***************************** DUT Instantation ****************************
RST_SYN #(.NUM_STAGES(NUM_STAGES)) uut (
    .RST(RST),
    .CLK(CLK),
    .SYNC_RST(SYNC_RST)
);

//********************************* Clock Generator ************************* 
always begin
    #5 CLK = ~CLK;   // (period = 10ns -> 100MHz)
end


//******************************* initial block *******************************
initial begin
    // Initialization
    CLK = 0;
    RST = 1;
    #20;              


    // First test Case 
    #14;
    RST = 0;                  // Assert reset (active low)
                   
    #20 RST = 1;              // Deassert reset 
    #100;


    // Secound test Case 
    #1;
    RST = 0;                 // Assert reset (active low)
    #10;
    RST = 1;                 // Deassert reset 
    #100;


    $finish;
end

endmodule
