USE w3schools;

SELECT * FROM Orders
WHERE month(OrderDate) = 07;

SELECT OrderID, OrderDate, ShipperName FROM Orders
JOIN shippers USING (ShipperID)
WHERE month(OrderDate) = 07;