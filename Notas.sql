-- Se deben registrar las materias de una carrera, los alumnos y 
--la nota que sacó cada alumno en cada materia.

CREATE DATABASE notas;

\connect notas

CREATE TABLE materias (
  materia_id   SERIAL PRIMARY KEY,
  nombre       VARCHAR(100),
  horas_semana INTEGER,
  anno_materia VARCHAR(20)
);

CREATE TABLE alumnos (
  alumno_id   	SERIAL PRIMARY KEY,
  nombre      	VARCHAR(80),
  apellido    	VARCHAR(80),
  edad        	INTEGER,
  anno_cursado 	VARCHAR(20)
);

CREATE TABLE notas (
  alumno_id       INTEGER REFERENCES alumnos,
  materia_id      INTEGER REFERENCES materias,
  calificacion	  INTEGER,
  estado	  VARCHAR(50),
  fecha        	  DATE,
  PRIMARY KEY (alumno_id, materia_id)
);



