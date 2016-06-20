/* 
 * File:   AL_P.h
 * Author: Lorenzo Musacci
 *
 * Created on 23 agosto 2014, 13.33
 */

#ifdef AL_P_H
#define AL_P_EXTERN
#else
#define AL_P_EXTERN extern
#endif

#define AL_STX                      0x66
#define AL_CMD_NOTIFICATION         0x01
#define AL_CMD_TEMPERATURE          0x02
#define AL_CMD_BATTERY              0x03
#define AL_CMD_REQUEST_PIR          0x04
#define AL_CMD_NAME                 0x05
#define AL_CMD_LIST                 0x06
#define AL_CMD_JOIN                 0x07
#define AL_CMD_RESET                0x08
#define AL_CMD_AUTO_RESET           0x09
#define AL_CMD_COORD_READY          0x0A
#define AL_CMD_WELCOME              0x0B
#define AL_CMD_WAKEUP               0x0E
#define AL_CMD_RESYNC               0x0F
#define AL_CMD_DEEP_SLEEP           0x10
#define AL_CMD_ALIVE                0x11

#define AC_REQUEST_PIR              0x01
#define AC_REQUEST_TEM              0x02
#define AC_REQUEST_BAT              0x03
#define AC_REQUEST_NAME             0x04
#define AC_REQUEST_RESET            0x05

typedef struct
{
    unsigned int CmdReceived :2;
    unsigned int PacketOk    :1;
    unsigned int Address;
} ParserFlags_t;

enum
{
    STX,
    CMD,
    DATA1,
    DATA2,
    CKSUM
};

AL_P_EXTERN BYTE ByteRec;
AL_P_EXTERN BYTE ParserState;
AL_P_EXTERN BYTE CheckSum;
AL_P_EXTERN BYTE Action;
AL_P_EXTERN BYTE ResyncFlag;
AL_P_EXTERN BYTE WakeupFlag;
AL_P_EXTERN ParserFlags_t ParserFlags;

WORD SearchForConnectionTableIndex(BYTE *AddressRec);
void Parser(unsigned char Byte);
void ConsoleFillBuffer(BYTE c);
void EmptyBuffer(void);
void InitVar(void);

