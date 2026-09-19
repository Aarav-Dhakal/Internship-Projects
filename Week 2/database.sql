
-- WEEK 2 SQL INTERNSHIP DATABASE


DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;


-- CUSTOMERS TABLE


CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    city TEXT,
    age INTEGER
);

-- PRODUCTS TABLE

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    price REAL,
    stock INTEGER
);

-- ORDERS TABLE


CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER ITEMS TABLE


CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- INSERT CUSTOMERS


INSERT INTO customers VALUES
(1, 'Aarav', 'Dharan', 21),
(2, 'Ram', 'Kathmandu', 25),
(3, 'Sita', 'Biratnagar', 22),
(4, 'Hari', 'Pokhara', 28),
(5, 'Nisha', 'Dharan', 24),
(6, 'Anish', 'Itahari', 23),
(7, 'Puja', 'Kathmandu', 27),
(8, 'Rohan', 'Biratnagar', 20);

-- INSERT PRODUCTS


INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 85000, 10),
(2, 'Mouse', 'Electronics', 1500, 50),
(3, 'Keyboard', 'Electronics', 2500, 35),
(4, 'Headphones', 'Electronics', 3500, 25),
(5, 'Office Chair', 'Furniture', 12000, 15),
(6, 'Desk', 'Furniture', 18000, 8),
(7, 'USB Cable', 'Accessories', 800, 60),
(8, 'Webcam', 'Electronics', 4500, 20);

-- INSERT ORDERS

INSERT INTO orders VALUES
(1, 1, '2026-09-01'),
(2, 2, '2026-09-02'),
(3, 1, '2026-09-03'),
(4, 3, '2026-09-04'),
(5, 4, '2026-09-05'),
(6, 5, '2026-09-06'),
(7, 6, '2026-09-07'),
(8, 2, '2026-09-08'),
(9, 7, '2026-09-09'),
(10, 3, '2026-09-10');

-- INSERT ORDER ITEMS


INSERT INTO order_items VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 2, 4, 1),
(5, 3, 5, 1),
(6, 3, 7, 3),
(7, 4, 2, 2),
(8, 4, 8, 1),
(9, 5, 6, 1),
(10, 6, 4, 2),
(11, 6, 7, 2),
(12, 7, 3, 1),
(13, 7, 2, 1),
(14, 8, 1, 1),
(15, 9, 5, 1),
(16, 9, 7, 5),
(17, 10, 8, 2);