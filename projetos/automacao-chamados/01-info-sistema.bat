@echo off
REM ============================================================
REM Script 1 - Coleta de Informacoes do Sistema
REM Objetivo: Gerar relatorio rapido com dados do PC para anexar
REM           em chamados de suporte tecnico.
REM Autor: Arthur Felipe Queiroz Costa - ADS 1o Semestre
REM ============================================================

setlocal
set "RELATORIO=%USERPROFILE%\Desktop\relatorio_sistema.txt"

echo Coletando informacoes do sistema...
echo Relatorio sera salvo em: %RELATORIO%
echo.

(
  echo ============================================================
  echo  RELATORIO DE SISTEMA - SUPORTE TI
  echo  Gerado em: %DATE% %TIME%
  echo  Usuario:   %USERNAME%
  echo  Maquina:   %COMPUTERNAME%
  echo ============================================================
  echo.
  echo --- INFORMACOES BASICAS ---
  systeminfo ^| findstr /B /C:"Nome do host" /C:"Nome do SO" /C:"Versao do SO" /C:"Fabricante do sistema" /C:"Modelo do sistema" /C:"Memoria fisica total" /C:"Host Name" /C:"OS Name" /C:"OS Version" /C:"System Manufacturer" /C:"System Model" /C:"Total Physical Memory"
  echo.
  echo --- INTERFACES DE REDE ---
  ipconfig /all
  echo.
  echo --- DISCO ---
  wmic logicaldisk get caption,description,filesystem,freespace,size
) > "%RELATORIO%"

echo.
echo [OK] Relatorio gerado em: %RELATORIO%
echo Envie este arquivo junto com o chamado.
pause
endlocal
