SELECT id_detail, 
detail_name, 
detail_price, 
detail_color, 
detail_weight, 
CASE
	WHEN detail_price>1000
	THEN 'Дорогая'
	WHEN detail_price<1000
	THEN 'Дешевая'        
END Дороговизна
FROM details
