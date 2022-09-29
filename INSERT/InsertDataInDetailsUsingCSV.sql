COPY details(detail_name, detail_price, detail_color, detail_weight)
FROM 'C:\Users\Dmitriy\Desktop\PostgreQuery\csv files\details.csv'
DELIMITER ';' 
CSV HEADER encoding 'UTF8';