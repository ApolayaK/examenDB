-- ------------------------------------------------------------------------
-- Insertar áreas
INSERT INTO Area (nombre_area) VALUES
('Matemáticas'),
('Comunicación'),
('Ciencia'),
('Historia'),
('Inglés');

-- Insertar grados
INSERT INTO Grado (nombre_grado) VALUES
('1° Primaria'),
('2° Primaria'),
('3° Primaria'),
('4° Primaria'),
('5° Primaria');

-- Insertar estudiantes
INSERT INTO Estudiante (nombre, correo) VALUES
('Carlos Mendoza', 'carlos.mendoza@example.com'),
('Ana Torres', 'ana.torres@example.com'),
('Luis Ramirez', 'luis.ramirez@example.com'),
('Sofia Diaz', 'sofia.diaz@example.com'),
('Miguel Rojas', 'miguel.rojas@example.com'),
('Valeria Flores', 'valeria.flores@example.com'),
('Jorge Castillo', 'jorge.castillo@example.com'),
('Paola Medina', 'paola.medina@example.com'),
('Ricardo Salazar', 'ricardo.salazar@example.com'),
('Elena Vargas', 'elena.vargas@example.com');

-- Insertar evaluaciones
INSERT INTO Evaluacion (nombre, area_id, grado_id, fecha_inicio, fecha_fin, tiempo_desarrollo, puntaje_total) VALUES
('Evaluación 1', 1, 1, '2025-05-01', '2025-05-07', 60, 20.00),
('Evaluación 2', 2, 2, '2025-05-03', '2025-05-09', 75, 20.00),
('Evaluación 3', 3, 3, '2025-05-05', '2025-05-11', 45, 20.00),
('Evaluación 4', 4, 4, '2025-05-07', '2025-05-13', 90, 20.00),
('Evaluación 5', 5, 5, '2025-05-09', '2025-05-15', 30, 20.00);

-- Preguntas Evaluación 1
INSERT INTO Pregunta (evaluacion_id, enunciado, puntaje) VALUES
(1, '¿Cuál es la suma de 2 + 3?', 4.00),
(1, '¿Qué número es mayor: 10 o 7?', 4.00),
(1, '¿Cuánto es 5 x 2?', 4.00),
(1, '¿Cuál es el resultado de 9 - 4?', 4.00),
(1, '¿Cuál es la mitad de 8?', 4.00);

-- ------------------------------------------------------------------------
-- Alternativas Evaluación 1
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(1, '4', FALSE),
(1, '5', TRUE),
(1, '6', FALSE),
(1, '3', FALSE),

(2, '7', FALSE),
(2, '10', TRUE),
(2, '5', FALSE),
(2, '9', FALSE),

(3, '7', FALSE),
(3, '10', TRUE),
(3, '12', FALSE),
(3, '15', FALSE),

(4, '3', FALSE),
(4, '5', TRUE),
(4, '6', FALSE),
(4, '7', FALSE),

(5, '2', FALSE),
(5, '4', TRUE),
(5, '6', FALSE),
(5, '8', FALSE);


-- Preguntas Evaluación 2
INSERT INTO Pregunta (evaluacion_id, enunciado, puntaje) VALUES
(2, '¿Cuál es la capital de Perú?', 4.00),
(2, '¿Qué animal es conocido como el "rey de la selva"?', 4.00),
(2, '¿Cuál es el color resultante de mezclar rojo y azul?', 4.00),
(2, '¿Cuántos continentes hay en el mundo?', 4.00),
(2, '¿Qué planeta está más cerca del Sol?', 4.00);

-- Alternativas Evaluación 2
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(6, 'Lima', TRUE),
(6, 'Cusco', FALSE),
(6, 'Arequipa', FALSE),
(6, 'Trujillo', FALSE),

(7, 'Tigre', FALSE),
(7, 'León', TRUE),
(7, 'Elefante', FALSE),
(7, 'Lobo', FALSE),

(8, 'Morado', TRUE),
(8, 'Verde', FALSE),
(8, 'Naranja', FALSE),
(8, 'Amarillo', FALSE),

(9, '5', FALSE),
(9, '6', FALSE),
(9, '7', TRUE),
(9, '8', FALSE),

(10, 'Mercurio', TRUE),
(10, 'Venus', FALSE),
(10, 'Marte', FALSE),
(10, 'Júpiter', FALSE);


-- Preguntas Evaluación 3
INSERT INTO Pregunta (evaluacion_id, enunciado, puntaje) VALUES
(3, '¿Qué gas respiramos para vivir?', 4.00),
(3, '¿Cuál es el órgano principal del sistema circulatorio?', 4.00),
(3, '¿Cuántos lados tiene un triángulo?', 4.00),
(3, '¿En qué año llegó Colón a América?', 4.00),
(3, '¿Qué instrumento mide la temperatura?', 4.00);

-- Alternativas Evaluación 3
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(11, 'Oxígeno', TRUE),
(11, 'Nitrógeno', FALSE),
(11, 'Dióxido de carbono', FALSE),
(11, 'Helio', FALSE),

(12, 'Corazón', TRUE),
(12, 'Pulmón', FALSE),
(12, 'Hígado', FALSE),
(12, 'Riñón', FALSE),

(13, '3', TRUE),
(13, '4', FALSE),
(13, '5', FALSE),
(13, '6', FALSE),

(14, '1492', TRUE),
(14, '1500', FALSE),
(14, '1480', FALSE),
(14, '1510', FALSE),

(15, 'Termómetro', TRUE),
(15, 'Barómetro', FALSE),
(15, 'Higrómetro', FALSE),
(15, 'Cronómetro', FALSE);


-- Preguntas Evaluación 4
INSERT INTO Pregunta (evaluacion_id, enunciado, puntaje) VALUES
(4, '¿Quién fue el primer presidente del Perú?', 4.00),
(4, '¿Qué río es el más largo del mundo?', 4.00),
(4, '¿Cuántos colores tiene el arcoíris?', 4.00),
(4, '¿Cuál es el océano más grande?', 4.00),
(4, '¿Qué país tiene la mayor población?', 4.00);

-- Alternativas Evaluación 4
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(16, 'José de San Martín', FALSE),
(16, 'José de la Riva-Agüero', TRUE),
(16, 'Simón Bolívar', FALSE),
(16, 'Andrés Avelino Cáceres', FALSE),

(17, 'Amazonas', TRUE),
(17, 'Nilo', FALSE),
(17, 'Misisipi', FALSE),
(17, 'Yangtsé', FALSE),

(18, '7', TRUE),
(18, '6', FALSE),
(18, '8', FALSE),
(18, '9', FALSE),

(19, 'Pacífico', TRUE),
(19, 'Atlántico', FALSE),
(19, 'Índico', FALSE),
(19, 'Ártico', FALSE),

(20, 'China', TRUE),
(20, 'India', FALSE),
(20, 'Estados Unidos', FALSE),
(20, 'Indonesia', FALSE);


-- Preguntas Evaluación 5
INSERT INTO Pregunta (evaluacion_id, enunciado, puntaje) VALUES
(5, '¿Qué palabra es un sustantivo?', 4.00),
(5, '¿Cuál es el plural de “pez”?', 4.00),
(5, '¿Cuál es la forma correcta del verbo “ir” en primera persona del singular?', 4.00),
(5, '¿Qué signo de puntuación indica una pregunta?', 4.00),
(5, '¿Cuál es el antónimo de “rápido”?', 4.00);

-- Alternativas Evaluación 5
INSERT INTO Alternativa (pregunta_id, descripcion, es_correcta) VALUES
(21, 'Correr', FALSE),
(21, 'Casa', TRUE),
(21, 'Rápidamente', FALSE),
(21, 'Verde', FALSE),

(22, 'Peces', TRUE),
(22, 'Peses', FALSE),
(22, 'Peces', FALSE),
(22, 'Pezes', FALSE),

(23, 'Voy', TRUE),
(23, 'Va', FALSE),
(23, 'Fui', FALSE),
(23, 'Vamos', FALSE),

(24, '¿', TRUE),
(24, '.', FALSE),
(24, '!', FALSE),
(24, ',', FALSE),

(25, 'Lento', TRUE),
(25, 'Rápido', FALSE),
(25, 'Grande', FALSE),
(25, 'Pequeño', FALSE);

-- ------------------------------------------------------------------------
-- Bloque A: estudiantes 1-4 a evaluaciones 1, 2, 3
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2), (2, 3),
(3, 1), (3, 2), (3, 3),
(4, 1), (4, 2), (4, 3);

-- Bloque B: estudiantes 5-7 a evaluaciones 4, 5
INSERT INTO Asignacion (estudiante_id, evaluacion_id) VALUES
(5, 4), (5, 5),
(6, 4), (6, 5),
(7, 4), (7, 5);

-- Estudiantes 8,9,10 no asignados (sin registros en Asignacion)

-- ------------------------------------------------------------------------
INSERT INTO Desarrollo (asignacion_id, fecha_hora_inicio, fecha_hora_fin, puntaje_obtenido, estado) VALUES
-- Alumno 1 (3 examenes)
(1,  '2025-06-01 08:00:00', '2025-06-01 08:45:00', 18.0, 'aprobado'),
(2,  '2025-06-02 09:00:00', '2025-06-02 09:50:00', 19.0, 'aprobado'),
(3,  '2025-06-03 10:00:00', '2025-06-03 10:40:00', 18.0, 'aprobado'),

-- Alumno 2 (3 examenes)
(4,  '2025-06-01 11:00:00', '2025-06-01 11:45:00', 05.0, 'desaprobado'),
(5,  '2025-06-02 12:00:00', '2025-06-02 12:35:00', 01.0, 'desaprobado'),
(6,  '2025-06-03 13:00:00', '2025-06-03 13:50:00', 03.0, 'desaprobado'),

-- Alumno 3 (3 examenes)
(7,  '2025-06-04 08:30:00', '2025-06-04 09:15:00', 19.0, 'aprobado'),
(8,  '2025-06-05 09:30:00', '2025-06-05 10:10:00', 16.5, 'aprobado'),
(9,  '2025-06-06 10:30:00', '2025-06-06 11:10:00', 14.0, 'aprobado'),

-- Alumno 4 (3 examenes)
(10, '2025-06-04 11:30:00', '2025-06-04 12:10:00', 20.0, 'aprobado'),
(11, '2025-06-05 12:30:00', '2025-06-05 13:15:00', 18.0, 'aprobado'),
(12, '2025-06-06 13:30:00', '2025-06-06 14:00:00', 19.0, 'aprobado'),

-- Alumno 5 (2 examenes)
(13, '2025-06-07 08:00:00', '2025-06-07 08:40:00', 05.0, 'desaprobado'),
(14, '2025-06-08 09:00:00', '2025-06-08 09:30:00', 06.0, 'desaprobado'),

-- Alumno 6 (2 examenes)
(15, '2025-06-07 10:00:00', '2025-06-07 10:45:00', 18.0, 'aprobado'),
(16, '2025-06-08 11:00:00', '2025-06-08 11:40:00', 18.0, 'aprobado'),

-- Alumno 7 (2 examenes)
(17, '2025-06-09 08:00:00', '2025-06-09 08:50:00', 18.5, 'aprobado'),
(18, '2025-06-10 09:00:00', '2025-06-10 09:40:00', 19.0, 'aprobado');