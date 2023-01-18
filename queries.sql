/*  EMPLOYEES AND CUSTOMERS   */
SELECT e.FirstName || ' ' || e.LastName AS EmployeeName, 
       GROUP_CONCAT(c.CustomerName, ',') AS Customers
FROM Orders o
JOIN Employees e
ON o.EmployeeID = e.EmployeeID
JOIN Customers c
ON o.CustomerID = c.CustomerID
GROUP BY EmployeeName

/*  TOP 3 EMPLOYESS  */
SELECT e.FirstName || ' ' || e.LastName AS EmployeeName, 
       ROUND(SUM(od.Quantity * p.Price),2) as Earnings
FROM Employees e
JOIN Orders o
ON e.EmployeeID = o.EmployeeID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p
ON  od.ProductID = p.ProductID
GROUP BY EmployeeName
ORDER BY Earnings DESC
LIMIT 3
