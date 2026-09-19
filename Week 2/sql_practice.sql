

-- WEEK 2 SQL INTERNSHIP
-- SQL PRACTICE

-- SELECT


-- Question 1: Display all customers
SELECT *
FROM customers;


-- Question 2: Display customer names and cities
SELECT customer_name, city
FROM customers;


-- Question 3: Display all products
SELECT *
FROM products;


-- Question 4: Display product names and prices
SELECT product_name, price
FROM products;



-- WHERE / FILTERING


-- Question 5: Find customers from Dharan
SELECT *
FROM customers
WHERE city = 'Dharan';


-- Question 6: Find products costing more than 10,000
SELECT *
FROM products
WHERE price > 10000;


-- Question 7: Find customers older than 23
SELECT *
FROM customers
WHERE age > 23;


-- Question 8: Find all Electronics products
SELECT *
FROM products
WHERE category = 'Electronics';



-- ORDER BY


-- Question 9: Sort products by price from lowest to highest
SELECT product_name, price
FROM products
ORDER BY price ASC;


-- Question 10: Sort products by price from highest to lowest
SELECT product_name, price
FROM products
ORDER BY price DESC;


-- Question 11: Sort customers from youngest to oldest
SELECT customer_name, age
FROM customers
ORDER BY age ASC;



-- AGGREGATE FUNCTIONS


-- Question 12: Count the total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;


-- Question 13: Find the average product price
SELECT AVG(price) AS average_price
FROM products;


-- Question 14: Find the cheapest product price
SELECT MIN(price) AS cheapest_price
FROM products;


-- Question 15: Find the most expensive product price
SELECT MAX(price) AS highest_price
FROM products;



-- GROUP BY


-- Question 16: Count customers in each city
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;


-- Question 17: Count products in each category
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;


-- Question 18: Find the average price of products in each category
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category;



-- JOINS


-- Question 19: Display orders with customer names
SELECT
    orders.order_id,
    customers.customer_name,
    orders.order_date
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;


-- Question 20: Display customers, products and quantities ordered
SELECT
    customers.customer_name,
    products.product_name,
    order_items.quantity
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
INNER JOIN order_items
ON orders.order_id = order_items.order_id
INNER JOIN products
ON order_items.product_id = products.product_id;