// ************************************************************* //
//                      Module : RST_SYN                         //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module RST_SYN  #( 
    parameter NUM_STAGES = 2          // Number of synchronization flip-flops
)(	
input    wire     RST,                // Asynchronous reset input
input    wire     CLK,                // Destination clock domain
output   wire     SYNC_RST            // Synchronized reset output
);

// Internal Signals 		
reg   [NUM_STAGES-1:0]    sync_reg;                 // Shift register for synchronization stages
		

// Combinational Logic
assign  SYNC_RST = sync_reg[NUM_STAGES-1] ;         // Output = last stage of synchronizer


// Sequential Logic
always @(posedge CLK , negedge RST)
begin
    if(!RST)  
    begin
        sync_reg <= 'b0 ;                            // Clear synchronizer chain on reset
    end
    else
    begin
        sync_reg <= {sync_reg[NUM_STAGES-2:0],RST} ; // Shift register
    end  
end
	 
endmodule
