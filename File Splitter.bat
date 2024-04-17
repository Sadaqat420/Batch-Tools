@echo off
echo This batch file allows you to split a large file into smaller parts.
echo.
set /p filename=Enter the name of the file to split (including extension): 
set /p partsize=Enter the size of each part (in bytes): 
set /a partnum=1
:loop
set /a start=(partnum-1)*partsize+1
set /a end=partnum*partsize
if %end% lss %filesize% (
    echo Splitting "%filename%" into part %partnum%...
    powershell -command "& {get-content '%filename%' -ReadCount 0 -TotalCount %partsize% -encoding byte | set-content '%filename%.part%partnum%' -encoding byte}"
    echo Part %partnum% created successfully!
    set /a partnum+=1
    goto loop
) else (
    echo Splitting "%filename%" into part %partnum%...
    powershell -command "& {get-content '%filename%' -ReadCount 0 -TotalCount %filesize% -encoding byte | set-content '%filename%.part%partnum%' -encoding byte}"
    echo Part %partnum% created successfully!
)
echo.
echo File "%filename%" split into parts successfully!
pause
