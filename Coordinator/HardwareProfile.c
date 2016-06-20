/*****************************************************************************
 *
 *              HardwareProfile.c -- Hardware Profile
 *
 *****************************************************************************
 * FileName:        HardwareProfile.c
 * Dependencies:
 * Processor:       PIC18, PIC24, PIC32, dsPIC30, dsPIC33
 * Compiler:        C18 02.20.00 or higher
 *                  C30 02.03.00 or higher
 *                  C32 01.00.02 or higher
 * Linker:          MPLINK 03.40.00 or higher
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2007-2010 Microchip Technology Inc.  All rights reserved.
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
 *****************************************************************************
 * File Description:
 *
 *   This file provides configuration and basic hardware functionality 
 *   based on chosen hardware demo boards.
 *
 * Change History:
 *  Rev   Date         Description
 *  0.1   2/17/2009    Initial revision
 *  3.1   5/28/2010    MiWi DE 3.1
 *****************************************************************************/
#include "SystemProfile.h"
#include "Compiler.h"
#include "Console.h"
#include "LCDBlocking.h"
#include "TimeDelay.h"
#include "HardwareProfile.h"
#include "AL_P.h"
#include "TCN75A.h"
#include "p18f26k20.h"

#if defined(__18F4620) 
        #pragma romdata CONFIG1H = 0x300001
        const rom unsigned char config1H = 0b00000110;      // HSPLL oscillator
    
        #pragma romdata CONFIG2L = 0x300002
        const rom unsigned char config2L = 0b00011111;      // Brown-out Reset Enabled in hardware @ 2.0V, PWRTEN disabled
    
        #pragma romdata CONFIG2H = 0x300003
        const rom unsigned char config2H = 0b00010000;      // HW WD disabled, 1:32 prescaler
    
        #pragma romdata CONFIG3H = 0x300005
        const rom unsigned char config3H = 0b10000000;      // PORTB digital on RESET
    
        #pragma romdata CONFIG4L = 0x300006
        const rom unsigned char config4L = 0b11000001;      // DEBUG disabled,
                                                            // XINST enabled
                                                            // LVP disabled
                                                            // STVREN enabled
#elif defined(__18F26K20)
        /* Set up the configuration bits */
        #pragma config FOSC = INTIO67, FCMEN = OFF, IESO = OFF
        #pragma config PWRT = OFF //ON <- orig
        #pragma config BOREN = OFF, BORV = 18
        #pragma config WDTEN = OFF, WDTPS = 32768
        #pragma config MCLRE = ON //OFF <- orig
        #pragma config HFOFST = OFF // The system clock is held off until the HF-INTOSC is stable.
        #pragma config LPT1OSC = OFF
        #pragma config PBADEN = OFF // PORTB<4:0> pins are configured as digital I/O on Reset
        #pragma config CCP2MX = PORTBE // CCP2 input/output is multiplexed with RB3
        //#pragma config CCP2MX = PORTC // CCP2 input/output is multiplexed with RC1
        #pragma config STVREN = ON // Stack full/underflow will cause Reset
        #pragma config LVP = OFF // Single-Supply ICSP disabled
        #pragma config XINST = OFF // Extended Mode OFF
        #pragma config DEBUG = ON
#elif defined(__18F2520)
        #pragma romdata CONFIG1H = 0x300001
        const rom unsigned char config1H = 0b00001000;      // use internal oscillator
        
        #pragma romdata CONFIG2L = 0x300002
        const rom unsigned char config2L = 0b00011111;      // Brown-out Reset Enabled in hardware @ 2.0V, PWRTEN disabled
        
        #pragma romdata CONFIG2H = 0x300003
        const rom unsigned char config2H = 0b00010110;      // HW WD disabled, 1:32 prescaler
        
        #pragma romdata CONFIG3H = 0x300005
        const rom unsigned char config3H = 0b00000011;      // PORTB digital as PORT
        
        #pragma romdata CONFIG4L = 0x300006
        const rom unsigned char config4L = 0b10000001;      // DEBUG disabled,
                                                            // XINST disabled
                                                            // LVP disabled
                                                            // STVREN enabled
#elif defined(__18F87J11)

    #pragma config FOSC = HSPLL, WDTEN = OFF, WDTPS = 128, XINST = ON  
                                                        
#elif defined(__18F46J50)
  
    #pragma config OSC = INTOSC, WDTEN = OFF, XINST = ON, WDTPS = 2048, PLLDIV = 2, CPUDIV = OSC2_PLL2
                                                         
#elif defined(__PIC24F__)
    // Explorer 16 board
    _CONFIG2(FNOSC_PRI & POSCMOD_XT)                        // Primary XT OSC with 4x PLL
    _CONFIG1(JTAGEN_OFF & FWDTEN_OFF & WDTPS_PS1024)        // JTAG off, watchdog timer off
#elif defined(__dsPIC33F__) || defined(__PIC24H__)
    // Explorer 16 board
    _FOSCSEL(FNOSC_PRI);                                    //primary osc
    _FOSC(OSCIOFNC_OFF & POSCMD_XT)                         // XT Osc
    _FWDT(FWDTEN_OFF & WDTPOST_PS2)                         // Disable Watchdog timer
    // JTAG should be disabled as well
#elif defined(__dsPIC30F__)
    // dsPICDEM 1.1 board
    _FOSC(XT_PLL16)                                         // XT Osc + 16X PLL
    _FWDT(WDT_OFF & WDTPOST_PS2)                            // Disable Watchdog timer
    _FBORPOR(MCLR_EN & PBOR_OFF & PWRT_OFF)
#elif defined(__PIC32MX__)
    #define PIC32MX_SPI1_SDO_SCK_MASK_VALUE      (0x00000140)
    #define PIC32MX_SPI1_SDI_MASK_VALUE          (0x00000080)
    //#define PIC32MX_INT2_MASK_VALUE              (0x00000010)
    //#define PIC32MX_INT1_MASK_VALUE              (0x00000008)
    #define PIC32MX_INT1_MASK_VALUE              (0x00000100)
    /* MAX SPI CLOCK FREQ SUPPORTED FOR MIWI TRANSCIEVER */
    #define MAX_SPI_CLK_FREQ_FOR_P2P             (1000000)

    #pragma config FPLLMUL = MUL_16, FPLLIDIV = DIV_2, FPLLODIV = DIV_1, FWDTEN = OFF
    #pragma config POSCMOD = XT, FNOSC = PRIPLL, FPBDIV = DIV_4, WDTPS = PS1024

#endif

#define DEBOUNCE_TIME 0x00003FFF

BOOL PUSH_BUTTON_pressed;
MIWI_TICK PUSH_BUTTON_press_time;

/*********************************************************************
 * Function:        void BoardInit( void )
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    Board is initialized for P2P usage
 *
 * Overview:        This function configures the board 
 *
 * Note:            This routine needs to be called before the function 
 *                  to initialize P2P stack or any other function that
 *                  operates on the stack
 ********************************************************************/

void BoardInit(void)
{
    char result = 0;
    #if defined(EIGHT_BIT_WIRELESS_BOARD)
	// configure INTERNAL oscillator, 16MHz
	OSCCON = 0b01110010;
	Nop();
	Nop();


        INTCON2bits.RBPU = 0;
      
        TRISA = 0xFF;
        TRISB = 0xFF;
        TRISC = 0xFF;
        
        LATA = 0;
        LATB = 0;
               
        // set I/O ports
        BUTTON_1_TRIS = 1;
        BUTTON_2_TRIS = 1;
        LED_1_TRIS = 0;
        LED_2_TRIS = 0;
        
        #if defined(MRF24J40) || defined(MRF49XA)        
            PHY_CS_TRIS = 0;
            PHY_CS = 1;
            PHY_RESETn_TRIS = 0;
            PHY_RESETn = 1;
            RF_INT_TRIS = 1;
            SPISSPIF = 1;
        #endif
        #if defined(MRF89XA)
            PHY_RESETn_TRIS = 1;
            IRQ1_INT_TRIS = 1;
            IRQ0_INT_TRIS = 1;
            #if defined(USE_IRQ0_AS_INTERRUPT)
                PHY_IRQ0_En = 1;
                PHY_IRQ0 = 0;
                //Enable the effective INT edge
            #endif
        #endif

        
        SDI_TRIS = 1;
        SDO_TRIS = 0;
        SCK_TRIS = 0;
        
        
        #if defined(HARDWARE_SPI)
            SSPSTAT = 0x40;
            SSPCON1 = 0x20;
        #else
            SPI_SDO = 0;        
            SPI_SCK = 0;    
        #endif   
        
        #if defined(MRF49XA)
            nFSEL_TRIS = 0;
            FINT_TRIS = 1;
            nFSEL = 1;          // nFSEL inactive
            
            // enable INT effective edge
            INTCON2bits.INTEDG3 = 0;
        #endif
        
        #if defined(MRF24J40)
            PHY_WAKE_TRIS = 0;
            PHY_WAKE = 1;
            
            // enable INT effective edge
            INTCON2bits.INTEDG0 = 0;
        #endif
        
        #if defined(MRF89XA)
            Data_nCS_TRIS = 0;
            Config_nCS_TRIS = 0;
            Data_nCS = 1;
            Config_nCS = 1;
            INTCON2bits.INTEDG3 = 1;
        #endif

        #if defined(ENABLE_NVM)

            //EE_nCS_TRIS = 0;
            //EE_nCS = 1;
        
        #endif

            		// D1 and D2 are on RA0 and RA1 respectively, and CS of the TC77 is on RA2.
		// Make PORTA digital I/O.
		ADCON1 = 0x0F;

		// Deselect the TC77 temperature sensor (RA2)
		LATA = 0x04;

		// Make RA0, RA1, RA2 and RA4 outputs.
		TRISA = 0xE0;
	#endif

	// Clear the RBIF flag (INTCONbits.RBIF)
	INTCONbits.RBIF = 0;

	// Enable PORTB pull-ups (INTCON2bits.RBPU)
	INTCON2bits.RBPU = 0;

        // initialze the temperature sensor
	//result |= TCN75A_Initialize();

        // Timer 1 Init
        T1CONbits.TMR1CS = 0; // Internal  Fosc / 4 -> 16MHz / 4 = 4 MHz
        T1CONbits.T1CKPS = 2; // 1:4 prescaler -> 1MHz
        PIR1bits.TMR1IF = 0;
        PIE1bits.TMR1IE = 1; // interrupt on overflow

	TRISBbits.TRISB4 = 1;
	TRISBbits.TRISB5 = 1;

        INTCONbits.GIEH = 1;
        INTCONbits.GIEL = 1;
        #if defined(MRF24J40) || defined(MRF49XA)
            RFIF = 0;
            RFIE = 1;
        #endif     
}


/*********************************************************************
 * Function:        void LCDTRXCount(BYTE txCount, BYTE rxCount)
 *
 * PreCondition:    LCD has been initialized
 *
 * Input:           txCount - the total number of transmitted messages
 *                  rxCount - the total number of received messages
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function display the total numbers of TX and
 *                  RX messages on the LCD, if applicable.
 *
 * Note:            This routine is only effective if Explorer16 or
 *                  PIC18 Explorer demo boards are used
 ********************************************************************/
void LCDTRXCount(BYTE txCount, BYTE rxCount)
{
    #if defined(EXPLORER16) || defined(PIC18_EXPLORER) || (defined(EIGHT_BIT_WIRELESS_BOARD) && defined(SENSOR_PORT_LCD))
        LCDErase();
        #if defined(PIC18_EXPLORER) || defined(EIGHT_BIT_WIRELESS_BOARD)
            sprintf((char *)LCDText, (far rom char*)"TX Messages: %3d", txCount);
            sprintf((char *)&(LCDText[16]), (far rom char*)"RX Messages: %3d", rxCount);
        #else
            sprintf((char *)LCDText, (const char*)"TX Messages: %d", txCount);
            sprintf((char *)&(LCDText[16]), (const char*)"RX Messages: %d", rxCount);
        #endif
        LCDUpdate();    
    #endif
}



/*********************************************************************
 * Function:        void LCDDisplay(char *text, BYTE value, BOOL delay)
 *
 * PreCondition:    LCD has been initialized
 *
 * Input:           text - text message to be displayed on LCD
 *                  value - the text message allows up to one byte 
 *                          of variable in the message
 *                  delay - whether need to display the message for
 *                          2 second without change
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function display the text message on the LCD, 
 *                  including up to one BYTE variable, if applicable.
 *
 * Note:            This routine is only effective if Explorer16 or
 *                  PIC18 Explorer demo boards are used
 ********************************************************************/
void LCDDisplay(char *text, BYTE value, BOOL delay)
{
    #if defined(EXPLORER16) || defined(PIC18_EXPLORER) || (defined(EIGHT_BIT_WIRELESS_BOARD) && defined(SENSOR_PORT_LCD))
        LCDErase();
            
        #if defined(PIC18_EXPLORER) || defined(EIGHT_BIT_WIRELESS_BOARD)
            sprintf((char *)LCDText, (far rom char*)text, value); 
        #elif defined(EXPLORER16)
            sprintf((char *)LCDText, (const char*)text, value); 
        #endif
        LCDUpdate();
        
        // display the message for 2 seconds
        if( delay )
        {
            BYTE i;
            for(i = 0; i < 8; i++)
            {
                #if defined(__PIC32MX__)
                    BYTE ms = 250;
                    volatile unsigned long _dcnt;                                   
                    while(ms)                  
                    {                           
                        //_dcnt=((unsigned long)(0.001/(1.0/CLOCK_FREQ)/6));  
                        _dcnt = ((unsigned long)CLOCK_FREQ)/36000ul;  
                        while(_dcnt--);         
                        ms--;                  
                    }   
                #else
                    DelayMs(250);
                #endif
            }
        }
    #endif
}


/*********************************************************************
 * Function:        BYTE ButtonPressed(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          Byte to indicate which button has been pressed. 
 *                  Return 0 if no button pressed.
 *
 * Side Effects:    
 *
 * Overview:        This function check if any button has been pressed
 *
 * Note:            
 ********************************************************************/
BYTE ButtonPressed(void)
{
    MIWI_TICK tickDifference;
        
    if(PUSH_BUTTON_1 == 0)
    {
        //if the button was previously not pressed
        if(PUSH_BUTTON_pressed == FALSE)
        {
            PUSH_BUTTON_pressed = TRUE;
            PUSH_BUTTON_press_time = MiWi_TickGet();
            return 1;
        }
    }
    else if(PUSH_BUTTON_2 == 0)
    {
        //if the button was previously not pressed
        if(PUSH_BUTTON_pressed == FALSE)
        {
            PUSH_BUTTON_pressed = TRUE;
            PUSH_BUTTON_press_time = MiWi_TickGet();
            return 2;
        }
    } 
    else
    {
        //get the current time
        MIWI_TICK t = MiWi_TickGet();
        
        //if the button has been released long enough
        tickDifference.Val = MiWi_TickGetDiff(t,PUSH_BUTTON_press_time);
        
        //then we can mark it as not pressed
        if(tickDifference.Val > DEBOUNCE_TIME)
        {
            PUSH_BUTTON_pressed = FALSE;
        }
    }
    
    return 0;
}

#if defined(EIGHT_BIT_WIRELESS_BOARD) && defined(SENSOR_PORT_UART) && defined(SENSOR_PORT_LCD)
    void I2CTask(void);
#endif    

#if defined(__18CXX)
    void UserInterruptHandler(void)
    {
        #if defined(EIGHT_BIT_WIRELESS_BOARD) && defined(SENSOR_PORT_UART) && defined(SENSOR_PORT_LCD)
            if( PIR3bits.SSP2IF )
            {
                PIR3bits.SSP2IF = 0;
                I2CTask();
                DelayMs(5);
            }   
        #endif
        if(PIR1bits.RCIF)
        {
            RxUSARTBuffer[RxHead++] = RCREG;//ReadUSART();
            if(RxHead == MAXRXBUFFERDIM)
                RxHead = 0;
            /* Clear the interrupt flag */
        }
        if(PIR1bits.TMR1IF)
        {
            PIR1bits.TMR1IF = 0;
            ReSyncTimeout++;
        }
    }

#endif
