// ************************************************************* //
//                      Module : UART_RX_tb                      //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

`timescale 1us/1ps

module UART_RX_tb ();

//******************************* Parameters *******************************
parameter   Data_Width = 8 ,
            TX_CLK_PERIOD = 8.6805 ; 

//******************************* DUT Signals ******************************

reg                         RX_CLK_TB;
reg                         RST_TB;
reg                         PAR_EN_TB;
reg     [5:0]               Prescale_TB;
reg                         PAR_TYP_TB;
reg                         RX_IN_TB;
wire                        Paerity_Error_TB;
wire                        Stop_Error_TB;
wire                        Data_Valid_TB;
wire    [Data_Width-1:0]    P_DATA_TB;


//****************************** Internal signals *****************************
reg                         TX_CLK_TB;


//***************************** DUT Instantation ****************************
UART_RX_TOP #(.Data_Width(Data_Width)) DUT (
.CLK(RX_CLK_TB),
.RST(RST_TB),
.PAR_EN(PAR_EN_TB),
.Prescale(Prescale_TB),
.PAR_TYP(PAR_TYP_TB),
.RX_IN(RX_IN_TB),
.Paerity_Error(Paerity_Error_TB), 
.Stop_Error(Stop_Error_TB),
.Data_Valid(Data_Valid_TB),
.P_DATA(P_DATA_TB)
);


//******************************* initial block *******************************
initial 
begin
    // System Functions
    $dumpfile("UART_TX_DUMP.vcd") ;       
    $dumpvars; 

    // initialization
    initialize() ;
    // Reset 
    #50;
    reset();

    //////////////////////////////////////////////////////////////// Name Print /////////////////////////////////////////////////////////////////////
    $display("\nName : Ahmed Mohamed Afifi");
    $display("Name : System_UART_RX\n\n");

    
    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (1) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d1);
    $display("Test normal the glitch in Start bit  @(negedge TX_CLK_TB) ");
    Set_Config('d8 , 1'b0 , 1'b0 );    // Odd parity is enabled
    Glitch_Check();



    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (2) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d2);
    $display("Test normal operation without parity & Prescale = 8 ----- No Error");
    Set_Config('d8 , 1'b0 , 1'b0 );    // Odd parity is enabled
    DO_CHK_OP_Without_Parity('b0101110101 , 'b01011101 );
    

    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (3) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d3);
    $display("Test normal operation without parity & Prescale = 16 ----- Data Error (will not detect it)");
    Set_Config('d8 , 1'b0 , 1'b0 );    // Odd parity is enabled
    DO_CHK_OP_Without_Parity('b0100000101 , 'b01011101 );



    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (4) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d4);
    $display("Test normal operation without parity & Prescale = 32 ----- Stop Bit Error");
    Set_Config('d16 , 1'b0 , 1'b0 );    // Odd parity is enabled
    DO_CHK_OP_Without_Parity('b0101110100 , 'b01011101 );




    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (5) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d5);
    $display("Test normal operation with odd parity & Prescale = 8 ----- No Error");
    Set_Config('d8 , 1'b1 , 1'b1 );    // Odd parity is enabled
    DO_CHK_OP_With_Parity('b01110001011 , 'b01000111 );


    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (6) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d6);
    $display("Test normal operation with odd parity & Prescale = 8 ----- Data Error ( Will not detect it )");
    $display("Because : RX data is Odd so that sent Par_bit is 0  --> but! [Data_Valid = 1 & Parity_Error = 0] as the corrupted data is still Odd )");
    Set_Config('d8 , 1'b1 , 1'b1 );    // Odd parity is enabled
    DO_CHK_OP_With_Parity('b01011011001 , 'b01001111 );


    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (7) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d7);
    $display("Test normal operation with odd parity & Prescale = 8 ----- Data Error ( Will detect it in Form of Parity Error)");
    $display("Because : RX data is Odd so that sent Par_bit is 0  --> but! [Data_Valid = 0 & Parity_Error = 1] as the corrupted data is Even )");
    Set_Config('d8 , 1'b1 , 1'b1 );    // Odd parity is enabled
    DO_CHK_OP_With_Parity('b01011111001 , 'b01110101 );


    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (8) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d8);
    $display("Test normal operation with Even parity & Prescale = 16 ----- Error in Parity ");
    Set_Config('d16 , 1'b1 , 1'b0 );    // Odd parity is enabled
    DO_CHK_OP_With_Parity('b01110001011 , 'b01000111 );



    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (9) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d9);
    $display("Test normal operation with odd parity & Prescale = 32 ----- Error in Stop bit ");
    Set_Config('d32 , 1'b1 , 1'b1 );    // Odd parity is enabled
    DO_CHK_OP_With_Parity('b01110001010 , 'b01000111 );


    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (10) /////////////////////////////////////////////////////////////////////
    Test_Case_num('d10);
    $display("Test normal operation with Even parity & Prescale = 16 ----- Error in (Stop-Parity) bits ");
    Set_Config('d16 , 1'b1 , 1'b0 );    // Odd parity is enabled
    DO_CHK_OP_With_Parity('b01110001010 , 'b01000111 );



    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (11) /////////////////////////////////////////////////////////////////////
   
    Test_Case_num('d11);
    $display("Test consequent frames Without Party");

    //                              (Prescale_1 ,   IN_Frame_1  ,  Exp_Out_1        ,Prescale_1  ,   IN_Frame_1  ,  Exp_Out_1  )
    Consequent_Frames_Without_Parity(    'd8    ,  'b0110000100 , 'b01000011        ,    'd16    ,  'b0110011001 , 'b00110011  );   

 


    @(negedge TX_CLK_TB);
    //////////////////////////////////////////////////////////////// Test Case (12) /////////////////////////////////////////////////////////////////////

    Test_Case_num('d12);
    $display("Test consequent frames With Party");

    //                           (Prescale_1 , PAR_TYP_1 ,   IN_Frame_1  ,  Exp_Out_1       ,Prescale_1 , PAR_TYP_1 ,   IN_Frame_1  ,  Exp_Out_1  )
    Consequent_Frames_With_Parity(    'd16   ,    1'b1   , 'b01100001011 , 'b01000011       ,    'd32    ,    1'b1   , 'b01100110000 , 'b00110011  );   


    #100;
    $stop ;

end    

 

//*************************************************************************************************************************************************//
//***************************************************************** TASKS *************************************************************************//
//*************************************************************************************************************************************************//


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************************** Test_Case_num *******************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task Test_Case_num ;
    input [5:0] num ;
  begin
        $write ("Test Case (%d ) : ",num);
  end
endtask



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//**************************************************** Signals Initialization **************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task initialize ;
  begin
	RX_CLK_TB         = 1'b0;
	TX_CLK_TB         = 1'b0;
	RST_TB            = 1'b1;    
	Prescale_TB       = 'd8;   
	PAR_EN_TB         = 1'b0;
	PAR_TYP_TB        = 1'b0;
	RX_IN_TB          = 1'b1;      // to start in IDLE state
  end
endtask




//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//************************************************* RESET **********************************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task reset ;
    begin
        RST_TB  = 1'b1;
        @(negedge TX_CLK_TB)
        RST_TB  = 1'b0;
        @(negedge TX_CLK_TB)
        RST_TB  = 1'b1;
    end
endtask


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//************************************************** Set_Config ***************************************************//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task Set_Config ;
    input    [5:0]          IN_Prescale;
    input                   IN_PAR_EN ;
    input                   IN_PAR_TYP ;
  
    begin
    repeat (Prescale_TB) @(posedge RX_CLK_TB);  
    Prescale_TB = IN_Prescale; 
    PAR_EN_TB   = IN_PAR_EN;
    PAR_TYP_TB  = IN_PAR_TYP;
    end
endtask




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//************************************************ Glitch_Check ***************************************************//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task Glitch_Check ;

 reg         exp_Data_Valid ,
             exp_Stop_Error;

 begin

      @(negedge TX_CLK_TB);
      RX_IN_TB = 1'b0;
      repeat (4) @(posedge RX_CLK_TB); 
      RX_IN_TB = 1'b1;

      @(negedge TX_CLK_TB);


      if( DUT.U5.Str_err == 1'b1  &&  DUT.U7.next_state == 3'b000  ) 
        begin
          $display("Succeeded With : start_glitch_error = %b  & next_state is = %b \n\n", DUT.U5.Str_err ,DUT.U7.next_state );
        end
      else
        begin
          $display("Failed With : start_glitch_error = %b  & next_state is = %b \n\n", DUT.U5.Str_err ,DUT.U7.next_state );
        end
  
 end
endtask





/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************* DO_CHK_OP_Without_Parity ***********************************************//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task DO_CHK_OP_Without_Parity ;
 input  [Data_Width+1:0]  IN_Frame ;

 input  [Data_Width-1:0]  Exp_Data_Out;

 integer i;

 reg         exp_Data_Valid ,
             exp_Stop_Error;


 begin
	
      for(i= Data_Width+1 ; i>=0; i=i-1)
      begin
            @(negedge TX_CLK_TB);		
        RX_IN_TB = IN_Frame[i] ;        
      end 


      exp_Stop_Error = (IN_Frame[0] == 1'b0)? 1'b1 : 1'b0 ;
      exp_Data_Valid = (!exp_Stop_Error)? 1'b1 : 1'b0 ;


      @(negedge TX_CLK_TB);
      RX_IN_TB = 1'b1;
      @(posedge RX_CLK_TB);
      @(negedge RX_CLK_TB);
      if(exp_Data_Valid == Data_Valid_TB   &&  exp_Stop_Error == Stop_Error_TB  ) 
        begin
          $display("Succeeded With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b ,Stop_Error_Flag =%b \n\n "
                        ,IN_Frame, Exp_Data_Out, P_DATA_TB, Data_Valid_TB, Stop_Error_TB);
        end
      else
        begin
          $display("Failed With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b ,Stop_Error_Flag =%b \n\n "
                        ,IN_Frame, Exp_Data_Out, P_DATA_TB, Data_Valid_TB, Stop_Error_TB);
        end

        
    
 end
endtask



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************* DO_CHK_OP_With_Parity ***********************************************//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task DO_CHK_OP_With_Parity ;
 input  [Data_Width+2:0]  IN_Frame ;

 input  [Data_Width-1:0]  Exp_Data_Out;

 integer i;

 reg         exp_Data_Valid ,
             exp_Paerity_Error ,
             exp_Stop_Error,
             Calc_parity;

 begin
	
      for(i= Data_Width+2 ; i>=0; i=i-1)
      begin
            @(negedge TX_CLK_TB);		
        RX_IN_TB = IN_Frame[i] ;        
      end 

      @(negedge TX_CLK_TB);
      RX_IN_TB = 1'b1;


      if (PAR_TYP_TB) begin 
        Calc_parity <= ~^P_DATA_TB ;     // Odd Parity  --> Result is XNOR of all Data bits (1 if even number of 1's) 
      end
      else begin
        Calc_parity <= ^P_DATA_TB  ;     // Even Parity --> Result is XOR of all Data bits (1 if odd number of 1's)
      end

      @(posedge RX_CLK_TB);

      exp_Paerity_Error = (Calc_parity != IN_Frame[1])? 1'b1 : 1'b0 ;
      exp_Stop_Error = (IN_Frame[0] == 1'b0)? 1'b1 : 1'b0 ;
      exp_Data_Valid = (!exp_Paerity_Error && !exp_Stop_Error)? 1'b1 : 1'b0 ;

      
      @(negedge RX_CLK_TB);
      if(exp_Data_Valid == Data_Valid_TB  &&  exp_Paerity_Error == Paerity_Error_TB   &&  exp_Stop_Error == Stop_Error_TB  ) 
        begin
          $display("Succeeded With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Parity_Error_Flag =%b ,Stop_Error_Flag =%b \n\n"
                        ,IN_Frame, Exp_Data_Out, P_DATA_TB, Data_Valid_TB, Paerity_Error_TB, Stop_Error_TB);
        end
      else
        begin
          $display("Failed With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Parity_Error_Flag =%b ,Stop_Error_Flag =%b \n\n  =%b\n=%b\=%b"
                        ,IN_Frame, Exp_Data_Out, P_DATA_TB, Data_Valid_TB, Paerity_Error_TB, Stop_Error_TB  ,exp_Data_Valid ,exp_Paerity_Error ,exp_Stop_Error          );
        end
    
 end
endtask




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//************************************** Consequent_Frames_Without_Parity *****************************************//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task Consequent_Frames_Without_Parity ;
 input  [5:0]             Prescale_1;
 input  [Data_Width+1:0]  IN_Frame_1 ;
 input  [Data_Width-1:0]  Exp_Data_Out_1;


 input  [5:0]             Prescale_2;
 input  [Data_Width+1:0]  IN_Frame_2 ;
 input  [Data_Width-1:0]  Exp_Data_Out_2;


 integer i;


 reg         exp_Data_Valid ,
             exp_Stop_Error;

    begin
      @(negedge TX_CLK_TB);	
      Set_Config( Prescale_1 , 1'b0 , 1'b0 );


      for(i= Data_Width+1 ; i>=0; i=i-1)
      begin
            @(negedge TX_CLK_TB);		
        RX_IN_TB = IN_Frame_1[i] ;        
      end 

      exp_Stop_Error = (IN_Frame_1[0] == 1'b0)? 1'b1 : 1'b0 ;
      exp_Data_Valid = (!exp_Stop_Error)? 1'b1 : 1'b0 ;



      Set_Config( Prescale_2 , 1'b0 , 1'b0 );

    
      @(negedge TX_CLK_TB);
      RX_IN_TB = IN_Frame_2[Data_Width+1] ;


      @(posedge RX_CLK_TB);
      @(negedge RX_CLK_TB);
      if(exp_Data_Valid == Data_Valid_TB   &&  exp_Stop_Error == Stop_Error_TB  ) 
        begin
          $display("Frame(1) Succeeded With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Stop_Error_Flag =%b "
                        ,IN_Frame_1, Exp_Data_Out_1, P_DATA_TB, Data_Valid_TB , Stop_Error_TB);
        end
      else
        begin
          $display("Frame(1) failed With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Stop_Error_Flag =%b "
                        ,IN_Frame_1, Exp_Data_Out_1, P_DATA_TB, Data_Valid_TB , Stop_Error_TB);
        end



      for(i= Data_Width ; i>=0; i=i-1)
      begin
            @(negedge TX_CLK_TB);		
        RX_IN_TB = IN_Frame_2[i] ;        
      end 

      exp_Stop_Error = (IN_Frame_2[0] == 1'b0)? 1'b1 : 1'b0 ;
      @(posedge RX_CLK_TB);
      exp_Data_Valid = (!exp_Stop_Error)? 1'b1 : 1'b0 ;


      @(negedge TX_CLK_TB);
      RX_IN_TB = 1'b1;
      
      @(posedge RX_CLK_TB);
      @(negedge RX_CLK_TB);
      if(exp_Data_Valid == Data_Valid_TB   &&  exp_Stop_Error == Stop_Error_TB  ) 
        begin
          $display("Frame(1) Succeeded With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Stop_Error_Flag =%b \n\n"
                        ,IN_Frame_1, Exp_Data_Out_1, P_DATA_TB, Data_Valid_TB , Stop_Error_TB);
        end
      else
        begin
          $display("Frame(1) failed With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Stop_Error_Flag =%b \n\n"
                        ,IN_Frame_1, Exp_Data_Out_1, P_DATA_TB, Data_Valid_TB , Stop_Error_TB);
        end

        @(negedge TX_CLK_TB);

    end
endtask



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//*************************************** Consequent_Frames_With_Parity *******************************************//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task Consequent_Frames_With_Parity ;
 input  [5:0]             Prescale_1;
 input                    PAR_TYP_1;
 input  [Data_Width+2:0]  IN_Frame_1 ;
 input  [Data_Width-1:0]  Exp_Data_Out_1;


 input  [5:0]             Prescale_2;
 input                    PAR_TYP_2;
 input  [Data_Width+2:0]  IN_Frame_2 ;
 input  [Data_Width-1:0]  Exp_Data_Out_2;


 integer i;


 reg         exp_Data_Valid ,
             exp_Paerity_Error ,
             exp_Stop_Error,
             Calc_parity_Frame1,
             Calc_parity_Frame2 ;


 
    begin

      @(negedge TX_CLK_TB);
      Set_Config( Prescale_1 , 1'b1 , PAR_TYP_1 );

      
      for(i= Data_Width+2 ; i>=0; i=i-1)
      begin
            @(negedge TX_CLK_TB);		
        RX_IN_TB = IN_Frame_1[i] ;        
      end 

    
      Set_Config( Prescale_2 , 1'b1 , PAR_TYP_2 );


      @(negedge TX_CLK_TB);
      RX_IN_TB = IN_Frame_2[Data_Width+2] ;


      if (PAR_TYP_TB) begin 
        Calc_parity_Frame1 <= ~^P_DATA_TB ;     // Odd Parity  --> Result is XNOR of all Data bits (1 if even number of 1's) 
      end
      else begin
        Calc_parity_Frame1 <= ^P_DATA_TB  ;     // Even Parity --> Result is XOR of all Data bits (1 if odd number of 1's)
      end
      
      @(posedge RX_CLK_TB);

      exp_Paerity_Error = (Calc_parity_Frame1 != IN_Frame_1[1])? 1'b1 : 1'b0 ;
      exp_Stop_Error = (IN_Frame_1[0] == 1'b0)? 1'b1 : 1'b0 ;
      exp_Data_Valid = (!exp_Paerity_Error && !exp_Stop_Error)? 1'b1 : 1'b0 ;


      @(negedge RX_CLK_TB);
      if(exp_Data_Valid == Data_Valid_TB  &&  exp_Paerity_Error == Paerity_Error_TB   &&  exp_Stop_Error == Stop_Error_TB  ) 
        begin
          $display("Frame(1) Succeeded With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Parity_Error_Flag =%b ,Stop_Error_Flag =%b "
                        ,IN_Frame_1, Exp_Data_Out_1, P_DATA_TB, Data_Valid_TB, Paerity_Error_TB, Stop_Error_TB);
        end
      else
        begin
          $display("Frame(1) failed With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Parity_Error_Flag =%b ,Stop_Error_Flag =%b "
                        ,IN_Frame_1, Exp_Data_Out_1, P_DATA_TB, Data_Valid_TB, Paerity_Error_TB, Stop_Error_TB);
        end


      

      for(i= Data_Width+1 ; i>=0; i=i-1)
      begin
            @(negedge TX_CLK_TB);		
        RX_IN_TB = IN_Frame_2[i] ;        
      end 

      @(posedge RX_CLK_TB);
      if (PAR_TYP_TB) begin 
        Calc_parity_Frame2 <= ~^P_DATA_TB ;     // Odd Parity  --> Result is XNOR of all Data bits (1 if even number of 1's) 
      end
      else begin
        Calc_parity_Frame2 <= ^P_DATA_TB  ;     // Even Parity --> Result is XOR of all Data bits (1 if odd number of 1's)
      end

      @(posedge RX_CLK_TB);
      exp_Paerity_Error = (Calc_parity_Frame2 != IN_Frame_2[1])? 1'b1 : 1'b0 ;
      exp_Stop_Error = (IN_Frame_2[0] == 1'b0)? 1'b1 : 1'b0 ;
      @(posedge RX_CLK_TB);
      exp_Data_Valid = (!exp_Paerity_Error && !exp_Stop_Error)? 1'b1 : 1'b0 ;


      @(negedge TX_CLK_TB);
      RX_IN_TB = 1'b1;


      @(posedge RX_CLK_TB);
      @(negedge RX_CLK_TB);
      if(exp_Data_Valid == Data_Valid_TB  &&  exp_Paerity_Error == Paerity_Error_TB   &&  exp_Stop_Error == Stop_Error_TB  ) 
        begin
          $display("Frame(2) Succeeded With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Parity_Error_Flag =%b ,Stop_Error_Flag =%b \n\n "
                        ,IN_Frame_2, Exp_Data_Out_2, P_DATA_TB, Data_Valid_TB, Paerity_Error_TB, Stop_Error_TB);
        end
      else
        begin
          $display("Frame(2) failed With : IN_Frame =%b , Exp_RX_Data=%b ----> RX_Data=%b \nOutput Flags ---> Data_Valid_Flag =%b , Parity_Error_Flag =%b ,Stop_Error_Flag =%b \n\n "
                        ,IN_Frame_2, Exp_Data_Out_2, P_DATA_TB, Data_Valid_TB, Paerity_Error_TB, Stop_Error_TB );
        end

        @(negedge TX_CLK_TB);

    end
endtask


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//******************************************************* Clock Generator ******************************************//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

always #((TX_CLK_PERIOD/Prescale_TB)/2) RX_CLK_TB = ~RX_CLK_TB ;
always #(TX_CLK_PERIOD/2) TX_CLK_TB = ~TX_CLK_TB ;




endmodule