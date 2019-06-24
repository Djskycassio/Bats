@echo off
:inicio
mode 74,25
cls
color f0
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บฒฒฑฑฑฐฐฐ"     __________   _   __           __                "ฐฐฐฑฑฑฒฒบ
echo บฒฒฑฑฑฐฐฐ"    /_  __/  _/  / | / /__  ____  / /_  ____  ____   "ฐฐฐฑฑฑฒฒบ
echo บฒฒฑฑฑฐฐฐ"     / /  / /   /  |/ / _ \/ __ \/ __ \/ __ \/ __ \  "ฐฐฐฑฑฑฒฒบ
echo บฒฒฑฑฑฐฐฐ"    / / _/ /   / /|  /  __/ /_/ / /_/ / /_/ / /_/ /  "ฐฐฐฑฑฑฒฒบ 
echo บฒฒฑฑฑฐฐฐ"   /_/ /___/  /_/ |_/\___/\____/_.___/ .___/\____/   "ฐฐฐฑฑฑฒฒบ
echo บฒฒฑฑฑฐฐฐ"                                    /_/              "ฐฐฐฑฑฑฒฒบ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo ฬอออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออน
echo บ[1]         Abrir CMD              บ   [6]   Painel de Controle        บ
echo ฬอออออออออออออออออออออออออออออออออออฮอออออออออออออออออออออออออออออออออออน
echo บ[2]Abrir CMD como Administrador    บ   [7]  Configuracao de som        บ
echo ฬอออออออออออออออออออออออออออออออออออฮอออออออออออออออออออออออออออออออออออน
echo บ[3]Abrir Gerenciador de Tarefa     บ   [8]  Relatorio do Sistema       บ
echo ฬอออออออออออออออออออออออออออออออออออฮอออออออออออออออออออออออออออออออออออน
echo บ[4] Propriedades de Internet       บ   [9]     Abrir Regedit           บ
echo ฬอออออออออออออออออออออออออออออออออออฮอออออออออออออออออออออออออออออออออออน
echo บ[5]      Abrir Servicos            บ   [10]      Fix Proxy             บ
echo ฬอออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออน
echo บ[x]                             Sair                                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
if %opcao% GEQ 11 goto erro 
if %opcao% ==x goto opx


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



