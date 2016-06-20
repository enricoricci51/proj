/*************************************************************************
 *
 *
 *    (c) Copyright Olimex 2010
 *
 *    File name   : TCN75A.c
 *    Description : API for the TCN75A temperature sensor
 *
 *    History :
 *    1. Date        : 25 October 2010
 *       Author      : Aleksandar Mitev
 *       Description : Create
 *
 **************************************************************************/
#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "TCN75A.h"
#include "PIR.h"

/* DEFINE LOCAL TYPES HERE */

/* DEFINE LOCAL CONSTANTS HERE */
#define TCN75A_SDA_TRIS     TRISAbits.TRISA3
#define TCN75A_SDA_LAT      LATAbits.LATA3
#define TCN75A_SDA_PORT     PORTAbits.RA3

#define TCN75A_SCL_TRIS     TRISAbits.TRISA2
#define TCN75A_SCL_LAT      LATAbits.LATA2
#define TCN75A_SCL_PORT     PORTAbits.RA2

#define TCN75A_INT_TRIS     TRISBbits.TRISB1
#define TCN75A_INT_PORT     PORTBbits.RB1

#define TCN75A_SLAVE_ADDR   0b10010110

#define ACK                 0
#define NACK                1

/* REGISTERS OF THE TCN75A */
// 00 = Temperature register (TA)
// 01 = Configuration register (CONFIG)
// 10 = Temperature Hysteresis register (THYST)
// 11 = Temperature Limit-set register (TSET)
#define TCN75A_REG_TEMPR    0x00
#define TCN75A_REG_CONFIG   0x01
#define TCN75A_REG_HYST     0x02
#define TCN75A_REG_TLIMIT   0x03

/* DECLARE EXTERNAL VARIABLES HERE */

/* DEFINE LOCAL MACROS HERE */

/* DEFINE LOCAL VARIABLES HERE */

/* DECLARE EXTERNAL VARIABLES HERE */

/* DECLARE LOCAL FUNCTIONS HERE */
static void local_I2C_Delay(void);
static void local_I2C_Start(void);
static void local_I2C_Stop(void);
static BYTE local_I2C_ReadByte(char ack);
static char local_I2C_WriteByte(BYTE data); // returns ack state

/* DEFINE FUNCTIONS HERE */

/******************************************************************************
* Description: TCN75A_Initialize(..) - initializes pins and registers of the TCN75A
*				Also places chip in shutdown mode
* Input: 	none
* Output: 	none
* Return:	0 if sucessfully initialized, -1 if error occured 
*******************************************************************************/
char TCN75A_Initialize(void)
{
	char result = 0;
	
	// the idea is to toggle pins as inputs/outputs to emulate I2C open drain mode of operation!	
	TCN75A_SDA_TRIS = 0;
	TCN75A_SCL_TRIS = 0;
	TCN75A_INT_TRIS = 1;
	
	TCN75A_SDA_LAT = 1;
	TCN75A_SCL_LAT = 1;
	
	local_I2C_Delay();
	if( !(TCN75A_SCL_PORT && TCN75A_SDA_PORT) )
		return -1;

	local_I2C_Start();
	result |= local_I2C_WriteByte(TCN75A_SLAVE_ADDR | 0x00);
	result |= local_I2C_WriteByte(TCN75A_REG_CONFIG);
	result |= local_I2C_WriteByte(0b01100001); // 12bit, shutdown mode
	local_I2C_Stop();
	
	return (result ? -1 : 0);
}

/******************************************************************************
* Description: TCN75A_StartSample(..) - starts a One-Shot conversion, takes ~240mS to complete
* Input: 	none
* Output: 	none
* Return:	-1 means error, 1 if already started and previous conversion not finished, 0 if started a new sampling
*******************************************************************************/
char TCN75A_StartSample(void)
{
	char result = 0;
	BYTE readReg;

	// first read config register to determine if last convertion has completed
	local_I2C_Start();
	result |= local_I2C_WriteByte(TCN75A_SLAVE_ADDR | 0x00);
	result |= local_I2C_WriteByte(TCN75A_REG_CONFIG);
	local_I2C_Stop();
	local_I2C_Start();
	result |= local_I2C_WriteByte(TCN75A_SLAVE_ADDR | 0x01);
	readReg = local_I2C_ReadByte(NACK);
	local_I2C_Stop();
	
	if(result || ((readReg & 0b01111111) != 0b01100001) )
		return -1;

	// check one-shot convertion
	if(readReg & 0x80)
		return 1;

	// now write if not started	
	local_I2C_Start();
	result |= local_I2C_WriteByte(TCN75A_SLAVE_ADDR | 0x00);
	result |= local_I2C_WriteByte(TCN75A_REG_CONFIG);
	result |= local_I2C_WriteByte(0b11100001); // one-shot, 12bit, shutdown mode
	local_I2C_Stop();
		
	if(result)
		return -1;
	else	
		return 0;
}

/******************************************************************************
* Description: TCN75A_ReadTempr(..) - reads the result of the last sampling
* Input: 	none
* Output: 	none
* Return:	temperature in degrees Celsius as represented in the registers of the device
*******************************************************************************/
WORD TCN75A_ReadTempr(void)
{
	char result = 0;	
	WORD temprRaw;
	
	local_I2C_Start();
	result |= local_I2C_WriteByte(TCN75A_SLAVE_ADDR | 0x00);
	result |= local_I2C_WriteByte(TCN75A_REG_TEMPR);
	local_I2C_Stop();
	local_I2C_Start();
	result |= local_I2C_WriteByte(TCN75A_SLAVE_ADDR | 0x01);
	*((BYTE*)&temprRaw + 1) = local_I2C_ReadByte(ACK);
	*((BYTE*)&temprRaw) = local_I2C_ReadByte(NACK);
	local_I2C_Stop();
	
	if(result)
		return 0x0;
	else
		return temprRaw;
}

/* local functions */

static void local_I2C_Delay(void)
{
	WORD d = 100;
	while(d--) {
		Nop();
	}	
}	

static void local_I2C_Start(void)
{
	TCN75A_SDA_LAT = 0;
	local_I2C_Delay();
	TCN75A_SCL_LAT = 0;
	local_I2C_Delay();
	
}

static void local_I2C_Stop(void)
{
	TCN75A_SDA_LAT = 0;
	local_I2C_Delay();
	TCN75A_SCL_LAT = 1;
	local_I2C_Delay();
	TCN75A_SDA_LAT = 1;
	local_I2C_Delay();
}

static BYTE local_I2C_ReadByte(char ack)
{
	BYTE data = 0;
	char i;
	
	TCN75A_SDA_LAT = 1;
	for(i = 0; i < 8; i++) {
		local_I2C_Delay();
		TCN75A_SCL_LAT = 1;
		local_I2C_Delay();
		data |= TCN75A_SDA_PORT & 0x01;
		if(i != 7)
			data <<= 1;
		TCN75A_SCL_LAT = 0;
	}
	
	// read the ack
	local_I2C_Delay();
	TCN75A_SDA_LAT = ack;
	local_I2C_Delay();
	TCN75A_SCL_LAT = 1;
	local_I2C_Delay();
	TCN75A_SCL_LAT = 0;
	local_I2C_Delay();
	
	return data;
}

// returns ack state, 0 means acknowledged
static char local_I2C_WriteByte(BYTE data)
{
	char i;

	// send the 8 bits
	for(i = 0; i < 8; i++) {
		TCN75A_SDA_LAT = (data & 0x80) ? 1 : 0;
		data <<= 1;
		local_I2C_Delay();
		TCN75A_SCL_LAT = 1;
		local_I2C_Delay();
		TCN75A_SCL_LAT = 0;
	}
	// read the ack
	TCN75A_SDA_LAT = 0;
	local_I2C_Delay();
	TCN75A_SCL_LAT = 1;
	local_I2C_Delay();
	i = TCN75A_SDA_PORT;
	TCN75A_SCL_LAT = 0;
	local_I2C_Delay();
	
	return i;
}

