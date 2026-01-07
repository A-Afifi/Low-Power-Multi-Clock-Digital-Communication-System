// ************************************************************* //
//                      Module : Integer_ClkDiv                  //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module Integer_ClkDiv #(
    parameter ratio_Width = 8    
)(
    input   wire                         i_ref_clk ,
    input   wire                         i_rst_n ,
    input   wire                         i_clk_en ,
    input   wire    [ratio_Width-1:0]    i_div_ratio ,
    output  reg                          o_div_clk 
);

// Internal Signals 
wire        Type ,
            En ;

wire  [ratio_Width-2:0]      Half_Div ,
                             Half_Div_p1 ;

reg   [ratio_Width-2:0]      Count ;

reg                          Flag  ;
reg                          New_clk ;


// Combinational Logic
assign Type = (i_div_ratio[0] == 1'b1 )? 1'b1 : 1'b0 ;    // 1 for odd , 0 for even
assign Half_Div = (i_div_ratio>>1) - 1'b1 ;
assign Half_Div_p1 =  i_div_ratio>>1 ;
assign En = (i_clk_en && (i_div_ratio != 'd0) && (i_div_ratio != 'd1) );

always @(*) begin
    if (En) begin
        o_div_clk = New_clk ;
    end
    else begin
        o_div_clk = i_ref_clk ; 
    end       
end    


// Sequential Logic
always @(posedge i_ref_clk , negedge i_rst_n)
begin
    if (!i_rst_n) begin
        New_clk <= 1'b1 ;
        Count   <=  'b0 ;
        Flag    <= 1'b0 ;
    end 

    else if (En) begin 
        if (!Type && (Count == Half_Div) ) begin
            New_clk <= !New_clk ;
            Count   <= 'b0        ;
        end  

        else if ( Type && ( (Count == Half_Div && !Flag) || (Count == Half_Div_p1 && Flag) ) ) begin
            New_clk <= !New_clk ;
            Flag    <= !Flag      ;
            Count   <= 'b0        ;
        end

        else if ( Count > Half_Div ) begin    // To handel From high i_div_ratio to low corner case 
            Count <= 'b0 ;
            New_clk <= !New_clk ;
            Flag    <= 1'b0 ;
        end

        else begin
            Count <= Count + 'b1 ;
        end    
    end

    else begin 
        New_clk <= 1'b1 ;
        Count   <=  'b0 ;
        Flag    <= 1'b0 ;
    end    

end


endmodule 
