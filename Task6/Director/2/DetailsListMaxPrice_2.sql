SELECT 
	detail_name AS "Имя детали", 
	detail_price AS "Цена", 
	SUM(supplies.supplies_quantity * details.detail_price) AS "Общая сумма поставок"
FROM details
	INNER JOIN supplies ON supplies.id_detail = details.id_detail
	INNER JOIN details ON details.id_detail = supplies.id_detail
GROUP BY detail_name, detail_price
HAVING (details.detail_price = (SELECT MAX(details.detail_price) FROM details))