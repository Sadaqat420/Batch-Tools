@echo off
rem This batch file allows you to match lines containing specific text in files (case insensitive).
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory containing the files to search in.
rem 3. Enter the text to match in the lines.
rem 4. The batch file will find and display the lines containing the specified text in the files.
rem 5. Press any key to exit.

echo This batch file allows you to match lines containing specific text in files (case insensitive).
echo.
set /p directory=Enter the directory path to search in: 
set /p text=Enter the text to match: 
echo.
echo Matching lines containing "%text%" in files in directory "%directory%"...
findstr /s /i /c:"%text%" "%directory%\*.*"
echo.
echo Match completed!
pause
