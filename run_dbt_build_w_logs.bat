@echo off
setlocal

cd /d "C:\Users\JosipRajkovic\OneDrive - ELIXIRR\Desktop\row-level-security\rls_dm_ete"

if not exist "logs" mkdir "logs"

set LOGFILE=logs\dbt_build.log

echo Writing output to %LOGFILE%
echo ============================================ > "%LOGFILE%"
echo    dbt build - %DATE% %TIME% >> "%LOGFILE%"
echo ============================================ >> "%LOGFILE%"

call ".venv\Scripts\dbt.exe" build >> "%LOGFILE%" 2>&1

echo. >> "%LOGFILE%"
echo Exit code: %ERRORLEVEL% >> "%LOGFILE%"

echo Done. Log saved to %LOGFILE%
pause
endlocal