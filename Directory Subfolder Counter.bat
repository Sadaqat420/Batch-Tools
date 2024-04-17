@echo off
rem This batch file counts the number of subfolders in a directory.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to count subfolders in.
rem 3. The batch file will count the number of subfolders in the specified directory.
rem 4. Press any key to exit.

echo This batch file counts the number of subfolders in a directory.
echo.
set /p directory=Enter the directory path to count subfolders in: 
echo.
echo Counting subfolders in directory "%directory%"...
dir /a:d /b "%directory%" | find /c /v ""
echo.
echo Count completed!
pause
