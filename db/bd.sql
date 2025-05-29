CREATE DATABASE IF NOT EXISTS AprendePeru;
USE AprendePeru;

-- Crear tablas
CREATE TABLE IF NOT EXISTS Area (
  area_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_area VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Grado (
  grado_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_grado VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Evaluacion (
  evaluacion_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  area_id INT NOT NULL,
  grado_id INT NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NOT NULL,
  tiempo_desarrollo INT NOT NULL,
  puntaje_total DECIMAL(5,2) DEFAULT 20.00,
  CONSTRAINT fk_area FOREIGN KEY (area_id) REFERENCES Area(area_id),
  CONSTRAINT fk_grado FOREIGN KEY (grado_id) REFERENCES Grado(grado_id)
);

CREATE TABLE IF NOT EXISTS Estudiante (
  estudiante_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  correo VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Pregunta (
  pregunta_id INT PRIMARY KEY AUTO_INCREMENT,
  evaluacion_id INT NOT NULL,
  enunciado TEXT NOT NULL,
  puntaje DECIMAL(5,2) NOT NULL,
  CONSTRAINT fk_evaluacion FOREIGN KEY (evaluacion_id) REFERENCES Evaluacion(evaluacion_id)
);

CREATE TABLE IF NOT EXISTS Alternativa (
  alternativa_id INT PRIMARY KEY AUTO_INCREMENT,
  pregunta_id INT NOT NULL,
  descripcion TEXT NOT NULL,
  es_correcta BOOLEAN NOT NULL,
  CONSTRAINT fk_pregunta FOREIGN KEY (pregunta_id) REFERENCES Pregunta(pregunta_id)
);

CREATE TABLE IF NOT EXISTS Asignacion (
  asignacion_id INT PRIMARY KEY AUTO_INCREMENT,
  estudiante_id INT NOT NULL,
  evaluacion_id INT NOT NULL,
  CONSTRAINT fk_estudiante FOREIGN KEY (estudiante_id) REFERENCES Estudiante(estudiante_id),
  CONSTRAINT fk_evaluacion_asignada FOREIGN KEY (evaluacion_id) REFERENCES Evaluacion(evaluacion_id),
  UNIQUE (estudiante_id, evaluacion_id)
);

CREATE TABLE IF NOT EXISTS Desarrollo (
  desarrollo_id INT PRIMARY KEY AUTO_INCREMENT,
  asignacion_id INT UNIQUE NOT NULL,
  fecha_hora_inicio DATETIME NOT NULL,
  fecha_hora_fin DATETIME NOT NULL,
  puntaje_obtenido DECIMAL(5,2) NOT NULL,
  estado ENUM('aprobado', 'desaprobado') NOT NULL,
  CONSTRAINT fk_asignacion FOREIGN KEY (asignacion_id) REFERENCES Asignacion(asignacion_id)
);

CREATE TABLE IF NOT EXISTS Respuesta (
  respuesta_id INT PRIMARY KEY AUTO_INCREMENT,
  desarrollo_id INT NOT NULL,
  pregunta_id INT NOT NULL,
  alternativa_id INT NOT NULL,
  CONSTRAINT fk_desarrollo FOREIGN KEY (desarrollo_id) REFERENCES Desarrollo(desarrollo_id),
  CONSTRAINT fk_pregunta_respuesta FOREIGN KEY (pregunta_id) REFERENCES Pregunta(pregunta_id),
  CONSTRAINT fk_alternativa FOREIGN KEY (alternativa_id) REFERENCES Alternativa(alternativa_id)
);

