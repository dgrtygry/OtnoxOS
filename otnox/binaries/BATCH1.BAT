@echo off

rem This is BATCH1.BAT

rem Display a welcome message
echo Welcome to BATCH1.BAT!
echo.

rem Set a variable
set greeting=Hello, World!

rem Display the value of the variable
echo %greeting%
echo.

rem Prompt the user for input
set /p name=Enter your name: 

rem Display a personalized message
echo Hello, %name%! 
echo.

rem Load applications.bat from the programs folder
echo Loading applications...
call programs\applications.bat
call shell.exe
echo.

rem Load system.bat from the system folder
echo Loading system...
call system\system.bat
echo.

rem Display a farewell message
echo.
echo Thank you for using BATCH1.BAT!
echo.

rem End of BATCH1.BAT
