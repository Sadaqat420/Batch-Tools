@echo off
rem This batch file allows you to reverse the content of a text file.
rem
echo This batch file reverses the content of a text file.
echo.
set /p filename=Enter the name of the text file to reverse (including extension): 
echo.
echo Reversing content of file "%filename%"...
powershell -command "& {Get-Content '%filename%' | ForEach-Object { [array]::Reverse($_.ToCharArray()); -join $_ } | Set-Content '%filename%.reversed' -Encoding UTF8}"
echo.
echo Content reversed successfully and saved to "%filename%.reversed"!
pause
