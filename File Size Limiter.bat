@echo off
rem This batch file checks the size of a file and truncates it if it exceeds a specified size.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the file you want to check and possibly truncate.
rem 3. Enter the maximum allowed size for the file in bytes.
rem 4. The batch file will check the size of the specified file and truncate it if it exceeds the specified size.
rem 5. Press any key to exit.

echo This batch file checks the size of a file and truncates it if it exceeds a specified size.
echo.
set /p file=Enter the path of the file to check and possibly truncate: 
set /p maxsize=Enter the maximum allowed size for the file (in bytes): 
echo.
for %%A in ("%file%") do set size=%%~zA
if %size% gtr %maxsize% (
    echo File size exceeds maximum allowed size. Truncating...
    fsutil file seteof "%file%" %maxsize%
    echo File truncated successfully!
) else (
    echo File size is within the allowed limit.
)
pause
