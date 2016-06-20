/****************************************************************************
* FileName:		main.c
* Dependencies: none   
* Processor:	PIC18, PIC24F, PIC32, dsPIC30, dsPIC33
*               tested with 18F4620, dsPIC33FJ256GP710	
* Complier:     Microchip C18 v3.04 or higher
*				Microchip C30 v2.03 or higher	
*               Microchip C32 v1.02 or higher
* Company:		Microchip Technology, Inc.
*
* Copyright and Disclaimer Notice for MiWi DE Software:
*
* Copyright � 2007-2012 Microchip Technology Inc.  All rights reserved.
*
* Microchip licenses to you the right to use, modify, copy and distribute 
* Software only when embedded on a Microchip microcontroller or digital 
* signal controller and used with a Microchip radio frequency transceiver, 
* which are integrated into your product or third party product (pursuant 
* to the terms in the accompanying license agreement).   
*
* You should refer to the license agreement accompanying this Software for 
* additional information regarding your rights and obligations.
*
* SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY 
* KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY 
* WARRANTY OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A 
* PARTICULAR PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE 
* LIABLE OR OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, 
* CONTRIBUTION, BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY 
* DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO 
* ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, 
* LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF SUBSTITUTE GOODS, 
* TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES (INCLUDING BUT 
* NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*
****************************************************************************
* File Description:
*
*  This is the simple example that demonstrate the simple programming
*  interface of MiWi Development Environment (DE). As you may see in
*  the demo code, besides application specific code, all wireless
*  communicate code is less than 30 lines. This simple example must be 
*  used with node 2 of simple example.
*  In this simple example, following features have been demonstrated:
*   - Hand Shake
*       A hand-shaking process has been demonstrated by establishing
*       connection with a peer device.
*   - Receiving Message
*       This example demonstrate how to check received message and 
*       available information for the received data. Finally, this
*       example also show how to process the message
*   - Transmitting Message
*       This example demonstrate how to transmit message by broadcast
*       or unicast
*   - Security
*       This example demonstrate how to require the protocol stack
*       to encrypt the outgoing message. It also shows how the 
*       protocol stack automatically decrypt the incoming message
*       and provide the security status to the application layer.
*
* Detailed demo flow chart and execution instructions can be found in
*   MiWi DE help file located at directory <MLA Install Directory>/
*   Microchip/Help. From the content tab, find the document about
*   Simple Example at <ROOT> -> "Demos" -> "Running Demos" -> 
*   "Basic Demos" -> "Simple Example".
*
* Change History:
*  Rev   Date         Author    Description
*  0.1   1/03/2008    yfy       Initial revision
*  2.0   4/15/2009    yfy       MiMAC and MiApp revision
*  3.1   5/28/2010    yfy       MiWi DE 3.1
*  4.1   1/31/2012    yfy       MiWi DE 4.2, simplified demo interface
**************************************************************************/

/************************ HEADERS ****************************************/
#include "ConfigApp.h"
#include "WirelessProtocols/MCHP_API.h"
#include "WirelessProtocols/Console.h"
#include "GenericTypeDefs.h"
#include "AL_P.h"
#include "DemoOutput.h"
#include "HardwareProfile.h"
#include "TCN75A.h"
#include "TimeDelay.h"

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
    BYTE AdditionalNodeID[ADDITIONAL_NODE_ID_SIZE] = {LIGHT};
#endif

/*************************************************************************/
// The variable myChannel defines the channel that the device
// is operate on. This variable will be only effective if energy scan
// (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
// on, the operating channel will be one of the channels available with
// least amount of energy (or noise).
/*************************************************************************/
BYTE myChannel = 24;

BYTE tempAddr[8] = {0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
extern DWORD_VAL OutgoingFrameCounter; 
/*********************************************************************
* Function:         void main(void)
*
* PreCondition:     none
*
* Input:		    none
*
* Output:		    none
*
* Side Effects:	    none
*
* Overview:		    This is the main function that runs the simple 
*                   example demo. The purpose of this example is to
*                   demonstrate the simple application programming
*                   interface for the MiWi(TM) Development 
*                   Environment. By virtually total of less than 30 
*                   lines of code, we can develop a complete 
*                   application using MiApp interface. The 
*                   application will first try to establish a
*                   link with another device and then process the 
*                   received information as well as transmit its own 
*                   information.
*                   MiWi(TM) DE also support a set of rich 
*                   features. Example code FeatureExample will
*                   demonstrate how to implement the rich features 
*                   through MiApp programming interfaces.
*
* Note:			    
**********************************************************************/
#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{   
    BYTE i,j;
    BYTE TxSynCount = 0;
    BYTE TxSynCount2 = 0;
    BYTE TxNum = 0;
    BYTE RxNum = 0;
    BOOL bReceivedMessage;

    ConsoleInit();
    BoardInit();
    InitVar();

//    Printf("\r\n   Demo Instruction:");
//    Printf("\r\n                     Power on the board until LED 1 lights up");
//    Printf("\r\n                     to indicate it is ready to establish new");
//    Printf("\r\n                     connections. Push Button 1 to perform");
//    Printf("\r\n                     frequency agility procedure. Push Button");
//    Printf("\r\n                     2 to unicast encrypted message. LED 2 will");
//    Printf("\r\n                     be toggled upon receiving messages. ");
//    Printf("\r\n\r\n");

    LED_1 = 1;

    if(( MiApp_ProtocolInit(TRUE) == TRUE ) )
    {
        /*******************************************************************/
        // Function MiApp_ProtocolInit initialize the protocol stack. The
        // only input parameter indicates if previous network configuration
        // should be restored. In this example, if button 1 is pressed and
        // hold when powering up, we assume the user would like to enable
        // the Network Freezer and load previous network configuration
        // from NVM.
        /*******************************************************************/

        LCDDisplay((char *)" Network Freezer    ENABLED", 0, TRUE);
        //Printf("\r\nNetwork Freezer Feature is enabled. There will be no hand-shake process.\r\n");
        LED_1 = 0;
    }
    else
    {
        /*******************************************************************/
        // Function MiApp_ProtocolInit initialize the protocol stack. The
        // only input parameter indicates if previous network configuration
        // should be restored. In this example, if button 1 is released
        // when powering up, we assume that the user want the network to
        // start from scratch.
        /*******************************************************************/
        MiApp_ProtocolInit(FALSE);

//        LED_1 = 0;
//        LED_2 = 0;

        #ifdef ENABLE_ACTIVE_SCAN

            myChannel = 25;
            //ConsolePutROMString((ROM char *)"\r\nStarting Active Scan...");

            LCDDisplay((char *)"Active Scanning", 0, FALSE);

            /*******************************************************************/
            // Function MiApp_SearchConnection will return the number of
            // existing connections in all channels. It will help to decide
            // which channel to operate on and which connection to add.
            // The return value is the number of connections. The connection
            //     data are stored in global variable ActiveScanResults.
            //     Maximum active scan result is defined as
            //     ACTIVE_SCAN_RESULT_SIZE
            // The first parameter is the scan duration, which has the same
            //     definition in Energy Scan. 10 is roughly 1 second. 9 is a
            //     half second and 11 is 2 seconds. Maximum scan duration is 14,
            //     or roughly 16 seconds.
            // The second parameter is the channel map. Bit 0 of the
            //     double word parameter represents channel 0. For the 2.4GHz
            //     frequency band, all possible channels are channel 11 to
            //     channel 26. As the result, the bit map is 0x07FFF800. Stack
            //     will filter out all invalid channels, so the application
            //     only needs to pay attention to the channels that are not
            //     preferred.
            /*******************************************************************/

            i = MiApp_SearchConnection(10, 0x07FFF800);

            if( i > 0 )
            {
                // now print out the scan result.
                //Printf("\r\nActive Scan Results: \r\n");
                for(j = 0; j < i; j++)
                {
                    //Printf("Channel: ");
                    PrintDec(ActiveScanResults[j].Channel );
                    //Printf("   RSSI: ");
                    PrintChar(ActiveScanResults[j].RSSIValue);
                    //Printf("\r\n");
                    myChannel = ActiveScanResults[j].Channel;
                }
            }
        #endif


        /*******************************************************************/
        // Function MiApp_ConnectionMode sets the connection mode for the
        // protocol stack. Possible connection modes are:
        //  - ENABLE_ALL_CONN       accept all connection request
        //  - ENABLE_PREV_CONN      accept only known device to connect
        //  - ENABL_ACTIVE_SCAN_RSP do not accept connection request, but
        //                          allow response to active scan
        //  - DISABLE_ALL_CONN      disable all connection request, including
        //                          active scan request
        /*******************************************************************/
        MiApp_ConnectionMode(ENABLE_ALL_CONN);

        if( i > 0 )
        {
            /*******************************************************************/
            // Function MiApp_EstablishConnection try to establish a new
            // connection with peer device.
            // The first parameter is the index to the active scan result, which
            //      is acquired by discovery process (active scan). If the value
            //      of the index is 0xFF, try to establish a connection with any
            //      peer.
            // The second parameter is the mode to establish connection, either
            //      direct or indirect. Direct mode means connection within the
            //      radio range; Indirect mode means connection may or may not
            //      in the radio range.
            /*******************************************************************/
            if( MiApp_EstablishConnection(0, CONN_MODE_INDIRECT) == 0xFF )
            {
                Printf("\r\nJoin Fail");
            }
        }
        else
        {
            /*******************************************************************/
            // Function MiApp_StartConnection tries to start a new network
            //
            // The first parameter is the mode of start connection. There are
            // two valid connection modes:
            //   - START_CONN_DIRECT        start the connection on current
            //                              channel
            //   - START_CONN_ENERGY_SCN    perform an energy scan first,
            //                              before starting the connection on
            //                              the channel with least noise
            //   - START_CONN_CS_SCN        perform a carrier sense scan
            //                              first, before starting the
            //                              connection on the channel with
            //                              least carrier sense noise. Not
            //                              supported for current radios
            //
            // The second parameter is the scan duration, which has the same
            //     definition in Energy Scan. 10 is roughly 1 second. 9 is a
            //     half second and 11 is 2 seconds. Maximum scan duration is
            //     14, or roughly 16 seconds.
            //
            // The third parameter is the channel map. Bit 0 of the
            //     double word parameter represents channel 0. For the 2.4GHz
            //     frequency band, all possible channels are channel 11 to
            //     channel 26. As the result, the bit map is 0x07FFF800. Stack
            //     will filter out all invalid channels, so the application
            //     only needs to pay attention to the channels that are not
            //     preferred.
            /*******************************************************************/
            LCDDisplay((char *)"Active Scanning Energy Scanning", 0, FALSE);
            MiApp_StartConnection(START_CONN_ENERGY_SCN, 10, 0xFFFFFFFF);
        }

        // Turn on LED 1 to indicate ready to accept new connection
        
    }
        
    
    SendReady();
    
    LED_1 = 0;
    DumpConnection(0xFF);
    LCDDisplay((char *)"Start Connection on Channel %d", currentChannel, TRUE);

    /*******************************************************************/
    // Following block display demo instructions on LCD based on the
    // demo board used.
    /*******************************************************************/
    #if defined(EXPLORER16)
        LCDDisplay((char *)"RD6: Freq Hop   RD7: Unicast", 0, FALSE);
    #elif defined(PIC18_EXPLORER)
        LCDDisplay((char *)"RB0: Freq Hop   RA5: Unicast", 0, FALSE);
    #elif defined(EIGHT_BIT_WIRELESS_BOARD)
        LCDDisplay((char *)"RB0: Freq Hop   RB2: Unicast", 0, FALSE);
    #endif

    while(1)
    {
        /*******************************************************************/
        // Function MiApp_MessageAvailable will return a boolean to indicate
        // if a message for application layer has been received by the
        // transceiver. If a message has been received, all information will
        // be stored in the rxMessage, structure of RECEIVED_MESSAGE.
        /*******************************************************************/
        if( MiApp_MessageAvailable() )
        {
            LED_2 = 1;
            DelayMs(20);
            LED_2 = 0;
            DemoOutput_HandleMessage();
            
            /*******************************************************************/
            // Function MiApp_DiscardMessage is used to release the current
            // received message. After calling this function, the stack can
            // start to process the next received message.
            /*******************************************************************/
            MiApp_DiscardMessage();
            bReceivedMessage = TRUE;
            
            /*******************************************************************/
            // Following block update the total received and transmitted messages
            // on the LCD of the demo board.
            /*******************************************************************/
            LCDTRXCount(TxNum, ++RxNum);
        }
        else
        {
            /*******************************************************************/
            // If no packet received, now we can check if we want to send out
            // any information.
            // Function ButtonPressed will return if any of the two buttons
            // has been pushed.
            /*******************************************************************/
            BYTE PressedButton = ButtonPressed();
            switch( PressedButton )
            {
                case 1:
                    {
                        Action = AC_RESYNC;
                    }
                    break;

                case 2:
                    {
                        static BYTE prova = 0;
                        prova ^= 1;
                        if(prova)
                        {
                            LED_2 = 1;
                            Action = AC_WAKEUP;
                        }
                        else
                        {
                            LED_2 = 0;
                            Action = AC_DEEP_SLEEP;
                        }
                    }
                    break;

                default:
                    break;
            }

//            if(RXNOTEMPTY)
//            {
//                Parser(ConsoleGet());
//            }
//            if(Action == AC_REQUEST_WELCOME || Action == AC_WAKEUP || Action == AC_DEEP_SLEEP)
//            {
//                Action = 0;
//                MiApp_FlushTx();
//                if(Action == AC_REQUEST_WELCOME)
//                    MiApp_WriteData((BYTE)AL_CMD_WELCOME);
//                else if(Action == AC_WAKEUP)
//                    MiApp_WriteData((BYTE)AL_CMD_WAKEUP);
//                else if(Action == AC_DEEP_SLEEP)
//                    MiApp_WriteData((BYTE)AL_CMD_DEEP_SLEEP);
//                MiApp_BroadcastPacket(FALSE);
//            }
//            else
//            {
//                if(Action)
//                {
//                    switch(Action)
//                    {
//                        case AC_REQUEST_PIR:
//                            MiApp_FlushTx();
//                            MiApp_WriteData((BYTE)AL_CMD_REQUEST_PIR);
//                            break;
//                        case AC_REQUEST_TEM:
//                            MiApp_FlushTx();
//                            MiApp_WriteData((BYTE)AL_CMD_TEMPERATURE);
//                            break;
//                        case AC_REQUEST_BAT:
//                            MiApp_FlushTx();
//                            MiApp_WriteData((BYTE)AL_CMD_BATTERY);
//                            break;
//                        case AC_REQUEST_NAME:
//                            MiApp_FlushTx();
//                            MiApp_WriteData((BYTE)AL_CMD_NAME);
//                            break;
//                        case AC_GET_TABLE:
//                            {
//                                BYTE index = 0, NrOfDevices = 0;
//                                for(index = 0; index < CONNECTION_SIZE; index++)
//                                    if(ConnectionTable[i].status.bits.isValid)
//                                        NrOfDevices++;
//                                ConsoleFillBuffer((BYTE) AL_STX);
//                                ConsoleFillBuffer((BYTE) (CheckSum = AL_CMD_GET_TABLE));
//                                ConsoleFillBuffer(2);
//                                CheckSum += 2;
//                                ConsoleFillBuffer((BYTE) (NrOfDevices));
//                                CheckSum += NrOfDevices;
//                                ConsoleFillBuffer(CheckSum);
//                            }
//                            break;
//                        case AC_GET_LOCAL_TEMP:
//                            {
//                                WORD_VAL tempr;
//                                TCN75A_Initialize();
//                                TCN75A_StartSample();
//                                while (TCN75A_StartSample() != 0);
//                                tempr.Val = TCN75A_ReadTempr();
//                                ConsoleFillBuffer((BYTE) AL_STX);
//                                ConsoleFillBuffer((BYTE) (CheckSum = AL_CMD_GET_LOCAL_TEMP));
//                                ConsoleFillBuffer(3);
//                                CheckSum += 3;
//                                ConsoleFillBuffer((BYTE) (tempr.v[1]));
//                                CheckSum += tempr.v[1];
//                                ConsoleFillBuffer((BYTE) (tempr.v[0]));
//                                CheckSum += tempr.v[0];
//                                ConsoleFillBuffer(CheckSum);
//                            }
//                            break;
//                        default:
//                            break;
//                    }
//                    if( MiApp_UnicastConnection((BYTE)SearchForConnectionTableIndex((BYTE *)ParserFlags.Address), TRUE) == FALSE )
//                    {
//                        DemoOutput_UnicastFail();
//                    }
//                    Action = 0;
//                }
//            }
            if(TXNOTEMPTY)
            {
                EmptyBuffer();
            }
        }
    }
}


