SELECT project_name AS "Название проекта", cities.city_name AS "Город", address AS "Адрес", budget  AS "Бюджет"
FROM projects
INNER JOIN cities ON cities.id_city = projects.id_city
WHERE budget BETWEEN 10 AND 10000
