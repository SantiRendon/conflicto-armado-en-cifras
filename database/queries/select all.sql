SELECT `hechovictimizante`.`id_hecho`,
    `hechovictimizante`.`nombre_hecho`
FROM `conflicto_armado`.`hechovictimizante`;

SELECT `departamento`.`id_departamento`,
    `departamento`.`nombre_departamento`
FROM `conflicto_armado`.`departamento`;

SELECT `reportehecho`.`id_reporte_hecho`,
    `reportehecho`.`numero_eventos`,
    `reportehecho`.`personas_afectadas`,
    `reportehecho`.`personas_declarantes`,
    `reportehecho`.`personas_ubicadas`,
    `reportehecho`.`personas_sujeto_asistencia`,
    `reportehecho`.`id_departamento`,
    `reportehecho`.`id_hecho`
FROM `conflicto_armado`.`reportehecho`;

SELECT `reportegrupo`.`id_reporte_grupo`,
    `reportegrupo`.`id_grupo_poblacional`,
    `reportegrupo`.`id_reporte_hecho`
FROM `conflicto_armado`.`reportegrupo`;

SELECT `grupopoblacional`.`id_grupo_poblacional`,
    `grupopoblacional`.`sexo`,
    `grupopoblacional`.`etnia`,
    `grupopoblacional`.`discapacidad`,
    `grupopoblacional`.`ciclo_vital`
FROM `conflicto_armado`.`grupopoblacional`;