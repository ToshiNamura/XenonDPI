@ECHO OFF
echo This script should be run with administrator privileges.
echo Right click - run as administrator.
echo Press any key if you're running it as administrator.
pause
sc stop "XenonDPI"
sc delete "XenonDPI"
sc stop "WinDivert"
sc delete "WinDivert"

pause