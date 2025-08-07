@echo off
echo Limpiando archivos para Git...
echo.

REM Eliminar carpetas de build y dist para Github (son archivos muy pesados)
if exist "build" (
    echo Eliminando carpeta build...
    rmdir /s /q "build"
)

if exist "dist" (
    echo Eliminando carpeta dist...
    rmdir /s /q "dist"
)

if exist "Excel_a_CSV_Converter.spec" (
    echo Eliminando archivo .spec...
    del "Excel_a_CSV_Converter.spec"
)

echo.
echo ¡Listo! Ahora puedes hacer git add . sin problemas.
echo Los archivos pesados del ejecutable han sido eliminados.
echo.
echo Para volver a generar el ejecutable, ejecuta:
echo pyinstaller --onefile --windowed --name "Excel_a_CSV_Converter" excel_a_csv_por_hojas.py
echo.
pause
