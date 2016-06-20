#define AL_P_H

#include <p18cxxx.h>
#include <string.h>
#include "GenericTypeDefs.h"
#include "MCHP_API.h"
#include "Variables.h"
#include "Console.h"
#include "MCHP_API.h"
#include "AL_P.h"
#include "PIR.h"

void Parser(unsigned char Byte)
{
    switch(ParserState)
    {
        case STX:
            if(Byte == AL_STX)
            {
                memset(&ParserFlags, 0, sizeof(ParserFlags_t));
                ParserState = CMD;
            }
            break;
        case CMD:

            ParserFlags.CmdReceived = Byte;
            ParserState = DATA1;
            CheckSum = Byte;
            break;
        case DATA1:

            ParserFlags.Address = ((WORD)Byte << 8);
            ParserState = DATA2;
            CheckSum += Byte;
            break;
        case DATA2:

            ParserFlags.Address |= Byte;
            ParserState = CKSUM;
            CheckSum += Byte;
            break;
        case CKSUM:

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
#ifdef ENABLE_CONSOLE
    TxUSARTBuffer[TxHead++] = c;
    if(TxHead == MAXTXBUFFERDIM)
        TxHead = 0;
#endif
}

void EmptyBuffer(void)
{
#ifdef ENABLE_CONSOLE
    while(TXNOTEMPTY)
    {
        ConsolePut(TxUSARTBuffer[TxTail++]);
        if(TxTail == MAXTXBUFFERDIM)
            TxTail == 0;
    }
#endif
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
    memset(&GlobalFlags, 0, sizeof(GLOBALFLAGS_T));
    SendPirFlag = 0;
}