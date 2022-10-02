SELECT 
	provider_name AS "Имя поставщика", 
	provider_rating AS "Рейтинг",
	SUM(supplies.id_provider) AS "Общая сумма поставок"
FROM providers
	INNER JOIN cities ON cities.id_city = providers.id_city
	INNER JOIN supplies ON supplies.id_provider = providers.id_provider
GROUP BY provider_name, cities.city_name, provider_address, provider_rating
HAVING provider_rating = (SELECT MAX(provider_rating) FROM providers)