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
ifeq "$(wildcard nbproject/Makefile-local-Finestra-cucina.mk)" "nbproject/Makefile-local-Finestra-cucina.mk"
include nbproject/Makefile-local-Finestra-cucina.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Finestra-cucina
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EndDevice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EndDevice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../BSP.c ../PIR.c ../TCN75A.c ../Battery.c ../DemoOutput.c ../HardwareProfile.c ../main.c ../AL_P.c ../Microchip/Common/TimeDelay.c ../Microchip/WirelessProtocols/NVM.c ../Microchip/WirelessProtocols/SymbolTime.c ../Microchip/WirelessProtocols/Console.c ../Microchip/WirelessProtocols/EEPROM.c ../Microchip/WirelessProtocols/MSPI.c ../Microchip/WirelessProtocols/MiWi/MiWi.c ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../Microchip/WirelessProtocols/P2P/P2P.c ../Microchip/Transceivers/crc.c ../Microchip/Transceivers/security.c ../Microchip/Transceivers/MRF24J40/MRF24J40.c ../Microchip/Transceivers/MRF49XA/MRF49XA.c ../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BSP.o ${OBJECTDIR}/_ext/1472/PIR.o ${OBJECTDIR}/_ext/1472/TCN75A.o ${OBJECTDIR}/_ext/1472/Battery.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/AL_P.o ${OBJECTDIR}/_ext/221508487/TimeDelay.o ${OBJECTDIR}/_ext/625747855/NVM.o ${OBJECTDIR}/_ext/625747855/SymbolTime.o ${OBJECTDIR}/_ext/625747855/Console.o ${OBJECTDIR}/_ext/625747855/EEPROM.o ${OBJECTDIR}/_ext/625747855/MSPI.o ${OBJECTDIR}/_ext/839638994/MiWi.o ${OBJECTDIR}/_ext/204341151/MiWiPRO.o ${OBJECTDIR}/_ext/858367954/P2P.o ${OBJECTDIR}/_ext/475352483/crc.o ${OBJECTDIR}/_ext/475352483/security.o ${OBJECTDIR}/_ext/1312953237/MRF24J40.o ${OBJECTDIR}/_ext/1758697155/MRF49XA.o ${OBJECTDIR}/_ext/1758577991/MRF89XA.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BSP.o.d ${OBJECTDIR}/_ext/1472/PIR.o.d ${OBJECTDIR}/_ext/1472/TCN75A.o.d ${OBJECTDIR}/_ext/1472/Battery.o.d ${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/AL_P.o.d ${OBJECTDIR}/_ext/221508487/TimeDelay.o.d ${OBJECTDIR}/_ext/625747855/NVM.o.d ${OBJECTDIR}/_ext/625747855/SymbolTime.o.d ${OBJECTDIR}/_ext/625747855/Console.o.d ${OBJECTDIR}/_ext/625747855/EEPROM.o.d ${OBJECTDIR}/_ext/625747855/MSPI.o.d ${OBJECTDIR}/_ext/839638994/MiWi.o.d ${OBJECTDIR}/_ext/204341151/MiWiPRO.o.d ${OBJECTDIR}/_ext/858367954/P2P.o.d ${OBJECTDIR}/_ext/475352483/crc.o.d ${OBJECTDIR}/_ext/475352483/security.o.d ${OBJECTDIR}/_ext/1312953237/MRF24J40.o.d ${OBJECTDIR}/_ext/1758697155/MRF49XA.o.d ${OBJECTDIR}/_ext/1758577991/MRF89XA.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BSP.o ${OBJECTDIR}/_ext/1472/PIR.o ${OBJECTDIR}/_ext/1472/TCN75A.o ${OBJECTDIR}/_ext/1472/Battery.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/AL_P.o ${OBJECTDIR}/_ext/221508487/TimeDelay.o ${OBJECTDIR}/_ext/625747855/NVM.o ${OBJECTDIR}/_ext/625747855/SymbolTime.o ${OBJECTDIR}/_ext/625747855/Console.o ${OBJECTDIR}/_ext/625747855/EEPROM.o ${OBJECTDIR}/_ext/625747855/MSPI.o ${OBJECTDIR}/_ext/839638994/MiWi.o ${OBJECTDIR}/_ext/204341151/MiWiPRO.o ${OBJECTDIR}/_ext/858367954/P2P.o ${OBJECTDIR}/_ext/475352483/crc.o ${OBJECTDIR}/_ext/475352483/security.o ${OBJECTDIR}/_ext/1312953237/MRF24J40.o ${OBJECTDIR}/_ext/1758697155/MRF49XA.o ${OBJECTDIR}/_ext/1758577991/MRF89XA.o

# Source Files
SOURCEFILES=../BSP.c ../PIR.c ../TCN75A.c ../Battery.c ../DemoOutput.c ../HardwareProfile.c ../main.c ../AL_P.c ../Microchip/Common/TimeDelay.c ../Microchip/WirelessProtocols/NVM.c ../Microchip/WirelessProtocols/SymbolTime.c ../Microchip/WirelessProtocols/Console.c ../Microchip/WirelessProtocols/EEPROM.c ../Microchip/WirelessProtocols/MSPI.c ../Microchip/WirelessProtocols/MiWi/MiWi.c ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../Microchip/WirelessProtocols/P2P/P2P.c ../Microchip/Transceivers/crc.c ../Microchip/Transceivers/security.c ../Microchip/Transceivers/MRF24J40/MRF24J40.c ../Microchip/Transceivers/MRF49XA/MRF49XA.c ../Microchip/Transceivers/MRF89XA/MRF89XA.c


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
	${MAKE}  -f nbproject/Makefile-Finestra-cucina.mk dist/${CND_CONF}/${IMAGE_TYPE}/EndDevice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F26K20
MP_PROCESSOR_OPTION_LD=18f26k20
MP_LINKER_DEBUG_OPTION=-r=ROM@0xFD30:0xFFFF -r=RAM@GPR:0xEF4:0xEFF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/BSP.o: ../BSP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BSP.o   ../BSP.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BSP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/PIR.o: ../PIR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PIR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PIR.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/PIR.o   ../PIR.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/PIR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PIR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/TCN75A.o: ../TCN75A.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TCN75A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TCN75A.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/TCN75A.o   ../TCN75A.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/TCN75A.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TCN75A.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/Battery.o: ../Battery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Battery.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Battery.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Battery.o   ../Battery.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/Battery.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Battery.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoOutput.o   ../DemoOutput.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/main.o   ../main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/AL_P.o: ../AL_P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/AL_P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AL_P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/AL_P.o   ../AL_P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/AL_P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/AL_P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/221508487/TimeDelay.o: ../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/221508487" 
	@${RM} ${OBJECTDIR}/_ext/221508487/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/221508487/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/221508487/TimeDelay.o   ../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/221508487/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/221508487/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/NVM.o: ../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/NVM.o   ../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/SymbolTime.o: ../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/SymbolTime.o   ../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/Console.o: ../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/Console.o   ../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/EEPROM.o: ../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/EEPROM.o   ../Microchip/WirelessProtocols/EEPROM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/MSPI.o: ../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/MSPI.o   ../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/839638994/MiWi.o: ../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/839638994" 
	@${RM} ${OBJECTDIR}/_ext/839638994/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/839638994/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/839638994/MiWi.o   ../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/839638994/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/839638994/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/204341151/MiWiPRO.o: ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/204341151" 
	@${RM} ${OBJECTDIR}/_ext/204341151/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/204341151/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/204341151/MiWiPRO.o   ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/204341151/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/204341151/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/858367954/P2P.o: ../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/858367954" 
	@${RM} ${OBJECTDIR}/_ext/858367954/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/858367954/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/858367954/P2P.o   ../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/858367954/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/858367954/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/475352483/crc.o: ../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475352483" 
	@${RM} ${OBJECTDIR}/_ext/475352483/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/475352483/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/475352483/crc.o   ../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/475352483/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/475352483/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/475352483/security.o: ../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475352483" 
	@${RM} ${OBJECTDIR}/_ext/475352483/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/475352483/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/475352483/security.o   ../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/475352483/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/475352483/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1312953237/MRF24J40.o: ../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1312953237" 
	@${RM} ${OBJECTDIR}/_ext/1312953237/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312953237/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1312953237/MRF24J40.o   ../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1312953237/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1312953237/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1758697155/MRF49XA.o: ../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758697155" 
	@${RM} ${OBJECTDIR}/_ext/1758697155/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758697155/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1758697155/MRF49XA.o   ../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1758697155/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758697155/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1758577991/MRF89XA.o: ../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758577991" 
	@${RM} ${OBJECTDIR}/_ext/1758577991/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758577991/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1758577991/MRF89XA.o   ../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1758577991/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758577991/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1472/BSP.o: ../BSP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BSP.o   ../BSP.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BSP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/PIR.o: ../PIR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PIR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PIR.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/PIR.o   ../PIR.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/PIR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PIR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/TCN75A.o: ../TCN75A.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TCN75A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TCN75A.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/TCN75A.o   ../TCN75A.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/TCN75A.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TCN75A.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/Battery.o: ../Battery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Battery.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Battery.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Battery.o   ../Battery.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/Battery.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Battery.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoOutput.o   ../DemoOutput.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/main.o   ../main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/AL_P.o: ../AL_P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/AL_P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AL_P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/AL_P.o   ../AL_P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/AL_P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/AL_P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/221508487/TimeDelay.o: ../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/221508487" 
	@${RM} ${OBJECTDIR}/_ext/221508487/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/221508487/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/221508487/TimeDelay.o   ../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/221508487/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/221508487/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/NVM.o: ../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/NVM.o   ../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/SymbolTime.o: ../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/SymbolTime.o   ../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/Console.o: ../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/Console.o   ../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/EEPROM.o: ../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/EEPROM.o   ../Microchip/WirelessProtocols/EEPROM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/625747855/MSPI.o: ../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625747855" 
	@${RM} ${OBJECTDIR}/_ext/625747855/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/625747855/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/625747855/MSPI.o   ../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/625747855/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/625747855/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/839638994/MiWi.o: ../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/839638994" 
	@${RM} ${OBJECTDIR}/_ext/839638994/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/839638994/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/839638994/MiWi.o   ../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/839638994/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/839638994/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/204341151/MiWiPRO.o: ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/204341151" 
	@${RM} ${OBJECTDIR}/_ext/204341151/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/204341151/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/204341151/MiWiPRO.o   ../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/204341151/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/204341151/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/858367954/P2P.o: ../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/858367954" 
	@${RM} ${OBJECTDIR}/_ext/858367954/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/858367954/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/858367954/P2P.o   ../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/858367954/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/858367954/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/475352483/crc.o: ../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475352483" 
	@${RM} ${OBJECTDIR}/_ext/475352483/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/475352483/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/475352483/crc.o   ../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/475352483/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/475352483/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/475352483/security.o: ../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475352483" 
	@${RM} ${OBJECTDIR}/_ext/475352483/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/475352483/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/475352483/security.o   ../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/475352483/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/475352483/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1312953237/MRF24J40.o: ../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1312953237" 
	@${RM} ${OBJECTDIR}/_ext/1312953237/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312953237/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1312953237/MRF24J40.o   ../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1312953237/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1312953237/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1758697155/MRF49XA.o: ../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758697155" 
	@${RM} ${OBJECTDIR}/_ext/1758697155/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758697155/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1758697155/MRF49XA.o   ../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1758697155/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758697155/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1758577991/MRF89XA.o: ../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758577991" 
	@${RM} ${OBJECTDIR}/_ext/1758577991/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758577991/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -D_FINESTRA_CUCINA -I"../Microchip/Common" -I"../Microchip/Transceivers" -I"../Microchip/WirelessProtocols" -I"../Microchip/Include/WirelessProtocols" -I"../Microchip/Include" -I"../" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1758577991/MRF89XA.o   ../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1758577991/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758577991/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/EndDevice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/EndDevice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/EndDevice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/EndDevice.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Finestra-cucina
	${RM} -r dist/Finestra-cucina

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
