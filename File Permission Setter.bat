@echo off
rem This batch file allows you to set permissions for a file or directory.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the file or directory you want to set permissions for.
rem 3. Enter the permissions to set (e.g., +r -h +s).
rem 4. The batch file will set the specified permissions for the file or directory.
rem 5. Press any key to exit.

echo This batch file allows you to set permissions for a file or directory.
echo.
set /p path=Enter the path of the file or directory to set permissions for: 
set /p permissions=Enter the permissions to set (e.g., +r -h +s): 
echo.
echo Setting permissions for "%path%"...
attrib %permissions% "%path%"
echo.
echo Permissions set successfully!
pause
