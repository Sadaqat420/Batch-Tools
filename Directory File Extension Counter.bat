@echo off
rem This batch file counts the number of files with a specific extension in a directory and its subdirectories.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to count files in.
rem 3. Enter the extension of the files you want to count.
rem 4. The batch file will count the number of files with the specified extension in the specified directory and its subdirectories.
rem 5. Press any key to exit.

echo This batch file counts the number of files with a specific extension in a directory and its subdirectories.
echo.
set /p directory=Enter the directory path to count files in: 
set /p ext=Enter the extension of the files to count (e.g., txt, pdf): 
echo.
echo Counting files with extension "%ext%" in directory "%directory%"...
dir /b /s "%directory%\*.%ext%" | find /c /v ""
echo.
echo Count completed!
pause
