@echo off
rem This batch file allows you to modify the creation, last access, and last modified dates of a file.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the file you want to modify.
rem 3. Enter the new creation date (in format MM/DD/YYYY HH:MM:SS).
rem 4. Enter the new last access date (in format MM/DD/YYYY HH:MM:SS).
rem 5. Enter the new last modified date (in format MM/DD/YYYY HH:MM:SS).
rem 6. The batch file will modify the dates of the specified file.
rem 7. Press any key to exit.

echo This batch file allows you to modify the creation, last access, and last modified dates of a file.
echo.
set /p file=Enter the path of the file to modify: 
set /p createdate=Enter the new creation date (MM/DD/YYYY HH:MM:SS): 
set /p accessdate=Enter the new last access date (MM/DD/YYYY HH:MM:SS): 
set /p modifieddate=Enter the new last modified date (MM/DD/YYYY HH:MM:SS): 
echo.
echo Modifying dates of file "%file%"...
powershell -command "& {(Get-Item '%file%').CreationTime = '%createdate%'; (Get-Item '%file%').LastAccessTime = '%accessdate%'; (Get-Item '%file%').LastWriteTime = '%modifieddate%'}"
echo.
echo Dates modified successfully!
pause
