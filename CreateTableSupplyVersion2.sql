CREATE TABLE supplies(
	id_provider SERIAL,
	id_detail SERIAL,
	id_project SERIAL,
	supplies_quantity INT NOT NULL CHECK(supplies_quantity>0),
	PRIMARY KEY(id_provider, id_detail, id_project),
	FOREIGN KEY (id_provider) REFERENCES providers(id_provider) 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (id_detail) REFERENCES details(id_detail) 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (id_project) REFERENCES projects(id_project) 
	ON DELETE CASCADE
	ON UPDATE CASCADE
)