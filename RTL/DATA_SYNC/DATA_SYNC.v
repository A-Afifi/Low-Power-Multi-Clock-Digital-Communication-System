// ************************************************************* //
//                      Module : DATA_SYNC                       //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module DATA_SYNC # ( 
     parameter NUM_STAGES = 2 ,                 // Number of sync stages for enable signal
	   parameter BUS_WIDTH = 8                    // Bus width to be synchronized
)(
input    wire                      CLK,         // Destination clock
input    wire                      RST,         // Asynwire                      enable_pulse // One-cycle enable pulse in destination domainchronous active-low reset
input    wire     [BUS_WIDTH-1:0]  unsync_bus,  // Input bus from another clock domain (unsynchronized)
input    wire                      bus_enable,  // Control signal indicating bus is valid
output   reg      [BUS_WIDTH-1:0]  sync_bus,    // Synchronized output bus
output   reg                       enable_pulse_d   
);



////////////////////////////// internal Signals //////////////////////////////
reg   [NUM_STAGES-1:0]    en_sync_reg;           // Shift register to synchronize bus_enable
wire  [BUS_WIDTH-1:0]     MUX_Data_Out ;         // Mux output for selecting new vs old bus data
reg                       Pulse_FF_Out ;         // Output of the FF in the Pulse Generator
wire                      enable_pulse ;

//////////////////////////// Enable FF Synchronizer ////////////////////////////
always @(posedge CLK , negedge RST)
begin
    if(!RST)     
    begin
        en_sync_reg <= 'b0 ;                                       // Clear synchronizer on reset
    end
    else
    begin
        en_sync_reg <= {en_sync_reg[NUM_STAGES-2:0],bus_enable};  // Shift in bus_enable through synchronizer stages
    end  
end
 

/////////////////////////////// Pulse Generator ///////////////////////////////
// Detect rising edge of synchronized bus_enable to generate single-cycle pulse
always @(posedge CLK , negedge RST)
begin
    if(!RST) 
    begin
        Pulse_FF_Out <= 1'b0 ;	                   // Initialize to zero on reset
    end
    else
    begin
        Pulse_FF_Out <= en_sync_reg[NUM_STAGES-1] ;  // Store previous value of enable
    end   
end

// Generate pulse when enable goes from 0 -> 1
assign enable_pulse = en_sync_reg[NUM_STAGES-1] && !Pulse_FF_Out ;



////////////////////////////////// Last Stage /////////////////////////////////
// If pulse is active, capture unsync_bus; otherwise, hold last value
assign MUX_Data_Out =  enable_pulse ? unsync_bus : sync_bus ;

always @(posedge CLK , negedge RST)
begin
  if(!RST)  
  begin
    sync_bus <= 'b0 ;	                   // Reset output bus
  end
  else
  begin
    sync_bus <= MUX_Data_Out ;            // Update synchronized bus
  end  
end

///////////////////////////// delay generated pulse ////////////////////////////
always @(posedge CLK or negedge RST)
 begin
  if(!RST)      // active low
   begin
    enable_pulse_d <= 1'b0 ;	
   end
  else
   begin
    enable_pulse_d <= enable_pulse ;
   end  
 end


endmodule
