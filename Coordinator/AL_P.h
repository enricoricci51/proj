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
#define AL_CMD_GET_TABLE            0x0C
#define AL_CMD_GET_LOCAL_TEMP       0x0D
#define AL_CMD_WAKEUP               0x0E
#define AL_CMD_RESYNC               0x0F
#define AL_CMD_DEEP_SLEEP           0x10

#define AC_REQUEST_PIR              0x01
#define AC_REQUEST_TEM              0x02
#define AC_REQUEST_BAT              0x03
#define AC_REQUEST_NAME             0x04
#define AC_REQUEST_RESET            0x05
#define AC_REQUEST_WELCOME          0x06
#define AC_GET_TABLE                0x07
#define AC_GET_LOCAL_TEMP           0x08
#define AC_WAKEUP                   0x09
#define AC_RESYNC                   0x0A
#define AC_DEEP_SLEEP               0x0B

typedef struct
{
    unsigned char   Address[MY_ADDRESS_LENGTH];
    unsigned char    CmdReceived;
    unsigned int    PacketOk    :1;    
} ParserFlags_t;

enum
{
    STX,
    CMD,
    DEST_ADDR,
    CKSUM
};

AL_P_EXTERN BYTE ByteRec;
AL_P_EXTERN BYTE ParserState;
AL_P_EXTERN BYTE CheckSum;
AL_P_EXTERN BYTE Action;
AL_P_EXTERN BYTE AddrIndex;
AL_P_EXTERN DWORD ReSyncTimeout;
AL_P_EXTERN BYTE ReSyncFlag;
AL_P_EXTERN ParserFlags_t ParserFlags;

WORD SearchForConnectionTableIndex(BYTE *AddressRec);
void Parser(unsigned char Byte);
void ConsoleFillBuffer(BYTE c);
void EmptyBuffer(void);
void InitVar(void);
void SendReady(void);

