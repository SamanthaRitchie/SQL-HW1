SELECT name FROM `country` WHERE Continent = 'South America' ;
SELECT Population FROM `country` WHERE Name = 'Germany';
SELECT name FROM `city` WHERE CountryCode = 'JPN';
SELECT name FROM country WHERE Continent = 'Africa' Order by Population DESC Limit 3;
SELECT name, LifeExpectancy FROM country WHERE Population BETWEEN 1000000 and 5000000;
SELECT name FROM country
JOIN countrylanguage on country.code = countrylanguage.CountryCode
WHERE countrylanguage.Language = 'French';


SELECT Title FROM Album 
Join Artist on Artist.ArtistId = Album.ArtistId
WHERE Artist.Name = 'AC/DC';
SELECT FirstName, LastName, Email FROM Customer WHERE Country = 'Brazil';
SELECT Playlist.name FROM Playlist;
SELECT COUNT(Track.GenreId) FROM Track
JOIN Genre ON Genre.GenreId = Track.GenreId
Where Genre.Name = 'Rock';
SELECT Employee.FirstName, Employee.LastName FROM Employee WHERE Employee.ReportsTo = (SELECT EmployeeId  FROM Employee  WHERE FirstName = 'Nancy' AND LastName = 'Edwards');
SELECT Customer.FirstName, Customer.LastName, SUM(Invoice.Total) FROM Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId;


CREATE TABLE Customers (
	CustomerID int,
	LastName varchar(255),
	FirstName varchar(255),
	Age int,
	Country varchar(255)
);

CREATE TABLE Product(
	ID int,
	Name varchar(255),
	Location varchar(255),
	Price double
);

CREATE TABLE Orders (
	Number int,
	CustomerID int,
	ProductID int,
	Quantity int
);
INSERT INTO Customers (CustomerID, LastName, FirstName, Age, Country) VALUES ('1', 'Smith', 'Anne', 23, 'United Kingdom');
INSERT INTO Customers (CustomerID, LastName, FirstName, Age, Country) VALUES (2, 'Sanchez', 'Alexis', 35, 'Chile');
INSERT INTO Customers (CustomerID, LastName, FirstName, Age, Country) VALUES (3, 'Perkins', 'Dave', 52, 'United States');
INSERT INTO Customers (CustomerID, LastName, FirstName, Age, Country) VALUES (4, 'Pavalov', 'Nikita', 18, 'Bulgaria');
INSERT INTO Customers (CustomerID, LastName, FirstName, Age, Country) VALUES (5, 'Bunting', 'Eliza', 73, 'United States');
INSERT INTO Customers (CustomerID, LastName, FirstName, Age, Country) VALUES (6, 'Leenders', 'Henry', 62, 'United Kingdom');

INSERT INTO Product(ID, Name, Location, Price)
VALUES ('1', 'Blue Sparkles Key Chain', 'Storage Room C', '19.99');
INSERT INTO Product(ID, Name, Location, Price)
VALUES ('2', 'Pocket Knife Key Chain', 'Storage Room A', '24.99');
INSERT INTO Product(ID, Name, Location, Price)
VALUES ('3', 'Boba Key Chain', 'Storage Room C', '19.99');
INSERT INTO Product(ID, Name, Location, Price)
VALUES ('4', 'Unicorn Key Chain', 'Storage Room B', '14.50');
INSERT INTO Product(ID, Name, Location, Price)
VALUES ('5', 'Animal Crossing Key Chain', 'Storage Room B', '14.50');
INSERT INTO Product(ID, Name, Location, Price)
VALUES ('6', 'Flower Key Chain', 'Storage Room C', '19.99');

INSERT INTO Orders(Number, CustomerID, ProductID, Quantity)
VALUES ('1', '3', '1', '5');
INSERT INTO Orders(Number, CustomerID, ProductID, Quantity)
VALUES ('2', '2', '2', '1');
INSERT INTO Orders(Number, CustomerID, ProductID, Quantity)
VALUES ('3', '1', '2', '2');
INSERT INTO Orders(Number, CustomerID, ProductID, Quantity)
VALUES ('4', '3', '3', '1');
INSERT INTO Orders(Number, CustomerID, ProductID, Quantity)
VALUES ('5', '4', '4', '2');
INSERT INTO Orders(Number, CustomerID, ProductID, Quantity)
VALUES ('6', '5', '6', '8');


SELECT FirstName, LastName FROM `Customers` WHERE Country = 'United Kingdom';

SELECT Age FROM `Customers` 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Product on Orders.ProductID = Product.ID
WHERE Product.Name =  'Pocket Knife Key Chain';

SELECT FirstName, LastName FROM `Customers` 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.Quantity > 2;



