@echo off
echo This batch file allows you to change the attributes of a file.
echo.
set /p filename=Enter the name of the file to change attributes (including extension): 
echo.
echo Choose the attribute you want to set:
echo 1. Read-only
echo 2. Hidden
echo 3. System
set /p choice=Enter your choice (1/2/3): 
if %choice%==1 attrib +r "%filename%"
if %choice%==2 attrib +h "%filename%"
if %choice%==3 attrib +s "%filename%"
echo.
echo Attributes of file "%filename%" changed successfully!
pause
