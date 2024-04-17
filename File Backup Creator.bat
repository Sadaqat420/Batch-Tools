@echo off
echo This batch file allows you to create a backup of a file.
echo.
set /p source=Enter the path of the file to backup: 
set /p destination=Enter the destination path for the backup: 
copy "%source%" "%destination%"
echo.
echo Backup of file "%source%" created successfully at "%destination%".
pause
