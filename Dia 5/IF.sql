SELECT titulo, rating_imdb,
IF(rating_imdb >= 8, 'Alto', 'Bajo') AS 'Categoria de Rating'
from episodios