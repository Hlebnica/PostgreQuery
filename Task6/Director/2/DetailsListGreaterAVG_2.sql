SELECT 
	detail_name AS "Имя детали", 
	detail_price AS "Цена", 
	COUNT(supplies.id_detail) AS "Сумма поставок"
FROM details
	INNER JOIN supplies ON supplies.id_detail = details.id_detail
GROUP BY detail_name, detail_price
HAVING (details.detail_price > (SELECT AVG(details.detail_price) FROM details))