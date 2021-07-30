@echo off
CALL "%~dp0\clientSide\ClientSide.exe" "COMMANDLINE_497_RAMbuffer_PhaseMode"
IF %ERRORLEVEL% EQU 2 GOTO Errors
IF %ERRORLEVEL% EQU 0 GOTO Success
IF %ERRORLEVEL% NEQ 0 GOTO Errors
:Errors
set /p summaryLink=<%~dp0\summary.txt
echo %~n0_SummaryRepot=%summaryLink%  >>  %qm_AttachmentsFile%
set /p shareLink=<%~dp0\LinkShare.txt
echo %~n0_ResultDetail=%shareLink%  >>  %qm_AttachmentsFile%
del "%~dp0\LinkShare.txt"
del "%~dp0\summary.txt"
>%~dp0\mainOutput.txt echo 1
exit 1

:Success
set /p summaryLink=<%~dp0\summary.txt
echo %~n0_SummaryRepot=%summaryLink%  >>  %qm_AttachmentsFile%
set /p shareLink=<%~dp0\LinkShare.txt
echo %~n0_ResultDetail=%shareLink%  >>  %qm_AttachmentsFile%
del "%~dp0\LinkShare.txt"
del "%~dp0\summary.txt"
>%~dp0\mainOutput.txt echo 0
exit 0

:Warning
set /p summaryLink=<%~dp0\summary.txt
echo %~n0_SummaryRepot=%summaryLink%  >>  %qm_AttachmentsFile%
set /p shareLink=<%~dp0\LinkShare.txt
echo %~n0_ResultDetail=%shareLink%  >>  %qm_AttachmentsFile%
del "%~dp0\LinkShare.txt"
del "%~dp0\summary.txt"
echo Warning
>%~dp0\mainOutput.txt echo 0
exit 0
