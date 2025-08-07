@echo off
echo ========================================
echo   CONVERSOR DE EXCEL A CSV POR HOJAS
echo ========================================
echo.

REM Verificar si existe el ejecutable primero
if exist "%~dp0dist\Excel_a_CSV_Converter.exe" (
    echo Ejecutando version ejecutable...
    echo Por favor, selecciona tu archivo Excel en la ventana que se abrira.
    echo.
    "%~dp0dist\Excel_a_CSV_Converter.exe"
) else (
    echo No se encontro el ejecutable. Ejecutando version Python...
    echo.
    echo NOTA: Si no tienes Python instalado, descarga el ejecutable desde:
    echo https://github.com/lucasfernandez789/excel-to-csv-converter/releases
    echo.
    echo Por favor, selecciona tu archivo Excel en la ventana que se abrira.
    echo.
    python "%~dp0excel_a_csv_por_hojas.py"
    if errorlevel 1 (
        echo.
        echo ERROR: Python no esta instalado.
        echo.
        echo Opciones:
        echo 1. Instalar Python desde: https://www.python.org/downloads/
        echo 2. Descargar el ejecutable desde: https://github.com/lucasfernandez789/excel-to-csv-converter/releases
        echo.
    )
)

echo.
echo Conversion completada!
pause
