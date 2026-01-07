// *************************************************************//
//                         Module : UART_TOP                    //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//


module UART_TOP (
    input    wire          CLK ,           // System clock (200 MHz in spec)
    input    wire          RST ,           // Asynchronous active-low reset
    input    wire   [7:0]  P_DATA ,        // Parallel data input
    input    wire          Data_Valid,     // High for 1 cycle to load and start transmission
    input    wire          PAR_EN,         // Enable parity bit
    input    wire          PAR_TYP,        // Parity type: 0 = Even, 1 = Odd
    output   wire          busy,           // High during transmission
    output   wire          TX_OUT          // Serial data output
);

// Internal Signals 
wire            ser_en,          // Serializer enable
                ser_done,        // Serializer done flag
                ser_data,        // Serialized data output
                Parity_Calc_En,  // Enable signal for the Parity Calculator
                par_bit;         // Calculated parity bit

wire   [1:0]    mux_sel;         // Multiplexer select lines



// ============================================================
// MUX_4x1_UNIT instantiation
// Selects which bit to send on TX_OUT based on mux_sel
// ============================================================
MUX_4x1 U1_MUX_4x1 (
    .CLK(CLK),
    .RST(RST),
    .mux_sel(mux_sel),
    .input_1(1'b0),         // 00: Start bit
    .input_2(1'b1),         // 01: Stop bit
    .input_3(ser_data),     // 10: Serialized data bits
    .input_4(par_bit),      // 11: Parity bit
    .OUT(TX_OUT)
);


// ============================================================
// Parity_Calc_UNIT instantiation
// Calculates the parity bit when enabled
// ============================================================
Parity_Calc U2_Parity_Calc (
    .CLK(CLK),
    .RST(RST),
    .In_Data(P_DATA),
    .Data_Valid(Data_Valid),
    .Basy_signal(busy),
    .PAR_TYP(PAR_TYP),
    .Parity_Calc_En(Parity_Calc_En),    
    .par_bit(par_bit)
);


// ============================================================
// Serializer_1byte_UNIT instantiation
// Converts 8-bit data to serial format
// ============================================================
Serializer_1byte U3_Serializer (
    .In_Data(P_DATA),
    .Data_Valid(Data_Valid),
    .Basy_signal(busy),
    .CLK(CLK),
    .RST(RST),
    .ser_en(ser_en),
    .ser_done(ser_done),
    .Out_Data(ser_data)
);


// ============================================================
// FSM_UNIT instantiation
// Controls transmission flow and busy signal
// ============================================================
FSM U4_FSM (
    .CLK(CLK),
    .RST(RST),
    .Data_Valid(Data_Valid),
    .PAR_EN(PAR_EN),
    .ser_done(ser_done),
    .mux_sel(mux_sel),
    .ser_en(ser_en),
    .Basy(busy),
    .Parity_Calc_En(Parity_Calc_En)
);

endmodule
