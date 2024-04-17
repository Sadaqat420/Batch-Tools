@echo off
rem This batch file allows you to change the extension of files in a directory.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory containing the files.
rem 3. Enter the current extension of the files you want to change.
rem 4. Enter the new extension you want to change the files to.
rem 5. The batch file will change the extension of files with the specified current extension to the new extension.
rem 6. Press any key to exit.

echo This batch file allows you to change the extension of files in a directory.
echo.
set /p directory=Enter the directory path containing the files: 
set /p currentext=Enter the current extension of the files: 
set /p newext=Enter the new extension to change the files to: 
echo.
echo Changing extension from "%currentext%" to "%newext%" for files in directory "%directory%"...
ren "%directory%\*.%currentext%" *.%newext%
echo.
echo Extension changed successfully!
pause
