# 🚀 Guía Rápida de Inicio

¿Acabas de descargar el código fuente? ¡Te ayudamos a empezar!

## Para Usuarios Nuevos

### Opción 1: Solo quiero usar la herramienta (Más fácil)
1. Ve a [Releases](https://github.com/lucasfernandez789/excel-to-csv-converter/releases)
2. Descarga `Excel_a_CSV_Converter.exe`
3. Ejecuta y ¡listo! No necesitas instalar nada más

### Opción 2: Quiero ejecutar desde el código fuente
```bash
# 1. Instalar Python (si no lo tienes)
# Descarga desde: https://www.python.org/downloads/

# 2. Instalar dependencias
pip install -r requirements.txt

# 3. Ejecutar
python excel_a_csv_por_hojas.py
```

## Scripts Incluidos

- `Convertir_Excel_a_CSV.bat` - Script simple que ejecuta automáticamente
- `ejecutar.bat` - Script con opciones avanzadas

## ¿Problemas?

Si ves "El sistema no puede encontrar la ruta especificada":
1. Es normal - el ejecutable solo está en las Releases
2. El script automáticamente intentará usar Python
3. Si Python no está instalado, instálalo desde python.org

## Compilar tu Propio Ejecutable

```bash
pip install pyinstaller
pyinstaller --onefile --windowed --name "Excel_a_CSV_Converter" excel_a_csv_por_hojas.py
```

¡El ejecutable estará en la carpeta `dist/`!
