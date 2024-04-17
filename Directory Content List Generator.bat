@echo off
rem This batch file generates a list of files and directories in a specified directory.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to generate the list for.
rem 3. The batch file will generate a list of files and directories in the specified directory and save it to a file named "directory_contents.txt".
rem 4. Press any key to exit.

echo This batch file generates a list of files and directories in a specified directory.
echo.
set /p directory=Enter the directory path to generate the list for: 
echo.
echo Generating directory content list for "%directory%"...
dir "%directory%" /b /s > directory_contents.txt
echo.
echo Directory content list generated successfully and saved to "directory_contents.txt"!
pause
