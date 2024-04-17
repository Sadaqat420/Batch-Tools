@echo off
echo This batch file allows you to rename a file.
echo.
set /p oldname=Enter the current name of the file (including extension): 
set /p newname=Enter the new name of the file (including extension): 
ren "%oldname%" "%newname%"
echo.
echo File "%oldname%" renamed to "%newname%" successfully!
pause
