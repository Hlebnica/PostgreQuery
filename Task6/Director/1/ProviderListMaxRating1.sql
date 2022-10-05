SELECT 
	provider_name AS "Имя поставщика", 
	provider_rating AS "Рейтинг",
	SUM(supplies.supplies_quantity * details.detail_price) AS "Общая сумма поставок"
FROM providers
	INNER JOIN cities ON cities.id_city = providers.id_city
	INNER JOIN supplies ON supplies.id_provider = providers.id_provider
	INNER JOIN details ON details.id_detail = supplies.id_detail
GROUP BY provider_name, cities.city_name, provider_address, provider_rating
HAVING provider_rating = (SELECT MAX(provider_rating) FROM providers)