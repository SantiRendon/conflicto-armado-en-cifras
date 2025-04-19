# El Conflicto Armado en Cifras: Patrones, Tendencias y Correlaciones del Conflicto Armado en Colombia

Este proyecto analiza datos del conflicto armado en Colombia desde 1950 hasta 2022, explorando patrones, tendencias y correlaciones mediante análisis de datos y visualización. Utiliza fuentes abiertas para comprender la evolución del conflicto y sus impactos, contribuyendo a la memoria histórica.

## Configuración del Proyecto

Este proyecto utiliza Poetry para la gestión de dependencias.

### Requisitos previos

- Python 3.8 o superior
- Poetry ([instrucciones de instalación](https://python-poetry.org/docs/#installation))

### Instalación básica

1. Clona el repositorio:

   ```bash
   git clone https://github.com/tu-usuario/conflicto-armado-en-cifras.git
   cd conflicto-armado-en-cifras
   ```

2. Instala las dependencias con Poetry:

   ```bash
   poetry install
   ```

Con estos dos pasos ya tienes todo lo necesario para comenzar a trabajar en el proyecto.

### Entorno Virtual (Opcional)

Poetry crea automáticamente un entorno virtual. Si deseas interactuar con él directamente:

```bash
# Obtener la ruta del entorno virtual
poetry env info -p

# Activar el entorno virtual (opcional)
# En Windows:
.\<ruta-del-entorno>\Scripts\activate
# En Linux/Mac:
source <ruta-del-entorno>/bin/activate

# Ver información completa del entorno
poetry env info
```

> [!TIP]
> Puedes ejecutar cualquier comando dentro del entorno virtual sin activarlo usando `poetry run`, por ejemplo: `poetry run python script.py`

### Configuración de Jupyter Notebooks (Opcional)

Si deseas trabajar con los notebooks del proyecto, puedes configurar Jupyter para usar el entorno virtual de Poetry:

1. Instala el kernel de IPython para Jupyter:

   ```bash
   # Usando poetry run (no requiere activar el entorno virtual)
   poetry run python -m ipykernel install --user --name=conflicto-armado-env --display-name="Python (Conflicto Armado)"
   
   # O si ya tienes el entorno virtual activado:
   python -m ipykernel install --user --name=conflicto-armado-env --display-name="Python (Conflicto Armado)"
   ```

2. Inicia Jupyter Notebook:

   ```bash
   # Usando poetry run
   poetry run jupyter notebook
   
   # O si ya tienes el entorno virtual activado:
   jupyter notebook
   ```

3. Al abrir un notebook, selecciona el kernel "Python (Conflicto Armado)" desde el menú Kernel > Change kernel.

## Estructura del Proyecto

```
├── data/               # Datos del proyecto
│   ├── external/       # Datos de fuentes externas
│   ├── processed/      # Datos procesados
│   └── raw/            # Datos originales sin procesar
├── notebooks/          # Jupyter notebooks
├── src/                # Código fuente
└── reports/            # Informes generados
    └── figures/        # Gráficos y visualizaciones
```

## Equipo

<!-- Información del equipo aquí -->

## Notas Adicionales

> [!NOTE]
> Este proyecto está en desarrollo activo. La documentación se actualizará regularmente.

> [!IMPORTANT]
> Para contribuir al proyecto, por favor revisa las guías de contribución.
