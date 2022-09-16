SELECT id_provider, provider_name, id_city, provider_address, provider_rating,
CASE
	WHEN provider_rating>6
	THEN 'Надежный'
	WHEN provider_rating<6
	THEN 'Ненадежный'        
END Надежность
FROM providers
