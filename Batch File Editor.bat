@echo off
echo This batch file allows you to edit another batch file.
echo.
set /p filename=Enter the name of the batch file to edit (including extension): 
notepad "%filename%"
echo.
echo Batch file "%filename%" opened in Notepad for editing.
pause
