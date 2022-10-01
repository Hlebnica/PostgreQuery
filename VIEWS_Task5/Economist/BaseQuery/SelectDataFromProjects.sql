SELECT id_project, project_name, cities.city_name, address, budget
FROM projects
INNER JOIN cities ON cities.id_city = projects.id_city
