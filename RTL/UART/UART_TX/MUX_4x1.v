// *************************************************************//
//                       Module : MUX_4x1                       //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//

module MUX_4x1 (
    input   wire         CLK,        // Clock Signal
    input   wire         RST,        // Asynchronous active-low reset
    input   wire [1:0]   mux_sel ,   // 2-bit selection signal (00 to 11)
    input   wire         input_1 ,   // Input 1 selected by 00
    input   wire         input_2 ,   // Input 2 selected by 01
    input   wire         input_3 ,   // Input 3 selected by 10
    input   wire         input_4 ,   // Input 4 selected by 11
    output  reg          OUT         // Output of the MUX
);
// Internal Signals 
reg mux_out ;


// Combinational logic: select one input based on mux_sel value
always @(*) 
begin
    case(mux_sel) 
        2'b00: mux_out = input_1 ;  
        2'b01: mux_out = input_2 ; 
        2'b10: mux_out = input_3 ;  
        2'b11: mux_out = input_4 ; 
    endcase    
end


// Sequential Logic
always @(posedge CLK , negedge RST) 
begin
    if (!RST) begin
       OUT <= 1'b1 ; 
    end   

    else begin 
       OUT <=  mux_out ; 
    end    
end


endmodule