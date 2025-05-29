
-- CONSULTAS 
-- a. ¿Cuántos alumnos desaprobados tenemos en total? 
SELECT COUNT(DISTINCT A.estudiante_id) AS total_desaprobados
FROM Desarrollo D
JOIN Asignacion A ON D.asignacion_id = A.asignacion_id
WHERE D.estado = 'desaprobado';

-- b. ¿Cuántos alumnos aprobados en un determinado curso tenemos? 
SELECT COUNT(DISTINCT A.estudiante_id) AS total_aprobados
FROM Desarrollo D
JOIN Asignacion A ON D.asignacion_id = A.asignacion_id
WHERE D.estado = 'aprobado'
  AND A.evaluacion_id = 1;

-- c. ¿A cuántos exámenes está inscrito un alumno y cuántos de ellos están resueltos y pendientes? 
SELECT 
  E.estudiante_id,
  E.nombre,
  COUNT(A.asignacion_id) AS total_asignados,
  COUNT(D.desarrollo_id) AS total_resueltos,
  (COUNT(A.asignacion_id) - COUNT(D.desarrollo_id)) AS total_pendientes
FROM Estudiante E
LEFT JOIN Asignacion A ON E.estudiante_id = A.estudiante_id
LEFT JOIN Desarrollo D ON A.asignacion_id = D.asignacion_id
WHERE E.estudiante_id = 5
GROUP BY E.estudiante_id;

-- d. ¿Cuál es la mejor y peor calificación de una determinada evaluación? 
SELECT 
  MAX(D.puntaje_obtenido) AS mejor_calificacion,
  MIN(D.puntaje_obtenido) AS peor_calificacion
FROM Desarrollo D
JOIN Asignacion A ON D.asignacion_id = A.asignacion_id
WHERE A.evaluacion_id = 1;

-- e. ¿Cómo calcularíamos el promedio de calificaciones de un estudiante?
SELECT 
  E.estudiante_id,
  E.nombre,
  AVG(D.puntaje_obtenido) AS promedio_calificacion
FROM Estudiante E
JOIN Asignacion A ON E.estudiante_id = A.estudiante_id
JOIN Desarrollo D ON A.asignacion_id = D.asignacion_id
WHERE E.estudiante_id = 2
GROUP BY E.estudiante_id;
-- ------------------------------------------------------------------------
