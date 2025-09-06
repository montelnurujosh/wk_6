-- Question 1 🧑‍💼
-- Get the firstName, lastName, email, and officeCode of all employees.
-- Use INNER JOIN to combine employees with offices using officeCode.
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;


-- Question 2 🛍️
-- Get the productName, productVendor, and productLine from products.
-- Use LEFT JOIN to combine products with productlines using productLine.
-- LEFT JOIN ensures all products show, even if no matching productLine exists.
SELECT p.productName, p.productVendor, p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;


-- Question 3 📦
-- Retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use RIGHT JOIN to combine customers with orders using customerNumber.
-- RIGHT JOIN ensures all orders are included, even if they don’t have a matching customer.
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
LIMIT 10;  -- Only the first 10 orders as required
