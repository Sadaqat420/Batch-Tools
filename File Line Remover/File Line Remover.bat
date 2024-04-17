@echo off
rem This batch file allows you to remove specific lines from a text file.
rem
echo This batch file removes specific lines from a text file.
echo.
set /p filename=Enter the name of the text file to remove lines from (including extension): 
set /p linenum=Enter the line number(s) to remove (comma-separated): 
echo.
echo Removing line(s) %linenum% from file "%filename%"...
powershell -command "& {(Get-Content '%filename%') | ForEach-Object {$_ -replace '^(.*\n){%linenum%}\n?', ''} | Set-Content '%filename%.removed' -Encoding UTF8}"
echo.
echo Line(s) %linenum% removed successfully and saved to "%filename%.removed"!
pause
