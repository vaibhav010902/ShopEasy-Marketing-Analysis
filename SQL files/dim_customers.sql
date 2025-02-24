SELECT
	c.CustomerId,
	c.CustomerName,
	c.Email,
	c.Gender,
	c.Age,
	g.Country,
	g.City
FROM
	dbo.customers as c
LEFT JOIN
	dbo.geography g
ON
	c.GeographyID = g.GeographyID;