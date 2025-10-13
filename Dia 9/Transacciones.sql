BEGIN;
SAVEPOINT PreValidacion;
INSERT INTO asignacionesdeproyectos(proyecto_id, empleado_id,
 horas_asignadas) values (5,1,10);
 INSERT INTO asignacionesdeproyectos(proyecto_id, empleado_id,
 horas_asignadas) values (5,2,15);
-- Imagina que aqui hay mas inserciones
-- Aqui iria el código para validar el total de horas
-- Si el total excede, podemos revertir a nuestro SAVEPOINT
ROLLBACK TO PreValidacion;