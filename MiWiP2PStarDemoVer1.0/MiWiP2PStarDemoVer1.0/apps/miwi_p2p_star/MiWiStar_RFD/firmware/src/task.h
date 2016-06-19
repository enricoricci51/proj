/* 
 * File:   task.h
 * Author: C17143
 *
 * Created on January 3, 2016, 8:40 PM
 */

#ifndef TASK_H
#define	TASK_H

#include "system.h"
#include "system_config.h"
#include "miwi/miwi_api.h"
#include "demo_output.h"
#include "miwi/miwi_nvm.h"


/*********************************************************************
* Function: void freezer_feature(void)
*
* Overview: Wait for User Inputs from Switches on Board 
*
* PreCondition: Hardware_Init()
*
* Input:  None
*
* Output:Boolean True : New Network --False: Restore the Old Network Stored on EEPROM
 *                                     // False : Using Network Freezer Feature
*
********************************************************************/
bool freezer_feature(void);
/*********************************************************************
* Function: void Initialize_Demo(void)
*
* Overview: MAC Layer Protocol Initialization , Ch selection and Network Roles 
 *                  Pan Co or End Device In case of Star
 *              
*
* PreCondition: Hardware_Init()
*
* Input:  None
*
* Output:None 
*           
********************************************************************/
bool Initialize_Demo(bool);
/*********************************************************************
* Function: void Run_Demo(void)
*
* Overview: Start P2p or Star Demo depending on the protocol choosen in 
 *                  miwi_config.h
*
* PreCondition: Hardware_Init && Demo_Init
*
* Input:  None
*
* Output:None 
*           
********************************************************************/
void Run_Demo(void);



#endif	/* TASK_H */

