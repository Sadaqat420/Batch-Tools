@echo off
rem This batch file allows you to split a text file into multiple files based on a delimiter.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the name of the text file you want to split (including the extension).
rem 3. Enter the delimiter by which you want to split the file (e.g., newline, comma, tab).
rem 4. The batch file will split the file into multiple parts based on the delimiter and save each part to a separate file with ".partX.txt" appended to the original filename, where X is the part number.
rem 5. Press any key to exit.

echo This batch file splits a text file into multiple files based on a delimiter.
echo.
set /p filename=Enter the name of the text file to split (including extension): 
set /p delimiter=Enter the delimiter to split the file by: 
echo.
echo Splitting file "%filename%" by delimiter "%delimiter%"...
powershell -command "& {Get-Content '%filename%' -Delimiter '%delimiter%' | ForEach-Object {Set-Content ('%filename%' + '.part' + $i + '.txt') -Value $_; $i++}}"
echo.
echo File "%filename%" split successfully!
pause
