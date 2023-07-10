USE w3schools;

/*3 Show me all orders in November*/
SELECT * FROM Orders
WHERE MONTH(OrderDate) = 11;

/*4 List all shipper taking order in November*/
SELECT ShipperID, ShipperName, OrderDate
From Shippers
JOIN Orders USING (ShipperID)
WHERE MONTH(OrderDate) = 11 ;

/*5 List top-10 employees receiving the highest total values of order*/
SELECT ROUND(SUM(Quantity*Price),2) AS Total, EmployeeID, FirstName, LastName
FROM Employees
JOIN Orders USING (EmployeeID)
JOIN order_details USING (OrderID)
JOIN Products USING (ProductID)
GROUP BY EmployeeID
ORDER BY Total DESC
LIMIT 10;

/*6 List all orders from "Tokyo Traders"*/
SELECT OrderID, ProductID
FROM order_details 
WHERE ProductID IN (SELECT ProductID FROM Products WHERE SupplierID IN
(SELECT SupplierID FROM suppliers WHERE SupplierName = "Tokyo Traders"));



/* 
652110143 Pichet
652110162 Wimonrat
652110173 Sahachat
*/



