@echo off
echo This batch file allows you to view the creation and modification timestamps of a file.
echo.
set /p filename=Enter the name of the file to view timestamps (including extension): 
echo.
echo Timestamps of file "%filename%":
echo.
for %%A in ("%filename%") do (
    echo Creation Time: %%~tA
    echo Last Modified Time: %%~tA
)
echo.
pause
