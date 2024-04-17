@echo off
echo This batch file allows you to copy a file from one location to another.
echo.
set /p source=Enter the full path of the source file: 
set /p destination=Enter the full path of the destination folder: 
copy "%source%" "%destination%"
echo.
echo File copied successfully from "%source%" to "%destination%".
pause
