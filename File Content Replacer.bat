@echo off
rem This batch file allows you to replace specific content in files.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory containing the files you want to modify.
rem 3. Enter the old content to replace.
rem 4. Enter the new content to replace with.
rem 5. The batch file will replace the old content with the new content in all files.
rem 6. Press any key to exit.

echo This batch file allows you to replace specific content in files.
echo.
set /p directory=Enter the directory path containing the files to modify: 
set /p oldcontent=Enter the old content to replace: 
set /p newcontent=Enter the new content to replace with: 
echo.
echo Replacing "%oldcontent%" with "%newcontent%" in files in directory "%directory%"...
for /r "%directory%" %%F in (*) do (
    (
        for /f "delims=" %%L in ('type "%%F" ^& echo/') do (
            echo %%L | findstr /r /c:"%oldcontent%" > nul && (
                set "line=%%L"
                setlocal enabledelayedexpansion
                echo(!line:%oldcontent%=%newcontent%!
                endlocal
            ) || echo %%L
        )
    ) > "%%F.tmp"
    move /y "%%F.tmp" "%%F" > nul
)
echo.
echo Content replaced successfully!
pause
