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

#include "system.h"
#include "system_config.h"


/*********************************************************************
 * Function:        uint8_t BUTTON_Pressed(void)
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
uint8_t BUTTON_Pressed(void)
{
    uint8_t result = SWITCH_NOT_PRESSED;
    MIWI_TICK tickDifference, t;
    if (PUSH_BUTTON_1 == 0 && PUSH_BUTTON_2 == 0)
    {
        switch01PressTime = MiWi_TickGet();
        if(PUSH_BUTTON_1 == 0 && PUSH_BUTTON_2 == 0)
        {
            while(PUSH_BUTTON_1 == 0 && PUSH_BUTTON_2 == 0);
             //get the current time
            t = MiWi_TickGet();

             //if the button has been pressed long enough
            tickDifference.Val = MiWi_TickGetDiff(t,switch01PressTime);
            if(tickDifference.Val > DEBOUNCE_TIME)
                result = 3;
        }
        else
            result = SWITCH_NOT_PRESSED;
     }

    else if (PUSH_BUTTON_1 == 0)
    {
        switch0PressTime = MiWi_TickGet();
        if(PUSH_BUTTON_1 == 0)
        {
            while(PUSH_BUTTON_1 == 0);
             //get the current time
            t = MiWi_TickGet();

             //if the button has been pressed long enough
            tickDifference.Val = MiWi_TickGetDiff(t,switch0PressTime);
            if(tickDifference.Val > DEBOUNCE_TIME)
                result = SWITCH0_PRESSED;
        }
        else
            result = SWITCH_NOT_PRESSED;
    }

    else if (PUSH_BUTTON_2 == 0)
    {
        switch1PressTime = MiWi_TickGet();
        if(PUSH_BUTTON_2 == 0)
        {
            while(PUSH_BUTTON_2 == 0);
             //get the current time
            t = MiWi_TickGet();

             //if the button has been pressed long enough
            tickDifference.Val = MiWi_TickGetDiff(t,switch1PressTime);
            if(tickDifference.Val > DEBOUNCE_TIME)
                result = SWITCH1_PRESSED;
        }
        else
            result = SWITCH_NOT_PRESSED;
    }
     

    return result;
}


