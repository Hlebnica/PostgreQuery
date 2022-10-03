SELECT 
	project_name AS "Название проекта", 
	budget AS "Бюджет",
	COUNT(supplies.id_project) AS "Сумма поставок"
FROM projects
	INNER JOIN supplies ON supplies.id_project = projects.id_project
GROUP BY project_name, budget
HAVING (projects.budget < (SELECT AVG(projects.budget) FROM projects))