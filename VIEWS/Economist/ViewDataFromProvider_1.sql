/* При выборке данных Поставщик для Экономиста должен быть представлен следующими атрибутами: 
название, город, адрес, рейтинг, признак «ненадежный» или «надежный» (символьная строка). 
Данные должны быть отсортированы следующим образом: по городу, названию, убыванию рейтинга. */

CREATE VIEW data_from_provider_economist AS
	SELECT 
	provider_name AS Название, 
	cities.city_name AS Город,
	provider_address AS Адрес,
	provider_rating AS Рейтинг,
		CASE
		WHEN provider_rating>=6
		THEN 'Надежный'
		WHEN provider_rating<6
		THEN 'Ненадежный'        
		END Надежность
FROM providers 
INNER JOIN cities ON cities.id_city = providers.id_city
ORDER BY cities.city_name ASC, providers.provider_name ASC, providers.provider_rating DESC