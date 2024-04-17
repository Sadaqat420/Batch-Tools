@echo off
echo This batch file allows you to compress files into a ZIP archive.
echo.
set /p files=Enter the names of the files to compress (separated by spaces): 
set /p zipname=Enter the name of the ZIP archive to create (including extension): 
echo.
echo Compressing files into "%zipname%"...
powershell Compress-Archive -Path "%files%" -DestinationPath "%zipname%"
echo.
echo Files compressed successfully into "%zipname%".
pause
