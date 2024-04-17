@echo off
rem This batch file checks the permissions of files and directories in a specified directory.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to check permissions for.
rem 3. The batch file will display the permissions of files and directories in the specified directory.
rem 4. Press any key to exit.

echo This batch file checks the permissions of files and directories in a specified directory.
echo.
set /p directory=Enter the directory path to check permissions for: 
echo.
echo Checking permissions for files and directories in directory "%directory%"...
icacls "%directory%"
echo.
echo Permission check completed!
pause
