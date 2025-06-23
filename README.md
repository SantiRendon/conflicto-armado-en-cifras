# Memoria Abierta: Datos para Visibilizar el Conflicto Armado en Colombia (2022–2025)

Este repositorio contiene el desarrollo de Memoria Abierta, una iniciativa de análisis y visualización del conflicto armado en Colombia entre 2022 y 2025. A partir de datos abiertos, el proyecto transforma información técnica en una herramienta accesible y comprensible que visibiliza la magnitud e impacto del conflicto sobre la población civil.

El enfoque es ético, social y colaborativo: busca acercar esta realidad a quienes no la han vivido directamente, promoviendo la empatía, la conciencia y la memoria histórica a través de herramientas como Python, MySQL y Power BI.

## Configuración del Proyecto

Este proyecto utiliza **Poetry** para la gestión de dependencias y **Git LFS** para el manejo de archivos grandes.

### Requisitos previos

- Python 3.8 o superior
- Poetry ([instrucciones de instalación](https://python-poetry.org/docs/#installation))
- Git LFS ([instrucciones de instalación](https://git-lfs.github.com/))

### Instalación rápida

1. Clona el repositorio:

   ```bash
   git clone https://github.com/tu-usuario/conflicto-armado-en-cifras.git
   cd conflicto-armado-en-cifras
   ```
2. Instala las dependencias del proyecto:

   ```bash
   poetry install
   ```
3. Inicializa Git LFS:

   ```bash
   git lfs install
   ```

¡Y listo! Con eso puedes empezar a trabajar en el proyecto.

### Actualizar el repositorio local

Para traer los últimos cambios del repositorio remoto:

```bash
git pull origin main
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

## 📁 Recursos del Proyecto

- 📊 **Dashboard interactivo en Power BI**  
  Disponible en la carpeta [`/reports/figures`](./reports/figures), junto con visualizaciones exportadas.

- 🧾 **Informe final del proyecto**  
  Puedes encontrarlo en [`/reports`](./reports), incluyendo documentación metodológica y hallazgos clave.

- 📓 **Notebooks de análisis y limpieza de datos**  
  Accede a los cuadernos Jupyter en [`/notebooks`](./notebooks).

- 📂 **Datos utilizados**  
  Las fuentes originales, procesadas y transformadas están organizadas en [`/data`](./data).

- 📽️ **Presentación del proyecto (pitch)**  
  Disponible en [`/reports/pitch`](./reports/pitch) o el archivo [`memoria-abierta-presentacion.pdf`](./reports/pitch/memoria-abierta-presentacion.pdf).



## Equipo

- **Santiago Rendón Castrillón** – Análisis de datos, Transformación de datos y Coordinación general 
- **Kelly Dayanna Hernández** – Análisis de datos, Administradora en base de datos y Business Intelligence (BI)

## Licencia

Este proyecto está disponible bajo la licencia [MIT](LICENSE).


## Notas Adicionales

> ✅ Este proyecto fue completado en junio de 2025. La documentación refleja la versión final publicada.
