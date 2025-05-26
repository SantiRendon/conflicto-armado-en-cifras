-- Crear la base de datos
CREATE SCHEMA `conflicto_armado` DEFAULT CHARACTER SET utf8mb4 ;
USE conflicto_armado;

-- Tabla: Departamento
CREATE TABLE Departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

-- Tabla: HechoVictimizante
CREATE TABLE HechoVictimizante (
    id_hecho INT AUTO_INCREMENT PRIMARY KEY,
    nombre_hecho VARCHAR(255) NOT NULL
);

-- Tabla: ReporteHecho
CREATE TABLE ReporteHecho (
    id_reporte_hecho INT AUTO_INCREMENT PRIMARY KEY,
    numero_eventos INT NOT NULL,
    personas_afectadas INT NOT NULL,
    personas_declarantes INT NOT NULL,
    personas_ubicadas INT NOT NULL,
    personas_sujeto_asistencia INT NOT NULL,
    id_departamento INT,
    id_hecho INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento),
    FOREIGN KEY (id_hecho) REFERENCES HechoVictimizante(id_hecho)
);

-- Tabla: GrupoPoblacional
CREATE TABLE GrupoPoblacional (
    id_grupo_poblacional INT AUTO_INCREMENT PRIMARY KEY,
    sexo VARCHAR(20) NOT NULL,
    etnia VARCHAR(50),
    discapacidad VARCHAR(50),
    ciclo_vital VARCHAR(20)
);

-- Tabla: ReporteGrupo
CREATE TABLE ReporteGrupo (
    id_reporte_grupo INT AUTO_INCREMENT PRIMARY KEY,
    id_grupo_poblacional INT,
    id_reporte_hecho INT,
    FOREIGN KEY (id_grupo_poblacional) REFERENCES GrupoPoblacional(id_grupo_poblacional),
    FOREIGN KEY (id_reporte_hecho) REFERENCES ReporteHecho(id_reporte_hecho)
);