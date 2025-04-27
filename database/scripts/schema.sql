CREATE SCHEMA `conflicto_armado` DEFAULT CHARACTER SET utf8mb4 ;

USE conflicto_armado;

-- Tabla: persona
-- Descripción: Contiene información sociodemográfica básica de cada víctima registrada en el conflicto armado.
-- Incluye atributos individuales que permiten análisis por características personales como sexo, etnia o ciclo vital.

CREATE TABLE persona (
    id_persona INT PRIMARY KEY COMMENT 'Identificador único de la víctima',
    sexo VARCHAR(20) COMMENT 'Género de la víctima',
    etnia VARCHAR(50) COMMENT 'Grupo étnico al que pertenece la víctima',
    discapacidad VARCHAR(50) COMMENT 'Información sobre discapacidad, si aplica',
    ciclo_vital VARCHAR(50) COMMENT 'Clasificación de la víctima según su rango de edad'
) COMMENT='Información sociodemográfica básica de víctimas del conflicto armado';
