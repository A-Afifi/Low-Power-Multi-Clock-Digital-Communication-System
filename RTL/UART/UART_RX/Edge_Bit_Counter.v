// ************************************************************* //
//                      Module : Edge_Bit_Counter                //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module Edge_Bit_Counter #(
    parameter Data_Width = 8 ,
              B_C_W = $clog2(Data_Width + 4 )  // Bit_Count_width
)(
    //Basic Inputs
    input   wire                   CLK,        // System clock
    input   wire                   RST,        // Active low reset
    input   wire                   En,         // Enable signal
    //Configuration Inputs 
    input   wire  [5:0]            Prescale,   // Oversampling ratio
    //Module Outputs
    output  reg   [B_C_W-1:0]      Bit_Count,  // Bit counter
    output  reg   [5:0]            Edge_Count  // Edge counter
        
);

// Internal Signals
wire Done_Edge_Count ;  // Signal indicating edge count completion



// Done_Edge_Count (Combinational Logic)
assign Done_Edge_Count = (Edge_Count == (Prescale - 'b1)) ? 1'b1 : 1'b0 ;  // Check if edge count reached max



//Edge Counter (Sequential Logic)
always @(posedge CLK , negedge RST) begin
    if (!RST) begin
       Edge_Count <= 'b0;                    // Reset edge counter
    end
    else if (En) begin                       // When enabled
        if (!Done_Edge_Count) begin          // If not reached max
            Edge_Count <= Edge_Count + 'b1 ; // Increment edge counter
        end
        else begin
            Edge_Count <= 'b0 ;              // Reset edge counter
        end        
    end 
    else begin
        Edge_Count <= 'b0 ;                  // Reset when disabled
    end  
end 



//Bit Counter (Sequential Logic)
always @(posedge CLK , negedge RST) begin
    if (!RST) begin
       Bit_Count <= 'b0;                     // Reset bit counter
    end
    else if (En) begin                       // When enabled
        if (Done_Edge_Count) begin           // When edge count completes
            Bit_Count <= Bit_Count + 'b1 ;   // Increment bit counter
        end      
    end 
    else begin
        Bit_Count <= 'b0 ;                   // Reset when disabled
    end  
end
    
endmodule