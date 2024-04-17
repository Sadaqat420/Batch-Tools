@echo off
rem This batch file allows you to extract specific content from a text file.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the name of the text file from which you want to extract content (including the extension).
rem 3. Enter the pattern (regular expression) to search for in the file.
rem 4. The batch file will extract the content matching the specified pattern and save it to a new file with ".extracted" appended to the original filename.
rem 5. Press any key to exit.

echo This batch file extracts specific content from a text file.
echo.
set /p filename=Enter the name of the text file to extract content from (including extension): 
set /p pattern=Enter the pattern to search for (regular expression): 
echo.
echo Extracting content matching pattern "%pattern%" from file "%filename%"...
findstr /r /c:"%pattern%" "%filename%" > "%filename%.extracted"
echo.
echo Content extracted successfully and saved to "%filename%.extracted"!
pause
