SELECT 
	provider_name AS "Имя поставщика",
	CASE
		WHEN providers.provider_rating>=6
		THEN 'Надежный'
		WHEN providers.provider_rating<6
		THEN 'Ненадежный'
	END Надежность_поставщика,
	SUM(supplies.supplies_quantity * details.detail_price) AS "Общая сумма поставок"
FROM providers
	INNER JOIN supplies ON supplies.id_provider = providers.id_provider
	INNER JOIN details ON details.id_detail = supplies.id_detail
GROUP BY provider_name, providers.provider_rating
HAVING (providers.provider_rating < (SELECT AVG(providers.provider_rating) FROM providers))