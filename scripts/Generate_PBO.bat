@echo off
IF "%1"=="" GOTO no_args
echo Generating PBO for mission '%1'
SET MISSION_ISLAND=%1
goto done
:no_args
echo No island specified, assuming Altis.
SET MISSION_ISLAND=Altis
:done
@echo on
set BASE_FILE_NAME=Deal_Or_No_Deal
..\lib\PBOManager_v_1_4_beta\PBOConsole.exe -pack ..\mission ..\bin\%BASE_FILE_NAME%.%MISSION_ISLAND%.pbo
if exist ..\bin\%BASE_FILE_NAME%.%MISSION_ISLAND%.pbo.bak del ..\bin\%BASE_FILE_NAME%.%MISSION_ISLAND%.pbo.bak
@echo off
echo Done generating PBO for '%MISSION_ISLAND%'
