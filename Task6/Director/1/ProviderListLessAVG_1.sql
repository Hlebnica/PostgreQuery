SELECT 
	provider_name AS "Имя поставщика",
	CASE
		WHEN providers.provider_rating>=6
		THEN 'Надежный'
		WHEN providers.provider_rating<6
		THEN 'Ненадежный'
	END Надежность_поставщика,
	COUNT(supplies.id_provider) AS "Общая сумма поставок"
FROM providers
	INNER JOIN supplies ON supplies.id_provider = providers.id_provider
GROUP BY provider_name, providers.provider_rating
HAVING (providers.provider_rating < (SELECT AVG(providers.provider_rating) FROM providers))