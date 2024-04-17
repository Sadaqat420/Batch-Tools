@echo off
echo This batch file allows you to join multiple parts of a file into one.
echo.
set /p filename=Enter the name of the joined file (including extension): 
echo.
set /p prefix=Enter the common prefix of the parts (e.g., file.part): 
echo.
copy /b "%prefix%*" "%filename%"
echo.
echo File "%filename%" joined successfully!
pause
