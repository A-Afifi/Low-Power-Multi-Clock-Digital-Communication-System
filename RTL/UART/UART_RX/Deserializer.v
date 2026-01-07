// ************************************************************* //
//                      Module :Deserializer                     //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module Deserializer #(
    parameter Data_Width = 8    // Width of parallel output data
)(
    //Basic Inputs
    input   wire                     CLK,        // System clock
    input   wire                     RST,        // Active low reset
    input   wire                     En,         // Enable signal
    //Configuration Inputs 
    input   wire  [5:0]              Prescale,   // Oversampling ratio
    //Inputs from Data_Sampling   
    input   wire                     S_In,       // Serial input data
    //Inputs from Edge_Bit_Counter   
    input   wire  [5:0]              edge_count, // Current edge count
    //Module Outputs
    output  reg   [Data_Width-1:0]   P_out,      // Parallel output data
    output  wire                     Deser_Done  // Deserialization complete flag
);

//Parameters
localparam N_Width = $clog2(Data_Width +'d2) ; // Counter width calculation


// Internal Signals
reg [N_Width-1:0] N ;           // Bit counter for tracking received bits



// Combinational Logic  
assign Deser_Done = (N == Data_Width)?  1'b1 : 1'b0 ; // Set flag when all bits received




// Sequential Logic 
always @(posedge CLK , negedge RST) begin
    if (!RST) begin
       P_out <= 'b0;      // Reset parallel output
       N <= 'b0 ;         // Reset bit counter
    end

    else if (En && edge_count == (Prescale - 6'b1)) begin // At last edge of each bit period
       P_out <= {S_In,P_out[Data_Width-1:1]};             // Shift in new bit (LSB first)
       N <= N + 'b1 ;                                     // Increment bit counter
    end

    else if (!En) begin 
       N <= 'b0 ;         // Reset counter when disabled
    end    

end    
    
endmodule