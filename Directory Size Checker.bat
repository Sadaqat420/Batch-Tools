@echo off
rem This batch file checks the size of a directory and displays it in human-readable format.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to check.
rem 3. The batch file will display the size of the specified directory in human-readable format.
rem 4. Press any key to exit.

echo This batch file checks the size of a directory and displays it in human-readable format.
echo.
set /p directory=Enter the directory path to check: 
echo.
for /f "tokens=3" %%a in ('dir "%directory%" ^| findstr /i "bytes"') do set size=%%a
setlocal enabledelayedexpansion
set /a kb=!size! / 1024
set /a mb=!kb! / 1024
echo Size of directory "%directory%" is !mb! MB (!size! bytes).
endlocal
pause
