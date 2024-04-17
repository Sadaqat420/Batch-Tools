@echo off
echo This batch file allows you to create a new directory.
echo.
set /p dirname=Enter the name of the new directory: 
mkdir "%dirname%"
echo.
echo Directory "%dirname%" created successfully!
pause
