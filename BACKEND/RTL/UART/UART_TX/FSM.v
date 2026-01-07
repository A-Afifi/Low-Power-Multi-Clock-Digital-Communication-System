// *************************************************************//
//                          Module : FSM                        //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//


/* This module implements a Moore Finite State Machine (FSM) for controlling
   a UART Transmitter flow. It manages start bit, data serialization,
   optional parity bit, and stop bit generation based on control signals.
*/

module FSM (
    input  wire         CLK,                   // 200 MHz clock
    input  wire         RST,                   // Asynchronous active-low reset
    input  wire         Data_Valid,            // High for 1 clock cycle to load new data
    input  wire         PAR_EN,                // Parity enable signal
    input  wire         ser_done,              // Serializer done flag
    output reg   [1:0]  mux_sel,               // Multiplexer select lines
    output reg          ser_en,                // Serializer enable signal
    output reg          Basy,                  // Busy flag (High during transmission)
    output reg          Parity_Calc_En         // Enable signal for the Parity_Clac
);

// ======================================================================
// Internal Signals
// ======================================================================
reg Basy_c ;                 // Combinational signal fo basy




// ======================================================================
// Define states 
// ======================================================================
localparam  [2:0]   IDLE       = 3'b000, // Waiting for new data
                    Start_bit  = 3'b001, // Sending start bit
                    Serializer = 3'b011, // Sending data bits
                    Parity     = 3'b010, // Sending parity bit
                    End_bit    = 3'b110; // Sending stop bit

reg         [2:0]   current_state,       // Holds current FSM state
                    next_state ;         // Holds next FSM state



// =======================================================================
// State transition (sequential logic)
// =======================================================================
always @(posedge CLK , negedge RST)
begin
    if(!RST) begin
        // On reset, go to IDLE state
        current_state <= IDLE ;
    end
    else begin
        // On clock edge, update current state
        current_state <= next_state ;
    end
end


// =======================================================================
// Next state logic (combinational)
// =======================================================================
always @(*) begin
    case (current_state)
        IDLE: begin
            // Wait for valid data to start transmission
            if (Data_Valid) begin
                next_state = Start_bit;
            end
            else begin
                next_state = IDLE;
            end
        end
        
        Start_bit: begin
            // After start bit, go to serialize data
            next_state = Serializer;
        end
        
        Serializer: begin
            // When serializer finishes
            if (ser_done) begin
                if (PAR_EN) begin              // If parity is enabled, go to parity state
                    next_state = Parity;
                end

                else if (!PAR_EN) begin 
                    next_state = End_bit ;    // If parity is disabled, go directly to stop bit
                end
            end

            else begin                        // Keep serializing until done
                next_state = Serializer ;
            end    
        end

        Parity : begin                      // After Serializer, go back to parity if enable=1
                next_state = End_bit ;
        end    

        End_bit: begin                      // After stop bit, go back to idle
            next_state = IDLE;
        end

        default: next_state = IDLE; // Safety default
    endcase
end


// =======================================================================
// Output logic (Moore FSM: outputs depend only on current state)
// =======================================================================
always @(*) begin
    case (current_state)
        IDLE: begin
            Basy_c   <= 1'b0 ;         // Not busy
            mux_sel  <= 2'b01 ;        // Select stop bit (TX_OUT high)
            ser_en   <= 1'b0 ;         // Serializer disabled
            Parity_Calc_En <= 1'b0 ;   // Parity disabled 
        end
        
        Start_bit: begin
            Basy_c   <= 1'b1 ;         // Busy
            mux_sel  <= 2'b00 ;        // Select start bit
            ser_en   <= 1'b0 ;         // Serializer enabled
            Parity_Calc_En <= 1'b1 ;   // Parity enabled 
        end
        
        Serializer: begin
            Basy_c   <= 1'b1 ;       // Busy
            mux_sel  <= 2'b10 ;        // Select data bits from serializer
            ser_en   <= 1'b1 ;         // Serializer running
            Parity_Calc_En <= 1'b1 ;   // Parity enabled 
            
            if (ser_done) ser_en   <= 1'b0 ;  
            else          ser_en   <= 1'b1 ; 
        end

        Parity: begin
            Basy_c   <= 1'b1 ;         // Busy
            mux_sel  <= 2'b11 ;        // Select parity bit
            ser_en   <= 1'b0 ;         // Serializer stopped
            Parity_Calc_En <= 1'b1 ;   // Parity enabled 
        end

        End_bit: begin
            Basy_c   <= 1'b1 ;         // Busy
            mux_sel  <= 2'b01 ;        // Select stop bit
            ser_en   <= 1'b0 ;         // Serializer stopped
            Parity_Calc_En <= 1'b0 ;   // Parity disabled 
        end

        default: begin
            Basy_c   <= 1'b0 ;         // Not busy
            mux_sel  <= 2'b01 ;        // Default to stop bit
            ser_en   <= 1'b0 ;         // Serializer disabled
            Parity_Calc_En <= 1'b0 ;   // Parity disabled 
        end
    endcase
end

// =======================================================================
// Basy Sequntial 
// =======================================================================
always @(posedge CLK , negedge RST) 
begin
    if (!RST) begin
        Basy <= 1'b0 ; 
    end   

    else begin 
        Basy <=  Basy_c ; 
    end    
end 



endmodule
