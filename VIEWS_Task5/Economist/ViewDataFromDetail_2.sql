/* Деталь для Экономиста должна быть представлена следующими атрибутами: 
название, цена в тыс.руб., цвет, вес в килограммах, признак «дешевая» или «дорогая» (символьная строка). 
Данные должны быть отсортированы следующим образом: по убыванию цены, названию, цвету, возрастанию веса. */

CREATE VIEW data_from_details_economist AS
	SELECT
	detail_name AS Название,
	detail_price AS Цена,
	detail_color AS Цвет,
	detail_weight/1000::float4 AS "Вес, кг",
	CASE
		WHEN detail_price>=1000
		THEN 'Дорогая'
		WHEN detail_price<1000
		THEN 'Дешевая'        
	END Дороговизна
	FROM details
	ORDER BY detail_price DESC, detail_name ASC, detail_color ASC, detail_weight ASC