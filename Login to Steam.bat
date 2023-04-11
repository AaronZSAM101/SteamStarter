@echo off
rem Kill Steam process
taskkill /f /im steam.exe
taskkill /f /im SteamService.exe
rem Show login area
echo Please entry the login area(1.China; 2.Turkey):
rem Determine the login area
set /p area=
rem Modify the registry
if /i %area% == 1 (REG ADD HKEY_CURRENT_USER\SOFTWARE\Valve\Steam /v AutoLoginUser /t REG_SZ /d YourUserName /f)
if /i %area% == 2 (REG ADD HKEY_CURRENT_USER\SOFTWARE\Valve\Steam /v AutoLoginUser /t REG_SZ /d YourUserName /f)
rem Start Steam
start "Your 'Steam.exe' Path"