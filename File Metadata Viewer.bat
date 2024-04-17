@echo off
echo This batch file allows you to view metadata of a file.
echo.
set /p filename=Enter the name of the file to view metadata (including extension): 
echo.
echo Metadata of file "%filename%":
echo.
for %%A in ("%filename%") do (
    echo Name: %%~nxA
    echo Path: %%~dpA
    echo Size: %%~zA bytes
    echo Attributes: %%~aA
    echo Date Created: %%~tA
)
echo.
pause
