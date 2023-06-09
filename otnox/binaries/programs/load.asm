@echo off

rem This is LOAD.ASM

rem Prompt the user to enter the name of the batch file to load
set /p batchFile=Enter the name of the batch file to load (without .bat extension): 

rem Check if the specified batch file exists
if exist "%batchFile%.bat" (
    rem Load and execute the specified batch file
    call "%batchFile%.bat"
) else (
    echo The specified batch file does not exist.
)

rem End of LOAD.ASM
