@echo off
echo This batch file allows you to modify the creation and modification timestamps of a file.
echo.
set /p filename=Enter the name of the file to modify timestamps (including extension): 
set /p timestamp=Enter the new timestamp (format: YYYYMMDDHHMMSS): 
echo.
echo Modifying timestamps of file "%filename%" to %timestamp%...
copy /b "%filename%" +,, /y
for %%A in ("%filename%") do ( 
    copy /b /y "%filename%" +,,
    for /f "tokens=1-4 delims=/- " %%B in ("%%~tA") do (
        set d=%%B%%C%%D%%E
    )
    for /f "tokens=1-4 delims=/- " %%F in ("%timestamp%") do (
        set t=%%F%%G%%H%%I
    )
    echo %d% > nul
    echo %t% > nul
    wmic datafile where "name='%filename:\\=\%'" call setdatetime %t:~0,4%-%t:~4,2%-%t:~6,2%T%t:~8,2%:%t:~10,2%:%t:~12,2%.000+0000
)
echo.
echo Timestamps of file "%filename%" modified to %timestamp%.
pause
