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
#ifndef __MCHP_NVM_H
    #define __MCHP_NVM_H
    
    #include "system.h"
    #include "system_config.h"
    
    #if defined(ENABLE_NVM)

        #include "miwi/miwi_api.h"
       
        /******************************************************************************/
        // there are three ways to use NVM to store data: External EPROM, Data EEPROM 
        // and programming space. Definition should be found in system_config.h
        /******************************************************************************/
        //#define USE_EXTERNAL_EEPROM
        //#define USE_DATA_EEPROM
        //#define USE_PROGRAMMING_SPACE
        
        #if defined(USE_EXTERNAL_EEPROM)
        
            #define SPI_WRT_STATUS  0x01
            #ifndef SPI_WRITE
                #define SPI_WRITE       0x02
            #endif
            #ifndef SPI_READ
                #define SPI_READ        0x03
            #endif
            #define SPI_DIS_WRT     0x04
            #define SPI_RD_STATUS   0x05
            #define SPI_EN_WRT      0x06
    
            #define EEPROM_MAC_ADDR 0xFA
            
            #define MCHP_1KBIT              1       
            #define MCHP_2KBIT              2
            #define MCHP_4KBIT              3
            #define MCHP_8KBIT              4
            #define MCHP_16KBIT             5
            #define MCHP_32KBIT             6
            #define MCHP_64KBIT             7
            #define MCHP_128KBIT            8
            #define MCHP_256KBIT            9
            #define MCHP_512KBIT            10
            #define MCHP_1MBIT              11
    
            #define MCHP_EEPROM             MCHP_256KBIT
            
            
            #if MCHP_EEPROM == 0
                #error MCHP_EEPROM is not defined
            #elif MCHP_EEPROM < MCHP_32KBIT
                #define NVM_PAGE_SIZE   16
            #elif MCHP_EEPROM < MCHP_128KBIT
                #define NVM_PAGE_SIZE   32
            #elif MCHP_EEPROM < MCHP_512KBIT
                #define NVM_PAGE_SIZE   64
            #elif MCHP_EEPROM < MCHP_1MBIT
                #define NVM_PAGE_SIZE   128
            #elif MCHP_EEPROM == MCHP_1MBIT
                #error Microchip 1MBit EEPROM is not supported at this time. User need to modify the EEPROM access function to make it work. The address must be 3 uint8_ts.
            #else
                #error Invalid MCHP EEPROM part
            #endif

            #if MCHP_EEPROM == MCHP_1KBIT
                #define TOTAL_NVM_BYTES 128
            #elif MCHP_EEPROM == MCHP_2KBIT
                #define TOTAL_NVM_BYTES 256
            #elif MCHP_EEPROM == MCHP_4KBIT
                #define TOTAL_NVM_BYTES 512
            #elif MCHP_EEPROM == MCHP_8KBIT
                #define TOTAL_NVM_BYTES 1024
            #elif MCHP_EEPROM == MCHP_16KBIT
                #define TOTAL_NVM_BYTES 2048
            #elif MCHP_EEPROM == MCHP_32KBIT
                #define TOTAL_NVM_BYTES 4096
            #elif MCHP_EEPROM == MCHP_64KBIT
                #define TOTAL_NVM_BYTES 8192
            #elif MCHP_EEPROM == MCHP_128KBIT
                #define TOTAL_NVM_BYTES 16384
            #elif MCHP_EEPROM == MCHP_256KBIT
                #define TOTAL_NVM_BYTES 32768
            #elif MCHP_EEPROM == MCHP_512KBIT
                #define TOTAL_NVM_BYTES 65535
            #elif MCHP_EEPROM == MCHP_1MBIT
                #error Microchip 1MBit EEPROM is not supported at this time. User need to modify the EEPROM access function to make it work. The address must be 3 uint8_ts.
            #else
                #error MCHP_EEPROM is not defined
            #endif            

        #endif
        
        #if defined(USE_PROGRAMMING_SPACE)
            #if defined(__XC8) && !defined(_PIC18)
                #define ERASE_BLOCK_SIZE    _FLASH_ERASE_SIZE
                #define WRITE_BLOCK_SIZE    _FLASH_WRITE_SIZE

                void NVMRead(uint8_t *dest, ROM uint8_t *addr, uint16_t count);
            #else

                #define ERASE_BLOCK_SIZE    64
                #define WRITE_BLOCK_SIZE    64
                
                #define NVMRead(dest, addr, count) memcpypgm2ram(dest, addr, count)
            #endif
            
            
            void NVMWrite(uint8_t *source, ROM uint8_t *addr, uint16_t count);
            
            #define NVMInit()   Nop()
        #endif
        
        #if defined(USE_DATA_EEPROM)
            #define TOTAL_NVM_BYTES     1024
        #endif
        
        #if defined(USE_DATA_EEPROM) || defined(USE_EXTERNAL_EEPROM)
        
            extern uint16_t        nvmMyPANID;
            extern uint16_t        nvmCurrentChannel;
            extern uint16_t        nvmConnMode;
            extern uint16_t        nvmConnectionTable;
            extern uint16_t        nvmOutFrameCounter;
            extern uint16_t        nvmEdc; 
                            
       
        
        
        
            void NVMRead(uint8_t *dest, uint16_t addr, uint16_t count);
            void NVMWrite(uint8_t *source, uint16_t addr, uint16_t count);
            
            bool NVMInit(void);
#if defined(EIGHT_BIT_WIRELESS_BOARD)
            #define nvmGetMyPANID( x )                  NVMRead( (uint8_t *)x, nvmMyPANID, 2)
            #define nvmPutMyPANID( x )                  NVMWrite((uint8_t *)x, nvmMyPANID, 2)
            
            #define nvmGetCurrentChannel( x )           NVMRead( (uint8_t *)x, nvmCurrentChannel, 1)
            #define nvmPutCurrentChannel( x )           NVMWrite((uint8_t *)x, nvmCurrentChannel, 1)
            
            #define nvmGetConnMode( x )                 NVMRead( (uint8_t *)x, nvmConnMode, 1)
            #define nvmPutConnMode( x )                 NVMWrite((uint8_t *)x, nvmConnMode, 1)
            
            #define nvmGetConnectionTable( x )          NVMRead( (uint8_t *)x, nvmConnectionTable, (uint16_t)CONNECTION_SIZE * sizeof(CONNECTION_ENTRY))
            #define nvmPutConnectionTable( x )          NVMWrite((uint8_t *)x, nvmConnectionTable, (uint16_t)CONNECTION_SIZE * sizeof(CONNECTION_ENTRY))
            #define nvmPutConnectionTableIndex(x, y)    NVMWrite((uint8_t *)x, nvmConnectionTable+((uint16_t)y * sizeof(CONNECTION_ENTRY)), sizeof(CONNECTION_ENTRY))
            
            #define nvmGetOutFrameCounter( x )          NVMRead( (uint8_t *)x, nvmOutFrameCounter, 4)
            #define nvmPutOutFrameCounter( x )          NVMWrite((uint8_t *)x, nvmOutFrameCounter, 4)

             #define nvmGetMyDC(x)       NVMRead( (uint8_t *)x, nvmEdc, 1)   // Device Count
                    #define nvmPutMyDC(x)           NVMWrite((uint8_t *)x, nvmEdc, 1)  // Device Count

#if defined (PROTOCOL_STAR) 
                    extern uint16_t        nvmRole;
                    extern uint16_t        nvmmyIndex;
                    
          
                    #define nvmGetMyRole(x)       NVMRead( (uint8_t *)x, nvmRole, 1)
                    #define nvmPutMyRole(x)           NVMWrite((uint8_t *)x, nvmRole, 1)

                    #define nvmGetMyIndex(x)        NVMRead( (uint8_t *)x, nvmmyIndex, 1)
                    #define nvmPutMyIndex(x)            NVMWrite((uint8_t *)x, nvmmyIndex, 1)

                   
#endif
#else
      
            #define nvmGetMyPANID( x )                  EEPROM_Read( (uint8_t *)x, 0x00, 2)
            #define nvmPutMyPANID( x )                  EEPROM_Write((uint8_t *)x, 0x00, 2)
            
            #define nvmGetCurrentChannel( x )           EEPROM_Read( (uint8_t *)x, 0x02, 1)
            #define nvmPutCurrentChannel( x )           EEPROM_Write((uint8_t *)x, 0x02, 1)
            
            #define nvmGetConnMode( x )                 EEPROM_Read( (uint8_t *)x,0x03, 1)
            #define nvmPutConnMode( x )                 EEPROM_Write((uint8_t *)x, 0x03, 1)
            
            #define nvmGetConnectionTable( x )          EEPROM_Read( (uint8_t *)x, 0x04, (uint16_t)CONNECTION_SIZE * sizeof(CONNECTION_ENTRY))
            #define nvmPutConnectionTable( x )          EEPROM_Write((uint8_t *)x,0x04, (uint16_t)CONNECTION_SIZE * sizeof(CONNECTION_ENTRY))
            #define nvmPutConnectionTableIndex(x, y)    EEPROM_Write((uint8_t *)x, 0x04+((uint16_t)y * sizeof(CONNECTION_ENTRY)), sizeof(CONNECTION_ENTRY))
            

            #define nvmGetMyRole(x)       EEPROM_Read( (uint8_t *)x, 0xB8, 1)
            #define nvmPutMyRole(x)           EEPROM_Write((uint8_t *)x, 0xB8, 1)

            #define nvmGetMyDC(x)       EEPROM_Read( (uint8_t *)x, 0xBA, 1)   // Device Count
            #define nvmPutMyDC(x)           EEPROM_Write((uint8_t *)x, 0xBA, 1)  // Device Count

            #define nvmGetMyIndex(x)        EEPROM_Read( (uint8_t *)x, 0xBB, 1)   
            #define nvmPutMyIndex(x)        EEPROM_Write( (uint8_t *)x, 0xBB, 1)   
    
        #define nvmGetOutFrameCounter( x )          NVMRead( (uint8_t *)x, 0xBC, 4)
      #define nvmPutOutFrameCounter( x )          NVMWrite((uint8_t *)x, 0xBC, 4)
        
            #endif
        #endif
    #endif
#endif
