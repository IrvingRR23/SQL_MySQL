CREATE VIEW Empleados_Proyectos AS
	WITH Empleado_Proyecto AS(
		SELECT 
			empleados.nombre,
			empleados.apellido,
			AsignacionesDeProyectos.proyecto_id
		FROM Empleados
		INNER JOIN AsignacionesDeProyectos
		ON empleados.empleado_id = asignacionesdeproyectos.empleado_id
	)

	SELECT 
		Empleado_Proyecto.nombre AS 'Nombre del Empleado',
		Empleado_Proyecto.apellido AS 'Apellido del Empleado',
		Proyectos.nombre AS 'Nombre del Proyecto'
	FROM Empleado_Proyecto
	INNER JOIN Proyectos
	ON Empleado_Proyecto.proyecto_id = Proyectos.proyecto_id
	ORDER BY Empleado_Proyecto.proyecto_id 