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
#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "SymbolTime.h"
#include "BSP.h"

/* DEFINE LOCAL TYPES HERE */

/* DEFINE LOCAL CONSTANTS HERE */

/* DECLARE EXTERNAL VARIABLES HERE */

/* DEFINE LOCAL MACROS HERE */

/* DEFINE LOCAL VARIABLES HERE */
static BOOL PB1_pressed = FALSE;
static BOOL PB2_pressed = FALSE;

static MIWI_TICK PB1_press_time;
static MIWI_TICK PB2_press_time;
static MIWI_TICK tickB1Difference;
static MIWI_TICK tickB2Difference;

/* DECLARE EXTERNAL VARIABLES HERE */

/* DECLARE LOCAL FUNCTIONS HERE */

/* DEFINE FUNCTIONS HERE */

/******************************************************************************
* Description: BSP_InitializeButtons(..) - initializes pins used by the buttons and LEDs
* Input: 	none
* Output: 	none
* Return:	0 if sucessfully initialized, -1 if error occured 
*******************************************************************************/
char BSP_InitializeThings(void)
{
	// ini buttons
	BUTTON1_TRIS = 1;
	BUTTON2_TRIS = 1;

	// ini buttons
	LED1_TRIS = 0;
	LED2_TRIS = 0;

	return 0;
}	

/******************************************************************************
* Description: BSP_UpdateButtons(..) - 
* Input: 	none
* Output: 	none
* Return:	none
*******************************************************************************/
void BSP_UpdateButtons(void)
{
	if( BUTTON1_PORT == 0 ) {
		/* wait debounce time before taking any action again */
		if(PB1_pressed == FALSE) {
			/* release to capture another button press */
			PB1_pressed = TRUE;
		}
	}
	else { /* Debounce Timeout period calculation */
		MIWI_TICK t = MiWi_TickGet();
		tickB1Difference.Val = MiWi_TickGetDiff(t, PB1_press_time);
		
		if(tickB1Difference.Val > BSP_DEBOUNCE_TIME) {
			PB1_pressed = FALSE;
		}
	}
                        
	if( BUTTON2_PORT == 0 ) {
		/* wait debounce time before taking any action again */
		if(PB2_pressed == FALSE) {
			/* release to capture another button press */
			PB2_pressed = TRUE;
		}
	}
	else { /* Debounce Timeout period calculation */
		MIWI_TICK t = MiWi_TickGet();
		tickB2Difference.Val = MiWi_TickGetDiff(t, PB2_press_time);
		
		if(tickB2Difference.Val > BSP_DEBOUNCE_TIME) {
			PB2_pressed = FALSE;
		}
	}
}

/******************************************************************************
* Description: BSP_GetButton(..) - Get the current state of a button
* Input: 	none
* Output: 	none
* Return:	1 if pressed, 0 otherwise
*******************************************************************************/
char BSP_GetButton(BUTTON_IND btn)
{
	switch(btn) {
	case BUTTON1:
		return PB1_pressed;
	case BUTTON2:	
		return PB2_pressed;
	}
	
	return 0;
}

/******************************************************************************
* Description: BSP_SetLED(..) - Set state of a LED
* Input: 	led  - the LED to manipulate
*			state - ON, OFF or TOGGLE the LED
* Output: 	none
* Return:	none
*******************************************************************************/
void BSP_SetLED(LED_IND led, LED_STATE state)
{
	switch(led) {
	case LED1:
		switch(state) {
		case LED_ON:
			LED1_LAT = 1;
			break;
		case LED_OFF:
			LED1_LAT = 0;
			break;
		case LED_TOGGLE:
			LED1_LAT = !LED1_LAT;
			break;
		}	
		break;
	case LED2:
		switch(state) {
		case LED_ON:
			LED2_LAT = 1;
			break;
		case LED_OFF:
			LED2_LAT = 0;
			break;
		case LED_TOGGLE:
			LED2_LAT = !LED2_LAT;
			break;
		}	
		break;
	}
}

/******************************************************************************
* Description: BSP_Standby(..) - Enter/Exit low power mode of peripherals
* Input: 	enabled - TRUE to enable standby, FALSE to exit
* Output: 	none
* Return:	none
*******************************************************************************/
void BSP_Standby(BOOL enabled)
{
	// currently only the LEDs need to be turned off
	
	static struct {
		BYTE led1State :1;
		BYTE led2State :1;
	} flags;
	
	if(enabled) {
		
		// save state of LEDs
		flags.led1State = LED1_LAT;
		flags.led2State = LED2_LAT;
		
		BSP_SetLED(LED1, LED_OFF);
		BSP_SetLED(LED2, LED_OFF);
	} else {
		LED1_LAT = flags.led1State;
		LED2_LAT = flags.led2State;
	}
}
