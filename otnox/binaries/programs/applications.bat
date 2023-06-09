@echo off

rem This is applications.bat

rem Clear the screen
cls

rem Display a header
echo Applications
echo ------------
echo.

rem Iterate through all batch files in the current directory
for %%F in (*.bat) do (
    echo [%%F]
)

echo.
set /p choice=Enter the name of the batch file to load (without extension): 

rem Check if the chosen batch file exists
if exist "%choice%.bat" (
    rem Call the load.asm program to load the selected batch file
    load.asm %choice%
) else (
    echo Batch file "%choice%.bat" not found.
)

rem End of applications.bat
