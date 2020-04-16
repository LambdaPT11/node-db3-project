-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT c.CategoryName AS Category, p.ProductName
FROM [Products] AS p
JOIN [Categories] AS c ON p.CategoryID = c.CategoryID

--include the catrgory name and supplier name in addition to the product data
SELECT c.CategoryName AS Category, s.SupplierName AS Supplier, p.*
FROM [Products] AS p
JOIN [Categories] AS c ON p.CategoryID = c.CategoryID
JOIN [Suppliers] AS s ON p.SupplierID = s.SupplierID

--Display the category name as Category and product name with the category id's of 1,3, and 5
SELECT c.CategoryName AS Category, p.ProductName, c.CategoryID
FROM [Products] AS p
JOIN [Categories] AS c ON p.CategoryID = c.CategoryID
WHERE c.CategoryID in (1,3,5);

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.Id, o.ShipName 
FROM [Order] as o
WHERE o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, o.Quantity
FROM [OrderDetail] as o
JOIN [Product] as p
 ON p.id = o.ProductId
WHERE o.OrderId = 10251
ORDER BY p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.Id 
AS OrderId, c.CompanyName, e.LastName
FROM [Order] as o
JOIN [Customer] as c
 ON o.CustomerId = c.Id
JOIN [Employee] as e
 ON o.EmployeeId = e.Id;
