use sys

CREATE table customer
(
	CustNo int,
    Title nvarchar(6),
	FName nvarchar(20),
    SName nvarchar(20),
    Address nvarchar(20),
    PhoneNumber nvarchar(20),
    primary key (CustNo)
)

INSERT into customer values
(1567,'Mr','Jim','Henderson','12 Willow Lane','7127 8902'),
(1569,'Mrs','Susan','Jackson','87 Kennedy Street','7127 9063'),
(1572,'Mr','Sean','McDermott','16 High Street','7127 6815')

SELECT * from customer
WHERE fname = 'Jim'

SELECT * from customer where fname like 'Jim' or 'A' = 'A'



CREATE table floorDetails
(
	floor_letter nvarchar(2),
    description nvarchar (20),
    primary key (floor_letter)
)

INSERT INTO floorDetails values
('BA','GF Bangor'),
('BB','FF Bangor'),
('AA','GF Ards');

SELECT * from floorDetails


CREATE table roomDetails
(	
	room_number nvarchar(3),
    floor_number nvarchar(3),
    no_of_computers int,
    primary key (room_number)
)

insert into roomDetails values
('A11', 'BA', 16),('C12', 'BC', 16),
('A9', 'BA', 12),('B28', 'BB', 16)

SELECT * FROM roomDetails

select * from roomDetails AS R
INNER JOIN floorDetails AS F
ON F.floor_letter = R.floor_number



SELECT * 
FROM floordetails AS F 
	left outer JOIN roomdetails AS R
    ON F.floor_letter = R.floor_detail
    where R.floor_number is null
    
    
    
SELECT f.* FROM floordetails AS F
left outer JOIN roomdetails AS R
ON F.floor_letter = R.floor_number



SELECT f.* FROM floordetails AS F
right outer JOIN roomdetails AS R
ON F.floor_letter = R.floor_number



SELECT f.* FROM floordetails AS F
left outer JOIN roomdetails AS R
ON F.floor_letter = R.floor_number
where R.floor_number is null

CREATE table employees
(
	employee_ID nvarchar(4),
	First_Name nvarchar(20),
	Last_Name nvarchar(20),
	Salary decimal(7.2),
	primary key(employee_ID)
)

select * from employees 

insert into employees values

('SG5','Susan','Brand',24000.00,),
('SG14','David','Ford',18000.00,),
('SG37','Anne','Beech',12000.00,)

select max(salary) 'Max Sal',min(Salary)
from employees

alter table employees
add column department nvarchar(20)

update employees 
set department = 'D1'
where employee_ID = 'SG5' or where employee_ID = 'SG37'


select SUM(Salary) AS 'Dept Sal'
from employees
WHERE DEPARTMENT = 'D1'



