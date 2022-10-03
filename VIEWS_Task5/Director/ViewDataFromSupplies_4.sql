/* При выборке данных Поставка для Директора должна быть представлена следующими атрибутами: 
название детали, город детали, цвет детали, признак детали «дешевая» или «дорогая» (символьная строка), 
название поставщика, город поставщика, признак поставщика «ненадежный» или «надежный» (символьная строка), 
количество деталей, вес поставки в килограммах, стоимость поставки в тыс.руб. 
Данные должны быть отсортированы следующим образом: по признаку детали, городу детали, 
признаку поставщика, городу поставщика, названию детали, названию поставщика, по убыванию стоимости, по убыванию веса. */

CREATE VIEW data_from_supplies_director AS
	SELECT
		details.detail_name AS "Название детали",
		details.detail_color AS "Цвет детали",
		CASE
			WHEN details.detail_price>=1000
			THEN 'Дорогая'
			WHEN details.detail_price<1000
			THEN 'Дешевая'        
		END Дороговизна_детали,
		providers.provider_name AS "Название_поставщика",
		cities.city_name AS "Город поставщика",
		CASE
			WHEN providers.provider_rating>=6
			THEN 'Надежный'
			WHEN providers.provider_rating<6
			THEN 'Ненадежный'        
		END Надежность_поставщика,
		supplies.supplies_quantity AS "Количество деталей",
		(supplies.supplies_quantity * details.detail_weight)/1000::float4 AS "Вес поставки, кг",
		(supplies.supplies_quantity * details.detail_price) AS "Цена поставки"
		FROM supplies
			INNER JOIN providers ON providers.id_provider = supplies.id_provider
			INNER JOIN details ON details.id_detail = supplies.id_detail
			INNER JOIN projects ON projects.id_project = supplies.id_project
			INNER JOIN cities ON cities.id_city = providers.id_city
		ORDER BY 
		providers.provider_rating, 
		cities.city_name, 
		details.detail_name, 
		(supplies.supplies_quantity * details.detail_price) DESC,
		(supplies.supplies_quantity * details.detail_weight) DESC
	
	
	
	
	
	