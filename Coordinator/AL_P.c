#define AL_P_H

#include <p18cxxx.h>
#include "GenericTypeDefs.h"
#include "ConfigApp.h"
#include "AL_P.h"
#include "Console.h"
#include "MCHP_API.h"

void Parser(unsigned char Byte)
{
    static DWORD LocalTimeout = 0;
    if(ReSyncTimeout > LocalTimeout + 100)
        ParserState = STX;
    switch(ParserState)
    {
        case STX:
            if(Byte == AL_STX)
            {
                LocalTimeout = ReSyncTimeout;
                memset(&ParserFlags, 0, sizeof(ParserFlags_t));
                ParserState = CMD;
            }
            break;
        case CMD:

            LocalTimeout = ReSyncTimeout;
            ParserFlags.CmdReceived = Byte;
            ParserState = DEST_ADDR;
            AddrIndex = 0;
            CheckSum = Byte;
            break;
        case DEST_ADDR:

            LocalTimeout = ReSyncTimeout;
            ParserFlags.Address[AddrIndex] = Byte;
            CheckSum += Byte;
            if(++AddrIndex == MY_ADDRESS_LENGTH)
                ParserState = CKSUM;
            break;
        
        case CKSUM:

            LocalTimeout = ReSyncTimeout;
            if(CheckSum == Byte)
            {
                if(ParserFlags.CmdReceived == AL_CMD_REQUEST_PIR)
                    Action = AC_REQUEST_PIR;
                else if(ParserFlags.CmdReceived == AL_CMD_TEMPERATURE)
                    Action = AC_REQUEST_TEM;
                else if(ParserFlags.CmdReceived == AL_CMD_BATTERY)
                    Action = AC_REQUEST_BAT;
                else if(ParserFlags.CmdReceived == AL_CMD_NAME)
                    Action = AC_REQUEST_NAME;
                else if(ParserFlags.CmdReceived == AL_CMD_RESET)
                    Action = AC_REQUEST_RESET;
                else if(ParserFlags.CmdReceived == AL_CMD_WELCOME)
                    Action = AC_REQUEST_WELCOME;
                else if(ParserFlags.CmdReceived == AL_CMD_GET_TABLE)
                    Action = AC_GET_TABLE;
                else if(ParserFlags.CmdReceived == AL_CMD_GET_LOCAL_TEMP)
                    Action = AC_GET_LOCAL_TEMP;
                else if(ParserFlags.CmdReceived == AL_CMD_WAKEUP)
                    Action = AC_WAKEUP;
                else if(ParserFlags.CmdReceived == AL_CMD_DEEP_SLEEP)
                    Action = AC_DEEP_SLEEP;
                else if(ParserFlags.CmdReceived == AL_CMD_AUTO_RESET)
                    Reset();
            }
            else
            {
                memset(&ParserFlags, 0, sizeof(ParserFlags_t));
            }
            ParserState = STX;
            break;


        default:
            ParserState = STX;
            break;
    }
}

void ConsoleFillBuffer(BYTE c)
{
    TxUSARTBuffer[TxHead++] = c;
    if(TxHead == MAXTXBUFFERDIM)
        TxHead = 0;
}

void EmptyBuffer(void)
{
    while(TXNOTEMPTY)
    {
        ConsolePut(TxUSARTBuffer[TxTail++]);
        if(TxTail == MAXTXBUFFERDIM)
            TxTail == 0;
    }
}

WORD SearchForConnectionTableIndex(BYTE *AddressRec)
{
    BYTE i = 0;
    for(i = 0; i < CONNECTION_SIZE; i++)
    {
        if(!memcmp((void *)ConnectionTable[i].Address, (void *)AddressRec, MY_ADDRESS_LENGTH))
            return i;
    }
    return 0xFFFF;
}

void InitVar(void)
{
    ParserState = 0;
    Action = 0;
    memset(&ParserFlags, 0, sizeof(ParserFlags_t));
}

void SendReady(void)
{
    ConsoleFillBuffer(AL_STX);
    ConsoleFillBuffer(AL_CMD_COORD_READY);
    CheckSum = AL_CMD_COORD_READY;
    ConsoleFillBuffer(8);
    CheckSum += 8;
    ConsoleFillBuffer(EUI_0);
    CheckSum += EUI_0;
    ConsoleFillBuffer(EUI_1);
    CheckSum += EUI_1;
    ConsoleFillBuffer(EUI_2);
    CheckSum += EUI_2;
    ConsoleFillBuffer(EUI_3);
    CheckSum += EUI_3;
    ConsoleFillBuffer(EUI_4);
    CheckSum += EUI_4;
    ConsoleFillBuffer(EUI_5);
    CheckSum += EUI_5;
    ConsoleFillBuffer(EUI_6);
    CheckSum += EUI_6;
    ConsoleFillBuffer(EUI_7);
    CheckSum += EUI_7;
    ConsoleFillBuffer(CheckSum);
    EmptyBuffer();
}