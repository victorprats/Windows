echo off
color e

:MENU
cls
echo.
echo  ....................................................
echo      PRESS 1-0 to select your task, or 0 to EXIT
echo  ....................................................
echo.
echo      0 - command prompt (EXIT)
echo      1 - ipconfig /all
echo      2 - ping (192.168.1.1), (www.google.com)
echo      3 - nslookup google.com
echo      4 - execute all network tests
echo     ----
echo      5 - Windows 10 license
echo      6 - MS Office license  
echo      7 - System info 
echo      8 - Windows version
echo      9 - Task Scheduler
echo     ---- 
echo     10 - Show my external IP
echo     11 - Check Wi-Fi signal strength
echo.

SET /P M=Type 1 to 0 then press ENTER: 
if %M%==1 goto IPCONFIG_ALL
if %M%==2 goto PING
if %M%==3 goto NSLOOKUP
if %M%==4 goto ALL_TESTS
if %M%==5 goto W10_license
if %M%==6 goto Office2016_license
if %M%==7 goto System_info
if %M%==8 goto Windows10_version
if %M%==9 goto Task_Scheduler
if %M%==10 goto Show_my_external_ip
if %M%==11 goto Check_Wi-Fi_signal
if %M%==0 goto EOF

:IPCONFIG_ALL
ipconfig /all
pause
goto MENU

:PING
ping 192.168.1.1
ping www.google.com
pause
goto MENU

:NSLOOKUP
nslookup google.com
pause
goto MENU

:ALL_TESTS
echo --------------------------------
echo          ipconfig /all 
echo --------------------------------
ipconfig /all
echo --------------------------------
echo       ping www.google.com 
echo --------------------------------
ping www.google.com
echo --------------------------------
echo       nslookup google.com
echo --------------------------------
nslookup google.com
pause
goto MENU

:W10_license
slmgr.vbs -xpr
pause
goto MENU

:Office2016_license
cd C:\Program Files\Microsoft Office\Office16
cscript ospp.vbs /dstatus
pause
cd\
goto MENU

:System_info
systeminfo
pause
goto MENU

:Windows10_version
winver
pause
goto MENU

:Task_Scheduler
taskschd.msc
pause
goto MENU

:Show_my_external_ip
nslookup myip.opendns.com. resolver1.opendns.com
pause
goto MENU

:Check_Wi-Fi_signal
netsh wlan show interfaces
pause
goto MENU

:EOF
cmd /k


