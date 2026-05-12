@echo off
REM ============================================================
REM Script 2 - Limpeza de Arquivos Temporarios
REM Objetivo: Liberar espaco em disco e resolver lentidao comum
REM           reportada em chamados de suporte.
REM Autor: Arthur Felipe Queiroz Costa - ADS 1o Semestre
REM ============================================================

setlocal enabledelayedexpansion
echo ============================================================
echo  LIMPEZA DE ARQUIVOS TEMPORARIOS
echo ============================================================
echo.
echo Esta acao removera arquivos das pastas:
echo   - %TEMP%
echo   - %SystemRoot%\Temp
echo   - Prefetch do Windows
echo.

set /p CONFIRMA="Deseja continuar? (S/N): "
if /I not "%CONFIRMA%"=="S" (
  echo Operacao cancelada pelo usuario.
  pause
  exit /b 0
)

echo.
echo [1/3] Limpando %TEMP% ...
del /q /f /s "%TEMP%\*" >nul 2>&1
for /d %%x in ("%TEMP%\*") do rd /s /q "%%x" >nul 2>&1

echo [2/3] Limpando %SystemRoot%\Temp ...
del /q /f /s "%SystemRoot%\Temp\*" >nul 2>&1
for /d %%x in ("%SystemRoot%\Temp\*") do rd /s /q "%%x" >nul 2>&1

echo [3/3] Limpando Prefetch ...
del /q /f /s "%SystemRoot%\Prefetch\*" >nul 2>&1

echo.
echo [OK] Limpeza concluida.
echo Reinicie o computador para melhores resultados.
pause
endlocal
