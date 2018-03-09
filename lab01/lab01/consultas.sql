1.
SELECT FirstName, EmailAddress
FROM Customer
WHERE CompanyName = 'Bike World'

2.
SELECT CompanyName
FROM Customer NATURAL JOIN (SELECT * FROM Address NATURAL JOIN CustomerAddress WHERE City = 'Dallas') x

3.
SELECT COUNT(DISTINCT(ProductID)) AS TOTAL
FROM SalesOrderDetail NATURAL JOIN Product
WHERE ListPrice > 1000

4.
SELECT DISTINCT(CompanyName), SubTotal, TaxAmt, Freight,ListPrice,OrderQty
FROM ((Product NATURAL JOIN SalesOrderDetail) NATURAL JOIN SalesOrderHeader) NATURAL JOIN Customer
WHERE OrderQty * ListPrice + SubTotal + TaxAmt + Freight > 100000

5.
SELECT COUNT(Name) AS Numero
FROM ((Customer NATURAL JOIN SalesOrderHeader) NATURAL JOIN SalesOrderDetail) NATURAL JOIN Product
WHERE CompanyName = 'Riding Cycles' AND Name = 'Racing Socks, L'

////////////////////////////////////////////////////////////

6.
SELECT SalesOrderID, UnitPrice
FROM SalesOrderHeader NATURAL JOIN SalesOrderDetail
WHERE OrderQty = 1

7.
SELECT Name, CompanyName
FROM (((Customer NATURAL JOIN SalesOrderHeader) NATURAL JOIN SalesOrderDetail) NATURAL JOIN Product) NATURAL JOIN ProductModel
WHERE name = 'Racing Socks'

8.
SELECT Description, Culture
FROM ((Product NATURAL JOIN ProductModel) NATURAL JOIN ProductModelProductDescription) NATURAL JOIN ProductDescription
WHERE Culture = 'fr' AND ProductID = 736

