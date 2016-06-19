/* 
 * File:   p2p_demo.h
 * Author: C17143
 *
 * Created on January 3, 2016, 8:40 PM
 */

#ifndef P2P_DEMO_H
#define	P2P_DEMO_H

/*********************************************************************
* Function: bool Process_RxMessage(void)
*
* Overview: Process a Received Message
*
* PreCondition: MiApp_ProtocolInit
*
* Input:  None
*
* Output: true : If user data :: false : If cmd Data
*
********************************************************************/
bool Process_RxMessage(void);

/*********************************************************************
* Function: void run_p2p_demo(void)
*
* Overview: Starts the p2p demo
*
* PreCondition: System Initialization and Miwi Protocol Init
*
* Input:  None
*
* Output: None
*
********************************************************************/
void run_p2p_demo(void);

#endif	/* P2P_DEMO_H */

