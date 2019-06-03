CREATE DATABASE hotels_DB;
use hotels_DB
CREATE TABLE Clients
(
	ID int NOT NULL identity,
	Name varchar(50),
	Email varchar(50),
	PRIMARY KEY(ID)
);

CREATE TABLE ComfortLevel
(
	ID bigint NOT NULL identity,
	ComfortLevel varchar(50),
	PRIMARY KEY(ID)
);

CREATE TABLE Hotels
(
	ID int NOT NULL identity,
	Name varchar(50),
	Foundation int,
	Adress varchar(50),
	Active varchar(10),
	PRIMARY KEY(ID)
);

CREATE TABLE Reservation 
(
	ID int NOT NULL identity,
	Id_Client int,
	Id_Room int,
	Start_Reservation datetime,
	Finish_Reservation datetime,
	PRIMARY KEY(ID)
);

CREATE TABLE Rooms 
(
	ID int NOT NULL identity,
	Number int,
	ID_Hotel int,
	Price money,
	ID_comfort_level int,
	Number_of_people int,
	PRIMARY KEY(ID)
);