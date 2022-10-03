/* При выборке данных Поставка для Экономиста должна быть представлена следующими атрибутами: 
название детали, город детали, цвет детали, признак детали «дешевая» или «дорогая» (символьная строка), название поставщика, 
город поставщика, признак поставщика «ненадежный» или «надежный» (символьная строка), количество деталей, 
вес поставки в килограммах, стоимость поставки в тыс.руб. 
Данные должны быть отсортированы следующим образом: названию детали, названию поставщика, по убыванию стоимости, по убыванию веса. */

CREATE VIEW data_from_supplies_economist AS
	SELECT 
		details.detail_name AS "Название детали",
		details.detail_color AS "Цвет детали",
		CASE
			WHEN details.detail_price>=1000
			THEN 'Дорогая'
			WHEN details.detail_price<1000
			THEN 'Дешевая'        
		END Дороговизна_детали,
		providers.provider_name AS "Название поставщика",
		cities.city_name AS "Город поставщика",
		CASE
			WHEN providers.provider_rating>=6
			THEN 'Надежный'
			WHEN providers.provider_rating<6
			THEN 'Ненадежный'        
		END Надежность_провайдера,
		supplies.supplies_quantity AS "Количество деталей",
		(details.detail_weight * supplies.supplies_quantity)/1000::float4 AS "Вес поставки, кг",
		(details.detail_price * supplies.supplies_quantity) AS "Стоимость поставки"
	FROM supplies 
	INNER JOIN providers ON providers.id_provider = supplies.id_provider
	INNER JOIN details ON details.id_detail = supplies.id_detail
	INNER JOIN projects ON projects.id_project = supplies.id_project
	INNER JOIN cities ON cities.id_city = providers.id_city
	ORDER BY details.detail_name, 
			 providers.provider_name, 
			(details.detail_price * supplies.supplies_quantity) DESC, 
			 details.detail_weight DESC
