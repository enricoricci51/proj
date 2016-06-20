/* 
 * File:   battery.h
 * Author: Lorenzo Musacci
 *
 * Created on 1 agosto 2014, 8.42
 */


#ifdef BATTERY_H
#define BATTERY_EXTERN
#else
#define BATTERY_EXTERN extern
#endif

enum BatStatus
{
    BATTERY_KO,
    BATTERY_OK,
};

#define EXT_BAT_REF             0b1111
#define BAT_REF_170_185_200     0b0000
#define BAT_REF_180_195_210     0b0001
#define BAT_REF_191_206_221     0b0010
#define BAT_REF_202_217_232     0b0011
#define BAT_REF_215_230_245     0b0100
#define BAT_REF_222_237_252     0b0101
#define BAT_REF_238_253_268     0b0110
#define BAT_REF_246_261_276     0b0111
#define BAT_REF_255_270_285     0b1000
#define BAT_REF_265_280_295     0b1001
#define BAT_REF_275_290_305     0b1010
#define BAT_REF_287_302_317     0b1011
#define BAT_REF_298_313_328     0b1100
#define BAT_REF_326_341_356     0b1101
#define BAT_REF_342_357_372     0b1110

BATTERY_EXTERN unsigned char BatteryStatus;

int InitBatteryMng(void);
void DeInitBatteryMng (void);



