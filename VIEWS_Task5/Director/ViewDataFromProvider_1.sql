/* При выборке данных Поставщик для Директора должен быть представлен следующими атрибутами: 
название, город, признак «ненадежный» или «надежный» (символьная строка). 
Данные должны быть отсортированы следующим образом: по признаку, городу, названию. */

CREATE VIEW data_from_provider_director AS
	SELECT
		provider_name AS Название,
		cities.city_name AS Город,
		CASE
			WHEN providers.provider_rating>=6
			THEN 'Надежный'
			WHEN providers.provider_rating<6
			THEN 'Ненадежный'        
		END Надежность_провайдера
	FROM providers
		INNER JOIN cities ON cities.id_city = providers.id_city
	ORDER BY providers.provider_rating, cities.city_name, providers.provider_name