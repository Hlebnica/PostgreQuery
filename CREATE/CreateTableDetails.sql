CREATE TABLE details(
	id_detail SERIAL PRIMARY KEY,
	detail_name VARCHAR(120) NOT NULL,
	detail_price INT NOT NULL CHECK (detail_price > 0),
	detail_color colors_custom NOT NULL,
	detail_weight INT NOT NULL CHECK (detail_weight > 0)
)