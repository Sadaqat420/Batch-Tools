@echo off
rem This batch file counts the number of files in a directory and its subdirectories.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to count files in.
rem 3. The batch file will count the number of files in the specified directory and its subdirectories.
rem 4. Press any key to exit.

echo This batch file counts the number of files in a directory and its subdirectories.
echo.
set /p directory=Enter the directory path to count files in: 
echo.
echo Counting files in directory "%directory%"...
dir /b /s /a-d "%directory%" | find /c /v ""
echo.
echo Count completed!
pause
