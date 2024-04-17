@echo off
echo This batch file allows you to search for files in a directory.
echo.
set /p directory=Enter the directory path to search in: 
set /p pattern=Enter the file pattern to search for (e.g., *.txt): 
echo.
echo Searching for files matching "%pattern%" in directory "%directory%"...
dir "%directory%" /b /s /a-d "%pattern%"
echo.
echo Search completed!
pause
