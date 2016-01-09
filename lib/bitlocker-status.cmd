:: ----------------------------------------------------------------------------
:: Title : Bitocker Status
:: Author : Ronan233
:: Date : 2016-01-09
:: Filename : bitlocker-status[adm].cmd
:: License : MIT
:: ----------------------------------------------------------------------------
:: Description : 
:: display the Bitlocker status for the drives connected to the current
:: computer.
:: Requirement :  Admin right  
:: ----------------------------------------------------------------------------
@ECHO OFF

:: source "MBAM client would fail with Event ID 4 and error code 0x8004100E in
:: the Event description" https://support.microsoft.com/en-us/kb/2756402
::
:: To resolve Error 0x08004100e, re-register the BitLocker WMI
:: (win32_encryptablevolume) class.

mofcomp.exe c:\windows\system32\wbem\win32_encryptablevolume.mof

:: check Bitlocker status
manage-bde -status

@ECHO ON
