SELECT 
	project_name AS "Название проекта", 
	budget AS "Бюджет",
	SUM(supplies.supplies_quantity * details.detail_price) AS "Общая сумма поставок"
FROM projects
	INNER JOIN supplies ON supplies.id_project = projects.id_project
	INNER JOIN details ON details.id_detail = supplies.id_detail
GROUP BY project_name, budget
HAVING (projects.budget = (SELECT MAX(projects.budget) FROM projects))
