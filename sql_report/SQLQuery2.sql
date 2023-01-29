/*Transform : Intermediate Queries*/

/*1. query mendapatkan jumlah customer tiap bulan yang melakukan order tahun 1997*/
SELECT COUNT(CustomerID) AS Total_Customer
	
	
FROM 
	Orders

WHERE 
	OrderDate BETWEEN '1997-01-01' and '1997-12-01'

	/*2. query nama employee yang termasuk sales representative*/
SELECT FirstName, LastName,Title
	
	
FROM 
	Employees

WHERE 
	Title='Sales Representative'
	/*3. query top 5 nama produk, quantity paling banyak diorder bulan Januari 1997
SELECT COUNT(OD.Quantity) as JUMLAH_PEMBELIAN
	
	
FROM 
	Orders as O, [Order Details] as OD, Products as P

WHERE 
	OrderDate BETWEEN '1997-01-01' and '1997-01-31'
ORDER BY 
	Quantity*/
	/*3. query top 5 nama produk, quantity paling banyak diorder bulan Januari 1997*/
SELECT distinct a.ProductName as Top_Five_Products, a.UnitsOnOrder
FROM Products as a, Orders as O
WHERE 6 >= (select count(distinct UnitPrice)
                    from Products as b
                    where b.UnitsOnOrder >= a.UnitsOnOrder)
	  AND
	  O.OrderDate BETWEEN '1997-01-01' and '1997-01-31'
ORDER BY UnitsOnOrder desc;



/*4.Tulis query untuk mendapatkan nama company yang melakukan order Chai pada bulan Juni 1997*/

SELECT distinct sp.CompanyNAME
	
	
FROM 
	Suppliers as sp, Products as p, [Order Details] as od, Orders as o

WHERE 
	ProductName='Chai'AND OrderDate BETWEEN '1997-06-01' and '1997-06-30'

select p.ProductName ,p.UnitsOnOrder, o.OrderDate

from Products as p, [Order Details] AS od, Orders as o
where UnitsOnOrder = ( select max(UnitsOnOrder)
						from products);
Order BY sp.CompanyNAME


/*Tulis query untuk mendapatkan jumlah OrderID yang pernah melakukan pembelian (unit_price dikali quantity)*/
<=100, 100<x<=250, 250<x<=500, dan >500

SELECT sum( select od.OrderID
from [Order Details]as od
where od.UnitPrice*od.Quantity<=100)
od.UnitPrice*od.Quantity AS total_100
	
FROM 
	Products as p, [Order Details] as od

WHERE 
	od.UnitPrice*od.Quantity<=100