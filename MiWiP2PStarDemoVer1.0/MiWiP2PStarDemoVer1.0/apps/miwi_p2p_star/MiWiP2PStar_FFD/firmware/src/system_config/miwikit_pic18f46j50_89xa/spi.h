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

#ifndef _SPI_H_
#define _SPI_H_

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

/************************ FUNCTION PROTOTYPES **********************/

void SPIPut2(uint8_t v);
uint8_t SPIGet2(void);

/************************ MACROS ***********************************/
#define SPIInit()   SSPIF = 1

/*****************MCC Generated Header file*************************/
void SPI1_Initialize(void);
#define DUMMY_DATA 0x0
#define SPI_RX_IN_PROGRESS 0x0
uint8_t SPI1_Exchange8bit(uint8_t data);
uint8_t SPI1_Exchange8bitBuffer(uint8_t *dataIn, uint8_t bufLen, uint8_t *dataOut);
bool SPI1_IsBufferFull(void);
bool SPI1_HasWriteCollisionOccured(void);
void SPI1_ClearWriteCollisionStatus(void);


#endif

