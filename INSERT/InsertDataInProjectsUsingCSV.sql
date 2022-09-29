COPY projects(project_name, id_city, address, budget)
FROM 'C:\Users\Dmitriy\Desktop\PostgreQuery\csv files\projects.csv'
DELIMITER ';' 
CSV HEADER encoding 'UTF8';