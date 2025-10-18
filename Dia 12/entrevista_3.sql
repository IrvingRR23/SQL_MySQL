SELECT
	e.nombre AS 'Nombre',
    e.apellido AS 'Apellido',
    SUM(ap.horas_asignadas) AS 'Total Horas Trabajadas',
    DENSE_RANK () OVER (
		ORDER BY SUM(ap.horas_asignadas) DESC
    ) AS 'Ranking Departamental'
FROM Empleados e
JOIN asignacionesdeproyectos ap
ON e.empleado_id = ap.empleado_id
GROUP BY e.empleado_id
ORDER BY 4