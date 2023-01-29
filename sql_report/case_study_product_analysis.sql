SELECT DISTINCT p.ProductName, p.UnitPrice,o.Quantity
FROM Products p
  JOIN [Order Details] o
    ON p.ProductID=p.ProductID
WHERE (((p.UnitPrice)>(SELECT AVG([UnitPrice]) From Products)))
ORDER BY p.UnitPrice DESC;