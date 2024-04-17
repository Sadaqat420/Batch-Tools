@echo off
rem This batch file allows you to rename files based on their content.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory containing the files you want to rename.
rem 3. Enter the pattern to search for in the file content.
rem 4. Enter the new name pattern for the files.
rem 5. The batch file will rename files based on their content matching the pattern.
rem 6. Press any key to exit.

echo This batch file allows you to rename files based on their content.
echo.
set /p directory=Enter the directory path containing the files to rename: 
set /p pattern=Enter the pattern to search for in file content: 
set /p newname=Enter the new name pattern for the files: 
echo.
echo Renaming files in directory "%directory%" based on content pattern "%pattern"...
for /r "%directory%" %%F in (*) do (
    findstr /m /i /c:"%pattern%" "%%F" > nul && ren "%%F" "%newname%"
)
echo.
echo Files renamed successfully!
pause
