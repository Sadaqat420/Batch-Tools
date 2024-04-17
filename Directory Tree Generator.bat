@echo off
rem This batch file generates a tree structure of directories and files.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the directory you want to generate the tree for.
rem 3. The batch file will generate a tree structure of directories and files in the specified directory and save it to a file named "directory_tree.txt".
rem 4. Press any key to exit.

echo This batch file generates a tree structure of directories and files.
echo.
set /p directory=Enter the directory path to generate the tree for: 
echo.
echo Generating directory tree for "%directory%"...
tree "%directory%" > directory_tree.txt
echo.
echo Directory tree generated successfully and saved to "directory_tree.txt"!
pause
