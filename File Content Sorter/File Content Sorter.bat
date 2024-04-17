@echo off
rem This batch file allows you to sort the content of a text file alphabetically.
rem
echo This batch file sorts the content of a text file alphabetically.
echo.
set /p filename=Enter the name of the text file to sort (including extension): 
echo.
echo Sorting content of file "%filename%" alphabetically...
powershell -command "& {Get-Content '%filename%' | Sort-Object | Set-Content '%filename%.sorted' -Encoding UTF8}"
echo.
echo Content sorted alphabetically and saved to "%filename%.sorted"!
pause
