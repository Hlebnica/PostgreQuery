/* При выборке данных Проект для Экономиста должен быть представлен 
следующими атрибутами: название, город, адрес, бюджет. 
Данные должны быть отсортированы следующим образом: по городу, названию, убыванию бюджета. */

CREATE VIEW data_from_projects_economist AS
	SELECT 
	project_name AS Название,
	cities.city_name AS Город,
	address AS Адрес,
	budget AS Бюджет
	FROM projects 
	INNER JOIN cities ON cities.id_city = projects.id_project
	ORDER BY cities.city_name ASC, projects.project_name ASC, projects.budget DESC