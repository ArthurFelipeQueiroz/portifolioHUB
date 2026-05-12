@echo off
REM ============================================================
REM Script 3 - Diagnostico de Rede
REM Objetivo: Testar conectividade basica e gerar log para
REM           chamados de problemas de internet/rede.
REM Autor: Arthur Felipe Queiroz Costa - ADS 1o Semestre
REM ============================================================

setlocal
set "LOG=%USERPROFILE%\Desktop\diagnostico_rede.txt"

echo Executando diagnostico de rede...
echo Log sera salvo em: %LOG%
echo.

(
  echo ============================================================
  echo  DIAGNOSTICO DE REDE - SUPORTE TI
  echo  Gerado em: %DATE% %TIME%
  echo  Usuario:   %USERNAME%
  echo  Maquina:   %COMPUTERNAME%
  echo ============================================================
  echo.
  echo --- CONFIGURACAO DE IP ---
  ipconfig /all
  echo.
  echo --- PING NO GATEWAY ---
  for /f "tokens=2 delims=:" %%g in ('ipconfig ^| findstr /C:"Default Gateway" /C:"Gateway Padrao" ^| findstr [0-9]') do (
    set "GW=%%g"
    set "GW=!GW: =!"
    ping -n 4 !GW!
  )
  echo.
  echo --- PING 8.8.8.8 ---
  ping -n 4 8.8.8.8
  echo.
  echo --- PING google.com ---
  ping -n 4 google.com
  echo.
  echo --- TRACEROUTE google.com ---
  tracert -h 15 google.com
  echo.
  echo --- DNS ---
  nslookup google.com
) > "%LOG%" 2>&1

echo.
echo [OK] Diagnostico concluido. Arquivo: %LOG%
echo Envie este arquivo ao tecnico responsavel pelo chamado.
pause
endlocal
