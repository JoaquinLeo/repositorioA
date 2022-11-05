UPDATE notas set calificacion = 4 , estado = 'Aprobada' where alumno_id = 1 and materia_id = 8;
UPDATE alumnos set edad = 24 where alumno_id = 4;

-- eliminacion en cascada
DELETE from notas where alumno_id = 11;
DELETE from alumnos where alumno_id = 11;
