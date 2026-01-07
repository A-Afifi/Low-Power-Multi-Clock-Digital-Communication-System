// ************************************************************* //
//                      Module : SYS_TOP_tb                      //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

`timescale 1us/1ps

module SYS_TOP_tb();

//******************************* Parameters *******************************
parameter Data_Width      = 8 ;
parameter REF_CLK_PERIOD  = 20 ;          // 50 MHz
parameter UART_CLK_PERIOD = 271.27 ;      // 3.6864 MHz
parameter TX_CLK_PERIOD   = 271.27*32 ;   // 3.6864/32 MHz

//******************************* DUT Signals *******************************
reg                     RST_TB;
reg                     UART_CLK_TB;
reg                     REF_CLK_TB;
reg                     TX_CLK_TB;
reg                     RX_IN_TB;
wire                    TX_OUT_TB;
wire                    Parity_Err_TB;
wire                    Framing_Err_TB;

//***************************** DUT Instantiation ***************************
SYS_TOP #(
    .DATA_WIDTH(Data_Width),
    .RF_ADDR(4)
) DUT (
    .RST_N(RST_TB),
    .UART_CLK(UART_CLK_TB),
    .REF_CLK(REF_CLK_TB),
    .UART_RX_IN(RX_IN_TB),
    .UART_TX_O(TX_OUT_TB),
    .parity_error(Parity_Err_TB),
    .framing_error(Framing_Err_TB)
);


//******************************* Initial Block *****************************
initial begin
    // Init
    REF_CLK_TB  = 1'b0;
    UART_CLK_TB = 1'b0;
    TX_CLK_TB   = 1'b0;
    RST_TB      = 1'b1;
    RX_IN_TB    = 1'b1;

    // Reset sequence
    APPLY_RESET();


    ////////////////////////////////////////////////////////////////////////////////
    // Config : Party_EN = 0  , Parity_Type = 1 , Prescale = 32 , Div_Ratio = 32  // //////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
    CONFIG_REGFILE(1'b0 , 1'b1 , 'd32 , 'd32);
    #(2*TX_CLK_PERIOD);

    /////////////////////////////////////////////
    //    Test Case(1): Register File Write    //
    //       Data=0x55  (Without Parity)       //
    /////////////////////////////////////////////
    Test_num('d1);
    Reg_File_Write_Command('d4 ,'h55 );



    ////////////////////////////////////////////////////////////////////////////////
    // Config : Party_EN = 1  , Parity_Type = 1 , Prescale = 16 , Div_Ratio = 32  // //////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
    CONFIG_REGFILE(1'b1 , 1'b1 , 'd16 , 'd32);
    #(2*TX_CLK_PERIOD);


    ///////////////////////////////////////////////////////////
    //           Test Case(2): Register File Write           //
    //              Data=0x22 (With odd Parity)              //
    ///////////////////////////////////////////////////////////
    Test_num('d2);
    Reg_File_Write_Command('d5 ,'h22 );


    ////////////////////////////////////////////////////////////////////////////////
    // Config : Party_EN = 1  , Parity_Type = 0 , Prescale = 8 , Div_Ratio = 32  // ///////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
    CONFIG_REGFILE(1'b1 , 1'b0 , 'd8 , 'd32);
    #(2*TX_CLK_PERIOD);


    ///////////////////////////////////////////////////////////
    //           Test Case(3): Register File Write           //
    //               Data=0x12 (With Even Parity)            //
    ///////////////////////////////////////////////////////////
    Test_num('d3);
    Reg_File_Write_Command('d6 ,'h12 );


    ///////////////////////////////////////////////////////////
    //           Test Case(4): Register File Write           //
    //               Data=0x12 (With Even Parity)            //
    //                 Test the Parity error                 //
    ///////////////////////////////////////////////////////////
    Test_num('d4);
    $display("Test when error happend in the frame :..");
    UART_SEND_FRAME_Parity(8'hAA , 1'b1);               // Register File Write Command (parity bit wrong)

    #(TX_CLK_PERIOD);
    if (DUT.SYS_Cntroller.current_state == 'b0) 
        $display("Pass : Still at the IDLE State\n");
    else
        $display("Failed : Current State is :%b",DUT.SYS_Cntroller.current_state);


    /////////////////////////////////////////////
    //    Test Case(5): Register File Write    //
    //       Data=0xB8  (Without Parity)       //
    /////////////////////////////////////////////
    Test_num('d5);
    Reg_File_Read_Command('h04);
    #(4*TX_CLK_PERIOD);


    /////////////////////////////////////////////
    //    Test Case(6): ALU_Command_With_OP    //
    /////////////////////////////////////////////
    Test_num('d6);
    $display("Verify All ALU_Command_With_OP\n");
    ALU_Command_With_OP('h64 ,'h39 ,'h0 );
    ALU_Command_With_OP('hFF ,'hFF ,'h0 );
    ALU_Command_With_OP('hF4 ,'h39 ,'h1 );
    ALU_Command_With_OP('h85 ,'h36 ,'h2 );
    ALU_Command_With_OP('hF4 ,'h39 ,'h3 );
    ALU_Command_With_OP('h74 ,'h32 ,'h4 );
    ALU_Command_With_OP('hF4 ,'h39 ,'h5 );
    ALU_Command_With_OP('hF4 ,'h39 ,'h6 );
    ALU_Command_With_OP('hF4 ,'h39 ,'h7 );
    ALU_Command_With_OP('hF4 ,'h39 ,'h9 );
    ALU_Command_With_OP('h39 ,'h39 ,'hA );
    ALU_Command_With_OP('hF4 ,'h39 ,'hC );
    ALU_Command_With_OP('hF4 ,'h0 ,'hD );
    ALU_Command_With_OP('hF4 ,'h0 ,'hE );



    /////////////////////////////////////////////
    //   Test Case(7): ALU_Command_Without_OP  //
    /////////////////////////////////////////////
    Test_num('d7);
    $display("Verify one operation of ALU_Command_Without_OP\n");
    Reg_File_Write_Command('d0 ,'hF7 );
    Reg_File_Write_Command('d1 ,'h53 );
    ALU_Command_Without_OP('h0);

    

    $stop;

end


//*************************************************************************************************************************************************//
//***************************************************************** TASKS *************************************************************************//
//*************************************************************************************************************************************************//



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//************************************************* RESET **********************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task APPLY_RESET;
    begin
        RST_TB = 1'b1;
        @(posedge TX_CLK_TB)
        RST_TB = 1'b0;
        @(negedge TX_CLK_TB)
        RST_TB = 1'b1;
    end
endtask

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//************************************************* Test_num *******************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task Test_num;
    input  [4:0]  num;   
    begin
        $display("\n**************************************");
        $display("*           Test case (%d ) :        *",num);
        $display("**************************************");
    end
endtask


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//********************************************* UART_SEND_FRAME ****************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task UART_SEND_FRAME;
    input [7:0] DATA;
    reg         PARITY_EN;   // 0 = no parity, 1 = parity enabled
    reg         PARITY_TYPE;  
    reg         PARITY_Bit;
    integer     i;
    begin

        PARITY_EN = DUT.RegFile.REG2[0] ;
        PARITY_TYPE = DUT.RegFile.REG2[1] ;

        if (PARITY_EN) begin
            PARITY_Bit = (PARITY_TYPE) ? ~(^DATA) : ^DATA;
        end

        // Start Bit
        @(negedge TX_CLK_TB);
        RX_IN_TB = 1'b0;
        @(posedge UART_CLK_TB);
        @(negedge TX_CLK_TB);
        
        // Data Bits (LSB First)
        for (i=0; i<8; i=i+1) begin
            RX_IN_TB = DATA[i];
            @(posedge UART_CLK_TB);
            @(negedge TX_CLK_TB);
        end

        // Optional Parity Bit
        if (PARITY_EN) begin
            RX_IN_TB = PARITY_Bit;
            @(posedge UART_CLK_TB);
            @(negedge TX_CLK_TB);
        end
        
        // Stop Bit
        RX_IN_TB = 1'b1;
        @(posedge UART_CLK_TB);
        @(negedge TX_CLK_TB);
        @(posedge UART_CLK_TB);
        @(negedge UART_CLK_TB);
        

        if (!Framing_Err_TB && !Parity_Err_TB ) begin
            $display("Valid Frame..");
        end 
        else begin 
            $display("Send the same frame agin !..");
        end   
        @(negedge TX_CLK_TB); 

    end
endtask

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//****************************************** UART_SEND_FRAME_Parity *************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task UART_SEND_FRAME_Parity;
    input [7:0] DATA;
    input       parity_bit;
    reg         PARITY_EN;   // 0 = no parity, 1 = parity enabled
    reg         PARITY_TYPE;  
    reg         PARITY_Bit;
    integer     i;
    begin

        PARITY_EN = DUT.RegFile.REG2[0] ;
        PARITY_TYPE = DUT.RegFile.REG2[1] ;

        if (PARITY_EN) begin
            PARITY_Bit = (PARITY_TYPE) ? ~(^DATA) : ^DATA;
        end

        // Start Bit
        @(negedge TX_CLK_TB);
        RX_IN_TB = 1'b0;
        @(posedge UART_CLK_TB);
        @(negedge TX_CLK_TB);
        
        // Data Bits (LSB First)
        for (i=0; i<8; i=i+1) begin
            RX_IN_TB = DATA[i];
            @(posedge UART_CLK_TB);
            @(negedge TX_CLK_TB);
        end

        // Optional Parity Bit
        if (PARITY_EN) begin
            RX_IN_TB = parity_bit;
            @(posedge UART_CLK_TB);
            @(negedge TX_CLK_TB);
        end
        
        // Stop Bit
        RX_IN_TB = 1'b1;
        @(posedge UART_CLK_TB);
        @(negedge TX_CLK_TB);
        @(posedge UART_CLK_TB);
        @(negedge UART_CLK_TB);
        

        if (!Framing_Err_TB && !Parity_Err_TB ) begin
            $display("Valid Frame..");
        end 
        else begin 
            $display("Send the same frame agin !..");
        end   
        @(negedge TX_CLK_TB); 

    end
endtask


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************** CONFIG_REGFILE ******************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task CONFIG_REGFILE;
    input       PARITY_EN;   // 0 = no parity, 1 = parity enabled
    input       PARITY_TYPE; // 0 = Even parity, 1 = Odd parity
    input [5:0] Prescale;
    input [7:0] DIV_RATIO;

    integer i;
    begin
        $display("\n**************************************");
        $display("* Start Reseving CONFIG frames : ... *");
        $display("**************************************");


        #(TX_CLK_PERIOD);
        
        $display("Writing in Reg[3] : %b ",DIV_RATIO);
        // Write REG3 (Clock Divider ratio=32)
        UART_SEND_FRAME(8'hAA);  // Command 
        UART_SEND_FRAME('h03);  // Address = 0x3
        UART_SEND_FRAME(DIV_RATIO);  // Divider value
        

        $display("Writing in Reg[2] : %b ",{Prescale,PARITY_TYPE,PARITY_EN});
        // Write REG2 (UART Config: Parity Enable, Parity Type, Prescale)
        UART_SEND_FRAME(8'hAA);  // Command
        UART_SEND_FRAME('h02);  // Address = 0x2
        UART_SEND_FRAME({Prescale,PARITY_TYPE,PARITY_EN}); 

        $display("********CONFIG frames Receved********\n");
        #(TX_CLK_PERIOD);
    end
endtask



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************Reg_File_Write_Command**************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task Reg_File_Write_Command;
    input [3:0] Address;
    input [7:0] DATA;
    integer i;
    begin
        $display("Writing (%h) in Reg[%d ]  : ... ",DATA ,Address );

        UART_SEND_FRAME(8'hAA);               // Command 
        UART_SEND_FRAME({4'b0000, Address});  // Address
        UART_SEND_FRAME(DATA);                // Data

        #(2*TX_CLK_PERIOD);
        if (DUT.RegFile.memory[Address] == DATA)    $display("Test PASSED: Reg[%d ] = %h" ,Address , DUT.RegFile.memory[Address] );
        else                                        $display("Test FAILED: Reg[%d ] = %h" ,Address , DUT.RegFile.memory[Address] );
    end
endtask

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//************************************************* TX_Read **********************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task TX_Read;
    output   [7:0]  R_Data;
    integer         i ;
    begin

        @(posedge DUT.UART_TX.busy);
        @(posedge DUT.UART_TX.CLK);
        #1;

        for (i=0; i<8; i=i+1) begin
            R_Data[i] = TX_OUT_TB;
            @(posedge DUT.UART_TX.CLK);
            #1;
        end

        #(REF_CLK_PERIOD);
    end
endtask


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************Reg_File_Read_Command**************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task Reg_File_Read_Command;
    input [3:0]  Address;
    integer      i;
    reg   [7:0]  R_Data;
    begin
        $display("Reading Data From Reg[%d ]  : ... ",Address );

        UART_SEND_FRAME(8'hBB);  // Command 
        UART_SEND_FRAME({4'b0000, Address});  // Address = 0x3
        
        TX_Read(R_Data);

        $display("Read_Command --> Reg[%d ] = %h\n" ,Address , R_Data );
 
    end
endtask


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************** ALU_Command_With_OP *************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task ALU_Command_With_OP;
    input   [Data_Width-1:0]  First_OP;
    input   [Data_Width-1:0]  Second_OP;
    input   [3:0]             ALU_FUNC;
    /////////////////////////////////////
    reg     [12*14:1]           my_string;
    /////////////////////////////////////
    reg     [7:0]             R_Data_1;
    reg     [7:0]             R_Data_2;
    reg     [15:0]            R_Data; 
    /////////////////////////////////////
    reg     [15:0]            Exp_out;
       
    begin

        case (ALU_FUNC)
            4'b0000: begin 
                        Exp_out = First_OP + Second_OP;
                        my_string = "Addition";
                     end
            4'b0001: begin 
                        Exp_out = First_OP - Second_OP;
                        my_string = "Subtraction";
                     end
            4'b0010: begin 
                        Exp_out = First_OP * Second_OP;
                        my_string = "Multiplication";
                     end
            4'b0011: begin 
                        Exp_out = First_OP / Second_OP;
                        my_string = "Division";
                     end
            4'b0100: begin 
                        Exp_out = First_OP & Second_OP;
                        my_string = "AND";
                     end
            4'b0101: begin 
                        Exp_out = First_OP | Second_OP;
                        my_string = "OR";
                     end
            4'b0110: begin 
                        Exp_out = ~(First_OP & Second_OP);
                        my_string = "NAND";
                     end
            4'b0111: begin 
                        Exp_out = ~(First_OP | Second_OP);
                        my_string = "NOR";
                     end
            4'b1000: begin 
                        Exp_out = First_OP ^ Second_OP;
                        my_string = "XOR";
                     end
            4'b1001: begin 
                        Exp_out = ~(First_OP ^ Second_OP);
                        my_string = "XNOR";
                     end
            4'b1010: begin 
                        Exp_out = (First_OP == Second_OP);
                        my_string = "CMP: A = B";
                     end
            4'b1011: begin 
                        Exp_out = (First_OP > Second_OP);
                        my_string = "CMP: A > B";
                     end
            4'b1100: begin 
                        Exp_out = (First_OP < Second_OP);
                        my_string = "CMP: A < B";
                     end
            4'b1101: begin 
                        Exp_out = First_OP >> 1;
                        my_string = "SHIFT: A >> 1";
                     end
            4'b1110: begin 
                        Exp_out = First_OP << 1;
                        my_string = "SHIFT: A << 1";
                     end
            default: begin 
                        Exp_out = 'b0;
                        my_string = "Undefined";
                     end
        endcase

        $display("Performing operation of (%-8s) on OP_A = %h and OP_B = %h",
                  my_string, First_OP, Second_OP);

          

        UART_SEND_FRAME(8'hCC);  // Command 
        UART_SEND_FRAME(First_OP);   // Address = 0x3
        UART_SEND_FRAME(Second_OP);   // Address = 0x3
        UART_SEND_FRAME(ALU_FUNC);    // Address = 0x3
        TX_Read(R_Data_1);
        TX_Read(R_Data_2);

        R_Data = {R_Data_2,R_Data_1} ;

        if (Exp_out == R_Data) begin
            $display("PASS: Expected = %2h, Received = %2h\n",
                    Exp_out, R_Data);
        end 
        else begin
            $display("FAI: Expected = %h, Received = %h\n",
                    Exp_out, R_Data);
        end

        #(TX_CLK_PERIOD);
    end
endtask


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************* ALU_Command_Without_OP ***********************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task ALU_Command_Without_OP;
    input   [3:0]             ALU_FUNC;
    /////////////////////////////////////
    reg     [12*14:1]         my_string;
    /////////////////////////////////////
    reg     [7:0]             R_Data_1;
    reg     [7:0]             R_Data_2;
    reg     [15:0]            R_Data; 
    /////////////////////////////////////
    reg     [15:0]            Exp_out;
    reg     [7:0]             First_OP;
    reg     [7:0]             Second_OP;
       
    begin

        First_OP = DUT.RegFile.REG0 ;
        Second_OP = DUT.RegFile.REG1 ;

        case (ALU_FUNC)
            4'b0000: begin 
                        Exp_out = First_OP + Second_OP;
                        my_string = "Addition";
                     end
            4'b0001: begin 
                        Exp_out = First_OP - Second_OP;
                        my_string = "Subtraction";
                     end
            4'b0010: begin 
                        Exp_out = First_OP * Second_OP;
                        my_string = "Multiplication";
                     end
            4'b0011: begin 
                        Exp_out = First_OP / Second_OP;
                        my_string = "Division";
                     end
            4'b0100: begin 
                        Exp_out = First_OP & Second_OP;
                        my_string = "AND";
                     end
            4'b0101: begin 
                        Exp_out = First_OP | Second_OP;
                        my_string = "OR";
                     end
            4'b0110: begin 
                        Exp_out = ~(First_OP & Second_OP);
                        my_string = "NAND";
                     end
            4'b0111: begin 
                        Exp_out = ~(First_OP | Second_OP);
                        my_string = "NOR";
                     end
            4'b1000: begin 
                        Exp_out = First_OP ^ Second_OP;
                        my_string = "XOR";
                     end
            4'b1001: begin 
                        Exp_out = ~(First_OP ^ Second_OP);
                        my_string = "XNOR";
                     end
            4'b1010: begin 
                        Exp_out = (First_OP == Second_OP);
                        my_string = "CMP: A = B";
                     end
            4'b1011: begin 
                        Exp_out = (First_OP > Second_OP);
                        my_string = "CMP: A > B";
                     end
            4'b1100: begin 
                        Exp_out = (First_OP < Second_OP);
                        my_string = "CMP: A < B";
                     end
            4'b1101: begin 
                        Exp_out = First_OP >> 1;
                        my_string = "SHIFT: A >> 1";
                     end
            4'b1110: begin 
                        Exp_out = First_OP << 1;
                        my_string = "SHIFT: A << 1";
                     end
            default: begin 
                        Exp_out = 'b0;
                        my_string = "Undefined";
                     end
        endcase

        $display("Performing operation of (%-8s) on OP_A = %h and OP_B = %h",
                  my_string, First_OP, Second_OP);

          

        UART_SEND_FRAME(8'hDD);  // Command 
        UART_SEND_FRAME(ALU_FUNC);    // Address = 0x3
        TX_Read(R_Data_1);
        TX_Read(R_Data_2);

        R_Data = {R_Data_2,R_Data_1} ;

        if (Exp_out == R_Data) begin
            $display("PASS: Expected = %2h, Received = %2h\n",
                    Exp_out, R_Data);
        end 
        else begin
            $display("FAI: Expected = %h, Received = %h\n",
                    Exp_out, R_Data);
        end

        #(TX_CLK_PERIOD);
    end
endtask



//******************************* Clock Generators **************************
always #(REF_CLK_PERIOD/2) REF_CLK_TB = ~REF_CLK_TB;
always #(UART_CLK_PERIOD/2) UART_CLK_TB = ~UART_CLK_TB;
always #(TX_CLK_PERIOD/2) TX_CLK_TB = ~TX_CLK_TB;

endmodule
