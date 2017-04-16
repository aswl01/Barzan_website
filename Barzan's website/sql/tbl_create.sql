CREATE DATABASE Barzan;
USE Barzan;
CREATE TABLE Projects(
	pid int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	pname varchar(50) NOT NULL,
	subtitle varchar(255),
	contents varchar(5000),	
	pjwebsite varchar(255),
	picid varchar(40),
	status ENUM('current', 'past')
);

CREATE TABLE People(
	name varchar(50) NOT NULL PRIMARY KEY,
	pwebsite varchar(255)
);

CREATE TABLE Author(
	name varchar(50),
	pid int,
	PRIMARY KEY(name, pid),
	FOREIGN KEY (name) REFERENCES People(name) ON DELETE CASCADE,
	FOREIGN KEY (pid) REFERENCES Projects(pid) ON DELETE CASCADE
);

CREATE TABLE Publications(
	publicid int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	title varchar(255),
	link varchar(255),
	pid int,
	background varchar(255),
	artist varchar(255),
	FOREIGN KEY(pid) REFERENCES Projects(pid) ON DELETE CASCADE
);

CREATE TABLE News(
	newid int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	title varchar(255) NOT NULL,
	newscontent varchar(5000)
);

CREATE TABLE NewsinP(
	newid int,
	pid int,
	PRIMARY KEY (newid, pid),
	FOREIGN KEY (newid) REFERENCES News(newid) ON DELETE CASCADE,
	FOREIGN KEY (pid) REFERENCES Projects(pid) ON DELETE CASCADE
);

CREATE TABLE User(
	username varchar(20) NOT NULL PRIMARY KEY,
    firstname varchar(20),
    lastname varchar(20),
    password varchar(256)
);

CREATE TABLE Public_content(
	publicid int,
	title varchar(255),
	link varchar(255),
	PRIMARY KEY (publicid, title),
	FOREIGN KEY(publicid) REFERENCES Publications(publicid) ON DELETE CASCADE
);