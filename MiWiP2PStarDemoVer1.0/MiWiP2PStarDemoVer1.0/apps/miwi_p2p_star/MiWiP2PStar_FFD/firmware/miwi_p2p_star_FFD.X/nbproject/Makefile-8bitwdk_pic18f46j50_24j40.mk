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
ifeq "$(wildcard nbproject/Makefile-local-8bitwdk_pic18f46j50_24j40.mk)" "nbproject/Makefile-local-8bitwdk_pic18f46j50_24j40.mk"
include nbproject/Makefile-local-8bitwdk_pic18f46j50_24j40.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=8bitwdk_pic18f46j50_24j40
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_crc.c ../../../../../framework/miwi/src/miwi_nvm.c ../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/8bitwdk_pic18f46j50_24j40/console.c ../src/system_config/8bitwdk_pic18f46j50_24j40/delay.c ../src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c ../src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c ../src/system_config/8bitwdk_pic18f46j50_24j40/spi.c ../src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c ../src/system_config/8bitwdk_pic18f46j50_24j40/system.c ../src/demo_ouput.c ../src/main.c ../src/task.c ../src/star_demo.c ../src/p2p_demo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1 ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1 ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1 ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1 ${OBJECTDIR}/_ext/1747362554/console.p1 ${OBJECTDIR}/_ext/1747362554/delay.p1 ${OBJECTDIR}/_ext/1747362554/eeprom.p1 ${OBJECTDIR}/_ext/1747362554/lcd.p1 ${OBJECTDIR}/_ext/1747362554/spi.p1 ${OBJECTDIR}/_ext/1747362554/symbol.p1 ${OBJECTDIR}/_ext/1747362554/system.p1 ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/task.p1 ${OBJECTDIR}/_ext/1360937237/star_demo.p1 ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1.d ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1.d ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1.d ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1.d ${OBJECTDIR}/_ext/1747362554/console.p1.d ${OBJECTDIR}/_ext/1747362554/delay.p1.d ${OBJECTDIR}/_ext/1747362554/eeprom.p1.d ${OBJECTDIR}/_ext/1747362554/lcd.p1.d ${OBJECTDIR}/_ext/1747362554/spi.p1.d ${OBJECTDIR}/_ext/1747362554/symbol.p1.d ${OBJECTDIR}/_ext/1747362554/system.p1.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d ${OBJECTDIR}/_ext/1360937237/main.p1.d ${OBJECTDIR}/_ext/1360937237/task.p1.d ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1 ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1 ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1 ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1 ${OBJECTDIR}/_ext/1747362554/console.p1 ${OBJECTDIR}/_ext/1747362554/delay.p1 ${OBJECTDIR}/_ext/1747362554/eeprom.p1 ${OBJECTDIR}/_ext/1747362554/lcd.p1 ${OBJECTDIR}/_ext/1747362554/spi.p1 ${OBJECTDIR}/_ext/1747362554/symbol.p1 ${OBJECTDIR}/_ext/1747362554/system.p1 ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/task.p1 ${OBJECTDIR}/_ext/1360937237/star_demo.p1 ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1

# Source Files
SOURCEFILES=../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_crc.c ../../../../../framework/miwi/src/miwi_nvm.c ../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/8bitwdk_pic18f46j50_24j40/console.c ../src/system_config/8bitwdk_pic18f46j50_24j40/delay.c ../src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c ../src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c ../src/system_config/8bitwdk_pic18f46j50_24j40/spi.c ../src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c ../src/system_config/8bitwdk_pic18f46j50_24j40/system.c ../src/demo_ouput.c ../src/main.c ../src/task.c ../src/star_demo.c ../src/p2p_demo.c


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
	${MAKE}  -f nbproject/Makefile-8bitwdk_pic18f46j50_24j40.mk dist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46J50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1: ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2064664840" 
	@${RM} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1  ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c 
	@-${MV} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.d ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1: ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2064664840" 
	@${RM} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1  ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_crc.c 
	@-${MV} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.d ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/842993699/miwi_nvm.p1: ../../../../../framework/miwi/src/miwi_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/842993699" 
	@${RM} ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/842993699/miwi_nvm.p1  ../../../../../framework/miwi/src/miwi_nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/842993699/miwi_nvm.d ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/842993699/miwi_p2p.p1: ../../../../../framework/miwi/src/miwi_p2p.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/842993699" 
	@${RM} ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1.d 
	@${RM} ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/842993699/miwi_p2p.p1  ../../../../../framework/miwi/src/miwi_p2p.c 
	@-${MV} ${OBJECTDIR}/_ext/842993699/miwi_p2p.d ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/console.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/console.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/console.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/console.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/console.d ${OBJECTDIR}/_ext/1747362554/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/delay.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/delay.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/delay.d ${OBJECTDIR}/_ext/1747362554/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/eeprom.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/eeprom.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/eeprom.d ${OBJECTDIR}/_ext/1747362554/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/lcd.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/lcd.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/lcd.d ${OBJECTDIR}/_ext/1747362554/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/spi.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/spi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/spi.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/spi.d ${OBJECTDIR}/_ext/1747362554/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/symbol.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/symbol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/symbol.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/symbol.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/symbol.d ${OBJECTDIR}/_ext/1747362554/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/system.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/system.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/system.d ${OBJECTDIR}/_ext/1747362554/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.p1: ../src/demo_ouput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/demo_ouput.p1  ../src/demo_ouput.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/demo_ouput.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/main.p1  ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/task.p1: ../src/task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/task.p1  ../src/task.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/task.d ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/star_demo.p1: ../src/star_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/star_demo.p1  ../src/star_demo.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/star_demo.d ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/p2p_demo.p1: ../src/p2p_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/p2p_demo.p1  ../src/p2p_demo.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/p2p_demo.d ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1: ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2064664840" 
	@${RM} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1  ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c 
	@-${MV} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.d ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_24j40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1: ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2064664840" 
	@${RM} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1  ../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_crc.c 
	@-${MV} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.d ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2064664840/drv_mrf_miwi_crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/842993699/miwi_nvm.p1: ../../../../../framework/miwi/src/miwi_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/842993699" 
	@${RM} ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/842993699/miwi_nvm.p1  ../../../../../framework/miwi/src/miwi_nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/842993699/miwi_nvm.d ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/842993699/miwi_nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/842993699/miwi_p2p.p1: ../../../../../framework/miwi/src/miwi_p2p.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/842993699" 
	@${RM} ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1.d 
	@${RM} ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/842993699/miwi_p2p.p1  ../../../../../framework/miwi/src/miwi_p2p.c 
	@-${MV} ${OBJECTDIR}/_ext/842993699/miwi_p2p.d ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/842993699/miwi_p2p.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/console.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/console.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/console.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/console.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/console.d ${OBJECTDIR}/_ext/1747362554/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/delay.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/delay.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/delay.d ${OBJECTDIR}/_ext/1747362554/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/eeprom.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/eeprom.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/eeprom.d ${OBJECTDIR}/_ext/1747362554/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/lcd.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/lcd.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/lcd.d ${OBJECTDIR}/_ext/1747362554/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/spi.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/spi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/spi.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/spi.d ${OBJECTDIR}/_ext/1747362554/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/symbol.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/symbol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/symbol.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/symbol.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/symbol.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/symbol.d ${OBJECTDIR}/_ext/1747362554/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1747362554/system.p1: ../src/system_config/8bitwdk_pic18f46j50_24j40/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1747362554" 
	@${RM} ${OBJECTDIR}/_ext/1747362554/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1747362554/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1747362554/system.p1  ../src/system_config/8bitwdk_pic18f46j50_24j40/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1747362554/system.d ${OBJECTDIR}/_ext/1747362554/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1747362554/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.p1: ../src/demo_ouput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/demo_ouput.p1  ../src/demo_ouput.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/demo_ouput.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/main.p1  ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/task.p1: ../src/task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/task.p1  ../src/task.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/task.d ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/star_demo.p1: ../src/star_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/star_demo.p1  ../src/star_demo.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/star_demo.d ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/p2p_demo.p1: ../src/p2p_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1360937237/p2p_demo.p1  ../src/p2p_demo.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/p2p_demo.d ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=realice  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -DEIGHT_BIT_WIRELESS_BOARD -P -N255 -I"../src/system_config/8bitwdk_pic18f46j50_24j40" -I"../src" -I"../../../../../framework/driver/mrf_miwi" -I"../../../../../framework/driver" -I"../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/miwi_p2p_star_FFD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/8bitwdk_pic18f46j50_24j40
	${RM} -r dist/8bitwdk_pic18f46j50_24j40

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
