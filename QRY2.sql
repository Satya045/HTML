Use AdventureWorks2019
GO

Select * From Production.Product 
GO

Select * from Production.ProductInventory

Go

Select * from Production.[Location]
/*
Select PP.ProductID, PP.[Name],PP.ProductNumber, SUM(PPI.Quantity) As TotalQuantity 
FROM Production.Product PP
INNER JOIN Production.ProductInventory PPI 
ON PP.ProductID = PPI.ProductID
Group By PP.ProductID, PP.[Name],PP.ProductNumber

*/

	DECLARE @counter tinyint 

	Select DISTINCT pp.*,ppi.* --, SUM(PPI.Quantity) As TotalQuantity 
	, PL.[Name] as LocationName
	FROM Production.Product PP
	LEFT OUTER JOIN Production.ProductInventory PPI 
	ON PP.ProductID = PPI.ProductID
	INNER JOIN Production.Location PL
	ON PPI.LocationID = pl.LocationID
	Order By pp.ProductID 
	OFFSET 1001 ROWS
	FETCH NEXT 100 ROWS ONLY 

	-- By Using following all tables 
	 -- Product, Product Inventory, Location ,  ProductCategory ,[ProductSubcategory] , ProductPriceHistory,


Select * From [Production].[ProductListPriceHistory]



Select * from HumanResources.Employee e1
inner join HumanResources.Employee e2
on e1.LoginID = e2.LoginID



Select ((34.99 - 33.6442)/ 34.99)*100




--Group By PP.ProductID, PP.[Name],PP.ProductNumber --,PL.[Name]


/*
INNER JOIN 
TABLE 1     ===		TABLE2

LEFT OUTER JOIN
TABLE 1 (ALL DATA)  && TABLE 2 (Matching Data)




*/