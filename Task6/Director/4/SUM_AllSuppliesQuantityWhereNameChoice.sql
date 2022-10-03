SELECT
	SUM(supplies.supplies_quantity) AS "Сумма всех поставок"
FROM supplies
INNER JOIN providers ON providers.id_provider = supplies.id_provider
WHERE providers.provider_name = 'Юнипро'