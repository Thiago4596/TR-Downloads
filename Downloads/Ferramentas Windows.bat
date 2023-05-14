@echo off

:start
cls
echo ------------- Ferramentas de Reparo do Windows -------------
echo 1. Verificacao do disco (chkdsk)
echo 2. Ferramenta de Resolucao de Problemas do Windows (dism)
echo 3. Ferramenta de Reparo do Componente do Sistema (sfc /scannow)
echo 4. Sair
echo Escolha a ferramenta que deseja utilizar:
set /p tool=

if "%tool%"=="1" (
echo Executando chkdsk...
chkdsk
)

if "%tool%"=="2" (
echo Executando dism...
echo ScanHealth
dism /online /cleanup-image /Scanhealth
echo RestoreHealth
dism /online /cleanup-image /RestoreHealth
)

if "%tool%"=="3" (
echo Executando sfc /scannow...
sfc /scannow
)

if "%tool%"=="4" (
echo Saindo...
exit
)

echo Ferramenta não reconhecida. Tente novamente.
pause
goto start