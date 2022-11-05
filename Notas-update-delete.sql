UPDATE notas set calificacion = 4 , estado = 'Aprobada' where alumno_id = 1 and materia_id = 8;
UPDATE alumnos set edad = 24 where alumno_id = 4;

-- eliminacion en cascada
DELETE from notas where alumno_id = 11;
DELETE from alumnos where alumno_id = 11;

create view desaprobados as
select alumnos.nombre , materias.nombre as nombre_materia , notas.calificacion from alumnos
inner join notas on notas.alumno_id = alumnos.alumno_id
inner join materias on materias.materia_id = notas.materia_id
where estado = 'Desaprobada';

select * from desaprobados;
