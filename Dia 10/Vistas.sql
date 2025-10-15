CREATE VIEW VistaEmpleadosTecnologia AS
SELECT nombre, apellido, email
FROM Empleados
WHERE depto_id = 1;

select * from VistaEmpleadosTecnologia