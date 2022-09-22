/*
select top 10 * from HumanResources.Employee
--Where 
Order By NationalIDNumber desc, JobTitle asc

-- Having 
/*
DESC			ASC
col1			col2
1				C
2				B
3				AA
4				D
5				A

5				A
3				AA

*/

select 
	Gender,
	MaritalStatus,
	Sum(SickLeaveHours) as TotalSickHours 
from HumanResources.Employee
Where GENDER = 'M'
Group By MaritalStatus, Gender

-go

select 
	Gender,
	MaritalStatus,
	Sum(SickLeaveHours) as TotalSickHours 
from HumanResources.Employee
Group By MaritalStatus, Gender
Having Sum(SickLeaveHours) >4000


hOW sELECT Statement syntax

1) SELECT 
2) PROJECTION (Column Name)
3) FROM 
4) WHERE
5) ORDER BY
6) GROUP BY
7) HAVING





*/




-- show me all data where total sick hours are more then 4000... 
Select * from HumanResources.Employee 
DECLARE @MYVAL as VARCHAR(20)
SET @MYVAL ='Hello'
Select TRY_CAST(@MYVAL as int) , @MYVAL
Select IIF(@MYVAL IS NULL,'0' , @MYVAL)


DECLARE @myDate as Datetime 
set @myDate = GETDATE()
Select @myDate , CAST(@myDate as date) , CAST(@mydate as time) , CONVERT(varchar, @myDate, 103)



Declare @sdate as date , @edate as date
SET @sdate = '2019-09-10'
SET @edate = GETDATE()
Select @sdate , @edate , 
DATEDIFF(d, @sdate, @edate),
DATEDIFF(m, @sdate, @edate) , 
DATEDIFF(s, @sdate, @edate) , Cast(DATEADD(d, 10, getdate()) as date)


Declare @mystring as varchar(200)

SET @mystring = 'The quick brown fox jumps over the little lazy dog.'

SELECT e.LoginID,  @mystring , LEFT(@mystring,10) , RIGHT(@mystring,10) from HumanResources.Employee e

--select count(ISNULL(e.OrganizationNode,'0x58')) from HumanResources.Employee e


	Gender,
	MaritalStatus,
	max(SickLeaveHours) as TotalSickHours,
	count(Gender) 
from HumanResources.Employee
Group By MaritalStatus, Gender
--Having Sum(SickLeaveHours) >4000


sp_tables