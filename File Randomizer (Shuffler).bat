@echo off
echo This batch file allows you to randomly shuffle the lines of a text file.
echo.
set /p filename=Enter the name of the text file to shuffle (including extension): 
set temp=%random%.tmp
type "%filename%" | sort /R > %temp%
move /Y %temp% "%filename%" > nul
echo.
echo Lines in file "%filename%" shuffled randomly!
pause
