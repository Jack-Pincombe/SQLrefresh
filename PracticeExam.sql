use sys

drop table Product_Details

create table Product_Details 
(
	ProductID nvarchar(6),
	primary key (productID),
    Product_name nvarchar(100),
    Price decimal(5,2),
    Category nvarchar(20),
    SupID nvarchar(5),
    Stock_Level numeric(4),
    Reorder_Level numeric(4)
)



INSERT INTO Product_Details VALUES
('P1002','SandDisk iXpand (MFI) 64 GB USB Flash Drive for Iphone and iPad',44.99,'Computing','S202',45,20),
('P1004','Iphone Stand, Lamicall iPhone Dock: Universal iPhone standm Cradle, Holder,Dock for iPhone',6.79,'Computing','S202',20,25),
('P2020',' ultra papermate injoy 500 RT Ballpoint Pen Fine Tip Blue Pack of 12',21.79,'Stationary','S109',120,30),
('P2121','CPWOM E7 Active Noise Cancelling Bluetooth Headphones',65.99,'Headphones','S104',20,15)

create table Supplier_Details
(
	SupplierID nvarchar(6),
    Supplier_Name nvarchar(30),
    Address nvarchar(40),
    Town nvarchar(20),
    Postcode nvarchar(10),
    Email nvarchar(50),
    primary key(SupplierID)
)
DROP TABLE Supplier_Details

SELECT * FROM Supplier_Details

SELECT * FROM Product_Details

INSERT INTO Supplier_Details VALUES
('S104','Cowin','23 Hill Street','Bangor','BT20 4TS','enquires@cowan.com'),
('S109','PaperMate','Unit 3, Market Street Business Park','Lisburn','BT12 4SX','info@papermate.co.uk'),
('S202', 'LamicallDigital','14 Airport Road','Belfast','BT3 9EW','info@lamicallDigital.co.uk')

#Returing all of the products from a given company
SELECT Product_name
FROM Product_Details
INNER JOIN Supplier_Details ON Product_Details.SupID = Supplier_Details.SupplierID
WHERE Supplier_Name='LamicallDigital'

#Returning stock that needs to be reordered
SELECT *
FROM Product_Details
WHERE Product_Details.Stock_Level < Product_Details.Reorder_Level

ALTER TABLE Product_Details
ADD Stock_Value decimal(10,2)
AS (Price*Stock_Level)

SELECT *
FROM Supplier_Details 
WHERE Town LIKE 'be%'



