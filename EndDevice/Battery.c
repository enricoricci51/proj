#define	BATTERY_H

#include "Compiler.h"
#include "Battery.h"

static void EnableBatInterrupt (void);
static void DisableBatInterrupt (void);

int InitBatteryMng(void)
{
    LVDCONbits.HLVDL = BAT_REF_275_290_305;
    LVDCONbits.VDIRMAG = 0;
    LVDCONbits.HLVDEN = 1;
    PIR2bits.LVDIF = 0;
    PIE2bits.LVDIE = 1;
    while(!LVDCONbits.IRVST);
    BatteryStatus = BATTERY_OK;
    return 0;
}

static void EnableBatInterrupt (void)
{
    PIR2bits.LVDIF = 0;
    PIE2bits.LVDIE = 1;
}

static void DisableBatInterrupt (void)
{
    PIR2bits.LVDIF = 0;
    PIE2bits.LVDIE = 1;
}

void DeInitBatteryMng (void)
{
    DisableBatInterrupt();
    LVDCONbits.HLVDEN = 0;
}

