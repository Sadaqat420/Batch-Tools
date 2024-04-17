@echo off
rem This batch file allows you to filter lines containing specific text in files (case insensitive).
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the text file you want to filter lines from.
rem 3. Enter the text to filter lines containing.
rem 4. The batch file will filter lines containing the specified text in the file.
rem 5. Press any key to exit.

echo This batch file allows you to filter lines containing specific text in files (case insensitive).
echo.
set /p file=Enter the path of the text file to filter lines from: 
set /p text=Enter the text to filter lines containing: 
echo.
echo Filtering lines containing "%text%" in file "%file%"...
findstr /i /c:"%text%" "%file%"
echo.
echo Filter completed!
pause
