@echo off
title Fix Proxy
:inicio

color f0
mode 41,40

cls
echo ��������������������������������ͻ
echo �Selecione a operacao para atuar �
echo ��������������������������������ͼ

echo ������������������������������ͻ
echo �[1]�Fix proxy NET             �
echo ������������������������������͹
echo �[2]�Fix proxy NEO ENERGIA     �
echo ������������������������������͹
echo �[3]�Fix proxy CLARO           �
echo ������������������������������͹
echo �[4]�Fix proxy                 �
echo ������������������������������͹
echo �[5]�Fix proxy CIELO           �
echo ������������������������������͹
echo �[6]�Fix proxy FIRST DATA      �
echo ������������������������������͹
echo �[X]�        exit              �
echo ������������������������������ͼ

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
