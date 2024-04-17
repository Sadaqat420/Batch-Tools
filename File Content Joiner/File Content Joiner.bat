@echo off
rem This batch file allows you to join multiple text files into one.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the name of the output file you want to create (including the extension).
rem 3. Enter the names of the text files you want to join, separated by spaces.
rem 4. The batch file will join the specified text files into one and save the result to the output file.
rem 5. Press any key to exit.

echo This batch file joins multiple text files into one.
echo.
set /p outputfile=Enter the name of the output file (including extension): 
set /p files=Enter the names of the text files to join (separated by spaces): 
echo.
echo Joining files %files% into "%outputfile%"...
copy /b %files% "%outputfile%"
echo.
echo Files joined successfully!
pause
