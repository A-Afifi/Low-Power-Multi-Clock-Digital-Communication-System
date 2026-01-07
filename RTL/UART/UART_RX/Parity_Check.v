// ************************************************************* //
//                      Module : Parity_Check                    //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module Parity_Check #(
    parameter Data_Width = 8    
)(
    //Basic Inputs
    input   wire                    CLK,            // System clock
    input   wire                    RST,            // Active low reset
    input   wire                    En,             // Enable signal
    input   wire                    Flags_Done,     // Flags done signal
    //Configuration Inputs 
    input   wire                    PAR_TYP,        // Parity type: 0=Even, 1=Odd
    //Inputs from Deserializer
    input   wire   [Data_Width-1:0] R_Data,         // Received data
    input   wire                    Deser_Done,     // Deserializer done signal 
    //Inputs from Data_Sampling
    input   wire                    Parity_In,      // Received parity bit
    //Module Outputs
    output  reg                     par_err         // Parity error flag
);


// Internal Signals
reg Calc_parity ;  // Calculated parity value


// Sequential Logic 
always @(posedge CLK , negedge RST) begin
    if (!RST) begin
       par_err <= 1'b0;                      // Reset parity error flag
       Calc_parity <= 1'b0;                  // Reset calculated parity
    end

    else if (Deser_Done) begin               // When deserialization is complete
        case(PAR_TYP)
            1'b0 : begin                     // Even Parity case
                    Calc_parity <= ^R_Data;  // XOR all data bits (1 if odd number of 1's)
                   end

            1'b1 : begin                     // Odd Parity case
                    Calc_parity <= ~^R_Data; // XNOR all data bits (1 if even number of 1's)
                   end		
        endcase   
    end

    else if (En) begin                       // When enabled
        par_err <= Parity_In ^ Calc_parity;  // Compare received vs calculated parity
    end 

    else if (Flags_Done) begin               // When flags are done
        par_err <= 1'b0;                     // Clear parity error
    end     

end        
    
endmodule