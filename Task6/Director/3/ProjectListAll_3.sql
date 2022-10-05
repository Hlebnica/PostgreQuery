SELECT 
	project_name AS "Название проекта", 
	cities.city_name AS "Город", 
	address AS "Адрес", 
	budget AS "Бюджет",
	SUM(supplies.supplies_quantity * details.detail_price) AS "Общая сумма поставок"
FROM projects
	INNER JOIN cities ON cities.id_city = projects.id_city
	INNER JOIN supplies ON supplies.id_project = projects.id_project
	INNER JOIN details ON details.id_detail = supplies.id_detail
GROUP BY project_name, cities.city_name, address, budget
