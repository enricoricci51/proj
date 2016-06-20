#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../TCN75A.c ../DemoOutput.c ../HardwareProfile.c ../main.c ../AL_P.c ../Microchip/Common/TimeDelay.c ../Microchip/WirelessProtocols/NVM.c ../Microchip/WirelessProtocols/SymbolTime.c ../Microchip/WirelessProtocols/Console.c ../Microchip/WirelessProtocols/EEPROM.c ../Microchip/WirelessProtocols/MSPI.c ../Microchip/WirelessProtocols/MiWi/MiWi.c ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../Microchip/WirelessProtocols/P2P/P2P.c ../Microchip/Transceivers/crc.c ../Microchip/Transceivers/security.c ../Microchip/Transceivers/MRF24J40/MRF24J40.c ../Microchip/Transceivers/MRF49XA/MRF49XA.c ../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/TCN75A.p1 ${OBJECTDIR}/_ext/1472/DemoOutput.p1 ${OBJECTDIR}/_ext/1472/HardwareProfile.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/AL_P.p1 ${OBJECTDIR}/_ext/221508487/TimeDelay.p1 ${OBJECTDIR}/_ext/625747855/NVM.p1 ${OBJECTDIR}/_ext/625747855/SymbolTime.p1 ${OBJECTDIR}/_ext/625747855/Console.p1 ${OBJECTDIR}/_ext/625747855/EEPROM.p1 ${OBJECTDIR}/_ext/625747855/MSPI.p1 ${OBJECTDIR}/_ext/839638994/MiWi.p1 ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1 ${OBJECTDIR}/_ext/858367954/P2P.p1 ${OBJECTDIR}/_ext/475352483/crc.p1 ${OBJECTDIR}/_ext/475352483/security.p1 ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1 ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1 ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/TCN75A.p1.d ${OBJECTDIR}/_ext/1472/DemoOutput.p1.d ${OBJECTDIR}/_ext/1472/HardwareProfile.p1.d ${OBJECTDIR}/_ext/1472/main.p1.d ${OBJECTDIR}/_ext/1472/AL_P.p1.d ${OBJECTDIR}/_ext/221508487/TimeDelay.p1.d ${OBJECTDIR}/_ext/625747855/NVM.p1.d ${OBJECTDIR}/_ext/625747855/SymbolTime.p1.d ${OBJECTDIR}/_ext/625747855/Console.p1.d ${OBJECTDIR}/_ext/625747855/EEPROM.p1.d ${OBJECTDIR}/_ext/625747855/MSPI.p1.d ${OBJECTDIR}/_ext/839638994/MiWi.p1.d ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1.d ${OBJECTDIR}/_ext/858367954/P2P.p1.d ${OBJECTDIR}/_ext/475352483/crc.p1.d ${OBJECTDIR}/_ext/475352483/security.p1.d ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1.d ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1.d ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/TCN75A.p1 ${OBJECTDIR}/_ext/1472/DemoOutput.p1 ${OBJECTDIR}/_ext/1472/HardwareProfile.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/AL_P.p1 ${OBJECTDIR}/_ext/221508487/TimeDelay.p1 ${OBJECTDIR}/_ext/625747855/NVM.p1 ${OBJECTDIR}/_ext/625747855/SymbolTime.p1 ${OBJECTDIR}/_ext/625747855/Console.p1 ${OBJECTDIR}/_ext/625747855/EEPROM.p1 ${OBJECTDIR}/_ext/625747855/MSPI.p1 ${OBJECTDIR}/_ext/839638994/MiWi.p1 ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1 ${OBJECTDIR}/_ext/858367954/P2P.p1 ${OBJECTDIR}/_ext/475352483/crc.p1 ${OBJECTDIR}/_ext/475352483/security.p1 ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1 ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1 ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1

# Source Files
SOURCEFILES=../TCN75A.c ../DemoOutput.c ../HardwareProfile.c ../main.c ../AL_P.c ../Microchip/Common/TimeDelay.c ../Microchip/WirelessProtocols/NVM.c ../Microchip/WirelessProtocols/SymbolTime.c ../Microchip/WirelessProtocols/Console.c ../Microchip/WirelessProtocols/EEPROM.c ../Microchip/WirelessProtocols/MSPI.c ../Microchip/WirelessProtocols/MiWi/MiWi.c ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../Microchip/WirelessProtocols/P2P/P2P.c ../Microchip/Transceivers/crc.c ../Microchip/Transceivers/security.c ../Microchip/Transceivers/MRF24J40/MRF24J40.c ../Microchip/Transceivers/MRF49XA/MRF49XA.c ../Microchip/Transceivers/MRF89XA/MRF89XA.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F26K20
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/TCN75A.p1: ../TCN75A.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TCN75A.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TCN75A.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/TCN75A.p1  ../TCN75A.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/TCN75A.d ${OBJECTDIR}/_ext/1472/TCN75A.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/TCN75A.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/DemoOutput.p1: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/DemoOutput.p1  ../DemoOutput.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/DemoOutput.d ${OBJECTDIR}/_ext/1472/DemoOutput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/DemoOutput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/HardwareProfile.p1: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/HardwareProfile.p1  ../HardwareProfile.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/HardwareProfile.d ${OBJECTDIR}/_ext/1472/HardwareProfile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/HardwareProfile.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/main.p1  ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/AL_P.p1: ../AL_P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/AL_P.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AL_P.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/AL_P.p1  ../AL_P.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/AL_P.d ${OBJECTDIR}/_ext/1472/AL_P.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/AL_P.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/221508487/TimeDelay.p1: ../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/221508487" 
	@${RM} ${OBJECTDIR}/_ext/221508487/TimeDelay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/221508487/TimeDelay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/221508487/TimeDelay.p1  ../Microchip/Common/TimeDelay.c 
	@-${MV} ${OBJECTDIR}/_ext/221508487/TimeDelay.d ${OBJECTDIR}/_ext/221508487/TimeDelay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/221508487/TimeDelay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/NVM.p1: ../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/NVM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/NVM.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/NVM.p1  ../Microchip/WirelessProtocols/NVM.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/NVM.d ${OBJECTDIR}/_ext/625747855/NVM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/NVM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/SymbolTime.p1: ../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/SymbolTime.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/SymbolTime.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/SymbolTime.p1  ../Microchip/WirelessProtocols/SymbolTime.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/SymbolTime.d ${OBJECTDIR}/_ext/625747855/SymbolTime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/SymbolTime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/Console.p1: ../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/Console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/Console.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/Console.p1  ../Microchip/WirelessProtocols/Console.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/Console.d ${OBJECTDIR}/_ext/625747855/Console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/Console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/EEPROM.p1: ../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/EEPROM.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/EEPROM.p1  ../Microchip/WirelessProtocols/EEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/EEPROM.d ${OBJECTDIR}/_ext/625747855/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/MSPI.p1: ../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/MSPI.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/MSPI.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/MSPI.p1  ../Microchip/WirelessProtocols/MSPI.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/MSPI.d ${OBJECTDIR}/_ext/625747855/MSPI.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/MSPI.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/839638994/MiWi.p1: ../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/839638994" 
	@${RM} ${OBJECTDIR}/_ext/839638994/MiWi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/839638994/MiWi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/839638994/MiWi.p1  ../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@-${MV} ${OBJECTDIR}/_ext/839638994/MiWi.d ${OBJECTDIR}/_ext/839638994/MiWi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/839638994/MiWi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/204341151/MiWiPRO.p1: ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/204341151" 
	@${RM} ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1.d 
	@${RM} ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/204341151/MiWiPRO.p1  ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@-${MV} ${OBJECTDIR}/_ext/204341151/MiWiPRO.d ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/858367954/P2P.p1: ../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/858367954" 
	@${RM} ${OBJECTDIR}/_ext/858367954/P2P.p1.d 
	@${RM} ${OBJECTDIR}/_ext/858367954/P2P.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/858367954/P2P.p1  ../Microchip/WirelessProtocols/P2P/P2P.c 
	@-${MV} ${OBJECTDIR}/_ext/858367954/P2P.d ${OBJECTDIR}/_ext/858367954/P2P.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/858367954/P2P.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/475352483/crc.p1: ../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475352483" 
	@${RM} ${OBJECTDIR}/_ext/475352483/crc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/475352483/crc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/475352483/crc.p1  ../Microchip/Transceivers/crc.c 
	@-${MV} ${OBJECTDIR}/_ext/475352483/crc.d ${OBJECTDIR}/_ext/475352483/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/475352483/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/475352483/security.p1: ../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475352483" 
	@${RM} ${OBJECTDIR}/_ext/475352483/security.p1.d 
	@${RM} ${OBJECTDIR}/_ext/475352483/security.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/475352483/security.p1  ../Microchip/Transceivers/security.c 
	@-${MV} ${OBJECTDIR}/_ext/475352483/security.d ${OBJECTDIR}/_ext/475352483/security.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/475352483/security.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1312953237/MRF24J40.p1: ../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1312953237" 
	@${RM} ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1312953237/MRF24J40.p1  ../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@-${MV} ${OBJECTDIR}/_ext/1312953237/MRF24J40.d ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1758697155/MRF49XA.p1: ../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758697155" 
	@${RM} ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1758697155/MRF49XA.p1  ../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@-${MV} ${OBJECTDIR}/_ext/1758697155/MRF49XA.d ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1758577991/MRF89XA.p1: ../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758577991" 
	@${RM} ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1758577991/MRF89XA.p1  ../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@-${MV} ${OBJECTDIR}/_ext/1758577991/MRF89XA.d ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1472/TCN75A.p1: ../TCN75A.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TCN75A.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TCN75A.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/TCN75A.p1  ../TCN75A.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/TCN75A.d ${OBJECTDIR}/_ext/1472/TCN75A.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/TCN75A.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/DemoOutput.p1: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/DemoOutput.p1  ../DemoOutput.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/DemoOutput.d ${OBJECTDIR}/_ext/1472/DemoOutput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/DemoOutput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/HardwareProfile.p1: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/HardwareProfile.p1  ../HardwareProfile.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/HardwareProfile.d ${OBJECTDIR}/_ext/1472/HardwareProfile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/HardwareProfile.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/main.p1  ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/AL_P.p1: ../AL_P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/AL_P.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AL_P.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1472/AL_P.p1  ../AL_P.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/AL_P.d ${OBJECTDIR}/_ext/1472/AL_P.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/AL_P.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/221508487/TimeDelay.p1: ../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/221508487" 
	@${RM} ${OBJECTDIR}/_ext/221508487/TimeDelay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/221508487/TimeDelay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/221508487/TimeDelay.p1  ../Microchip/Common/TimeDelay.c 
	@-${MV} ${OBJECTDIR}/_ext/221508487/TimeDelay.d ${OBJECTDIR}/_ext/221508487/TimeDelay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/221508487/TimeDelay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/NVM.p1: ../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/NVM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/NVM.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/NVM.p1  ../Microchip/WirelessProtocols/NVM.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/NVM.d ${OBJECTDIR}/_ext/625747855/NVM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/NVM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/SymbolTime.p1: ../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/SymbolTime.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/SymbolTime.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/SymbolTime.p1  ../Microchip/WirelessProtocols/SymbolTime.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/SymbolTime.d ${OBJECTDIR}/_ext/625747855/SymbolTime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/SymbolTime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/Console.p1: ../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/Console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/Console.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/Console.p1  ../Microchip/WirelessProtocols/Console.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/Console.d ${OBJECTDIR}/_ext/625747855/Console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/Console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/EEPROM.p1: ../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/EEPROM.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/EEPROM.p1  ../Microchip/WirelessProtocols/EEPROM.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/EEPROM.d ${OBJECTDIR}/_ext/625747855/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/625747855/MSPI.p1: ../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/MSPI.p1.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/MSPI.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/625747855/MSPI.p1  ../Microchip/WirelessProtocols/MSPI.c 
	@-${MV} ${OBJECTDIR}/_ext/625747855/MSPI.d ${OBJECTDIR}/_ext/625747855/MSPI.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/625747855/MSPI.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/839638994/MiWi.p1: ../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/839638994" 
	@${RM} ${OBJECTDIR}/_ext/839638994/MiWi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/839638994/MiWi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/839638994/MiWi.p1  ../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@-${MV} ${OBJECTDIR}/_ext/839638994/MiWi.d ${OBJECTDIR}/_ext/839638994/MiWi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/839638994/MiWi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/204341151/MiWiPRO.p1: ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/204341151" 
	@${RM} ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1.d 
	@${RM} ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/204341151/MiWiPRO.p1  ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@-${MV} ${OBJECTDIR}/_ext/204341151/MiWiPRO.d ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/204341151/MiWiPRO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/858367954/P2P.p1: ../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/858367954" 
	@${RM} ${OBJECTDIR}/_ext/858367954/P2P.p1.d 
	@${RM} ${OBJECTDIR}/_ext/858367954/P2P.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/858367954/P2P.p1  ../Microchip/WirelessProtocols/P2P/P2P.c 
	@-${MV} ${OBJECTDIR}/_ext/858367954/P2P.d ${OBJECTDIR}/_ext/858367954/P2P.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/858367954/P2P.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/475352483/crc.p1: ../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475352483" 
	@${RM} ${OBJECTDIR}/_ext/475352483/crc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/475352483/crc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/475352483/crc.p1  ../Microchip/Transceivers/crc.c 
	@-${MV} ${OBJECTDIR}/_ext/475352483/crc.d ${OBJECTDIR}/_ext/475352483/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/475352483/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/475352483/security.p1: ../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475352483" 
	@${RM} ${OBJECTDIR}/_ext/475352483/security.p1.d 
	@${RM} ${OBJECTDIR}/_ext/475352483/security.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/475352483/security.p1  ../Microchip/Transceivers/security.c 
	@-${MV} ${OBJECTDIR}/_ext/475352483/security.d ${OBJECTDIR}/_ext/475352483/security.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/475352483/security.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1312953237/MRF24J40.p1: ../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1312953237" 
	@${RM} ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1312953237/MRF24J40.p1  ../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@-${MV} ${OBJECTDIR}/_ext/1312953237/MRF24J40.d ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1312953237/MRF24J40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1758697155/MRF49XA.p1: ../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758697155" 
	@${RM} ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1758697155/MRF49XA.p1  ../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@-${MV} ${OBJECTDIR}/_ext/1758697155/MRF49XA.d ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1758697155/MRF49XA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1758577991/MRF89XA.p1: ../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758577991" 
	@${RM} ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1758577991/MRF89XA.p1  ../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@-${MV} ${OBJECTDIR}/_ext/1758577991/MRF89XA.d ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1758577991/MRF89XA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     --rom=default,-fd30-ffff --ram=default,-ef4-eff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../Microchip" -I"../Microchip/Include" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols/MiWi" -I"../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../Microchip/Include/WirelessProtocols/P2P" -I"../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/Coordinator.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
