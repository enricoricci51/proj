/* 
 * File:   Variables.h
 * Author: Lorenzo Musacci
 *
 * Created on 25 agosto 2014, 7.24
 */
#ifdef VARIABLES_H
#define VARIABLES_EXTERN
#else
#define VARIABLES_EXTERN extern
#endif

typedef struct
{
    WORD    WelcomeReceived:1;
}GLOBALFLAGS_T;

#define COORD_EUI_7 0x11
#define COORD_EUI_6 0x22
#define COORD_EUI_5 0x33
#define COORD_EUI_4 0x44
#define COORD_EUI_3 0x55
#define COORD_EUI_2 0x66
#define COORD_EUI_1 0x77
#define COORD_EUI_0 0x01

/*********************************************************************/
// Device_name defines the pseudo name of the device.
/*********************************************************************/
VARIABLES_EXTERN const BYTE MyCoordinatorAddress[MY_ADDRESS_LENGTH]
#ifdef VARIABLES_H
= {COORD_EUI_0, COORD_EUI_1, COORD_EUI_2, COORD_EUI_3, COORD_EUI_4, COORD_EUI_5, COORD_EUI_6, COORD_EUI_7};
#else
;
#endif

VARIABLES_EXTERN const BYTE TryMyCoordinatorAddress[MY_ADDRESS_LENGTH]
#ifdef VARIABLES_H
= {COORD_EUI_7, COORD_EUI_6, COORD_EUI_5, COORD_EUI_4, COORD_EUI_3, COORD_EUI_2, COORD_EUI_1, COORD_EUI_0};
#else
;
#endif

VARIABLES_EXTERN BYTE InitOk
#ifdef VARIABLES_H
= 0;
#else
;
#endif

VARIABLES_EXTERN BYTE TemperatureCnt
#ifdef VARIABLES_H
= 1;
#else
;
#endif
VARIABLES_EXTERN GLOBALFLAGS_T GlobalFlags;
VARIABLES_EXTERN const char Device_name[]
#ifdef VARIABLES_H
= "Finestra cucina";
#else
;
#endif