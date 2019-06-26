--First Table
CREATE TABLE Person(
    PersonID INT IDENTITY (1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Order_Product INT
)

--Second TABLE
CREATE TABLE Orders(
    OrderID INT IDENTITY (1,1) PRIMARY KEY,
    PersonID INT,
    Model NVARCHAR(50),
    Cost INT,
    Quantity INT,
    FOREIGN KEY (PersonID)  REFERENCES Person (PersonID)
)

--INSERT VALUES in First Table
INSERT INTO Person (FirstName, LastName, Order_Product)
    VALUES('John', 'Doe', 2)

INSERT INTO Person(FirstName, LastName, Order_Product)
    VALUES('John', 'Smith', 3)

INSERT INTO Person (FirstName, LastName, Order_Product)
    VALUES('Gio', 'F1', 1)

--INSERT VALUES in Second Table
INSERT INTO Orders (PersonID, Cost, Quantity, Model)
    VALUES (2, 2100, 9, 'Nokia');
INSERT INTO Orders (PersonID, Cost, Quantity, Model)
    VALUES(1, 3000, 4, 'Iphone')



--Add column in Table
ALTER TABLE Customer ADD Code int;

--Remove column from Table
ALTER TABLE Person
DROP COLUMN Code;

--JOIN 
SELECT a.FirstName, a.LastName, b.PersonID, b.Cost, b.Quantity FROM Orders b JOIN Person a ON b.PersonID = c.PersonID
where a.PersonID = 2

--CREATE UNIQUE INDEX
CREATE UNIQUE INDEX ID ON Orders (PersonID);

