// *************************************************************//
//                      Module : RX_FSM                         //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//

module RX_FSM #(
    parameter Data_Width = 8 ,
              B_C_W = $clog2(Data_Width + 4 )      // Bit_Count_width
)(
    //Basic Inputs
    input   wire               CLK,                   // System clock
    input   wire               RST,                   // Asynchronous active-low reset

    //Configuration Inputs 
    input   wire               PAR_EN,                // Parity enable
    input   wire  [5:0]        Prescale,              // Oversampling ratio

    //Input From UART_TX
    input   wire               RX_In,                 // Serial data input

    //Inputs from Edge_Bit_Counter   
    input   wire  [B_C_W-1:0]  Bit_Count,             // Current bit count
    input   wire  [5:0]        edge_count,            // Current edge count

    //Inputs From (Par-Strat-Stop) modules 
    input   wire               Par_err,               // Parity error
    input   wire               Start_err,             // Start bit error
    input   wire               Stop_err,              // Stop bit error

    //Module Outputs (enable signals)
    output  reg                edge_bit_en,           // Edge counter enable
    output  reg                data_samp_en,          // Data sampling enable
    output  reg                Deser_en,              // Deserializer enable
    output  reg                Par_chk_en,            // Parity check enable
    output  reg                Str_chk_en,            // Start check enable
    output  reg                Stp_chk_en,            // Stop check enable
    output  reg                Flags_Done,            // Flags done signal
    //Module Outputs 
    output  reg                Parity_Error,          // Parity error flag
    output  reg                Stop_Error,            // Stop error flag
    output  reg                Data_Valid             // Data valid flag
);


// =======================================================================
// Internal Signals
// =======================================================================
reg                     Parity_Error_c ,              // Parity error combinational
                        Stop_Error_c ,               // Stop error combinational
                        Data_Valid_c ;               // Data valid combinational

wire        [5:0]       Final_edge ,                 // Final edge count (Prescale-1)
                        Flags_edge,                  // Flags edge count (Prescale-2)
                        Check_edge;                  // Check edge count (Prescale/2 + 2)



// =======================================================================
// Define states (Gray coded) using enum
// =======================================================================
localparam [2:0]    Flags_chk      = 3'b100,  // Flags Check state
                    IDLE           = 3'b000,  // Waiting for new data
                    Start_bit      = 3'b001,  // Receiving start bit
                    Deserializer   = 3'b011,  // Receiving data bits
                    Parity         = 3'b010,  // Receiving parity bit
                    End_bit        = 3'b110;  // Receiving stop bit


reg         [2:0]   current_state,            // Holds current FSM state
                    next_state ;              // Holds next FSM state


// =======================================================================
// Combinational Logic For (Final_edge , Check_edge)
// =======================================================================				   		
assign  Final_edge = (Prescale - 'd1) ;              // Calculate final edge
assign  Flags_edge = (Prescale - 'd2) ;              // Calculate flags edge
assign  Check_edge = ((Prescale>>1) + 'd2) ;         // Calculate check edge



// =======================================================================
// State transition (sequential logic)
// =======================================================================
always @(posedge CLK , negedge RST)
begin
    if(!RST) begin
        current_state <= IDLE ;                      // Reset to IDLE state
    end
    else begin
        current_state <= next_state ;                // Update state
    end
end


// =======================================================================
// Next state logic (combinational)
// =======================================================================
always @(*) begin
    case (current_state)
        IDLE:   
            begin
                if (!RX_In) begin                    // Detect start bit (low)
                    next_state = Start_bit;
                end
                else begin
                    next_state = IDLE;               // Stay in IDLE
                end
            end
        
        Start_bit: 
            begin
                if ((edge_count == Final_edge) && (Bit_Count == 'd0)) begin
                    if (!Start_err) begin            // If no start error
                        next_state = Deserializer;   // Move to data reception
                    end
                    else begin
                        next_state = IDLE ;          // Return to IDLE on error
                    end         
                end 
                else begin 
                    next_state = Start_bit;          // Stay in start bit state
                end           
            end
        
        Deserializer: 
            begin
                if ((edge_count == Final_edge) && (Bit_Count == Data_Width)) begin
                    if (PAR_EN) begin                // If parity enabled
                        next_state = Parity;         // Move to parity state
                    end
                    else begin
                        next_state = End_bit ;       // Skip to stop bit
                    end         
                end 
                else begin 
                    next_state = Deserializer;       // Continue receiving data
                end    
            end

        Parity : 
            begin                     
                if ((edge_count == Final_edge) && (Bit_Count == Data_Width + 'd1)) begin
                    next_state = End_bit;            // Move to stop bit
                end 
                else begin 
                    next_state = Parity;             // Stay in parity state
                end
            end    

        End_bit: 
            begin                      
                if (Bit_Count == (Data_Width + 'd2)) begin
                    if (edge_count == Flags_edge) begin  
                        next_state = Flags_chk;      // Move to flags check
                    end
                    else begin
                        next_state = End_bit;        // Stay in end bit
                    end    
                end
                else if (Bit_Count == (Data_Width + 'd1)) begin
                    if (edge_count == Flags_edge) begin  
                        next_state = Flags_chk;      // Move to flags check
                    end
                    else begin
                        next_state = End_bit;        // Stay in end bit
                    end    
                end
                else begin 
                    next_state = End_bit;            // Stay in end bit
                end        
            end

        Flags_chk: 
            begin 
                if (!RX_In) begin                    // Detect new start bit
                    next_state = Start_bit;          // Start new frame
                end
                else begin
                    next_state = IDLE;               // Return to IDLE
                end                                 
            end
            
        default:
            begin
                next_state = IDLE;                   // Safety default
            end    
    endcase
end



// =======================================================================
// Output logic (Moore FSM: outputs depend only on current state)
// ======================================================================= 
always @(*) begin
    // Default outputs
    edge_bit_en    = 1'b0 ;
    data_samp_en   = 1'b0 ;
    Deser_en       = 1'b0 ;
    Par_chk_en     = 1'b0 ;
    Str_chk_en     = 1'b0 ;
    Stp_chk_en     = 1'b0 ;
    Flags_Done     = 1'b0 ;
    Parity_Error_c = 1'b0 ;
    Stop_Error_c   = 1'b0 ;
    Data_Valid_c   = 1'b0 ;

    case (current_state)
        IDLE: 
            begin
                edge_bit_en    = 1'b0 ;              // Disable edge counter
            end
        
        Start_bit: 
            begin
                edge_bit_en    = 1'b1 ;              // Enable edge counter
                data_samp_en   = 1'b1 ;              // Enable data sampling
                if (edge_count == Check_edge) begin 
                    Str_chk_en  = 1'b1 ;             // Enable start check
                end  
                else begin
                    Str_chk_en  = 1'b0 ;             // Disable start check
                end
            end
        
        Deserializer: 
            begin
                edge_bit_en    = 1'b1 ;              // Enable edge counter
                data_samp_en   = 1'b1 ;              // Enable data sampling
                Deser_en       = 1'b1 ;              // Enable deserializer
            end

        Parity: 
            begin
                edge_bit_en    = 1'b1 ;              // Enable edge counter
                data_samp_en   = 1'b1 ;              // Enable data sampling
                if (edge_count == Check_edge) begin 
                    Par_chk_en = 1'b1 ;              // Enable parity check
                end  
                else begin
                    Par_chk_en = 1'b0 ;              // Disable parity check
                end
            end

        End_bit: 
            begin
                edge_bit_en    = 1'b1 ;              // Enable edge counter
                data_samp_en   = 1'b1 ;              // Enable data sampling
                if (edge_count == Check_edge) begin 
                    Stp_chk_en = 1'b1 ;              // Enable stop check
                end  
                else begin
                    Stp_chk_en = 1'b0 ;              // Disable stop check
                end
            end

        Flags_chk: 
            begin
                edge_bit_en    = 1'b0 ;              // Disable edge counter
                Flags_Done     = 1'b1 ;              // Set flags done
                if (Par_err | Stop_err ) begin       // If any error
                    Data_Valid_c = 1'b0;             // Data not valid
                end
                else begin 
                    Data_Valid_c = 1'b1;             // Data valid
                end
                if (Par_err) begin                   // If parity error
                    Parity_Error_c = 1'b1;           // Set parity error
                end
                else begin 
                    Parity_Error_c = 1'b0;           // Clear parity error
                end
                if (Stop_err) begin                  // If stop error
                    Stop_Error_c = 1'b1;             // Set stop error
                end
                else begin 
                    Stop_Error_c = 1'b0;             // Clear stop error
                end       
            end

        default: 
            begin
                // Default outputs (all disabled)
                edge_bit_en    = 1'b0 ;
                data_samp_en   = 1'b0 ;
                Deser_en       = 1'b0 ;
                Par_chk_en     = 1'b0 ;
                Str_chk_en     = 1'b0 ;
                Stp_chk_en     = 1'b0 ;
                Parity_Error_c = 1'b0 ;
                Stop_Error_c   = 1'b0 ;
                Data_Valid_c   = 1'b0 ;
            end
    endcase
end


// =======================================================================
// Flags Sequential 
// =======================================================================
always @(posedge CLK , negedge RST) 
begin
    if (!RST) begin
        Parity_Error <= 1'b0 ;                       // Reset parity error
        Stop_Error   <= 1'b0 ;                       // Reset stop error
        Data_Valid   <= 1'b0 ;                       // Reset data valid
    end   
    else begin 
        Parity_Error <= Parity_Error_c ;             // Update parity error
        Stop_Error   <= Stop_Error_c ;               // Update stop error
        Data_Valid   <= Data_Valid_c ;               // Update data valid
    end    
end 

endmodule