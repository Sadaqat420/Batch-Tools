@echo off
rem This batch file checks the size of a file and displays it in human-readable format.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the name of the file you want to check (including the extension).
rem 3. The batch file will display the size of the specified file in human-readable format.
rem 4. Press any key to exit.

echo This batch file checks the size of a file and displays it in human-readable format.
echo.
set /p filename=Enter the name of the file to check (including extension): 
echo.
for %%A in ("%filename%") do (
    set size=%%~zA
)
setlocal enabledelayedexpansion
set /a kb=!size! / 1024
set /a mb=!kb! / 1024
echo File size of "%filename%" is !mb! MB (!size! bytes).
endlocal
pause
