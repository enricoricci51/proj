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





#if defined(PROTOCOL_STAR)
    /*************************************************************************/
    // The variable myChannel defines the channel that the device
    // is operate on. This variable will be only effective if energy scan
    // (ENABLE_ED_SCAN) is not turned on. Once the energy scan is turned
    // on, the operating channel will be one of the channels available with
    // least amount of energy (or noise).
    /*************************************************************************/
    uint8_t myChannel = 25;
    uint8_t i;
    uint8_t TxSynCount = 0;    // Maintain the Count on TX's Done
    uint8_t TxSynCount2 = 0; // Maintain the Count on TX's Done
    uint8_t TxNum = 0;         // Maintain the Count on TX's Done
    uint8_t RxNum = 0;         // Maintain the Count on RX's Done

    // check for selections made by USER
    bool chk_sel_status = true;
    // Timers
    MIWI_TICK  tt1 , tt2 , t1 , t2 , t3;
    // This variable is Set true , when a End Device is assumed no more active by PAN CO
    // The work around for this situation is Sending Connection Request Again to PAN CO by END Device
    // Variable only used by a END Device

    // Structure which Stores the Shared Connection Table broadcasted by PAN CO
    // Only END DEVICES use these structures when PAN CO sends them the CT
    END_DEVICES_Unique_Short_Address  END_DEVICES_Short_Address[CONNECTION_SIZE];  
    uint8_t end_nodes;  // Variable for END_Devices to store no of END Devices
    //Structure used by All devices in Network to Store the Peer Device Information
    // On a Successful Connection Establishment
    bool awake;
    bool lost_connection;

#endif

    

void run_star_demo(void)
{
    #if defined(PROTOCOL_STAR)
        t1 = MiWi_TickGet();
        LCDDisplay((char *)"Sleeping!!", 0, false);
        while(1)
        {
           
            t2 = MiWi_TickGet();    // Calculate the Time for Sleeping device

            if((MiWi_TickGetDiff(t2,t1) > (ONE_SECOND * 20)))
            {
              awake = true;
              #if !defined(EIGHT_BIT_WIRELESS_BOARD)
              LCD_BacklightON();
              #endif
      
              MiApp_TransceiverPowerState(POWER_STATE_WAKEUP_DR);
              LCDDisplay((char *)"Woke Up!!!", 0, false);
              DELAY_ms(1000);
              STAR_DEMO_OPTIONS_MESSAGE (false);
              tt1 = MiWi_TickGet();  
            }
            while(awake)   
            {
                tt2 = MiWi_TickGet();    
                if((MiWi_TickGetDiff(tt2,tt1) > (ONE_SECOND * 10)))   
                {
                    // The Indirect Message for a Sleeping RFD is stored in PAN CO 
                    // We periodically send Data Requests for the Indirect Message to 
                    // not loose a message. 
                    CheckForData();
                    tt1 = MiWi_TickGet();
                }    
                /*******************************************************************/
                // Function MiApp_MessageAvailable returns a boolean to indicate if 
                // a packet has been received by the transceiver. If a packet has 
                // been received, all information will be stored in the rxFrame, 
                // structure of RECEIVED_MESSAGE.
                /*******************************************************************/

                if( MiApp_MessageAvailable())
                {

                    /*******************************************************************/
                    // If a packet has been received, update the information available 
                    // in rxMessage.
                    /*******************************************************************/
                    DemoOutput_UpdateTxRx(TxNum, ++RxNum);
                    DELAY_ms(2000);
                    // Toggle LED2 to indicate receiving a packet.
                    LED_2 ^= 1;

                    /*******************************************************************/
                    // Function MiApp_DiscardMessage is used to release the current 
                    //  received packet.
                    // After calling this function, the stack can start to process the
                    //  next received frame 
                    /*******************************************************************/        
                    MiApp_DiscardMessage();



                    /****************************************/
                }
                else
                {
                    /*******************************************************************/
                    // If no packet received, now we can check if we want to send out
                    // any information.
                    // Function ButtonPressed will return if any of the two buttons
                    // has been pushed.
                    /*******************************************************************/
                    uint8_t PressedButton = ButtonPressed();
                    if ( PressedButton == 1 || PressedButton == 2)
                    {
                        
                        uint8_t select_ed =0;
                        bool update_ed = true;
                        while(update_ed == true)
                        {

                            //User Selected Change end device
                            LCD_Erase();
                            if (myConnectionIndex_in_PanCo  == select_ed)
                            {   // if END_device displays itself , "me" is added in display to denote itself 
                                sprintf((char *)LCDText, (char*)"RB0:%02d-%02x%02x%02x-me",END_DEVICES_Short_Address[select_ed].connection_slot,END_DEVICES_Short_Address[select_ed].Address[0],
                                        END_DEVICES_Short_Address[select_ed].Address[1],END_DEVICES_Short_Address[select_ed].Address[2] );
                            }
                            else
                            {
                                sprintf((char *)LCDText, (char*)"RB0:%02d-%02x%02x%02x",END_DEVICES_Short_Address[select_ed].connection_slot,END_DEVICES_Short_Address[select_ed].Address[0],
                                        END_DEVICES_Short_Address[select_ed].Address[1],END_DEVICES_Short_Address[select_ed].Address[2] );
                            }
                            sprintf((char *)LCDText, (char*)"RB0:%02d-%02x%02x%02x",END_DEVICES_Short_Address[select_ed].connection_slot,END_DEVICES_Short_Address[select_ed].Address[0],
                                        END_DEVICES_Short_Address[select_ed].Address[1],END_DEVICES_Short_Address[select_ed].Address[2] );
                            sprintf((char *)&(LCDText[16]), (char*)"RB2: Change node");
                            LCD_Update();
                            chk_sel_status = true;
                            bool sw_layer_ack_status , mac_ack_status;
                            while(chk_sel_status)
                            {
                                uint8_t switch_val = ButtonPressed();
                                if(switch_val == 1)
                                {
                                    update_ed = false;
                                    chk_sel_status = false;
                                    update_ed = false;
                                    // Star_User_Data is defined in star_demo.c 
                                    // Its user data  , in case of Star Network 60 bytes of 
                                    // Data can be sent at a time from one END_DEVICE_TO_ANOTHER 
                                    // Edx --> Pan CO --> EDy
                                    if (myConnectionIndex_in_PanCo == select_ed)
                                    {
                                        MiApp_FlushTx();
                                        for (i = 0 ; i < 21 ; i++)
                                        {
                                            MiApp_WriteData(MiWi[(TxSynCount%6)][i]);
                                        }

                                        // IF on the demo , a END_Device displays its own Connection Detail
                                        // We unicast data packet to just PAN COR , No forwarding
                                        #if defined(ENABLE_SECURITY)
                                            mac_ack_status = MiApp_UnicastConnection (0, true);
                                        #else
                                            mac_ack_status = MiApp_UnicastConnection (0, false);
                                        #endif
                                            TxNum++;
                                    }
                                    else
                                    {
                                        // Data can be sent at a time from one END_DEVICE_TO_ANOTHER 
                                        // Edx --> Pan CO --> EDy
                                        // To forward a Packet from one ED to another ED , the first 4 bytes should holding
                                        // a CMD and end dest device short address (3 bytes)
                                        MiApp_FlushTx();
                                        MiApp_WriteData(CMD_FORWRD_PACKET);
                                        MiApp_WriteData(END_DEVICES_Short_Address[select_ed].Address[0]);// sending the first byte payload as the destination nodes
                                        MiApp_WriteData(END_DEVICES_Short_Address[select_ed].Address[1]);// sending the first byte payload as the destination nodes
                                        MiApp_WriteData(END_DEVICES_Short_Address[select_ed].Address[2]);// sending the first byte payload as the destination nodes
                                        for (i = 4 ; i < 25 ; i++)
                                        {
                                            MiApp_WriteData(MiWi[(TxSynCount%6)][i-4]);
                                        }
                                        #if defined(ENABLE_SECURITY)
                                            sw_layer_ack_status = MiApp_UnicastStar (true);
                                        #else
                                            sw_layer_ack_status = MiApp_UnicastStar (false);
                                        #endif


                                        #if defined(ENABLE_APP_LAYER_ACK)
                                            if (sw_layer_ack_status)
                                            {
                                                TxNum++;     // Tx was successful
                                            }
                                            else
                                            {
                                                LCDDisplay((char *)"Data_Sending_Fail!!", 0, false); 
                                            }
                                        #else    
                                            TxNum++;
                                        #endif

                                    }

                                } // end of switch_val == 1
                                else if(switch_val == 2)
                                {
                                    if (select_ed > end_nodes-1)
                                    {    
                                        select_ed = 0;
                                    }
                                    else
                                    {
                                        select_ed = select_ed+1;
                                    }
                                    chk_sel_status = false;

                                } // end of switch_val == 2
                            }  // end of chk_sel_status

                        } // end of updating the LCD info
                        STAR_DEMO_OPTIONS_MESSAGE (false);
                    } // end of actions on button press
                } // end of check for user inputs (button press check)

                t3 = MiWi_TickGet();
                if((MiWi_TickGetDiff(t3,t2) > (ONE_SECOND * 40)))
                {
                    awake = false;
                    #if !defined(EIGHT_BIT_WIRELESS_BOARD)
                              LCD_BacklightOFF();
                    #endif
                    MiApp_TransceiverPowerState(POWER_STATE_SLEEP);
                    LCDDisplay((char *)"Sleeping!!!", 0, false);
                    DELAY_ms(1000);
                    t1 = t3;

                }
                
                if (lost_connection && !role)
                {
                    MiApp_EstablishConnection(0xFF, CONN_MODE_DIRECT);
                    lost_connection = false;

                }

            }  // end of actions performed while node is awake
            
           

            
        } // end of while(1)
    #endif
}