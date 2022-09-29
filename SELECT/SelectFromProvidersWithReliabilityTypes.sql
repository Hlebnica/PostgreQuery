SELECT id_provider, provider_name, cities.city_name, provider_address, provider_rating,
CASE
	WHEN provider_rating>=6
	THEN 'Надежный'
	WHEN provider_rating<6
	THEN 'Ненадежный'        
END Надежность
FROM providers INNER JOIN cities ON cities.id_city = providers.id_city
