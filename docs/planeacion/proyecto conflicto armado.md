# **Análisis de Datos del Conflicto Armado en Colombia: Patrones, Tendencias y Correlaciones**

### REPORTE VICTIMAS POR HECHO, CIFRA DEPARTAMENTAL (SEXO, ETNIA, DISCAPACIDAD, CICLO_VITAL) personas: (Ocurrencia, Declaración, Ubicación, Sujetos Atención y Eventos)

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

## 6. Datos del Estudio

### 6.1 Datos de Ejemplo

A continuación, se presenta un fragmento representativo del dataset utilizado en este proyecto:

| FECHA_CORTE | NOM_RPT                    | COD_PAIS | PAIS     | COD_ESTADO_DEPTO | ESTADO_DEPTO | PARAM_HECHO | HECHO                              | SEXO   | ETNIA         | DISCAPACIDAD | CICLO_VITAL | PER_OCU | PER_DECLA | EVENTOS |
| :---------- | :------------------------- | :------- | :------- | :--------------- | :----------- | :---------- | :--------------------------------- | :----- | :------------ | :----------- | :---------- | :------ | :-------- | :------ |
| 2022/03/31  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 13               | Bolívar     | 5           | Retención forzada                 | Hombre | Gitano (RROM) | Ninguna      | 18-28       | 3       | 4         | 3       |
| 2022/02/28  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 20               | Cesar        | 5           | Atentado con dispositivo plástico | Mujer  | Raizal        | Múltiple    | 61-100      | 1       | -         | 1       |
| 2022/04/30  | REPORTE VICTIMAS POR HECHO | 48       | COLOMBIA | 18               | Caquetá     | 5           | Desplazamiento forzado             | Hombre | Gitano (RROM) | Ninguna      | 29-60       | 2       | -         | 2       |

*(Nota: El dataset completo contiene más registros)*

---

### 6.2 Diccionario de Datos

A continuación, se presenta un diccionario de datos que describe las columnas del dataset sacado de la página de datos abiertos de la Unidad para las Víctimas de Colombia:

| **Nombre de Columna**      | **Descripción**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| -------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `FECHA_CORTE`                  | Fecha de corte a la fecha que se recolectaron los datos                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `NOM_RPT`                      | Nombre del reporte a consultar                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `COD_PAIS`                     | Código correspondiente al país donde se registró el hecho victimizante                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `PAIS`                         | Nombre correspondiente al país donde se registró el hecho victimizante                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `COD_ESTADO_DEPTO`             | Código correspondiente a la ubicación geográfica del estado que desea consultar                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `ESTADO_DEPTO`                 | Nombre correspondiente a la ubicación geográfica del estado que desea consultar                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `PARAM_HECHO`                  | Tipo de hechos victimizantes registrados: 1. Acto terrorista / Atentados / Combates / Enfrentamientos / Hostigamientos 2. Amenaza 3. Delitos contra la libertad y la integridad sexual en desarrollo del conflicto armado 4. Desaparición forzada 5. Desplazamiento forzado 6. Homicidio 7. Minas antipersonal, munición sin explotar y artefacto explosivo improvisado 8. Secuestro 9. Tortura 10. Vinculación de niños, niñas y adolescentes a actividades relacionadas con grupos armados 11. Abandono o despojo forzado de tierras 12. Pérdida de bienes muebles o inmuebles 13. Lesiones personales físicas 14. Lesiones personales psicológicas 15. Confinamiento 16. Restricción a la movilidad 17. Extorsión 18. Detención ilegal 19. Otros 20. Sin información |
| `HECHO`                        | Tipo o nombre del hecho victimizante enmarcado en la Ley 1448 de 2011                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `SEXO`                         | Corresponde al sexo, identidad de género u orientación sexual expresada por las víctimas                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `ETNIA`                        | Personas categorizadas por pertenencia étnica: • Indígena • Gitano(a) ROM • Raizal del Archipiélago de San Andrés y Providencia • Negro(a) o Afrocolombiano(a) • Palenquero • Ninguna                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `DISCAPACIDAD`                 | Personas que han manifestado tener una situación de discapacidad: • Ninguna • Auditiva • Visual • Física • Intelectual • Múltiple • Por establecer • Psicosocial                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `CICLO_VITAL`                  | Intervalo de edades registradas de las víctimas con cálculo a la fecha de corte                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `PER_OCU (personas afectadas)` | Número de personas por ocurrencia (persona afectada por un hecho victimizante en el territorio)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `PER_DECLA`                    | Número de personas con declaración (realizaron su declaración en el territorio)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `PER_UBIC`                     | Número de víctimas por ubicación geográfica (definida de acuerdo con el último dato aportado por la víctima)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `PER_SA`                       | Número de víctimas por ubicación sujetos a atención (personas activas para la atención y que no registran novedades como fallecimiento, sin documento válido o no activas para la atención)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `EVENTOS`                      | Número de eventos registrados (ocurrencia de un hecho victimizante a una persona, en un lugar y en una fecha determinada)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |

---

### 6.3 Fuentes de Datos

Los datos utilizados en este proyecto provienen de fuentes oficiales y de acceso público:

- [**Unidad para las Víctimas de Colombia** – Publicación de Datos Abiertos](https://www.unidadvictimas.gov.co/publicacion-de-datos-abiertos/)
- [**Plataforma de Datos Abiertos de Colombia** – Cifras de víctimas por hechos a nivel departamental](https://www.datos.gov.co/Inclusi-n-Social-y-Reconciliaci-n/Cifras-de-V-ctimas-por-Hechos-Departamental/rz2g-mxda/about_data)

---

## 7. Diseño del Esquema

El diseño de la base de datos sigue un modelo relacional que facilita la gestión eficiente de la información relacionada con los hechos victimizantes del conflicto armado en Colombia. Se definieron las siguientes tablas principales:

### 7.1 Tablas y Atributos

1. **Pais**

   - `id_pais` (PK) → Identificador único del país.
   - `nombre_pais` → Nombre del país.
2. **Departamento**

   - `id_departamento` (PK) → Identificador único del departamento.
   - `nombre_departamento` → Nombre del departamento.
   - `id_pais` (FK) → Relación con la tabla `Pais`, indicando a qué país pertenece.
3. **HechoVictimizante**

   - `id_hecho` (PK) → Identificador único del hecho victimizante.
   - `nombre_hecho` → Nombre o descripción del hecho victimizante.
   - `codigo_hecho` → Código de clasificación del hecho victimizante.
4. **Persona**

   - `id_persona` (PK) → Identificador único de la víctima.
   - `sexo` → Género de la víctima.
   - `etnia` → Grupo étnico de la víctima.
   - `discapacidad` → Información sobre discapacidad, si aplica.
   - `ciclo_vital` → Rango de edad de la víctima.
5. **EventoVictimizante**

   - `id_evento` (PK) → Identificador único del evento victimizante.
   - `fecha_corte` → Fecha en la que se registró el evento.
   - `id_departamento` (FK) → Relación con `Departamento`, indicando ubicación del evento.
   - `id_hecho` (FK) → Relación con `HechoVictimizante`, especificando tipo de hecho registrado.
   - `numero_eventos` → Número de eventos de este tipo reportados en la fecha de corte.
   - `personas_ocupadas_afectadas` → Número de personas ocupadas afectadas.
   - `personas_declarantes` → Número de víctimas que declararon el hecho.
   - `personas_ubicadas` → Número de víctimas ubicadas después del evento.
   - `personas_sin_asistencia` → Número de víctimas que no recibieron asistencia.
6. **VictimaEvento**

   - `id_victima_evento` (PK) → Identificador único del registro de una víctima en un evento.
   - `id_persona` (FK) → Relación con `Persona`, indicando quién fue afectado.
   - `id_evento` (FK) → Relación con `EventoVictimizante`, indicando en qué evento fue afectado.
