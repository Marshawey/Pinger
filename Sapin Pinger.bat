@echo off
chcp 65001
cls
color 5
title Sapin Pinger
echo.
echo ███████╗ █████╗ ██████╗ ██╗███╗   ██╗
echo ██╔════╝██╔══██╗██╔══██╗██║████╗  ██║
echo ███████╗███████║██████╔╝██║██╔██╗ ██║
echo ╚════██║██╔══██║██╔═══╝ ██║██║╚██╗██║
echo ███████║██║  ██║██║     ██║██║ ╚████║
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═══╝
echo.
echo ---------------------------------------------------
echo -    Appuyez sur CTRL + C pour arrêtez de ping    -
echo ---------------------------------------------------
set /p IP=Entrez une IP=
color 5
:top
PING -n 1 %IP% | FIND "TTL="
title : :Sapin Pinging %IP%
IF ERRORLEVEL 1 (echo [erreur] %IP% [erreur])
set /a num- (%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top                           