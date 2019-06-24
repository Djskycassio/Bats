@echo off
title Ferramenta de transferencia de perfil
cls
echo.
echo.
set /p nome=Digite Nome do usuario: 
echo.
echo.
echo.
set /p destino=Digite IP de Destino: 
echo.
echo de %nome%\ para %destino% %nome%\
pause
echo.

robocopy "\\localhost\c$\Users\%nome%"  "\%destino%\\c$\Users\%nome%" /mir

pause
