@echo off
rem This batch file allows you to find files containing specific content within a directory.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to search in.
rem 3. Enter the content you want to search for within the files.
rem 4. The batch file will search for files containing the specified content within the directory and its subdirectories.
rem 5. Press any key to exit.

echo This batch file allows you to find files containing specific content within a directory.
echo.
set /p directory=Enter the directory path to search in: 
set /p content=Enter the content to search for: 
echo.
echo Searching for files containing "%content%" in directory "%directory%"...
findstr /s /m /i /c:"%content%" "%directory%\*.*"
echo.
echo Search completed!
pause
