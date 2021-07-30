@echo off
CALL "%~dp0\clientSide2\ClientSide.exe" "COMMANDLINE_439_VerifyCodeGrading_2D_16022_18004"
IF %ERRORLEVEL% EQU 2 GOTO Errors
IF %ERRORLEVEL% EQU 0 GOTO Success
IF %ERRORLEVEL% NEQ 0 GOTO Errors
:Errors
echo ReportLog = E:/WORK/IVS.Matrix.300/project/BatchScript/clientSide2/log.txt >>  %qm_AttachmentsFile%
exit 1

:Success
echo ReportLog = E:/WORK/IVS.Matrix.300/project/BatchScript/clientSide2/log.txt >>  %qm_AttachmentsFile%
exit 0