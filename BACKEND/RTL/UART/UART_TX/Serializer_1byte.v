// *************************************************************//
//                      Module : Serializer_1byte               //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//

/* This module serializes an 8-bit parallel input (In_Data) into a
   single-bit serial output (Out_Data) when enabled (ser_en).
   The serialization is done bit-by-bit over multiple clock cycles.
   A 'ser_done' flag indicates when the serialization process is complete.
*/ 

module Serializer_1byte (
    input  wire  [7:0] In_Data,     // 8-bit parallel input data to serialize
    input  wire        Data_Valid,  // High for 1 clock cycle to load new data 
    input  wire        Basy_signal, // Busy flag (High during transmission)
    input  wire        CLK,         // Clock
    input  wire        RST,         // Asynchronous active-low reset
    input  wire        ser_en,      // Serializer enable signal
    output reg         ser_done,    // Indicates serialization completion
    output wire         Out_Data     // Serialized output bit
);

    // Internal Signals
    reg [7:0]  S_R_Data; // Shift register to hold the data
    reg [3:0]  counter;  // Counts remaining bits

    always @(posedge CLK or negedge RST)
    begin
       if (!RST) begin
          S_R_Data <= 8'b0;
          ser_done <= 1'b0; 
          counter  <= 4'b0000;  
       end

       else if (Data_Valid && !Basy_signal) begin         // Store the In_Data in the S_R_Data register one time oly at write time 
          S_R_Data <= In_Data;
          counter  <= 4'b1000;                            // 8 bits to send
          ser_done <= 1'b0;
       end 

       else if (ser_en) begin 
            if (counter != 4'b0001) begin                  // From counter=8 --> counter=2                  
                S_R_Data <= {1'b0, S_R_Data[7:1]};        
                counter  <= counter - 1'b1;  
                ser_done <= 1'b0; 
            end
            else if (counter != 4'b0000)  begin            // For only Counter=1                  
                S_R_Data <= {1'b0, S_R_Data[7:1]};        
                counter  <= counter - 1'b1;  
                ser_done <= 1'b1; 
            end           
        end 
    end


    assign Out_Data = S_R_Data[0];

endmodule
