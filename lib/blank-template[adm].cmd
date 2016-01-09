:: ----------------------------------------------------------------------------
:: Title : 
:: Author: Ronan233
:: Date: yyyy-mm-dd
:: Filename : 
:: License : MIT
:: ----------------------------------------------------------------------------
:: Description : 
::
:: ----------------------------------------------------------------------------
@ECHO OFF

:: If script is running in admin mode then go to label RUN_AS_ADMIN 
>nul 2>&1 net session && (goto RUN_AS_ADMIN)

:: Otherwise go to end of file
ECHO.
ECHO.-------------------------------------------
ECHO.This script is not running in admin mode.
ECHO.Please,
ECHO.1. Right-Click on the main script:
ECHO.     %0
ECHO.2. Then click "Run as Administrator".
ECHO.-------------------------------------------
ECHO.

GOTO EOF

:RUN_AS_ADMIN

:: >> WRITE CODE HERE <<

:EOF
PAUSE
@ECHO ON
