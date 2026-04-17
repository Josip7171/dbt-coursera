@echo off

REM Go to the dbt project directory
cd /d "C:\Users\JosipRajkovic\OneDrive - ELIXIRR\Desktop\row-level-security\rls_dm_ete"

echo ============================================
echo    Starting dbt build workflow...
echo    Project: demo_project
echo ============================================
echo.

REM Run dbt build (models + tests + snapshots)
call ".venv\Scripts\activate.bat"
call ".venv\Scripts\dbt.exe" build

echo.
echo ============================================
echo    dbt build finished.
echo    Exit code: %ERRORLEVEL%
echo ============================================
echo.

pause