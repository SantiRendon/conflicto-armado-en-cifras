-- Obtener los departamentos con más eventos registrados (sumando EVENTOS por departamento)
SELECT 
    Departamento.nombre_departamento, 
    SUM(ReporteHecho.numero_eventos) AS total_eventos
FROM ReporteHecho
JOIN Departamento 
    ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento
ORDER BY total_eventos DESC;

-- Obtener los departamentos con más personas afectadas por hechos victimizantes (sumando PER_OCU por departamento)
SELECT 
    Departamento.nombre_departamento, 
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteHecho
JOIN Departamento 
    ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento
ORDER BY total_afectados DESC;

-- Obtener los hechos victimizantes más frecuentes en cada departamento (sumando EVENTOS por departamento y hecho)
SELECT 
    Departamento.nombre_departamento,
    HechoVictimizante.nombre_hecho,
    SUM(ReporteHecho.numero_eventos) AS total_eventos
FROM ReporteHecho
JOIN Departamento 
    ON ReporteHecho.id_departamento = Departamento.id_departamento
JOIN HechoVictimizante 
    ON ReporteHecho.id_hecho = HechoVictimizante.id_hecho
GROUP BY Departamento.nombre_departamento, HechoVictimizante.nombre_hecho
ORDER BY Departamento.nombre_departamento, total_eventos DESC;

-- Obtener los departamentos con mayor número de personas que declararon (sumando PER_DECLA por departamento)
SELECT 
    Departamento.nombre_departamento,
    SUM(ReporteHecho.personas_declarantes) AS total_declarantes
FROM ReporteHecho
JOIN Departamento 
    ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento
ORDER BY total_declarantes DESC;

-- Obtener los departamentos con menor número de personas que declararon (sumando PER_DECLA por departamento)
SELECT 
    Departamento.nombre_departamento,
    SUM(ReporteHecho.personas_declarantes) AS total_declarantes
FROM ReporteHecho
JOIN Departamento 
    ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento
ORDER BY total_declarantes ASC;

-- Total de personas ubicadas por departamento
SELECT 
    Departamento.nombre_departamento,
    SUM(ReporteHecho.personas_ubicadas) AS total_ubicadas
FROM ReporteHecho
JOIN Departamento 
    ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento
ORDER BY total_ubicadas DESC;

-- Total de personas sujetas a atención por departamento
SELECT 
    Departamento.nombre_departamento,
    SUM(ReporteHecho.personas_sujeto_asistencia) AS total_sujetos_atencion
FROM ReporteHecho
JOIN Departamento 
    ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento
ORDER BY total_sujetos_atencion DESC;

-- Número de personas afectadas por sexo y departamento
SELECT 
    Departamento.nombre_departamento,
    GrupoPoblacional.sexo,
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteGrupo
JOIN GrupoPoblacional ON ReporteGrupo.id_grupo_poblacional = GrupoPoblacional.id_grupo_poblacional
JOIN ReporteHecho ON ReporteGrupo.id_reporte_hecho = ReporteHecho.id_reporte_hecho
JOIN Departamento ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento, GrupoPoblacional.sexo
ORDER BY Departamento.nombre_departamento, total_afectados DESC;

-- Número de personas afectadas por ciclo vital y departamento
SELECT 
    Departamento.nombre_departamento,
    GrupoPoblacional.ciclo_vital,
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteGrupo
JOIN GrupoPoblacional ON ReporteGrupo.id_grupo_poblacional = GrupoPoblacional.id_grupo_poblacional
JOIN ReporteHecho ON ReporteGrupo.id_reporte_hecho = ReporteHecho.id_reporte_hecho
JOIN Departamento ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento, GrupoPoblacional.ciclo_vital
ORDER BY Departamento.nombre_departamento, total_afectados DESC;

-- Número de personas afectadas por tipo de discapacidad y departamento
SELECT 
    Departamento.nombre_departamento,
    GrupoPoblacional.discapacidad,
    SUM(ReporteHecho.personas_afectadas) AS total_afectados
FROM ReporteGrupo
JOIN GrupoPoblacional ON ReporteGrupo.id_grupo_poblacional = GrupoPoblacional.id_grupo_poblacional
JOIN ReporteHecho ON ReporteGrupo.id_reporte_hecho = ReporteHecho.id_reporte_hecho
JOIN Departamento ON ReporteHecho.id_departamento = Departamento.id_departamento
GROUP BY Departamento.nombre_departamento, GrupoPoblacional.discapacidad
ORDER BY Departamento.nombre_departamento, total_afectados DESC;

