CREATE TABLE projects(
	id_project INT PRIMARY KEY NOT NULL,
	project_name VARCHAR(120) NOT NULL,
	id_city INT NOT NULL,
	address VARCHAR(120),
	budget INT NOT NULL CHECK(budget>0),
	FOREIGN KEY (id_city)  REFERENCES cities(id_city) ON DELETE CASCADE
)