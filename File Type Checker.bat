@echo off
echo This batch file allows you to check the type of a file.
echo.
set /p filename=Enter the name of the file to check type (including extension): 
echo.
assoc | findstr /i "%filename:*.=%"
pause
