// ************************************************************* //
//                      Module : SYS_CTRL                        //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module SYS_CTRL # ( 
    parameter D_Width = 8 ,
              ALU_O_W = D_Width*2 ,  
              Addr_Size = 4 
)(

//-----------------------------------------------//
//---------------- Basic Inputs -----------------//
//-----------------------------------------------//
input   wire               CLK,                          // System clock
input   wire               RST,                          // Asynchronous active-low reset

//-----------------------------------------------//    
//----------- Data_Synchronizer Signals ---------//
//-----------------------------------------------//
input   wire    [D_Width-1:0]       Sync_Frame,         // Synchronized input bus
input   wire                        enable_pulse,       // One-cycle enable pulse in destination domain

//-----------------------------------------------//    
//-------------- RegFile Signals  ---------------//
//-----------------------------------------------//
input   wire    [D_Width-1:0]       Rd_D,                // Read Data
input   wire                        Rd_D_Valid,          // Rd_Data Valid Flag

output  reg                         Rd_En,
output  reg                         Wr_En,
output  reg     [Addr_Size-1:0]     Addr,
output  reg     [D_Width-1:0]       Wr_D,

//-----------------------------------------------//    
//----------------- ALU Signals -----------------//
//-----------------------------------------------//
input   wire    [ALU_O_W-1:0]       ALU_OUT,              // Read Data
input   wire                        OUT_Valid,            // Rd_Data Valid Flag

output  reg                         ALU_En,
output  reg     [3:0]               FUN,

//-----------------------------------------------//    
//-------------- ASYN_FIFO Signals --------------//
//-----------------------------------------------//
input   wire                        FIFO_FULL,            // Rd_Data Valid Flag
        
output  reg                         WR_INC,
output  reg     [D_Width-1:0]       WR_DATA,


//-----------------------------------------------//    
//------------ Clock Gating Signals -------------//
//-----------------------------------------------// 
output  reg                         Gate_En,


//-----------------------------------------------//    
//---------------- Clk_Div Signals --------------//
//-----------------------------------------------// 
output  reg                         CLK_DIV_EN

);


// =======================================================================
// Internal Signals
// =======================================================================
reg     [D_Width-1:0]     Stored_Frame1,
                          Stored_Frame2,
                          Stored_Frame3;

// =======================================================================
// Define states (Gray Coded)
// =======================================================================
localparam [3:0]    IDLE          = 4'b0000,
                    First_Command = 4'b0001,
                    Write_Addr    = 4'b0011,
                    Write_Data    = 4'b0010,
                    Read_Addr     = 4'b0110,
                    OP_A          = 4'b0101,
                    OP_B          = 4'b0100,
                    FIFO_En1      = 4'b0111,
                    FIFO_En2      = 4'b1111,
                    ALU_EN_S      = 4'b1101 ;


reg        [3:0]    current_state,       // Holds current FSM state
                    next_state ;         // Holds next FSM state




// =======================================================================
// State transition (sequential logic)
// =======================================================================
always @(posedge CLK , negedge RST) begin
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
                if (enable_pulse) begin                   
                    if (Sync_Frame== 'hAA || Sync_Frame== 'hBB || Sync_Frame== 'hCC || Sync_Frame== 'hDD )       
                            next_state = First_Command;

                    else    next_state = IDLE ;
                end
                else begin
                    next_state = IDLE;           
                end
            end
        
        First_Command :
            begin
                if (enable_pulse) begin  
                    case (Stored_Frame1) 
                        'hAA : next_state = Write_Addr;
                        'hBB : next_state = Read_Addr;
                        'hCC : next_state = OP_A; 
                        'hDD : next_state = ALU_EN_S;
                        default : next_state = First_Command ;
                    endcase           
                end  

                else begin
                    next_state = First_Command;             
                end  
            end   
        //////////////////////////////////////////////////////////////////////////////////////
        Write_Addr: 
            begin
                if (enable_pulse) begin    
                    next_state = Write_Data;               
                end
                else begin
                    next_state = Write_Addr;              
                end
            end         
        
        Write_Data: 
            begin  
                next_state = IDLE;              
            end
        //////////////////////////////////////////////////////////////////////////////////////
        Read_Addr: 
            begin
                if (Rd_D_Valid) begin    
                    next_state = FIFO_En1;               
                end

                else begin
                    next_state = Read_Addr;              
                end
            end   
        //////////////////////////////////////////////////////////////////////////////////////
        OP_A: 
            begin
                if (enable_pulse) begin    
                    next_state = OP_B;               
                end
                else begin
                    next_state = OP_A;              
                end
            end

        OP_B: 
            begin  
                if (enable_pulse) begin    
                    next_state = ALU_EN_S;               
                end
                else begin
                    next_state = OP_B;              
                end               
            end

        ALU_EN_S: 
            begin
                if (OUT_Valid) next_state = FIFO_En1; 
                else           next_state = ALU_EN_S;
            end
        //////////////////////////////////////////////////////////////////////////////////////

        FIFO_En1: 
            begin
                if  (Stored_Frame1 == 'hBB) begin   
                    next_state = IDLE;     
                end

                else if ((Stored_Frame1 == 'hCC || Stored_Frame1 == 'hDD) && !FIFO_FULL ) begin
                    next_state = FIFO_En2; 
                end

                else begin  
                    next_state = FIFO_En1; 
                end    
            end 


        FIFO_En2: 
            begin
                next_state = IDLE; 
            end    

        //////////////////////////////////////////////////////////////////////////////////////
        default:
            begin
                next_state = IDLE;                   // Safety default
            end    
    endcase
end



// =======================================================================
// Sequential logic for stored frames
// =======================================================================
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        Stored_Frame1 <= 'b0;
        Stored_Frame2 <= 'b0;
        Stored_Frame3 <= 'b0;
    end
    else begin
        case (current_state)
            IDLE: begin
                if (enable_pulse)
                    Stored_Frame1 <= Sync_Frame;   // Store command frame (AA,BB,CC,DD)
            end

            First_Command: begin
                if (enable_pulse)
                    Stored_Frame2 <= Sync_Frame;   // Store Address / OP_A / ALU_FUN
            end

            OP_A: begin
                if (enable_pulse)
                    Stored_Frame3 <= Sync_Frame;   // Store OP_B
            end
        endcase
    end
end


// =======================================================================
// Combinational output logic
// =======================================================================
always @(*) begin
    // Default outputs
    Rd_En   = 1'b0;
    Wr_En   = 1'b0;
    Addr    = 'b0;
    Wr_D    = 'b0;
    ////////////////
    ALU_En  = 1'b0;
    FUN     = 'b0;
    ////////////////
    WR_INC  = 1'b0;
    WR_DATA = 'b0;
    ////////////////
    Gate_En = 1'b0;
    ////////////////
    CLK_DIV_EN = 1'b1;

    case (current_state)
    
        First_Command: begin
            if (Stored_Frame1 == 'hDD) Gate_En = 1'b1;
            else                       Gate_En = 1'b0;
        end

        Write_Data: begin
            Wr_En = 1'b1;
            Addr  = Stored_Frame2[Addr_Size-1:0];   // Write_Addr
            Wr_D  = Sync_Frame;
        end

        Read_Addr: begin
            Rd_En = 1'b1;
            Addr  = Stored_Frame2[Addr_Size-1:0];   // Read_Addr
        end

        OP_A: begin
            Wr_En = 1'b1;
            Addr  = 'd0;
            Wr_D  = Stored_Frame2;   // OP_A
        end

        OP_B: begin
            Gate_En = 1'b1;
            Wr_En   = 1'b1;
            Addr    = 'd1;
            Wr_D    = Stored_Frame3; // OP_B
        end

        ALU_EN_S: begin
            Gate_En = 1'b1;
            ALU_En  = 1'b1;
            if      (Stored_Frame1 == 'hCC) FUN = Sync_Frame[3:0];
            else if (Stored_Frame1 == 'hDD) FUN = Stored_Frame2[3:0];
        end

        FIFO_En1: begin
            if (!FIFO_FULL) begin
                WR_INC = 1'b1;
                if      (Stored_Frame1 == 'hBB) WR_DATA = Rd_D;
                else if (Stored_Frame1 == 'hCC || Stored_Frame1 == 'hDD)
                         WR_DATA = ALU_OUT[7:0];
            end
        end

        FIFO_En2: begin
            WR_INC  = 1'b1;
            WR_DATA = ALU_OUT[15:8];
        end

        default: begin
            // already defaulted
        end
    endcase
end


endmodule
