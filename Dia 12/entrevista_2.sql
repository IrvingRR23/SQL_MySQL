SELECT
	dp.nombre AS 'Nombre Departamento' ,
    SUM(ap.horas_asignadas) AS 'Total Horas Asignadas'
FROM departamentos dp
JOIN Empleados e
ON dp.depto_id = e.depto_id
JOIN asignacionesdeproyectos ap
ON ap.empleado_id = e.empleado_id
GROUP BY dp.depto_id
ORDER BY 2 DESC
