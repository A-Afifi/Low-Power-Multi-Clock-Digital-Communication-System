// ************************************************************* //
//                      Module : RX_CLKDIV_MUX                   //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module RX_CLKDIV_MUX #(
parameter Width = 8
)(
input    wire     [5:0]              Input,
output   reg      [Width-1:0]        MUX_Out
);


always @(*) begin
	case(Input) 
		6'b100000 : MUX_Out = 8'd1 ;
		6'b010000 : MUX_Out = 8'd2 ;	
		6'b001000 : MUX_Out = 8'd4 ;
		6'b000100 : MUX_Out = 8'd8 ;
		default   : MUX_Out = 8'd1 ;				
	endcase
end	
  
endmodule
