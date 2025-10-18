select 
	e.nombre 'Nombre Empleado', 
	e.apellido 'Apellido Empleado',
    p.nombre 'Nombre Proyecto',
    ap.horas_asignadas 'Horas Asignadas'
from empleados e
INNER JOIN asignacionesdeproyectos ap
ON ap.empleado_id = e.empleado_id
INNER JOIN proyectos p
ON ap.proyecto_id = p.proyecto_id
ORDER BY 1 ASC, 4 DESC 
