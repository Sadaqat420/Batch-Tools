@echo off
echo This batch file allows you to append content to a text file.
echo.
set /p filename=Enter the name of the text file to append content (including extension): 
set /p content=Enter the content to append: 
echo.
echo Appending content to file "%filename%"...
echo %content% >> "%filename%"
echo.
echo Content appended successfully!
pause
