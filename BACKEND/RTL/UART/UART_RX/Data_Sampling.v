// ************************************************************* //
//                      Module :Data_Sampling                    //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module Data_Sampling (
    //Basic Inputs
    input   wire                  CLK,          // System clock
    input   wire                  RST,          // Active low reset
    input   wire                  En,           // Sampling enable signal
    //Configuration Inputs 
    input   wire  [5:0]           Prescale,     // Oversampling ratio (8, 16, 32)
    //Input From UART_TX
    input   wire                  RX_In,        // Serial data input
    //Inputs from Edge_Bit_Counter   
    input   wire  [5:0]           Edge_Count,   // Current edge counter value
    //Module Outputs
    output  reg                   Sampeld_Bit   // Final sampled bit value
);

// Internal Signals
wire [4:0] Middle_Sample , Middle_Sample_Plus , Middle_Sample_minus ;   // Sample points calculation
reg  [2:0] Samples ;                                                    // Stores three consecutive samples for majority voting


// Compinational Logic
assign Middle_Sample = (Prescale>>1) ;                    // Calculate middle sample point (Prescale/2)
assign Middle_Sample_Plus = Middle_Sample + 'b1 ;         // Calculate sample point after middle (for noise immunity)
assign Middle_Sample_minus = Middle_Sample - 'b1 ;        // Calculate sample point before middle (for noise immunity)




// (Sequential Logic) - Three-sample capture process for noise filtering
always @(posedge CLK , negedge RST) begin
    if (!RST) begin
       Samples   <=  'b0;                                 // Reset samples on active low reset
    end

    else if (En) begin
        if (Edge_Count == Middle_Sample_minus) begin
            Samples[0] <= RX_In ;                         // Capture sample at Middle-1 point
        end

        
        else if (Edge_Count == Middle_Sample) begin
            Samples[1] <= RX_In ;                         // Capture sample at exact Middle point
        end

        
        else if (Edge_Count == Middle_Sample_Plus) begin  // Capture sample at Middle+1 point
            Samples[2] <= RX_In ;
        end

    end

    else begin
        Samples     <= 1'b0;                               // Clear samples when disabled
    end    

end  




// (Sequential Logic) -- Majority voting logic to determine final bit value
always @(posedge CLK , negedge RST) begin
    if (!RST) begin
       Sampeld_Bit <= 1'b0;                                
    end

    else if (En) begin
        // Majority voting: output 1 if at least 2 of 3 samples are 1
        Sampeld_Bit <= (Samples[0] & Samples[1]) | (Samples[0] & Samples[2]) | (Samples[1] & Samples[2]);
    end

    else begin
        Sampeld_Bit <= 1'B0 ;  // Output 0 when disabled
    end    

end
    
endmodule
