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

rem Create a directory
mkdir new_directory

rem Change to the newly created directory
cd new_directory

rem Create a text file
echo This is a test file. > test.txt

rem Display the contents of the text file
type test.txt
echo.

rem Append additional text to the file
echo Appending more text... >> test.txt

rem Display the updated contents of the file
type test.txt
echo.

rem Pause the execution and wait for user input
pause

rem Delete the text file
del test.txt

rem Go back to the previous directory
cd ..

rem Remove the created directory
rmdir new_directory

rem Display a farewell message
echo.
echo Thank you for using BATCH1.BAT!
echo.

rem End of BATCH1.BAT
