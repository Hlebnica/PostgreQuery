/* При выборке данных Деталь для Директора должна быть представлена следующими атрибутами: 
название, цена в тыс.руб., цвет, признак «дешевая» или «дорогая» (символьная строка). 
Данные должны быть отсортированы следующим образом: по убыванию цены, названию. */

CREATE VIEW data_from_details_director AS
	SELECT 
		detail_name AS Название,
		detail_price AS Цена,
		detail_color AS Цвет,
		CASE
			WHEN details.detail_price>=1000
			THEN 'Дорогая'
			WHEN details.detail_price<1000
			THEN 'Дешевая'        
		END Дороговизна_детали
	FROM details
	ORDER BY detail_price DESC, detail_name