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

