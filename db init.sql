DROP DATABASE IF EXISTS HotelDB;
CREATE DATABASE HotelDB;

USE HotelDB;

CREATE TABLE Hotel (
	hotelNo INT PRIMARY KEY AUTO_INCREMENT,
    hotelName VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Room (
	roomNo INT,
    hotelNo INT,
    type VARCHAR(50),
    price DOUBLE,
    PRIMARY KEY(roomNo, hotelNo),
    FOREIGN KEY(hotelNo) REFERENCES Hotel(HotelNo)
);

CREATE TABLE Guest (
	guestNo INT PRIMARY KEY AUTO_INCREMENT,
    guestName VARCHAR(50),
    guestAddress VARCHAR(50)
);

CREATE TABLE Booking (
	hotelNo INT,
    guestNo INT,
    dateFrom DATE,
    dateTo DATE,
    PRIMARY KEY(hotelNo, guestNo, dateFrom),
    FOREIGN KEY(hotelNo) REFERENCES Hotel(hotelNo),
    FOREIGN KEY(guestNo) REFERENCES Guest(guestNo)
);

INSERT INTO Hotel(hotelName, city)
VALUES 	('Grand Hotel', 'Copenhagen'),
		('Welby Studios', 'London');

INSERT INTO Guest(guestName, guestAddress)
VALUES	('The Collector', 'Knowhere'),
		('Stephen Strange', 'The Sanctuary'),
        ('Groot', 'I am Groot');

INSERT INTO Booking
VALUES	(2, 1, '2018-04-25', '2018-05-03'),
		(2, 2, '2018-04-01', '2018-04-25'),
        (1, 3, '2017-08-05', '2018-08-12');

INSERT INTO Room
VALUES	(1408, 2, 'Single', 0),
		(232, 2, 'Double', 22),
		(110, 2, 'Family', 45)