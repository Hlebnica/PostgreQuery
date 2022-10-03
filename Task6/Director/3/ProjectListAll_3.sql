SELECT 
	project_name AS "Название проекта", 
	cities.city_name AS "Город", 
	address AS "Адрес", 
	budget AS "Бюджет",
	SUM(supplies.id_project) AS "Сумма поставок"
FROM projects
	INNER JOIN cities ON cities.id_city = projects.id_city
	INNER JOIN supplies ON supplies.id_project = projects.id_project
GROUP BY project_name, cities.city_name, address, budget
