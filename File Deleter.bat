@echo off
echo This batch file allows you to delete a file.
echo.
set /p filename=Enter the name of the file to delete (including extension): 
del "%filename%"
echo.
echo File "%filename%" deleted successfully!
pause
