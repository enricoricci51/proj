/*************************************************************************
 *
 *
 *    (c) Copyright Olimex 2010
 *
 *    File name   : TCN75A.h
 *    Description : API for the TCN75A temperature sensor
 *
 *    History :
 *    1. Date        : 25 October 2010
 *       Author      : Aleksandar Mitev
 *       Description : Create
 *
 **************************************************************************/

#ifndef _TCN75A_H
#define _TCN75A_H

/******************************************************************************
* Description: TCN75A_Initialize(..) - initializes pins and registers of the TCN75A
*				Also places chip in shutdown mode
* Input: 	none
* Output: 	none
* Return:	0 if sucessfully initialized, -1 if error occured 
*******************************************************************************/
char TCN75A_Initialize(void);

/******************************************************************************
* Description: TCN75A_StartSample(..) - starts a One-Shot conversion, takes ~240mS to complete
* Input: 	none
* Output: 	none
* Return:	-1 means error, 1 if already started and previous conversion not finished, 0 if started a new sampling
*******************************************************************************/
char TCN75A_StartSample(void);

/******************************************************************************
* Description: TCN75A_ReadTempr(..) - reads the result of the last sampling
* Input: 	none
* Output: 	none
* Return:	temperature in degrees Celsius as represented in the registers of the device
*******************************************************************************/
WORD TCN75A_ReadTempr(void);


#endif // _TCN75A_H



