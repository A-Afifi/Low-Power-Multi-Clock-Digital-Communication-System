// ************************************************************* //
//                      Module : AS_FIFO_TOP_tb                 //
//                      Author : Ahmed_Afifi                    //
// ************************************************************* //

`timescale 1ns/1ps

module AS_FIFO_TOP_tb;

//******************************* Parameters *******************************
parameter Data_Width = 8;
parameter Addr_Size  = 4;
parameter FIFO_Dipth = 16; 
parameter NUM_STAGES = 2;

// Clock periods
parameter W_CLK_PERIOD = 10;  // 100 MHz
parameter R_CLK_PERIOD = 25;  // 40 MHz

//******************************* DUT Signals ******************************
// Write domain signals
reg                     I_W_CLK;
reg                     I_W_RST;
reg                     I_W_INC;
reg  [Data_Width-1:0]   I_Data;

// Read domain signals
reg                     I_R_CLK;
reg                     I_R_RST;
reg                     I_R_INC;

// Output signals
wire [Data_Width-1:0]   O_Data;
wire                    FIFO_Full;
wire                    FIFO_Empty;

// Testbench variables
integer write_count = 0;
integer read_count = 0;
integer error_count = 0;
reg [Data_Width-1:0] expected_data;
reg [Data_Width-1:0] test_data [0:8];  // For 9 bytes

//***************************** DUT Instantiation ***************************
AS_FIFO_TOP #(
    .Data_Width(Data_Width),
    .Addr_Size(Addr_Size),
    .FIFO_Dipth(FIFO_Dipth),
    .NUM_STAGES(NUM_STAGES)
) uut (
    .I_W_CLK(I_W_CLK),
    .I_W_RST(I_W_RST),
    .I_W_INC(I_W_INC),
    .I_Data(I_Data),
    .I_R_CLK(I_R_CLK),
    .I_R_RST(I_R_RST),
    .I_R_INC(I_R_INC),
    .O_Data(O_Data),
    .FIFO_Full(FIFO_Full),
    .FIFO_Empty(FIFO_Empty)
);

//********************************* Clock Generators ************************* 
// Write clock (100 MHz)
always begin
    #(W_CLK_PERIOD/2) I_W_CLK = ~I_W_CLK;
end

// Read clock (40 MHz)
always begin
    #(R_CLK_PERIOD/2) I_R_CLK = ~I_R_CLK;
end

//******************************* Initial Block *******************************
initial begin : main_test
    // Initialize signals
    I_W_CLK = 0;
    I_W_RST = 1;
    I_W_INC = 0;
    I_Data = 'b0;
    I_R_CLK = 0;
    I_R_RST = 1;
    I_R_INC = 0;

    // Initialize test data
    test_data[0] = 8'h01; test_data[1] = 8'h23; test_data[2] = 8'h45;
    test_data[3] = 8'h67; test_data[4] = 8'h89; test_data[5] = 8'hAB;
    test_data[6] = 8'hCD; test_data[7] = 8'hEF; test_data[8] = 8'h55;
    
    // Apply reset
    #10;
    I_W_RST = 0;
    I_R_RST = 0;
    #20;
    I_W_RST = 1;
    I_R_RST = 1;
    #10;
    
    $display("Starting Asynchronous FIFO Testbench");
    $display("Write Frequency: 100 MHz, Read Frequency: 40 MHz");
    
    // Finish simulation
    #500;
    if (error_count == 0)
        $display("TEST PASSED: All data transferred correctly");
    else
        $display("TEST FAILED: %0d errors detected", error_count);
    
    $finish;
end

//******************************* Write Process *******************************
initial begin : write_process
    integer i;
    
    // Wait for reset to complete
    @(posedge I_W_RST);
    #50;
    @(posedge I_W_CLK);
    
    // Write 9 bytes of data
    for (i = 0; i < 9; i = i + 1) begin
        // Wait if FIFO is full
        while (FIFO_Full) begin
            @(posedge I_W_CLK);
            I_W_INC = 0;
        end
        
        // Generate data and write to FIFO
        I_Data = test_data[i];
        I_W_INC = 1;
        write_count = write_count + 1;
        @(posedge I_W_CLK);     
    end

        I_W_INC = 0;
    
end

//******************************* Read Process *******************************
initial begin : read_process
    integer i;
    
    @(negedge FIFO_Empty); // Wait for the FIFO to be not empty
    
    // Read all written data
    for (i = 0; i < 9; i = i + 1) begin
        // Wait if FIFO is empty
        while (FIFO_Empty) begin
            @(posedge I_R_CLK);
            I_R_INC = 0;
        end
        
        // Read from FIFO
        I_R_INC = 1;
        @(posedge I_R_CLK);
        
        // Check data
        expected_data = test_data[read_count];
        if (O_Data !== expected_data) begin
            $display("Expected: 0x%h, Received: 0x%h - Error ", 
                      expected_data, O_Data);
            error_count = error_count + 1;
        end else begin
            $display("Expected: 0x%h, Data: 0x%h - CORRECT", expected_data, O_Data);
        end
        
        read_count = read_count + 1;

    end
end

endmodule