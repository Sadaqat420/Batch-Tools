@echo off
rem This batch file compares the sizes of two files and displays the result.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the first file.
rem 3. Enter the path of the second file.
rem 4. The batch file will compare the sizes of the two files and display the result.
rem 5. Press any key to exit.

echo This batch file compares the sizes of two files and displays the result.
echo.
set /p file1=Enter the path of the first file: 
set /p file2=Enter the path of the second file: 
echo.
for %%A in ("%file1%") do set size1=%%~zA
for %%B in ("%file2%") do set size2=%%~zB
echo Size of "%file1%": %size1% bytes
echo Size of "%file2%": %size2% bytes
echo.
if %size1% gtr %size2% (
    echo "%file1%" is larger than "%file2%".
) else if %size1% lss %size2% (
    echo "%file2%" is larger than "%file1%".
) else (
    echo The sizes of "%file1%" and "%file2%" are equal.
)
pause
