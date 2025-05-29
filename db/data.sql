-- ------------------------------------------------------------------------
-- Insertar datos en Area (solo 2 áreas)
INSERT INTO Area (nombre_area) VALUES 
('Matemáticas'), 
('Ciencias');

-- Insertar datos en Grado (solo 2 grados)
INSERT INTO Grado (nombre_grado) VALUES
('1° Secundaria'),
('2° Secundaria');

-- ------------------------------------------------------------------------

-- Inserciones de alumnos
INSERT INTO Estudiante (nombre, correo) VALUES
('Alumno 1', 'a1@aprende.pe'),
('Alumno 2', 'a2@aprende.pe'),
('Alumno 3', 'a3@aprende.pe'),
('Alumno 4', 'a4@aprende.pe'),
('Alumno 5', 'a5@aprende.pe'),
('Alumno 6', 'a6@aprende.pe'),
('Alumno 7', 'a7@aprende.pe'),
('Alumno 8', 'a8@aprende.pe'),
('Alumno 9', 'a9@aprende.pe'),
('Alumno 10', 'a10@aprende.pe');
-- ------------------------------------------------------------------------

-- Evaluaciones de Matemáticas
INSERT INTO Evaluacion (nombre, area_id, grado_id, fecha_inicio, fecha_fin, tiempo_desarrollo) VALUES
('Matemáticas Básicas 1', 1, 1, '2025-06-01', '2025-06-30', 60),
('Matemáticas Intermedias', 1, 2, '2025-06-01', '2025-06-30', 60);

-- Evaluaciones de Ciencia
INSERT INTO Evaluacion (nombre, area_id, grado_id, fecha_inicio, fecha_fin, tiempo_desarrollo) VALUES
('Ciencia Naturales 1', 2, 1, '2025-06-01', '2025-06-30', 60),
('Física Básica', 2, 2, '2025-06-01', '2025-06-30', 60),
('Biología Celular', 2, 2, '2025-06-01', '2025-06-30', 60);
-- ------------------------------------------------------------------------

-- Para Evaluación Matemáticas (evaluacion_id = 1)
INSERT INTO Pregunta (evaluacion_id, enunciado, puntaje) VALUES
(1, '¿Cuánto es 2 + 2?', 4),
(1, '¿Cuál es el resultado de 5 x 3?', 4),
(1, '¿Qué número es primo?', 4),
(1, '¿Cuál es la raíz cuadrada de 16?', 4),
(1, '¿Cuánto es 10 - 7?', 4);

-- Para Evaluación Ciencias (evaluacion_id = 2)
INSERT INTO Pregunta (evaluacion_id, enunciado, puntaje) VALUES
(2, '¿Cuál es el planeta más cercano al Sol?', 4),
(2, '¿Cuál es la función de los glóbulos rojos?', 4),
(2, '¿Qué es la fotosíntesis?', 4),
(2, '¿Cuál es el estado de la materia del agua a 100°C?', 4),
(2, '¿Qué órgano produce insulina?', 4);
-- ------------------------------------------------------------------------

-- Matemáticas - Pregunta 1 (id=1)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(1, '3', FALSE),
(1, '4', TRUE),
(1, '5', FALSE),
(1, '6', FALSE);

-- Matemáticas - Pregunta 2 (id=2)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(2, '15', TRUE),
(2, '10', FALSE),
(2, '8', FALSE),
(2, '20', FALSE);

-- Matemáticas - Pregunta 3 (id=3)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(3, '4', FALSE),
(3, '6', FALSE),
(3, '7', TRUE),
(3, '8', FALSE);

-- Matemáticas - Pregunta 4 (id=4)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(4, '2', FALSE),
(4, '3', FALSE),
(4, '4', TRUE),
(4, '5', FALSE);

-- Matemáticas - Pregunta 5 (id=5)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(5, '2', FALSE),
(5, '3', TRUE),
(5, '4', FALSE),
(5, '5', FALSE);
-- ------------------------------------------------------------------------

-- Ciencias - Pregunta 6 (id=6)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(6, 'Venus', FALSE),
(6, 'Marte', FALSE),
(6, 'Mercurio', TRUE),
(6, 'Júpiter', FALSE);

-- Ciencias - Pregunta 7 (id=7)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(7, 'Transportan oxígeno', TRUE),
(7, 'Producen hormonas', FALSE),
(7, 'Defienden contra virus', FALSE),
(7, 'Producen energía', FALSE);

-- Ciencias - Pregunta 8 (id=8)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(8, 'Proceso de respiración', FALSE),
(8, 'Proceso para convertir luz en energía', TRUE),
(8, 'Digestión', FALSE),
(8, 'Evaporación', FALSE);

-- Ciencias - Pregunta 9 (id=9)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(9, 'Sólido', FALSE),
(9, 'Líquido', FALSE),
(9, 'Gas', TRUE),
(9, 'Plasma', FALSE);

-- Ciencias - Pregunta 10 (id=10)
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(10, 'Hígado', FALSE),
(10, 'Páncreas', TRUE),
(10, 'Riñón', FALSE),
(10, 'Corazón', FALSE);
-- ------------------------------------------------------------------------

-- Alumno 1 asignado a evaluaciones 1, 2, 3
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(1, 1), (1, 2), (1, 3);

-- Alumno 2 asignado a evaluaciones 1, 4, 5
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(2, 1), (2, 4), (2, 5);

-- Alumno 3 asignado a evaluaciones 2, 3, 5
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(3, 2), (3, 3), (3, 5);

-- Alumno 4 asignado a evaluaciones 1, 3, 4
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(4, 1), (4, 3), (4, 4);
-- ------------------------------------------------------------------------

-- Alumno 5 asignado a evaluaciones 2 y 5
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(5, 2), (5, 5);

-- Alumno 6 asignado a evaluaciones 3 y 4
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(6, 3), (6, 4);

-- Alumno 7 asignado a evaluaciones 1 y 5
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(7, 1), (7, 5);
-- ------------------------------------------------------------------------

-- Aprobados
INSERT INTO Desarrollo (asignacion_id, fecha_hora_inicio, fecha_hora_fin, puntaje_obtenido, estado) VALUES
(1,  '2025-06-01 09:00:00', '2025-06-01 10:00:00', 18.00, 'aprobado'),
(2,  '2025-06-01 11:00:00', '2025-06-01 12:00:00', 16.00, 'aprobado'),
(3,  '2025-06-02 09:00:00', '2025-06-02 10:00:00', 19.00, 'aprobado'),
(4,  '2025-06-02 11:00:00', '2025-06-02 12:00:00', 17.00, 'aprobado'),
(5,  '2025-06-03 09:00:00', '2025-06-03 10:00:00', 15.50, 'aprobado');

-- Desaprobados (ejemplo: alumnos 3 y 5)
INSERT INTO Desarrollo (asignacion_id, fecha_hora_inicio, fecha_hora_fin, puntaje_obtenido, estado) VALUES
(6,  '2025-06-04 09:00:00', '2025-06-04 10:00:00', 8.00, 'desaprobado'),
(7,  '2025-06-04 11:00:00', '2025-06-04 12:00:00', 9.50, 'desaprobado');
-- ------------------------------------------------------------------------

-- VERIFICACION
DESCRIBE Pregunta;

SELECT * FROM Evaluacion WHERE evaluacion_id = 1;

SELECT * 
FROM Desarrollo D
JOIN Asignacion A ON D.asignacion_id = A.asignacion_id
WHERE A.estudiante_id = 5;

 SELECT 
  E.estudiante_id,
  E.nombre,
  ROUND(AVG(D.puntaje_obtenido), 2) AS promedio_calificacion
FROM Estudiante E
JOIN Asignacion A ON E.estudiante_id = A.estudiante_id
JOIN Desarrollo D ON A.asignacion_id = D.asignacion_id
GROUP BY E.estudiante_id;
-- ------------------------------------------------------------------------