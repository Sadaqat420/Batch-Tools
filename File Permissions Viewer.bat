@echo off
echo This batch file allows you to view the permissions of a file.
echo.
set /p filename=Enter the name of the file to view permissions (including extension): 
echo.
echo Permissions of file "%filename%":
echo.
attrib "%filename%"
echo.
pause
