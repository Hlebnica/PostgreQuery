SELECT
	detail_name AS "Название детали",
	CASE
		WHEN details.detail_price>=1000
		THEN 'Дорогая'      
	END Дороговизна_детали 
FROM details
WHERE details.detail_price>=1000