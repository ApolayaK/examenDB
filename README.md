# Proyecto Aprende Perú - Sistema de Evaluación Web

## Descripción

Este proyecto consiste en desarrollar un modelo relacional y una base de datos para el centro de capacitación **"Aprende Perú"**, con el objetivo de crear una aplicación web que permita evaluar a sus estudiantes mediante evaluaciones en línea.

---

## Requerimientos del sistema

1. Crear evaluaciones clasificadas por tipo o área.
2. Evaluaciones de tipo cerrado con alternativas múltiples, una única respuesta correcta.
3. Cada pregunta tiene un puntaje asignado.
4. Evaluaciones vigesimales (total 20 puntos).
5. Cada evaluación tiene fecha de inicio, fecha de fin y tiempo máximo para realizarla.
6. Un estudiante puede rendir una evaluación solo una vez.
7. El administrador puede crear evaluaciones y gestionar intentos fallidos.
8. Registro de fecha y hora de inicio y fin de cada examen rendido.
9. Los estudiantes solo pueden rendir las evaluaciones asignadas.
10. Registro completo de exámenes, respuestas, puntajes y estudiantes.

---

## Modelo Relacional

El modelo relacional incluye las siguientes entidades principales:

- **Area**: Clasifica las evaluaciones por áreas como Matemáticas, Ciencias, etc.
- **Grado**: Para identificar el nivel educativo.
- **Evaluacion**: Examen con información de área, grado, fechas y duración.
- **Estudiante**: Datos del alumno.
- **Pregunta**: Preguntas asociadas a una evaluación.
- **Alternativa**: Opciones de respuesta para cada pregunta, con indicación de la correcta.
- **Asignacion**: Asignación de evaluaciones a estudiantes.
- **Desarrollo**: Registro de la realización del examen, con fecha, puntaje y estado.
- **Respuesta**: Respuestas seleccionadas por el estudiante en cada examen.

---

## Diagrama del Modelo Relacional

![alt text](/models/image.png)

*Imagen del diagrama entidad-relación con las tablas y relaciones.*
https://drawsql.app/teams/apolayaschrader/diagrams/examenes

---

## Estructura de la Base de Datos

A continuación, el script para crear la base de datos y tablas:

```sql
-- Crear base de datos
CREATE DATABASE IF NOT EXISTS AprendePeru;
USE AprendePeru;

-- Crear tablas principales (Area, Grado, Evaluacion, Estudiante, Pregunta, Alternativa, Asignacion, Desarrollo, Respuesta)

## Estructura Básica de Tablas

```sql
CREATE TABLE Area (...);
CREATE TABLE Grado (...);
CREATE TABLE Evaluacion (...);
CREATE TABLE Estudiante (...);
CREATE TABLE Pregunta (...);
CREATE TABLE Alternativa (...);
CREATE TABLE Asignacion (...);
CREATE TABLE Desarrollo (...);
CREATE TABLE Respuesta (...);