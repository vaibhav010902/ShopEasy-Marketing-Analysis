SELECT 
    c.CustomerName, 
    p.ProductName, 
    p.Price
FROM 
    dbo.customers AS c
JOIN 
    dbo.customer_journey AS j
ON 
    c.CustomerID = j.CustomerId
JOIN 
    dbo.products AS p
ON 
    j.ProductId = p.ProductID
WHERE 
    j.Action = 'Purchase';
