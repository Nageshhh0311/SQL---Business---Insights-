CREATE DATABASE company_db;
USE company_db;

CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    product VARCHAR(50),
    category VARCHAR(30),
    quantity INT,
    price DECIMAL(10,2),
    city VARCHAR(30)
);

INSERT INTO sales VALUES
(101,'2026-01-05','Laptop','Electronics',2,45000,'Pune'),
(102,'2026-01-08','Mouse','Accessories',5,500,'Mumbai'),
(103,'2026-01-12','Keyboard','Accessories',3,1200,'Pune'),
(104,'2026-01-15','Mobile','Electronics',4,20000,'Mumbai'),
(105,'2026-01-20','Monitor','Electronics',2,12000,'Nashik'),
(106,'2026-02-02','Laptop','Electronics',3,45000,'Pune'),
(107,'2026-02-07','Mouse','Accessories',8,500,'Nashik'),
(108,'2026-02-11','Mobile','Electronics',5,20000,'Pune'),
(109,'2026-02-18','Keyboard','Accessories',6,1200,'Mumbai'),
(110,'2026-02-25','Monitor','Electronics',3,12000,'Pune'),
(111,'2026-03-03','Laptop','Electronics',1,45000,'Mumbai'),
(112,'2026-03-09','Mouse','Accessories',10,500,'Pune'),
(113,'2026-03-14','Mobile','Electronics',3,20000,'Nashik'),
(114,'2026-03-20','Keyboard','Accessories',4,1200,'Pune'),
(115,'2026-03-28','Monitor','Electronics',5,12000,'Mumbai');
SELECT * FROM sale;
SELECT SUM(quantity * price) AS
total_revenue
FROM sales;

SELECT
      product,
      SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY product;

SELECT 
      city,
      SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY city;

SELECT 
	MONTH(order_date) AS month,
    SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY MONTH(order_date);

SELECT 
      category,
      SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY category;

SELECT 
      category,
      SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY category;

SELECT category, SUM(quqntity) AS 
total_revenue
FROM sales
GROUP BY category;

SELECT SUM(quantity) AS 
total_quantity
FROM sales;

SELECT product, AVG(price) AS 
average_price
FROM sales
GROUP BY product;

SELECT count(*) AS total_orders
FROM sales;

SELECT
    SUM(quantity * price) AS total_revenue,
    SUM(quantity) AS total_quantity,
    COUNT(*) AS total_orders
FROM sales;

SELECT city, SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY city
ORDER BY total_revenue DESC
LIMIT 1;

SELECT product, SUM(quantity) AS
total_quantity
FROM sales
GROUP BY product
ORDER BY total_quantity DESC
LIMIT 1;

 SELECT city, COUNT(*) AS
 total_orders
 FROM sales
 GROUP BY city;
 
SELECT product,
       SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue ASC
LIMIT 1;

SELECT city,
       SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY city
ORDER BY total_revenue ASC
LIMIT 1;

SELECT MONTH (order_date) AS month,
      SUM(quantity) AS
total_quantity
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;

SELECT 
      MONTH (order_date) AS month,
      SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY total_revenue ASC
LIMIT 1;

SELECT order_id, order_date, quantity, price,
       (quantity * price) AS revenue
FROM sales
ORDER BY order_date;
 
 SELECT
    MONTH(order_date) AS month,
    SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;

SELECT
    order_date,
    MONTH(order_date) AS month,
    quantity,
    price
FROM sales;

SELECT
    MONTH(order_date) AS month,
    SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY MONTH(order_date);

SELECT category,
AVG(price) AS average_price
FROM sales 
GROUP BY category;
     
SELECT category, SUM(quantity) AS
total_quantity
FROM sales 
GROUP BY category;

SELECT 
     product,
	 AVG(price) AS average_price
FROM sales
GROUP BY product;

SELECT product,
   SUM(quantity * price) AS 
total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 1;

SELECT product,
   SUM(quantity * price) AS
total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue ASC
LIMIT 1;

SELECT city, 
      COUNT(*) AS 
total_orders
FROM sales
GROUP BY city;

SELECT city,
      SUM(quantity * price) AS 
total_revenue
FROM sales
GROUP BY city;

SELECT city,
      SUM(quantity * price) AS 
total_revenue
FROM sales
GROUP BY city
ORDER BY total_revenue DESC
LIMIT 1;

SELECT product,
SUM(quantity) AS total_quantity,
SUM(quantity*price) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

SELECT COUNT(*) AS total_orders,
     SUM(quantity) AS 
total_quantity
FROM sales;

SELECT 
     AVG(price) AS average_price
FROM sales;

  
  




     



