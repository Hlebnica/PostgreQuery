COPY supplies(id_provider, id_detail, id_project, supplies_quantity)
FROM 'C:\Users\Dmitriy\Desktop\PostgreQuery\csv files\supplies.csv'
DELIMITER ';' 
CSV HEADER encoding 'UTF8';