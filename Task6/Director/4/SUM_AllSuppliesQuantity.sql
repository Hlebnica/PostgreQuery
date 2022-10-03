SELECT
	SUM(supplies.supplies_quantity) AS "Сумма всех поставок"
FROM supplies
INNER JOIN details ON details.id_detail = supplies.id_detail