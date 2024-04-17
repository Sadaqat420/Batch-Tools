@echo off
echo This batch file allows you to decompress a ZIP archive.
echo.
set /p zipname=Enter the name of the ZIP archive to decompress (including extension): 
set /p destination=Enter the destination folder for decompression: 
echo.
echo Decompressing "%zipname%" into "%destination%"...
powershell Expand-Archive -Path "%zipname%" -DestinationPath "%destination%"
echo.
echo ZIP archive "%zipname%" decompressed successfully into "%destination%".
pause
