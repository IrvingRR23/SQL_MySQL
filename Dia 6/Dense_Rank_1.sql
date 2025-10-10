select 
	titulo,
    duracion,
    dense_rank() over (
		order by duracion desc
    ) AS ranking_por_duracion
From episodios