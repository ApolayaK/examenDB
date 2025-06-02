-- ------------------------------------------------------------------------
-- VERIFICACION
DROP DATABASE AprendePeru;
SELECT * FROM Evaluacion;

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

-- CONSULTAS 
-- a. ¿Cuántos alumnos desaprobados tenemos en total? 
SELECT COUNT(DISTINCT a.estudiante_id) AS alumnos_desaprobados
FROM Desarrollo d
JOIN Asignacion a ON d.asignacion_id = a.asignacion_id
WHERE d.estado = 'desaprobado';

-- b. ¿Cuántos alumnos aprobados en un determinado curso tenemos? 
SELECT COUNT(DISTINCT a.estudiante_id) AS alumnos_aprobados
FROM Desarrollo d
JOIN Asignacion a ON d.asignacion_id = a.asignacion_id
WHERE d.estado = 'aprobado' AND a.evaluacion_id = 1;

-- c. ¿A cuántos exámenes está inscrito un alumno y cuántos de ellos están resueltos y pendientes? 
SELECT 
  COUNT(*) AS total_inscritos,
  COUNT(d.desarrollo_id) AS exámenes_resueltos,
  COUNT(*) - COUNT(d.desarrollo_id) AS exámenes_pendientes
FROM Asignacion a
LEFT JOIN Desarrollo d ON a.asignacion_id = d.asignacion_id
WHERE a.estudiante_id = 1;


-- d. ¿Cuál es la mejor y peor calificación de una determinada evaluación? 
SELECT 
  MAX(d.puntaje_obtenido) AS mejor_calificacion,
  MIN(d.puntaje_obtenido) AS peor_calificacion
FROM Desarrollo d
JOIN Asignacion a ON d.asignacion_id = a.asignacion_id
WHERE a.evaluacion_id = 1;

-- e. ¿Cómo calcularíamos el promedio de calificaciones de un estudiante?
SELECT 
  AVG(d.puntaje_obtenido) AS promedio_calificacion
FROM Desarrollo d
JOIN Asignacion a ON d.asignacion_id = a.asignacion_id
WHERE a.estudiante_id = 1;

-- mas ordenado
SELECT
  E.estudiante_id,
  E.nombre,
  ROUND(AVG(D.puntaje_obtenido), 2) AS promedio_calificacion
FROM Estudiante E
JOIN Asignacion A ON E.estudiante_id = A.estudiante_id
JOIN Desarrollo D ON A.asignacion_id = D.asignacion_id
GROUP BY E.estudiante_id, E.nombre
ORDER BY promedio_calificacion DESC;
-- ------------------------------------------------------------------------
