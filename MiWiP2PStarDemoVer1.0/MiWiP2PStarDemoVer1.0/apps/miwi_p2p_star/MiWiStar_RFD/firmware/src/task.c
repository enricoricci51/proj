/********************************************************************
 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the "Company") for its PIC(R) Microcontroller is intended and
 supplied to you, the Company's customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *******************************************************************/

/************************ HEADERS ****************************************/

#include "task.h"
#include "star_demo.h"




/************************** VARIABLES ************************************/
#define LIGHT   0x01
#define SWITCH  0x02

/*************************************************************************/
// AdditionalNodeID variable array defines the additional 
// information to identify a device on a PAN. This array
// will be transmitted when initiate the connection between 
// the two devices. This  variable array will be stored in 
// the Connection Entry structure of the partner device. The 
// size of this array is ADDITIONAL_NODE_ID_SIZE, defined in 
// ConfigApp.h.
// In this demo, this variable array is set to be empty.
/*************************************************************************/
#if ADDITIONAL_NODE_ID_SIZE > 0
    uint8_t AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {LIGHT};
#endif

/*************************************************************************/
// The variable myChannel defines the channel that the device
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available with
// least amount of energy (or noise).
/*************************************************************************/
uint8_t myChannel = 25;
uint8_t i;
uint8_t TxSynCount = 0;
uint8_t TxSynCount2 = 0;
uint8_t TxNum = 0;
uint8_t RxNum = 0;
bool cc = true;
bool count = 0x00;
bool ch_sel_status = true;
MIWI_TICK tick1, tick2;
MIWI_TICK t1, t2;   // Timers for Link Status
bool role = true ;  // Default : Any device will be Pan co
uint8_t myLongAddress[8];





bool freezer_feature(void)
{
    #if defined(EIGHT_BIT_WIRELESS_BOARD)
        LCDDisplay((char *)"RB0:New Network RB2:Freezer", 0, false);
    #else
        LCDDisplay((char *)"SW1:New Network SW2:Freezer", 0, false);
    #endif 
    while (1)
        {
            uint8_t PressedButton1 = ButtonPressed();
            if (PressedButton1 == 1)
                {
                    return false;
                    break;
                }
            else if (PressedButton1 == 2)
                {
                    return true;
                    break;
                }
        }
}

bool Initialize_Demo(bool freezer_enable)
{
    #if defined(USE_MAC_ADDRESS)
        Read_MAC_Address(myLongAddress);
    #endif
    
    if (freezer_enable)
    {
        MiApp_ProtocolInit(true);
    }
    else
    {
        LED_1 = 0;
        LED_2 = 0;

        /*******************************************************************/
        // Initialize Microchip proprietary protocol. Which protocol to use
        // depends on the configuration in ConfigApp.h
        /*******************************************************************/
        /*******************************************************************/
        // Function MiApp_ProtocolInit initialize the protocol stack. The
        // only input parameter indicates if previous network configuration
        // should be restored. In this simple example, we assume that the 
        // network starts from scratch.
        /*******************************************************************/
        MiApp_ProtocolInit(false);

        // Set default channel
        if( MiApp_SetChannel(myChannel) == false )
        {
            DemoOutput_ChannelError(myChannel);
            #if defined(__XC8__)
                return;
            #else
                return 0;
            #endif
        }

        /*******************************************************************/
        // Function MiApp_ConnectionMode defines the connection mode. The
        // possible connection modes are:
        //  ENABLE_ALL_CONN:    Enable all kinds of connection
        //  ENABLE_PREV_CONN:   Only allow connection already exists in 
        //                      connection table
        //  ENABL_ACTIVE_SCAN_RSP:  Allow response to Active scan
        //  DISABLE_ALL_CONN:   Disable all connections. 
        /*******************************************************************/
        MiApp_ConnectionMode(ENABLE_ALL_CONN);
        DemoOutput_Channel(myChannel, 0);

        /*******************************************************************/
        // Function MiApp_EstablishConnection try to establish a new 
        // connection with peer device. 
        // The first parameter is the index to the active scan result, 
        //      which is acquired by discovery process (active scan). If 
        //      the value of the index is 0xFF, try to establish a 
        //      connection with any peer.
        // The second parameter is the mode to establish connection, 
        //      either direct or indirect. Direct mode means connection 
        //      within the radio range; indirect mode means connection 
        //      may or may not in the radio range. 
        /*******************************************************************/
        i = MiApp_EstablishConnection(0xFF , CONN_MODE_DIRECT);

        /*******************************************************************/
        // Display current opertion on LCD of demo board, if applicable
        /*******************************************************************/
        if( i != 0xFF )
        {
            DemoOutput_Channel(myChannel, 1);
            role = false;  // denotes its  a End device
        }

        nvmPutMyRole(&role);
        
        /*******************************************************************/
        // Function DumpConnection is used to print out the content of the
        //  Connection Entry on the hyperterminal. It may be useful in 
        //  the debugging phase.
        // The only parameter of this function is the index of the  
        //  Connection Entry. The value of 0xFF means to print out all
        //  valid Connection Entry; otherwise, the Connection Entry
        //  of the input index will be printed out.
        /*******************************************************************/
        #if defined(EIGHT_BIT_WIRELESS_BOARD)
            DumpConnection(0xFF);
        #endif


        // Turn on LED 1 to indicate connection established
        LED_1 = 1;
        DemoOutput_Instruction();

    
}
}






void Run_Demo(void)
{
    
    run_star_demo();
    
}