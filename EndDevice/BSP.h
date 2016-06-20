/*************************************************************************
 *
 *
 *    (c) Copyright Olimex 2011
 *
 *    File name   : BSP.c
 *    Description : API for some common peripherals on board
 *
 *    History :
 *    1. Date        : 11 July 2011
 *       Author      : Aleksandar Mitev
 *       Description : Create
 *
 **************************************************************************/

#ifndef _BSP_H
#define _BSP_H

#define BUTTON1_TRIS TRISBbits.TRISB5
#define BUTTON1_PORT PORTBbits.RB5

#define BUTTON2_TRIS TRISBbits.TRISB4
#define BUTTON2_PORT PORTBbits.RB4

#define LED1_TRIS TRISAbits.TRISA0
#define LED1_LAT LATAbits.LATA0

#define LED2_TRIS TRISAbits.TRISA1
#define LED2_LAT LATAbits.LATA1

#define BSP_DEBOUNCE_TIME 0x00008FF


// available buttons
typedef enum _BUTTON_IND {
	BUTTON_NONE = 0,
	BUTTON1,
	BUTTON2
} BUTTON_IND;

// avalable LEDs
typedef enum _LED_IND {
	LED_NONE = 0,
	LED1,
	LED2
} LED_IND;

// states of the LEDs
typedef enum _LED_STATE {
	LED_NOCHANGE = 0,
	LED_ON,
	LED_OFF,
	LED_TOGGLE
} LED_STATE;

/******************************************************************************
* Description: BSP_InitializeButtons(..) - initializes pins used by the buttons and LEDs
* Input: 	none
* Output: 	none
* Return:	0 if sucessfully initialized, -1 if error occured 
*******************************************************************************/
char BSP_InitializeThings(void);

/******************************************************************************
* Description: BSP_UpdateButtons(..) - 
* Input: 	none
* Output: 	none
* Return:	none
*******************************************************************************/
void BSP_UpdateButtons(void);

/******************************************************************************
* Description: BSP_GetButton(..) - Get the current state of a button
* Input: 	none
* Output: 	none
* Return:	1 if pressed, 0 otherwise
*******************************************************************************/
char BSP_GetButton(BUTTON_IND btn);

/******************************************************************************
* Description: BSP_SetLED(..) - Set state of a LED
* Input: 	led  - the LED to manipulate
*			state - ON, OFF or TOGGLE the LED
* Output: 	none
* Return:	none
*******************************************************************************/
void BSP_SetLED(LED_IND led, LED_STATE state);

/******************************************************************************
* Description: BSP_Standby(..) - Enter/Exit low power mode of peripherals
* Input: 	enabled - TRUE to enable standby, FALSE to exit
* Output: 	none
* Return:	none
*******************************************************************************/
void BSP_Standby(BOOL enabled);


#endif // _BSP_H
