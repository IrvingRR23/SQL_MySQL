CREATE VIEW Vista_empleados_proyectos AS
	SELECT 
		empleados.nombre AS Nombre_Empleado,
		empleados.apellido As Apellido_Empleado,
		proyectos.nombre AS Nombre_Proyecto
	FROM Empleados
	JOIN AsignacionesDeProyectos
		ON empleados.empleado_id = asignacionesdeproyectos.empleado_id
	JOIN proyectos
		ON proyectos.proyecto_id = asignacionesdeproyectos.proyecto_id