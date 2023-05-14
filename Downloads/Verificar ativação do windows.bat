@echo off

echo Verificando a ativação do Windows...
echo.

:: Executa o comando slmgr para verificar o status da ativação
slmgr /xpr

:: Verifica se o resultado do comando anterior contém a palavra "ativado"
find "ativado" <nul | find /i "ativado" >nul
if %errorlevel% == 0 (
  echo O Windows está ativado.
) else (
  echo O Windows não está ativado.
)

echo.

:: Verifica se a ativação é permanente ou não
slmgr /dlv | find "Estado" | find /i "ativo" >nul
if %errorlevel% == 0 (
  echo A ativação é permanente.
) else (
  echo A ativação não é permanente.
)

echo.

:: Pausa o prompt de comando para que o usuário possa ver o resultado da verificação
pause
