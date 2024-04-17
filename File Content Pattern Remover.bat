@echo off
rem This batch file removes lines containing a specific pattern from a text file.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the text file you want to remove lines from.
rem 3. Enter the pattern to search for in the lines.
rem 4. The batch file will remove lines containing the specified pattern from the text file.
rem 5. Press any key to exit.

echo This batch file removes lines containing a specific pattern from a text file.
echo.
set /p file=Enter the path of the text file to remove lines from: 
set /p pattern=Enter the pattern to search for: 
echo.
echo Removing lines containing pattern "%pattern%" from file "%file%"...
findstr /v /c:"%pattern%" "%file%" > "%file%.tmp"
move /y "%file%.tmp" "%file%" > nul
echo.
echo Pattern removed successfully!
pause
