// ************************************************************* //
//                      Module : DATA_SYNC_tb                    //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

`timescale 1ns/1ps

module DATA_SYNC_tb;

//******************************* Parameters *******************************
parameter NUM_STAGES = 2;        // Number of sync stages
parameter BUS_WIDTH  = 8;        // Bus width to be synchronized


//******************************* DUT Signals ******************************
reg  RST;
reg  CLK;
reg  [BUS_WIDTH-1:0] unsync_bus;
reg  bus_enable;
wire [BUS_WIDTH-1:0] sync_bus;
wire enable_pulse;


//***************************** DUT Instantiation ***************************
DATA_SYNC #(.NUM_STAGES(NUM_STAGES), .BUS_WIDTH(BUS_WIDTH)) uut (
    .CLK(CLK),
    .RST(RST),
    .unsync_bus(unsync_bus),
    .bus_enable(bus_enable),
    .sync_bus(sync_bus),
    .enable_pulse(enable_pulse)
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
    unsync_bus = 0;
    bus_enable = 0;
    #20;              

    //================ First Test Case ================//
    #15;
    RST = 0;                      // Assert reset (active low)
    #20 RST = 1;                   // Deassert reset 
    #15;

    // Send first data word
    unsync_bus = 8'hA5;           // Example data = 0xA5
    bus_enable = 1;               // Assert enable
    #10 bus_enable = 0;           // Deassert enable after one cycle
    #100;

    //================ Second Test Case ================//
    // Send another data word after reset
    #1;
    RST = 0;                      // Assert reset again
    #10;
    RST = 1;                      // Release reset
    #24;

    unsync_bus = 8'h3C;           // Example data = 0x3C
    bus_enable = 1;               // Assert enable
    #10 bus_enable = 0;           // Deassert enable
    #100;

    //================ Third Test Case ================//
    #5;
    unsync_bus = 8'h55;
    bus_enable = 1;
    #10 bus_enable = 0;
    #8;
    RST = 0;                      // Assert reset again
    #10;
    RST = 1;                      // Release reset
    #5;
    #100;

    $finish;
end

endmodule
