@echo off
chcp 65001 >nul
title Instalador de Skills para Google Antigravity / Gemini
color 0b
cls

echo =======================================================================
echo     INSTALADOR DE SKILLS - GOOGLE ANTIGRAVITY & GEMINI CLI
echo =======================================================================
echo.
echo Este script copia automaticamente todas as 48 skills para o seu sistema.
echo.
echo Escolha o modo de instalacao:
echo [1] Instalar como Skills Globais em %USERPROFILE%\.gemini\skills
echo [2] Instalar como Plugin Completo em %USERPROFILE%\.gemini\config\plugins\ag-kit
echo [3] Instalar no projeto atual (.agents\skills)
echo.
set /p OPCAO="Escolha uma opcao (1, 2 ou 3): "

if "%OPCAO%"=="1" (
    echo.
    echo Instalando em %USERPROFILE%\.gemini\skills...
    if not exist "%USERPROFILE%\.gemini\skills" mkdir "%USERPROFILE%\.gemini\skills"
    xcopy /E /I /Y "skills\*" "%USERPROFILE%\.gemini\skills\"
    echo.
    echo [SUCESSO] Todas as skills foram instaladas globalmente!
    pause
    exit /b 0
)

if "%OPCAO%"=="2" (
    echo.
    echo Instalando como Plugin completo...
    set "DEST=%USERPROFILE%\.gemini\config\plugins\ag-kit"
    if not exist "%DEST%" mkdir "%DEST%"
    xcopy /E /I /Y "*.*" "%DEST%\"
    xcopy /E /I /Y "skills" "%DEST%\skills\"
    xcopy /E /I /Y "agents" "%DEST%\agents\"
    xcopy /E /I /Y "rules" "%DEST%\rules\"
    echo.
    echo [SUCESSO] Plugin AG Kit instalado com sucesso!
    pause
    exit /b 0
)

if "%OPCAO%"=="3" (
    echo.
    echo Instalando na pasta do projeto atual...
    if not exist ".agents\skills" mkdir ".agents\skills"
    xcopy /E /I /Y "skills\*" ".agents\skills\"
    echo.
    echo [SUCESSO] Skills adicionadas a pasta .agents\skills do projeto!
    pause
    exit /b 0
)

echo Opcao invalida.
pause
