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

/************************ HEADERS **********************************/

#include "system.h"
#include "system_config.h"
#include "spi.h"

/**
  Section: Included Files
 */

#include <xc.h>  //MCC_SPI
#include "spi.h" //MCC_SPI

// Initialize the SPI2  MCC_SPI
void SPI1_Initialize(void) {
    // Set the SPI2 module to the options selected in the User Interface

    // BF RCinprocess_TXcomplete; UA don't update; SMP Sample At Middle; P stopbit_notdetected; S startbit_notdetected; R_nW write_noTX; CKE Idle to Active; D_nA lastbyte_address; 
    SSP1STAT = 0xC0;

    // SSPEN enabled; WCOL no_collision; SSPOV no_overflow; CKP Idle:Low, Active:High; SSPM FOSC/4_SSPxADD; 
    SSP1CON1 = 0x21;

    // SSPADD 0; 
    SSP1ADD = 0x00;
}


 
 uint8_t SPI1_Exchange8bit(uint8_t data) {
    // Clear the Write Collision flag, to allow writing
    SSP1CON1bits.WCOL = 0;

    SSP1BUF = data;

    while (SSP1STATbits.BF == SPI_RX_IN_PROGRESS) {
    }

    return (SSP1BUF);
 }


#if defined(SUPPORT_TWO_SPI)
        /*********************************************************************
        * Function:         void SPIPut2(uint8_t v)
        *
        * PreCondition:     SPI has been configured
        *
        * Input:		    v - is the byte that needs to be transfered
        *
        * Output:		    none
        *
        * Side Effects:	    SPI transmits the byte
        *
        * Overview:		    This function will send a byte over the SPI
        *
        * Note:			    None
        ********************************************************************/
         void SPIPut2(uint8_t v)
        {
            uint8_t i;

            

                //Reset the Global interrupt pin
                //SPI2SSPIF = 0;
                PIR3bits.SSP2IF = 0;
                do
                {
                    //SPI2WCOL = 0;
                    SSP2CON1bits.WCOL = 0;
            		//Reset write collision bit
                    //SPI2SSPBUF = v;
                    SSP2BUF = v;
            		//load the buffer
                //} while( SPI2WCOL );
                } while( SSP2CON1bits.WCOL );

            	//perform write again if write collision occurs
                //while( SPI2SSPIF == 0 );
                while( PIR3bits.SSP2IF == 0 );

            	//Wait until interrupt is received from the MSSP module
            	//SPI2SSPIF = 0;
            	PIR3bits.SSP2IF = 0;
            	//Reset the interrupt

        }
         
    


        /*********************************************************************
        * Function:         uint8_t SPIGet2(void)
        *
        * PreCondition:     SPI has been configured
        *
        * Input:		    none
        *
        * Output:		    uint8_t - the byte that was last received by the SPI
        *
        * Side Effects:	    none
        *
        * Overview:		    This function will read a byte over the SPI
        *
        * Note:			    None
        ********************************************************************/
        uint8_t SPIGet2(void)
        {

                SPIPut2(0x00);
                return SSP2BUF;
          
        }
    #endif

	







