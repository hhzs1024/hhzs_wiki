@ECHO OFF
REM
REM Expected parameters passed to this script:
REM %1 S/N of USB Flasher
REM %2 Path to project file
REM %3 Path to data file
REM
REM Open a project with a data file, start programming and exit afterwards
REM
start /wait "J-Flash" "JFlash.exe" -usb%1 -openprj%2 -open%3 -auto -exit
IF ERRORLEVEL 1 goto ERROR
goto END
:ERROR
ECHO %ERRORLEVEL%
ECHO J-Flash: Error! SN: %1
pause
exit
:END
ECHO J-Flash: Succeed!
exit