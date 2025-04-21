# El Conflicto Armado en Cifras: Patrones, Tendencias y Correlaciones del Conflicto Armado en Colombia

Este proyecto analiza datos del conflicto armado en Colombia desde 1950 hasta 2022, explorando patrones, tendencias y correlaciones mediante análisis de datos y visualización. Utiliza fuentes abiertas para comprender la evolución del conflicto y sus impactos, contribuyendo a la memoria histórica.

## Configuración del Proyecto

Este proyecto utiliza Poetry para la gestión de dependencias.

### Requisitos previos

- Python 3.8 o superior
- Poetry ([instrucciones de instalación](https://python-poetry.org/docs/#installation))
- Git LFS ([instrucciones de instalación](https://git-lfs.github.com/))

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

## Clonar el Repositorio y Gestionar Cambios

Este proyecto utiliza **Git** y **Git LFS** (Large File Storage) para gestionar archivos grandes como datasets. A continuación, te explicamos cómo clonar el repositorio y gestionar cambios de manera efectiva.

### 1. Clonar el Repositorio

Para comenzar a trabajar con el proyecto, primero debes clonar el repositorio:

```bash
git clone https://github.com/tu-usuario/conflicto-armado-en-cifras.git
cd conflicto-armado-en-cifras
```

### 2. Instalar las Dependencias

Una vez clonado el repositorio, instala las dependencias con Poetry:

```bash
poetry install
```

### 3. Configurar Git LFS

Este proyecto utiliza **Git LFS** para manejar archivos grandes, como el dataset en la carpeta `data/raw`. Asegúrate de tener Git LFS instalado en tu máquina. Si no lo tienes, instala Git LFS siguiendo [estas instrucciones](https://git-lfs.github.com/).

Después de instalar Git LFS, ejecuta el siguiente comando para inicializarlo en tu repositorio local:

```bash
git lfs install
```

### 4. Traer Cambios del Repositorio

Una vez que hayas clonado el repositorio y configurado todo, puedes traer los cambios más recientes del repositorio remoto:

```bash
git pull origin main
```

Este comando descargará los últimos cambios, incluyendo los archivos gestionados con Git LFS.

### 5. Ignorar Archivos Grandes y Añadir Nuevos Archivos a Git LFS

Si deseas añadir archivos grandes, asegúrate de que estén correctamente configurados para ser manejados por Git LFS. Para ello, puedes seguir estos pasos:

- Añadir un archivo al seguimiento de Git LFS:

```bash
git lfs track "data/raw/*.csv"
```

- Luego, asegúrate de agregar el archivo `.gitattributes` que contiene esta configuración:

```bash
git add .gitattributes
git commit -m "Configurar Git LFS para archivos CSV"
```

- Finalmente, añade los archivos grandes a Git y realiza un commit:

```bash
git add data/raw/archivo_grande.csv
git commit -m "Añadir dataset grande"
git push origin main
```

### 6. Sincronizar Cambios con Git LFS

Si algún compañero de equipo ya ha subido un archivo gestionado por Git LFS, deberás descargarlo a tu repositorio local usando el siguiente comando:

```bash
git lfs pull
```

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