# **Análisis de Datos del Conflicto Armado en Colombia: Patrones, Tendencias y Correlaciones**

## **Integrantes del Equipo**

- Santiago Rendón Castrillón
- José Daniel Orrego Ruiz
- Kelly Dayanna Hernández
- Osfary Rojas Vargas

## **1. Introducción**

### **1.1 Descripción**

El conflicto armado en Colombia ha generado múltiples hechos victimizantes que han afectado a diferentes poblaciones a lo largo del tiempo. Este proyecto tiene como objetivo analizar un conjunto de datos sobre el conflicto armado en el país, identificando patrones, tendencias y correlaciones entre los diferentes tipos de hechos victimizantes registrados. A través de un análisis exploratorio, se busca extraer información clave que ayude a comprender mejor la magnitud y evolución del conflicto.

Dado que inicialmente solo contamos con los datos sin una hipótesis definida, el análisis comenzará con una exploración de las variables disponibles para identificar posibles líneas de investigación. Se aplicarán técnicas de limpieza, visualización y modelado de datos para extraer insights relevantes.

## **2. Objetivos del Proyecto**

1. **Explorar y comprender** la distribución de los hechos victimizantes en el conflicto armado.
2. **Analizar tendencias temporales y geográficas** para identificar patrones de violencia en el tiempo y el espacio.
3. **Detectar correlaciones** entre diferentes hechos victimizantes y su impacto en distintas poblaciones.
4. **Responder preguntas clave** mediante consultas exploratorias y visualizaciones interactivas.
5. **Evaluar la viabilidad de modelos predictivos** para anticipar tendencias en la ocurrencia de hechos victimizantes.

## **3. Preguntas de Análisis Exploratorio**

- ¿Cuáles son los hechos victimizantes más frecuentes en el conflicto armado?
- ¿Cómo ha variado la cantidad de hechos victimizantes a lo largo del tiempo?
- ¿Cuáles son las regiones más afectadas por cada tipo de hecho victimizante?
- ¿Existe una correlación entre desplazamiento forzado y homicidios en ciertas regiones?
- ¿Se pueden identificar patrones estacionales en la ocurrencia de hechos victimizantes?
- ¿Qué municipios han experimentado el mayor número de desplazamientos forzados?
- ¿En qué regiones se han registrado más hechos de violencia contra mujeres o niños?
- ¿Podemos predecir la ocurrencia de ciertos tipos de violencia en función de datos históricos?
- ¿Qué factores están asociados con un mayor riesgo de desapariciones forzadas?
- ¿Cómo han evolucionado los ataques con minas antipersonal a lo largo del tiempo y en qué zonas son más recurrentes?

## **4. Metodología**

El proyecto seguirá las siguientes etapas:

1. **Revisión y limpieza de datos** : Eliminación de valores nulos, estandarización y preparación del dataset.
2. **Análisis exploratorio** : Visualización de datos, generación de estadísticas descriptivas y formulación de hipótesis preliminares.
3. **Aplicación de técnicas de modelado de datos** : Identificación de patrones y correlaciones entre variables.
4. **Desarrollo de visualizaciones interactivas** : Creación de dashboards en Power BI para facilitar la interpretación de los resultados.
5. **Evaluación de modelos predictivos** : Aplicación de algoritmos de aprendizaje automático para identificar tendencias y posibles predicciones sobre hechos victimizantes.

## **5. Entregables**

- **Diagrama entidad-relación (ER) y modelo relacional**
- **Script de creación y población de la base de datos en SQL**
- **Consultas SQL para responder preguntas clave**
- **Análisis de datos y visualizaciones en notebooks de Python**
- **Dashboard interactivo en Power BI**

Este análisis permitirá comprender mejor la dinámica del conflicto armado en Colombia y generar información útil para la toma de decisiones en el ámbito social y gubernamental.

## **6. Datos de Ejemplo**

| FECHA_CORTE | NOM_RPT                    | COD_PAIS | PAIS     | COD_ESTADO_DEPTO | ESTADO_DEPTO | PARAM_HECHO | HECHO                             | SEXO       | ETNIA          | DISCAPACIDAD   | CICLO_VITAL | PER_OCU | PER_DECLA | PER_UBIC | PER_SA | EVENTOS |
| ----------- | -------------------------- | -------- | -------- | ---------------- | ------------ | ----------- | --------------------------------- | ---------- | -------------- | -------------- | ----------- | ------- | --------- | -------- | ------ | ------- |
| 2022/03/31  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 13               | Bolívar      | 5           | Retención forzada                 | Hombre     | Gitano (RROM)  | Ninguna        | 18-28       | 3       | 4         | 3        | 3      | 3       |
| 2022/02/28  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 20               | Cesar        | 5           | Atentado con dispositivo plástico | Mujer      | Raizal         | Múltiple       | 61-100      | 1       | -         | -        | 1      | -       |
| 2022/04/30  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 18               | Caquetá      | 5           | Desplazamiento forzado            | Hombre     | Gitano (RROM)  | Ninguna        | 29-60       | 2       | -         | -        | 2      | -       |
| 2022/05/31  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 95               | Guaviare     | 5           | Desplazamiento forzado            | Hombre     | Afrocolombiano | Física         | 61-100      | 11      | 7         | 4        | 4      | 12      |
| 2022/04/30  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 18               | Caquetá      | 2           | Amenaza                           | Hombre     | Indígena       | Por Establecer | 12-17       | 1       | 1         | 1        | 1      | 1       |
| 2022/01/31  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 19               | Cauca        | 5           | Desplazamiento forzado            | Mujer      | Indígena       | Auditiva       | 61-100      | 57      | 53        | 43       | 36     | 71      |
| 2022/02/28  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 25               | Cundinamarca | 20          | Violencia Sexual                  | Mujer      | Indígena       | Ninguna        | 29-60       | 1       | -         | 3        | 3      | 1       |
| 2022/03/31  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 99               | Vichada      | 4           | Desaparición forzada              | No Informa | Ninguna        | Ninguna        | ND          | -       | 1         | -        | -      | -       |
