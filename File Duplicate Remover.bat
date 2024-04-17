@echo off
rem This batch file removes duplicate files within a directory and its subdirectories.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to remove duplicates from.
rem 3. The batch file will remove duplicate files within the specified directory and its subdirectories.
rem 4. Press any key to exit.

echo This batch file removes duplicate files within a directory and its subdirectories.
echo.
set /p directory=Enter the directory path to remove duplicates from: 
echo.
echo Removing duplicate files in directory "%directory%"...
powershell -command "& {Get-ChildItem -Path '%directory%' -Recurse | Get-FileHash | Group-Object -Property Hash | Where-Object { $_.Count -gt 1 } | ForEach-Object { $_.Group | Select-Object -Skip 1 | Remove-Item -Force }}"
echo.
echo Duplicate files removed successfully!
pause
