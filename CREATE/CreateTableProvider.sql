CREATE TABLE providers(
	id_provider SERIAL PRIMARY KEY,
	provider_name VARCHAR(120) NOT NULL,
	id_city INT NOT NULL,
	provider_address VARCHAR(120) DEFAULT 'Неизвестен' NOT NULL,
	provider_rating INT NOT NULL CHECK (provider_rating > 0 AND provider_rating <= 10),
	FOREIGN KEY (id_city)  REFERENCES cities(id_city) 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Same_provider_name_in_city
	UNIQUE (provider_name, id_city)
)