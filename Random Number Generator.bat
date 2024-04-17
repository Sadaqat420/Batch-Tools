@echo off
echo This batch file generates a random number between 10 and 20.
echo.
set /a num=%random% %% (20 - 10 + 1) + 10
echo Random number between 10 and 20: %num%
pause
