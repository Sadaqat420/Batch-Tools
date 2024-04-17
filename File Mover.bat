@echo off
echo This batch file allows you to move a file to another location.
echo.
set /p filename=Enter the name of the file to move (including extension): 
set /p destination=Enter the destination folder path: 
move "%filename%" "%destination%"
echo.
echo File "%filename%" moved to "%destination%" successfully!
pause
