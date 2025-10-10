SELECT titulo, duracion/60.0 As Horas_Completas, 
ROUND(duracion/60.0, 0) As Horas_Completas_Redondeadas
FROM Episodios;

SElECT titulo, duracion, CEILING(duracion/60.0) AS 
Horas_Completas FROM Episodios;

SElECT titulo, duracion, FLOOR(duracion/60) AS
Horas_Completas FROM Episodios;