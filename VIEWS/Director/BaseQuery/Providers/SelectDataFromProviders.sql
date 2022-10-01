SELECT id_provider, provider_name, cities.city_name, provider_address, provider_rating
FROM providers
INNER JOIN cities ON cities.id_city = providers.id_city