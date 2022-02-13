
USE sqlidb;

CREATE TABLE users (
	id INT auto_increment,
	name VARCHAR(50),
	email VARCHAR(50),
	role ENUM ('admin','user'),
	password VARCHAR(600),
	PRIMARY KEY (id),
	UNIQUE KEY (name),
	UNIQUE KEY (email)
);


INSERT INTO users (name,email,role,password)
	VALUES("admin","admin@mydomain.com","admin",SHA2("admin123",512));

INSERT INTO users (name,email,role,password)
	VALUES("pepa","pepa@mydomain.com","user",SHA2("pepa123",512));

INSERT INTO users (name,email,role,password)
	VALUES("manolo","manolo@mydomain.com","user",SHA2("manolo123",512));
