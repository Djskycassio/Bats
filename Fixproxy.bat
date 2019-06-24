@echo off
:inicio

color 03
mode 31,30

cls
echo selecione a operacao para atuar
echo.
echo.
echo [1] fix proxy NET
echo -------------------------------
echo [2] fix proxy NEO ENERGIA
echo -------------------------------
echo [3] fix proxy CLARO
echo -------------------------------
echo [4] fix proxy TIM
echo -------------------------------
echo [5] fix proxy CIELO
echo -------------------------------
echo [6] fix proxy FIRST DATA
echo -------------------------------
echo [X] exit
echo -------------------------------

set /p sel=Operacoes: 

if %sel% ==1 goto sel1
if %sel% ==2 goto sel2
if %sel% ==3 goto sel3
if %sel% ==4 goto sel4
if %sel% ==5 goto sel5
if %sel% ==6 goto sel6
if %sel% ==x goto selx
if %sel% geq 7 goto sele


:sel1
call \\10.220.9.41\c$\ftp\Regs\proxy_net_JBT_IE11.reg
goto inicio

:sel2
call \\10.220.9.41\c$\ftp\Regs\proxy_neoenergia.reg
goto inicio

:sel3
call "\\10.220.9.41\c$\ftp\Regs\proxy Cielo.reg"
goto inicio

:sel4
call "\\10.220.9.41\c$\ftp\Regs\Proxy TIM.reg"
goto inicio

:sel5
call "\\10.220.9.41\c$\ftp\Regs\proxy Cielo.reg"
goto inicio

:sel6
call \\10.220.9.41\c$\ftp\Regs\Proxy_FirstData.reg
goto inicio

:selx
exit

:sele
echo Opecao Invalida!
pause
goto inicio
