// *************************************************************//
//                      Module : Parity_Calc                    //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//


/* This module calculates the parity bit for an 8-bit input data.
   It supports both Even and Odd parity based on the PAR_TYP control signal.
   The calculation is triggered on the rising edge of Data_En.
*/

module Parity_Calc (
    input   wire       CLK,             // Clock Signal
    input   wire       RST,             // Asynchronous active-low reset
    input   wire [7:0] In_Data ,        // 8-bit input data to calculate parity for
    input   wire       Data_Valid,      // High for 1 clock cycle to load new data 
    input   wire       Basy_signal,     // Busy flag (High during transmission)
    input   wire       Parity_Calc_En,  // Enable signal for the Parity Calculator
    input   wire       PAR_TYP ,        // Parity type: 0 = Even parity, 1 = Odd parity
    output  reg        par_bit          // Calculated parity bit
);

// Intrnal Signals
reg  [7:0]    DATA_V ;            // Store the Data into this Register 


// Sequintial Logic 
always @ (posedge CLK or negedge RST) begin 
    if(!RST)
    begin
        DATA_V  <= 'b0 ;                    // Reset the DATA_V
        par_bit <= 'b0 ;
    end

    else if(Data_Valid && !Basy_signal)
    begin
        DATA_V <= In_Data ;                // Store the In_Data into the DATA_V register
    end

    else if (Parity_Calc_En)
    begin     
        if (PAR_TYP) begin                 // Odd Parity mode
            par_bit <= ~^DATA_V ;          // Result is XNOR of all Data bits (1 if even number of 1's)
        end

        else if (!PAR_TYP) begin           // Even Parity mode
            par_bit <= ^DATA_V ;           // Result is XOR of all Data bits (1 if odd number of 1's)
        end 
    end       
end    

endmodule
