SELECT Customers.Country, Products.CategoryID as Category_Products, Products.ProductName, MAX(o.Quantity) as Sum_Quantity
FROM [Order Details] as o 
JOIN Orders  ON Orders.OrderID=o.orderid
JOIN Products ON Products.ProductID=o.productid
Join Customers ON Customers.CustomerID=Orders.CustomerID
group by Customers.Country,Products.CategoryID,Products.ProductName,o.Quantity
order by Quantity desc

