SELECT 
	provider_name AS "Имя поставщика",
	CASE
		WHEN providers.provider_rating>=6
		THEN 'Надежный'        
	END Надежность_поставщика
FROM providers
WHERE providers.provider_rating>=6