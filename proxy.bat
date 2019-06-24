@echo off
title Fix Proxy
:inicio

color f0
mode 41,40

cls
echo ษออออออออออออออออออออออออออออออออป
echo บSelecione a operacao para atuar บ
echo ศออออออออออออออออออออออออออออออออผ

echo ษอออหออออออออออออออออออออออออออป
echo บ[1]บFix proxy NET             บ
echo ฬอออฮออออออออออออออออออออออออออน
echo บ[2]บFix proxy NEO ENERGIA     บ
echo ฬอออฮออออออออออออออออออออออออออน
echo บ[3]บFix proxy CLARO           บ
echo ฬอออฮออออออออออออออออออออออออออน
echo บ[4]บFix proxy                 บ
echo ฬอออฮออออออออออออออออออออออออออน
echo บ[5]บFix proxy CIELO           บ
echo ฬอออฮออออออออออออออออออออออออออน
echo บ[6]บFix proxy FIRST DATA      บ
echo ฬอออฮออออออออออออออออออออออออออน
echo บ[X]บ        exit              บ
echo ศอออสออออออออออออออออออออออออออผ

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
