@echo off
title Ti neobpo
:inicio
mode 75,26
cls
color f0
echo �����������������������������������������������������������������������ͻ
echo ���������"     __________   _   __           __                "���������
echo ���������"    /_  __/  _/  / | / /__  ____  / /_  ____  ____   "���������
echo ���������"     / /  / /   /  |/ / _ \/ __ \/ __ \/ __ \/ __ \  "���������
echo ���������"    / / _/ /   / /|  /  __/ /_/ / /_/ / /_/ / /_/ /  "��������� 
echo ���������"   /_/ /___/  /_/ |_/\___/\____/_.___/ .___/\____/   "���������
echo ���������"                                    /_/              "���������
echo �����������������������������������������������������������������������͹
echo �����������������������������������������������������������������������͹
echo �[1]         Abrir CMD              �   [6]   Painel de Controle        �
echo �����������������������������������������������������������������������͹
echo �[2]Abrir CMD como Administrador    �   [7]  Configuracao de som        �
echo �����������������������������������������������������������������������͹
echo �[3]Abrir Gerenciador de Tarefa     �   [8]  Relatorio do Sistema       �
echo �����������������������������������������������������������������������͹
echo �[4] Propriedades de Internet       �   [9]     Abrir Regedit           �
echo �����������������������������������������������������������������������͹
echo �[5]      Abrir Servicos            �   [10]      Fix Proxy             �
echo �����������������������������������������������������������������������͹
echo �[x]                             Sair                      ��������������ͻ
echo ����������������������������������������������������������ͺ By Matheus   �
echo                                                            ��������������ͼ               
echo.
echo.
set /p opcao= Selecione a opcao dejesada:

if %opcao% ==1 goto op1
if %opcao% ==2 goto op2
if %opcao% ==3 goto op3
if %opcao% ==4 goto op4
if %opcao% ==5 goto op5
if %opcao% ==6 goto op6
if %opcao% ==7 goto op7
if %opcao% ==8 goto op8
if %opcao% ==9 goto op9
if %opcao% ==10 goto op10
if %opcao% ==x goto opx
if %opcao% GEQ 11 goto erro 



:op1
start cmd
goto inicio

:op2
runas /u:administrador "cmd"
goto inicio

:op3
taskmgr
goto inicio

:op4
inetcpl.cpl
goto inicio

:op5
services.msc
goto inicio

:op6
control
goto inicio

:op7
mmsys.cpl
goto inicio

:op8
msinfo32
goto inicio

:op9
regedit
goto inicio

:op10
\\10.220.9.41\scan\TI\Cassio\Ultilitarios\Fixproxy.bat
goto inicio

:opx
exit

:erro
echo Entrada invalida
echo Digite ENTER para continuar.
pause > nul
goto inicio

echo.

pause



