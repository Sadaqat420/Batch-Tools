@echo off
echo This batch file allows you to compare the content of two text files.
echo.
set /p file1=Enter the name of the first text file (including extension): 
set /p file2=Enter the name of the second text file (including extension): 
echo.
fc "%file1%" "%file2%"
echo.
pause
