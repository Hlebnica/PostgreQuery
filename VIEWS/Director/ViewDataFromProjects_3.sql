/* При выборке данных Проект для Директора должен быть представлен следующими атрибутами: 
название, город, бюджет. Данные должны быть отсортированы следующим образом: по убыванию бюджета, городу, названию. */

CREATE VIEW data_from_projects_director AS
	SELECT
		project_name AS Название,
		cities.city_name AS Город,
		budget AS Бюджет
	FROM projects
	INNER JOIN cities ON cities.id_city = projects.id_city
	ORDER BY budget DESC, cities.city_name, project_name