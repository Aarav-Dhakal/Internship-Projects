# Week 2 SQL Internship Assignment

## Topic

SQL and Relational Databases

## Objective

The main objective of this assignment was to understand relational
databases and learn how to use SQL to work with data.

I practiced writing SQL queries to retrieve, filter, sort, group,
and analyze data from multiple related tables.

## Database Used

I used **SQLite** for this assignment because it is free, lightweight,
and easy to use without setting up a separate database server.

## Database Tables

The sample database contains four related tables:

### 1. Customers

Stores information about customers.

- Customer ID
- Customer Name
- City
- Age

### 2. Products

Stores information about products.

- Product ID
- Product Name
- Category
- Price
- Stock

### 3. Orders

Stores information about customer orders.

- Order ID
- Customer ID
- Order Date

### 4. Order Items

Stores the products included in each order.

- Order Item ID
- Order ID
- Product ID
- Quantity

## SQL Topics Practiced

During this assignment, I practiced:

- SELECT
- WHERE
- Filtering
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

## SQL Practice

I created **20 SQL practice questions** covering basic and
intermediate SQL concepts.

The questions include:

- Displaying records
- Filtering customers and products
- Sorting data
- Counting records
- Finding average, minimum, and maximum values
- Grouping data by category and city
- Joining multiple tables

## Business Questions

I also created **20 business-style SQL questions** to understand
how SQL can be used to solve real-world data problems.

The questions cover:

- Customer analysis
- Product analysis
- Order analysis
- Sales analysis
- Total units sold
- Product revenue
- Customer spending
- Stock value
- Most sold products

## Files in This Folder

```text
Week2/
│
├── database.sql
├── sql_practice.sql
├── business_questions.sql
└── README.md