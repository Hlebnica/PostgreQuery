SELECT 
	detail_name AS "Имя детали", 
	detail_price AS "Цена", 
	detail_color AS "Цвет", 
	detail_weight AS "Вес",
	SUM(supplies.id_detail) AS "Сумма поставок"
FROM details
	INNER JOIN supplies ON supplies.id_detail = details.id_detail
GROUP BY detail_name, detail_price, detail_color, detail_weight