COPY cities(city_name)
FROM 'C:\Users\Dmitriy\Desktop\PostgreQuery\csv files\cities.csv'
DELIMITER ',' 
CSV HEADER encoding 'UTF8';