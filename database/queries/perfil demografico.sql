-- Afectación por hecho y etnia (personas afectadas)
SELECT 
    GrupoPoblacional.etnia,
    HechoVictimizante.nombre_hecho,
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteGrupo
JOIN GrupoPoblacional ON ReporteGrupo.id_grupo_poblacional = GrupoPoblacional.id_grupo_poblacional
JOIN ReporteHecho ON ReporteGrupo.id_reporte_hecho = ReporteHecho.id_reporte_hecho
JOIN HechoVictimizante ON ReporteHecho.id_hecho = HechoVictimizante.id_hecho
GROUP BY GrupoPoblacional.etnia, HechoVictimizante.nombre_hecho
ORDER BY GrupoPoblacional.etnia, total_afectados DESC;

-- Afectación por hecho (ordenado por etnia más afectada)
SELECT 
    HechoVictimizante.nombre_hecho,
    GrupoPoblacional.etnia,
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteGrupo
JOIN GrupoPoblacional ON ReporteGrupo.id_grupo_poblacional = GrupoPoblacional.id_grupo_poblacional
JOIN ReporteHecho ON ReporteGrupo.id_reporte_hecho = ReporteHecho.id_reporte_hecho
JOIN HechoVictimizante ON ReporteHecho.id_hecho = HechoVictimizante.id_hecho
GROUP BY HechoVictimizante.nombre_hecho, GrupoPoblacional.etnia
ORDER BY HechoVictimizante.nombre_hecho, total_afectados DESC;

-- Frecuencia de hechos victimizantes por sexo
SELECT 
    GrupoPoblacional.sexo,
    HechoVictimizante.nombre_hecho,
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteGrupo
JOIN GrupoPoblacional ON ReporteGrupo.id_grupo_poblacional = GrupoPoblacional.id_grupo_poblacional
JOIN ReporteHecho ON ReporteGrupo.id_reporte_hecho = ReporteHecho.id_reporte_hecho
JOIN HechoVictimizante ON ReporteHecho.id_hecho = HechoVictimizante.id_hecho
GROUP BY GrupoPoblacional.sexo, HechoVictimizante.nombre_hecho
ORDER BY GrupoPoblacional.sexo, total_afectados DESC;

-- Afectación por grupo de edad (ciclo vital)
SELECT 
    GrupoPoblacional.ciclo_vital,
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteGrupo
JOIN GrupoPoblacional ON ReporteGrupo.id_grupo_poblacional = GrupoPoblacional.id_grupo_poblacional
JOIN ReporteHecho ON ReporteGrupo.id_reporte_hecho = ReporteHecho.id_reporte_hecho
GROUP BY GrupoPoblacional.ciclo_vital
ORDER BY total_afectados DESC;

-- Afectación por ciclo vital y hecho victimizante
SELECT 
    GrupoPoblacional.ciclo_vital,
    HechoVictimizante.nombre_hecho,
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteGrupo
JOIN GrupoPoblacional ON ReporteGrupo.id_grupo_poblacional = GrupoPoblacional.id_grupo_poblacional
JOIN ReporteHecho ON ReporteGrupo.id_reporte_hecho = ReporteHecho.id_reporte_hecho
JOIN HechoVictimizante ON ReporteHecho.id_hecho = HechoVictimizante.id_hecho
GROUP BY GrupoPoblacional.ciclo_vital, HechoVictimizante.nombre_hecho
ORDER BY GrupoPoblacional.ciclo_vital, total_afectados DESC;

-- ¿Cuál es la etnia más afectada por región?
