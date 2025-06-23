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

## Equipo

- **Santiago Rendón Castrillón** – Coordinación general y análisis de datos
- **Kelly Dayanna Hernández** – Administradora en base de datos y Bussiness Intelligence (BI)

## Notas Adicionales

> ⚠️ Este proyecto está en desarrollo activo. La documentación se actualizará regularmente. Fecha de finalizacion: [Fecha de finalización pendiente]
