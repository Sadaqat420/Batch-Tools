@echo off
rem This batch file allows you to decode the content of a Base64 encoded text file.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the name of the Base64 encoded text file you want to decode (including the extension).
rem 3. The batch file will decode the content of the specified file and save it to a new file with ".decoded" appended to the original filename.
rem 4. Press any key to exit.

echo This batch file decodes the content of a Base64 encoded text file.
echo.
set /p filename=Enter the name of the text file to decode (including extension): 
echo.
echo Decoding content of file "%filename%"...
certutil -decode "%filename%" "%filename%.decoded"
echo.
echo Content decoded successfully and saved to "%filename%.decoded"!
pause
