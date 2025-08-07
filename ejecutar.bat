@echo off
echo ========================================
echo   CONVERSOR DE EXCEL A CSV POR HOJAS
echo ========================================
echo.
echo Elige una opcion:
echo 1. Ejecutar version Python (requiere Python instalado)
echo 2. Ejecutar version Ejecutable (.exe)
echo.
set /p opcion=Ingresa tu opcion (1 o 2): 

if "%opcion%"=="1" (
    echo.
    echo Ejecutando version Python...
    "%LOCALAPPDATA%\Programs\Python\Python312\python.exe" "%~dp0excel_a_csv_por_hojas.py"
) else if "%opcion%"=="2" (
    echo.
    echo Ejecutando version ejecutable...
    "%~dp0dist\Excel_a_CSV_Converter.exe"
) else (
    echo Opcion invalida. Ejecutando version ejecutable por defecto...
    "%~dp0dist\Excel_a_CSV_Converter.exe"
)

echo.
pause
