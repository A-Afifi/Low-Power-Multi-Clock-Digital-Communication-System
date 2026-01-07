// ************************************************************* //
//                      Module : Stop_Check                      //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module Stop_Check (
    //Basic Inputs
    input   wire                  CLK,            // System clock
    input   wire                  RST,            // Active low reset
    input   wire                  En,             // Enable signal
    input   wire                  Flags_Done,     // Flags done signal
    //Inputs from Data_Sampling   
    input   wire                  Stop_bit,       // Sampled stop bit value
    //Module Outputs
    output  reg                   Stp_err         // Stop bit error flag
);

// Sequential Logic 
always @(posedge CLK , negedge RST) begin
    if (!RST) begin
       Stp_err <= 1'b0;  // Reset error flag
    end

    else if (En) begin               // When enabled
        if (!Stop_bit) begin         // If stop bit is low (should be high)
            Stp_err <= 1'b1 ;        // Set stop error flag
        end  
        else begin 
            Stp_err <= 1'b0 ;        // Clear error flag
        end     
    end

    else if (Flags_Done) begin       // When flags are done
        Stp_err <= 1'b0 ;            // Clear error flag
    end
end    
    
endmodule
