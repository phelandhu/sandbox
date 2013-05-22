CREATE DATABASE books;

USE DATABASE books;

CREATE TABLE books (
	title_id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(150),
	pages INT,
PRIMARY KEY (title_id));

CREATE TABLE authors (
	author_id INT NOT NULL AUTO_INCREMENT,
	title_id INT NOT NULL,
	suthor VARCHAR(125),
PRIMARY KEY(author_id));