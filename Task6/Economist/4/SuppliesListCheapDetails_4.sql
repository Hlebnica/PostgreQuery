SELECT 
	providers.provider_name AS "Имя поставщика", 
	details.detail_name AS "Название детали", 
	projects.project_name AS "Имя проекта", 
	supplies.supplies_quantity AS "Размер поставки",
	CASE
		WHEN details.detail_price<1000
		THEN 'Дешевая'      
	END Дороговизна_детали
FROM supplies 
	INNER JOIN providers ON providers.id_provider = supplies.id_provider
	INNER JOIN details ON details.id_detail = supplies.id_detail
	INNER JOIN projects ON projects.id_project = supplies.id_project
WHERE details.detail_price<1000
