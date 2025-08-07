# 📊 Conversor de Excel a CSV por Hojas

[![Python](https://img.shields.io/badge/Python-3.6+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)](https://www.microsoft.com/windows)

Una herramienta simple y eficiente que convierte archivos de Excel (.xlsx, .xls) en archivos CSV separados, creando un archivo CSV individual por cada hoja del documento Excel.

## � Características Principales

- ✅ **Interfaz gráfica intuitiva** con ventanas de diálogo nativas de Windows
- ✅ **Conversión automática** de todas las hojas en un solo proceso  
- ✅ **Organización inteligente** - crea carpeta de salida automáticamente
- ✅ **Ejecutable independiente** - no requiere instalación de Python
- ✅ **Soporte completo** para formatos .xlsx y .xls
- ✅ **Codificación UTF-8** para compatibilidad internacional

## 📁 Estructura del Proyecto

- `excel_a_csv_por_hojas.py` - Código fuente principal
- `Excel_a_CSV_Converter.exe` - Ejecutable compilado (en carpeta `dist/`)  
- `Convertir_Excel_a_CSV.bat` - Script de ejecución simple
- `ejecutar.bat` - Script con múltiples opciones
- `requirements.txt` - Dependencias de Python

## �️ Instalación y Uso

### Opción 1: Usar el Ejecutable (Recomendado)
1. Descarga la [última release](../../releases)
2. Ejecuta `Excel_a_CSV_Converter.exe` directamente
3. **¡No necesitas instalar Python!**

### Opción 2: Ejecutar desde el Código Fuente
```bash
# Clonar el repositorio
git clone https://github.com/lucasfernandez789/excel-to-csv-converter.git
cd excel-to-csv-converter

# Instalar dependencias
pip install -r requirements.txt

# Ejecutar
python excel_a_csv_por_hojas.py
```

### Opción 3: Compilar tu Propio Ejecutable
```bash
# Instalar PyInstaller
pip install pyinstaller

# Compilar
pyinstaller --onefile --windowed --name "Excel_a_CSV_Converter" excel_a_csv_por_hojas.py
```

## ✨ Características

- **Interfaz gráfica amigable**: Usa ventanas de Windows para seleccionar archivos
- **Procesamiento automático**: Convierte todas las hojas del Excel automáticamente
- **Organización inteligente**: Crea una carpeta `CSVs_generados` junto al archivo original
- **Sin instalación**: La versión .exe no requiere tener Python instalado
- **Compatibilidad amplia**: Funciona con archivos .xlsx y .xls

## 📂 ¿Dónde se guardan los archivos?

Los archivos CSV se guardan en una carpeta llamada `CSVs_generados` que se crea automáticamente en la misma ubicación donde está tu archivo Excel original.

Por ejemplo:
- Si tu Excel está en: `C:\Documentos\mi_archivo.xlsx`
- Los CSV se guardarán en: `C:\Documentos\CSVs_generados\`

## � Requisitos del Sistema

### Para el Ejecutable (.exe)
- Windows 7/8/10/11
- **¡No se requiere Python!**

### Para Ejecutar desde Código Fuente  
- Python 3.6 o superior
- pandas >= 2.0.0
- openpyxl >= 3.1.0

```bash
pip install -r requirements.txt
```

## 🎯 Cómo Funciona

1. **Selección de archivo**: Interfaz gráfica para elegir tu archivo Excel
2. **Procesamiento**: Lee todas las hojas del archivo automáticamente  
3. **Conversión**: Cada hoja se convierte en un archivo CSV independiente
4. **Organización**: Los archivos se guardan en `CSVs_generados/` junto al original

## 📂 Ejemplo de Uso

```
📁 Mi_Proyecto/
├── 📄 datos.xlsx (3 hojas: Ventas, Inventario, Clientes)
└── 📁 CSVs_generados/
    ├── 📄 Ventas.csv
    ├── 📄 Inventario.csv  
    └── 📄 Clientes.csv
```

## 📋 Notas técnicas

- **Codificación**: Los archivos CSV se guardan con codificación UTF-8
- **Índices**: Los archivos CSV no incluyen los índices de fila de pandas
- **Nombres de archivo**: Los archivos CSV toman el nombre de cada hoja del Excel

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Por favor:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📝 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.

## ⭐ ¿Te resultó útil?

Si este proyecto te ayudó, ¡no olvides darle una estrella! ⭐

## 🐛 Reportar Issues

¿Encontraste un bug? ¿Tienes una sugerencia? 
[Crea un issue](../../issues/new) y te ayudaremos.

---

**Desarrollado con ❤️ para hacer más fácil el trabajo con archivos Excel**
