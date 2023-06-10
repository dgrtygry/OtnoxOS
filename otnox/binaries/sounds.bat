@echo off

REM Set the path to the sounds folder
set "sounds_path=sounds"

REM Check if the sounds folder exists
if not exist "%sounds_path%" (
    echo Sounds folder not found.
    exit /b
)

REM Play each sound file in the sounds folder
for %%f in ("%sounds_path%\*") do (
    echo Playing: %%~nxf
    start "" /b "%%f"
)

exit /b
