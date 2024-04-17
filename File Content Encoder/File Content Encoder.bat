@echo off
rem This batch file allows you to encode the content of a text file using Base64 encoding.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the name of the text file you want to encode (including the extension).
rem 3. The batch file will encode the content of the specified file using Base64 encoding and save it to a new file with ".b64" appended to the original filename.
rem 4. Press any key to exit.

echo This batch file encodes the content of a text file using Base64 encoding.
echo.
set /p filename=Enter the name of the text file to encode (including extension): 
echo.
echo Encoding content of file "%filename%"...
certutil -encode "%filename%" "%filename%.b64"
echo.
echo Content encoded successfully and saved to "%filename%.b64"!
pause
