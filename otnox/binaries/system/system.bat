@echo off
rem This is SYSTEM.BAT

:menu
cls
echo 1. About
echo 2. Exit
echo.

set /p choice=Enter your choice (1-2): 

if "%choice%"=="1" (
    echo Loading about information...
    call about.asm
    echo.
    pause
    goto menu
)

if "%choice%"=="2" (
    echo Exiting...
    call exit.bat
)

echo Invalid choice. Please try again.
pause
goto menu

rem End of SYSTEM.BAT
