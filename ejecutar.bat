@echo off
setlocal enabledelayedexpansion
echo ========================================
echo   CONVERSOR DE EXCEL A CSV POR HOJAS
echo ========================================
echo.

REM Verificar si existe el ejecutable
if exist "%~dp0dist\Excel_a_CSV_Converter.exe" (
    echo Elige una opcion:
    echo 1. Ejecutar version Python ^(requiere Python instalado^)
    echo 2. Ejecutar version Ejecutable ^(.exe^)
    echo.
    set /p opcion=Ingresa tu opcion ^(1 o 2^): 
    
    if "!opcion!"=="1" (
        echo.
        echo Ejecutando version Python...
        python "%~dp0excel_a_csv_por_hojas.py"
    ) else if "!opcion!"=="2" (
        echo.
        echo Ejecutando version ejecutable...
        "%~dp0dist\Excel_a_CSV_Converter.exe"
    ) else (
        echo Opcion invalida. Ejecutando version ejecutable por defecto...
        "%~dp0dist\Excel_a_CSV_Converter.exe"
    )
) else (
    echo NOTA: No se encontro el archivo ejecutable.
    echo.
    echo Para obtener el ejecutable:
    echo 1. Descarga la ultima release desde: https://github.com/lucasfernandez789/excel-to-csv-converter/releases
    echo 2. O compila tu propio ejecutable con: pyinstaller --onefile --windowed --name "Excel_a_CSV_Converter" excel_a_csv_por_hojas.py
    echo.
    echo Ejecutando version Python...
    python "%~dp0excel_a_csv_por_hojas.py"
    if errorlevel 1 (
        echo.
        echo ERROR: Python no esta instalado o no se encuentra en el PATH.
        echo.
        echo Para instalar Python:
        echo 1. Ve a https://www.python.org/downloads/
        echo 2. Descarga e instala Python 3.6 o superior
        echo 3. Instala las dependencias: pip install -r requirements.txt
        echo.
    )
)

echo.
pause
