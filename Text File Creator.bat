@echo off
echo This batch file allows you to create a new text file and add content to it.
echo.
set /p filename=Enter the name of the new text file (including extension): 
set /p content=Enter the content for the file: 
echo %content% > %filename%
echo.
echo File "%filename%" created successfully!
pause
