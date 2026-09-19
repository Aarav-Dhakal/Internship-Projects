-- WEEK 2 SQL INTERNSHIP
-- BUSINESS QUESTIONS

-- 1. CUSTOMER QUESTIONS


-- Question 1: How many customers are there?
SELECT COUNT(*) AS total_customers
FROM customers;


-- Question 2: How many customers are from each city?
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;


-- Question 3: Display customers who are older than 23.
SELECT customer_name, age, city
FROM customers
WHERE age > 23;


-- Question 4: Display customers from Dharan.
SELECT customer_name, age
FROM customers
WHERE city = 'Dharan';



-- 2. PRODUCT QUESTIONS


-- Question 5: What is the most expensive product?
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 1;


-- Question 6: What is the cheapest product?
SELECT product_name, price
FROM products
ORDER BY price ASC
LIMIT 1;


-- Question 7: What is the average price of all products?
SELECT AVG(price) AS average_product_price
FROM products;


-- Question 8: How many products are available in each category?
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;


-- Question 9: Which products have a stock of less than 20?
SELECT product_name, stock
FROM products
WHERE stock < 20;


-- Question 10: What is the total value of all products currently in stock?
SELECT SUM(price * stock) AS total_stock_value
FROM products;


-- 3. ORDER QUESTIONS

-- Question 11: How many orders have been placed?
SELECT COUNT(*) AS total_orders
FROM orders;


-- Question 12: Display all orders with customer names.
SELECT
    orders.order_id,
    customers.customer_name,
    orders.order_date
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;


-- Question 13: How many orders has each customer placed?
SELECT
    customers.customer_name,
    COUNT(orders.order_id) AS total_orders
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.customer_name;


-- Question 14: Which customers have placed more than one order?
SELECT
    customers.customer_name,
    COUNT(orders.order_id) AS total_orders
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.customer_name
HAVING COUNT(orders.order_id) > 1;



-- 4. SALES QUESTIONS


-- Question 15: How many total units of products have been sold?
SELECT SUM(quantity) AS total_units_sold
FROM order_items;


-- Question 16: Display products that have been ordered.
SELECT
    products.product_name,
    SUM(order_items.quantity) AS total_quantity_sold
FROM products
INNER JOIN order_items
ON products.product_id = order_items.product_id
GROUP BY products.product_id, products.product_name;


-- Question 17: Which product has sold the most units?
SELECT
    products.product_name,
    SUM(order_items.quantity) AS total_quantity_sold
FROM products
INNER JOIN order_items
ON products.product_id = order_items.product_id
GROUP BY products.product_id, products.product_name
ORDER BY total_quantity_sold DESC
LIMIT 1;


-- Question 18: What is the total revenue generated from sales?
SELECT
    SUM(products.price * order_items.quantity) AS total_revenue
FROM products
INNER JOIN order_items
ON products.product_id = order_items.product_id;


-- Question 19: How much has each customer spent?
SELECT
    customers.customer_name,
    SUM(products.price * order_items.quantity) AS total_spent
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
INNER JOIN order_items
ON orders.order_id = order_items.order_id
INNER JOIN products
ON order_items.product_id = products.product_id
GROUP BY customers.customer_id, customers.customer_name
ORDER BY total_spent DESC;


-- Question 20: Which products generated the most revenue?
SELECT
    products.product_name,
    SUM(products.price * order_items.quantity) AS revenue
FROM products
INNER JOIN order_items
ON products.product_id = order_items.product_id
GROUP BY products.product_id, products.product_name
ORDER BY revenue DESC;