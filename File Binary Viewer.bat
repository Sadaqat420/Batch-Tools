@echo off
echo This batch file allows you to view the binary content of a file.
echo.
set /p filename=Enter the name of the file to view binary content (including extension): 
echo.
echo Binary content of file "%filename%":
echo.
type "%filename%" | more
echo.
pause
