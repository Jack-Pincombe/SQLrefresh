use sys

#Creating  Order table
CREATE TABLE Orders
(
	OrderID nvarchar(8),
    Customer_FirstName nvarchar(15),
    Customer_LastName nvarchar(20),
    Address nvarchar(40),
    Town nvarchar(14),
    Postcode nvarchar(8),
    Order_Date nvarchar(10)
)
#Creating OrderDetail table
CREATE TABLE OrderDetails
(
	OrderID nvarchar(8),
    ProductID nvarchar(6),
    Product_Name nvarchar(50),
    Price decimal(5,2),
    Quantity numeric(2)
    
)

#Populating tables
INSERT INTO Orders VALUES
('201-202','John','Doe','12 Market Street', 'Bangor', 'BT746ER','2017-09-20'),
('201-210','Susan','Smyth','23 William Street','Belfast','BT712WS','2017-09-17'),
('205-145','Julie','Andrews','14 Hill Street', 'Larne','BT239JK','2017-08-12'),
('213-798','David','Wells','12 Wallace Avenue','Lisburn','BT477WF','2017-08-24')

INSERT INTO OrderDetails VALUES
('201-202','P214','32GB USB Pens' , 12.99, 7),
('201-202','P1023','Pens(10 Pack)',9.99, 4),
('201-210','P4045','24" Samsung Monitor',499.00,2),
('205-145','P214','32GB USB pens',12.99,7),
('205-145','P221','500 GB Passport Drives', 29.99, 2),
('205-145','P319','Passport Drive Case',7.99,2),
('213-798','P4045','24" Samsung Monitor',499.99,1)

#Removing tables
DROP TABLE OrderDetails
DROP TABLE Orders

#Selecting all from the tables
SELECT * FROM Orders;
SELECT * FROM OrderDetails;

#Display the list of orders with the name John
SELECT * FROM Orders
WHERE Customer_FirstName = 'John';

#Display the order details of the customer using wild card
SELECT * FROM Orders
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE Customer_FirstName like 'Jo%' and Customer_LastName like 'D%'

#Displaying the Customers from a given town.
SELECT * FROM Orders
WHERE Town = 'Belfast'

#Display the order details given an order number
SELECT * FROM  Orders
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE Orders.OrderID = '201-202'


#Outputting the total of each of the orders
SELECT SUM(Price * Quantity)
FROM OrderDetails
WHERE OrderID ='201-202'
 
#returing what customers ordered a specific product	
SELECT Customer_FirstName, Customer_LastName FROM  Orders
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE ProductID = 'P214'

