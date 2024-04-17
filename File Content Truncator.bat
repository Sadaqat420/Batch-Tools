@echo off
rem This batch file truncates the content of a text file to a specified number of lines.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the text file you want to truncate.
rem 3. Enter the number of lines to keep in the truncated file.
rem 4. The batch file will truncate the content of the specified text file to the specified number of lines.
rem 5. Press any key to exit.

echo This batch file truncates the content of a text file to a specified number of lines.
echo.
set /p file=Enter the path of the text file to truncate: 
set /p lines=Enter the number of lines to keep: 
echo.
echo Truncating content of file "%file%" to %lines% lines...
more +0 "%file%" > "%file%.truncated"
ren "%file%.truncated" "%file%"
echo.
echo Content truncated successfully!
pause
