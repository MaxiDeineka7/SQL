--111111
use hotels_DB
INSERT INTO dbo.Hotels
VALUES ('Romashka', 2003,'Holovna 4','Active'),
       ('Edelweiss', 2009, 'Holovna 5', 'Active'),
	   ('SoftServ', 2010, 'Holovna 6', 'Active');
--222222
use hotels_DB
SELECT * FROM dbo.Hotels
--333333
use hotels_DB
UPDATE dbo.Hotels
SET Foundation = 1937
WHERE ID = 1;
--444444
use hotels_DB
DELETE FROM dbo.Hotels
WHERE ID = 3;
--555555
use hotels_DB
INSERT INTO dbo.Clients
VALUES ('Andrew Sixth','Andrew@gmail.com'),
	   ('Anton Seventh','Anton@gmail.com'),
       ('Nastya First','Nastya@gmail.com'),
       ('Cortney Secound','Cortney@gmail.com'),
	   ('Monika Third','Monika@gmail.com'),
	   ('Ross Fouth','Ross@gmail.com'),
	   ('Maxi Fifth','Maxi@gmail.com'),	  
	   ('Katya Eights','Katya@gmail.com'),
	   ('Masha Nines','Masha@gmail.com'),
	   ('Cortney Cox','Cortney@gmail.com');
--666666
use hotels_DB
SELECT * FROM dbo.Clients
WHERE Name LIKE 'A%';
--777777
use hotels_DB
INSERT INTO dbo.Rooms
VALUES ('666',1,555,1,4),
       ('667',1,655,2,3),
	   ('668',1,755,2,2),
	   ('669',1,855,3,4),
	   ('670',1,955,4,3),
	   ('671',1,1055,4,1),
	   ('672',1,1155,3,4),
	   ('301',13,105,2,4),
	   ('672',9,305,4,2),
	   ('672',7,405,4,1);
SELECT * FROM dbo.Rooms
--888888
use hotels_DB
SELECT * FROM dbo.Rooms
ORDER BY Price;
--999999
use hotels_DB
SELECT * FROM dbo.Rooms
WHERE ID_Hotel = 13
ORDER BY Price;
--10(ìîæåì þçàòè ²NNER JOIN)
use hotels_DB
SELECT DISTINCT dbo.Hotels.Name, dbo.Rooms.ID_comfort_level
FROM dbo.Rooms, dbo.Hotels
WHERE dbo.Rooms.ID_Hotel = dbo.Hotels.ID AND ID_comfort_level = 3;

--11(ìîæåì þçàòè ²NNER JOIN)
use hotels_DB
SELECT dbo.Hotels.Name, dbo.Rooms.Number, dbo.Rooms.ID_comfort_level 
FROM dbo.Rooms, dbo.Hotels
WHERE dbo.Rooms.ID_Hotel = dbo.Hotels.ID AND ID_comfort_level = 1;
--12(ìîæåì þçàòè ²NNER JOIN)
use hotels_DB
SELECT dbo.Hotels.Name, COUNT(dbo.Rooms.Number)
FROM dbo.Hotels, dbo.Rooms
WHERE dbo.Rooms.ID_Hotel = dbo.Hotels.ID
GROUP BY dbo.Hotels.Name;
--13
use hotels_DB
INSERT INTO dbo.Reservation
VALUES (14,8,'2018-08-20','2018-08-25'),
       (2,3,'2018-06-10','2018-06-12'),
	   (3,2,'2017-11-01','2017-11-04'),
	   (4,6,'2018-01-08','2018-01-10'),
	   (5,10,'2018-12-15','2018-12-12'),
	   (6,15,'2019-03-05','2019-03-07'),
	   (7,11,'2019-06-10','2019-06-12'),
	   (8,7,'2018-09-21','2018-09-25'),
	   (9,9,'2017-03-01','2017-03-02'),
	   (10,5,'2018-06-03','2018-06-06');

--14(ìîæåì þçàòè ²NNER JOIN)
use hotels_DB
SELECT dbo.Clients.Name, dbo.Rooms.Number, dbo.Reservation.Start_Reservation, dbo.Reservation.Finish_Reservation 
FROM dbo.Clients,dbo.Rooms, dbo.Reservation
WHERE dbo.Reservation.Id_Client = dbo.Clients.ID AND dbo.Reservation.Id_Room = dbo.Rooms.ID;
