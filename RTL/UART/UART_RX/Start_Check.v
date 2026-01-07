// ************************************************************* //
//                      Module : Start_Check                     //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module Start_Check (
    //Basic Inputs
    input   wire                  CLK,            // System clock
    input   wire                  RST,            // Active low reset
    input   wire                  En,             // Enable signal
    input   wire                  Flags_Done,     // Flags done signal
    //Inputs from Data_Sampling   
    input   wire                  Start_bit,      // Sampled start bit value
    //Module Outputs
    output  reg                   Str_err         // Start bit error flag
);

// Sequential Logic 
always @(posedge CLK , negedge RST) begin
    if (!RST) begin
       Str_err <= 1'b0;  // Reset error flag
    end

    else if (En) begin               // When enabled
        if (Start_bit) begin         // If start bit is high (should be low)
            Str_err <= 1'b1 ;        // Set start error flag
        end  
        else begin 
            Str_err <= 1'b0 ;        // Clear error flag
        end        
    end

    else begin
        Str_err <= 1'b0 ;            // Clear error when disabled
    end

end    
    
endmodule
