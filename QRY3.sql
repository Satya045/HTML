use EspireBC

Truncate table Employees

INSERT INTO Employees
VALUES
(3,'XYZ','APM',1,getdate(),1)

Select * from Employees

Select e2.*, e1.EmpName as ROName 
from Employees e1
RIGHT outer join Employees e2
on e1.EmployeeID = e2.ROID
Where e2.EmployeeID is not null 
