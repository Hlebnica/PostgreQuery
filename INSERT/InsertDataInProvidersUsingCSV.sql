COPY providers(provider_name, id_city, provider_address, provider_rating)
FROM 'C:\Users\Dmitriy\Desktop\PostgreQuery\csv files\providers.csv'
DELIMITER ';' 
CSV HEADER encoding 'UTF8';