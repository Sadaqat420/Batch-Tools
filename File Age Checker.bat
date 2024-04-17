@echo off
rem This batch file checks the age of a file and displays it in days.
rem Instructions:
rem 1. Run the batch file.
rem 2. Enter the path of the file you want to check.
rem 3. The batch file will display the age of the file in days.
rem 4. Press any key to exit.

echo This batch file checks the age of a file and displays it in days.
echo.
set /p filepath=Enter the path of the file to check: 
echo.
for /f "tokens=1-3 delims=/ " %%a in ('dir /tc "%filepath%" ^| findstr /i "%filepath%"') do (
    set filedate=%%a
)
for /f "tokens=1-3 delims=/ " %%x in ('echo %date%') do (
    set currdate=%%x
)
set /a days=(%currdate:~6%-%filedate:~6%)*365+(1%currdate:~3,2%-%1filedate:~3,2%)*30+(1%currdate:~0,2%-%1filedate:~0,2%)
echo Age of "%filepath%": %days% days
pause
