@echo off
rem This batch file allows you to count occurrences of specific text in files (case insensitive).
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory containing the files to search in.
rem 3. Enter the text to count occurrences of.
rem 4. The batch file will count the occurrences of the specified text in all files within the directory.
rem 5. Press any key to exit.

echo This batch file allows you to count occurrences of specific text in files (case insensitive).
echo.
set /p directory=Enter the directory path to search in: 
set /p text=Enter the text to count occurrences of: 
echo.
echo Counting occurrences of "%text%" in files in directory "%directory%"...
findstr /s /i /c:"%text%" "%directory%\*.*" | find /c /v ""
echo.
echo Count completed!
pause
