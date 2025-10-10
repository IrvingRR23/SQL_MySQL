SELECT titulo
FROM Series
WHERE serie_id IN (
select serie_id 
from episodios 
group by serie_id 
Having avg(rating_imdb) > 8
)