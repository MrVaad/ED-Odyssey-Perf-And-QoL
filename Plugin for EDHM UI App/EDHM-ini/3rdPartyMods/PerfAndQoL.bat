@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
MODE CON: cols=80 lines=30
COLOR 0a
REM -------------------------------------------------------------------
REM **** ALL YOU NEED TO CHANGE IS THE 'MOD_Name' VARIABLE ***
REM 'MOD_Name' must be the exact File Name (no extension) of your INI file.
REM All Mod files share the name, changing only the File's Extension.
REM -------------------------------------------------------------------
SET MOD_Name=PerfAndQoL

TITLE EDHM %MOD_Name% Mod Uninstaller
ECHO ===================================================================
ECHO ********** EDHM %MOD_Name% Mod Uninstaller ***********************
ECHO ** This will un-install all files added by the '%MOD_Name% Mod' **
ECHO -------------------------------------------------------------------
IF "%~1" == "-silent" GOTO :uninstall
:choice
set /P c=Would you like to Proceed?:[Y/N]
if /I "%c%" EQU "Y" goto :uninstall
if /I "%c%" EQU "N" goto :thehell
goto :choice
REM -------------------------------------------------------------------
:uninstall
ECHO Removing files..
DEL %MOD_Name%.ini
DEL %MOD_Name%.json
DEL %MOD_Name%.png
REM -----IF YOUR MOD ADDS SHADERS, HERE THEY CAN BE REMOVED------------
REM -------------------------------------------------------------------
ECHO Uninstall Complete.
IF NOT "%~1" == "-silent" PAUSE
REM Finally the BAT Self-Destroys thus leaving no traces behind:
CD %~dp0
GOTO 2>nul & DEL "%~f0" & cmd /c exit /b 10
:thehell
ECHO -------------------------------------------------------------------
EXIT %ERRORLEVEL%
