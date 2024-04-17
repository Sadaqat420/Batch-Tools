@echo off
rem This batch file counts the number of files of each file type in a directory and its subdirectories.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to count files in.
rem 3. The batch file will count the number of files of each file type in the specified directory and its subdirectories.
rem 4. Press any key to exit.

echo This batch file counts the number of files of each file type in a directory and its subdirectories.
echo.
set /p directory=Enter the directory path to count files in: 
echo.
echo Counting files of each file type in directory "%directory%"...
for /r "%directory%" %%a in (*) do (
    for /f "tokens=2 delims=." %%b in ("%%~xa") do (
        set "filetype=%%b"
        setlocal enabledelayedexpansion
        set "count=!filecount[!filetype!]!"
        set /a "count+=1"
        endlocal
        set "filecount[!filetype!]=!count!"
    )
)
for /f "tokens=2,* delims=[]=" %%c in ('set filecount[') do (
    echo File type: %%c, Count: %%d
)
echo.
echo Count completed!
pause
