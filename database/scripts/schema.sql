CREATE SCHEMA `conflicto_armado` DEFAULT CHARACTER SET utf8mb4 ;

USE conflicto_armado;

-- Tabla: persona
-- Descripción: Contiene información sociodemográfica básica de cada víctima registrada en el conflicto armado.
-- Incluye atributos individuales que permiten análisis por características personales como sexo, etnia o ciclo vital.

CREATE TABLE Persona (
    id_persona INT PRIMARY KEY COMMENT 'Identificador único de la víctima',
    sexo VARCHAR(20) COMMENT 'Género de la víctima',
    etnia VARCHAR(50) COMMENT 'Grupo étnico al que pertenece la víctima',
    discapacidad VARCHAR(50) COMMENT 'Información sobre discapacidad, si aplica',
    ciclo_vital VARCHAR(50) COMMENT 'Clasificación de la víctima según su rango de edad'
) COMMENT='Información sociodemográfica básica de víctimas del conflicto armado';

-- Tabla: departamento
CREATE TABLE Departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

-- Tabla: HechoVictimizante
CREATE TABLE HechoVictimizante (
    id_hecho INT AUTO_INCREMENT PRIMARY KEY,
    nombre_hecho VARCHAR(255) NOT NULL
);

-- Tabla: EventoVictimizante
CREATE TABLE EventoVictimizante (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    fecha_corte DATE NOT NULL,
    numero_eventos INT NOT NULL,
    personas_ocupadas_afectadas INT NOT NULL,
    personas_declarantes INT NOT NULL,
    personas_ubicadas INT NOT NULL,
    personas_sin_asistencia INT NOT NULL,
    id_departamento INT,
    id_hecho INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
    FOREIGN KEY (id_hecho) REFERENCES HechoVictimizante(id_hecho)
);

-- Tabla: VictimiaEvento
CREATE TABLE VictimiaEvento (
    id_victima_evento INT AUTO_INCREMENT PRIMARY KEY,
    id_persona INT,
    id_evento INT,
    FOREIGN KEY (id_persona) REFERENCES Persona(id_persona),
    FOREIGN KEY (id_evento) REFERENCES EventoVictimizante(id_evento)
);

