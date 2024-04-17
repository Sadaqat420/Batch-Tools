@echo off
rem This batch file counts the number of lines in a text file.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the text file you want to count lines in.
rem 3. The batch file will count the number of lines in the specified text file.
rem 4. Press any key to exit.

echo This batch file counts the number of lines in a text file.
echo.
set /p file=Enter the path of the text file to count lines in: 
echo.
echo Counting lines in file "%file%"...
find /c /v "" "%file%"
echo.
echo Count completed!
pause
