
import pandas as pd
import os
from tkinter import Tk, filedialog, messagebox

def convertir_excel_a_csv():
    root = Tk()
    root.withdraw()

    archivo_excel = filedialog.askopenfilename(
        title="Seleccionar archivo Excel",
        filetypes=[("Archivos de Excel", "*.xlsx *.xls")]
    )

    if not archivo_excel:
        messagebox.showinfo("Cancelado", "No se seleccionó ningún archivo.")
        return

    try:
        libro = pd.read_excel(archivo_excel, sheet_name=None)

        carpeta_salida = os.path.join(os.path.dirname(archivo_excel), 'CSVs_generados')
        os.makedirs(carpeta_salida, exist_ok=True)

        for nombre_hoja, df in libro.items():
            nombre_csv = f"{nombre_hoja}.csv"
            ruta_csv = os.path.join(carpeta_salida, nombre_csv)
            df.to_csv(ruta_csv, index=False)

        messagebox.showinfo("Éxito", f"CSV guardados en:\n{carpeta_salida}")
    except Exception as e:
        messagebox.showerror("Error", f"Ocurrió un error:\n{e}")

if __name__ == "__main__":
    convertir_excel_a_csv()
