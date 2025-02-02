@echo off
:menu
cls
echo ===============================
echo      IPConfig Commands Menu
echo ===============================
echo 1) Display basic IP configuration
echo 2) Display detailed IP configuration
echo 3) Release the current IP address
echo 4) Renew the IP address
echo 5) Flush DNS cache
echo 6) Display DNS cache
echo 7) Register DNS
echo 8) Show all interfaces
echo 9) Show IPv6 statistics
echo 10) Display help for ipconfig
echo 11) Exit
echo ===============================
set /p choice="Enter your choice [1-11]: "

if "%choice%"=="1" goto basic
if "%choice%"=="2" goto detailed
if "%choice%"=="3" goto release
if "%choice%"=="4" goto renew
if "%choice%"=="5" goto flushdns
if "%choice%"=="6" goto displaydns
if "%choice%"=="7" goto registerdns
if "%choice%"=="8" goto interfaces
if "%choice%"=="9" goto ipv6stats
if "%choice%"=="10" goto help
if "%choice%"=="11" goto exit
echo Invalid choice. Please try again.
pause
goto menu

:basic
echo Running 'ipconfig' (Basic IP Configuration)...
ipconfig
goto ask

:detailed
echo Running 'ipconfig /all' (Detailed IP Configuration)...
ipconfig /all
goto ask

:release
echo Running 'ipconfig /release' (Release IP Address)...
ipconfig /release
goto ask

:renew
echo Running 'ipconfig /renew' (Renew IP Address)...
ipconfig /renew
goto ask

:flushdns
echo Running 'ipconfig /flushdns' (Flush DNS Cache)...
ipconfig /flushdns
goto ask

:displaydns
echo Running 'ipconfig /displaydns' (Display DNS Cache)...
ipconfig /displaydns
goto ask

:registerdns
echo Running 'ipconfig /registerdns' (Register DNS)...
ipconfig /registerdns
goto ask

:interfaces
echo Running 'ipconfig /allcompartments' (Show All Interfaces)...
ipconfig /allcompartments
goto ask

:ipv6stats
echo Running 'ipconfig /showclassid6' (Show IPv6 Statistics)...
ipconfig /showclassid6
goto ask

:help
echo Running 'ipconfig /?' (Display Help)...
ipconfig /?
goto ask

:exit
echo Exiting... Goodbye!
pause
exit /b 0

:ask
echo.
echo ===============================
echo 1) Go back to the main menu
echo 2) Exit
echo ===============================
set /p option="Choose an option [1-2]: "

if "%option%"=="1" goto menu
if "%option%"=="2" goto exit

echo Invalid choice. Please try again.
pause
goto ask
