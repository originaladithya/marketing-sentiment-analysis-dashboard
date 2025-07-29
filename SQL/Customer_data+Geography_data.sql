Select c.CustomerID, 
	c.CustomerName,
	c.Email,
	c.Gender,
	c.Age,
	g.City,
	g.Country
from dbo.customers as c
join dbo.geography as g
	on c.geographyid = g.GeographyID
