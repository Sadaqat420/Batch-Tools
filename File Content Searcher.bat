@echo off
echo This batch file allows you to search for specific content in a text file.
echo.
set /p filename=Enter the name of the text file to search (including extension): 
set /p search=Enter the text to search for: 
echo.
echo Searching for "%search%" in file "%filename%"...
findstr /i /c:"%search%" "%filename%"
echo.
pause
