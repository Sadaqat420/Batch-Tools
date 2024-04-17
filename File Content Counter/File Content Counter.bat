@echo off
rem This batch file allows you to count occurrences of specific text in a text file.
rem
echo This batch file counts occurrences of specific text in a text file.
echo.
set /p filename=Enter the name of the text file to count occurrences from (including extension): 
set /p search=Enter the text to count: 
echo.
echo Counting occurrences of "%search%" in file "%filename%"...
powershell -command "& {(Get-Content '%filename%') -join \"`n\" | Select-String -Pattern '%search%' -AllMatches | Measure-Object | Select-Object -ExpandProperty Count}" > "%filename%.count"
echo.
echo Occurrences of "%search%" counted successfully and saved to "%filename%.count"!
pause
