-- Task 6: Sales Trend Analysis Using Aggregations
-- Tool: SQLite (Online Compiler)
-- Objective: Analyze monthly revenue and order volume

-- Drop table if it already exists
DROP TABLE IF EXISTS orders;

-- Create orders table
CREATE TABLE orders (
    order_id INTEGER,
    order_date DATE,
    product_id INTEGER,
    amount REAL
);

-- Insert sample data
INSERT INTO orders VALUES
(1,'2024-01-15',101,500),
(2,'2024-01-20',102,700),
(3,'2024-02-05',103,300),
(4,'2024-02-18',101,900),
(5,'2024-03-10',104,1200),
(6,'2024-03-25',102,400),
(7,'2024-04-12',103,800),
(8,'2024-04-28',105,600);

-- View all orders
SELECT * FROM orders;

-- Monthly Revenue Analysis
SELECT 
    strftime('%Y-%m', order_date) AS year_month,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY year_month
ORDER BY year_month;

-- Monthly Order Volume Analysis
SELECT 
    strftime('%Y-%m', order_date) AS year_month,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year_month
ORDER BY year_month;

-- Combined Monthly Revenue and Order Volume
SELECT 
    strftime('%Y-%m', order_date) AS year_month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year_month
ORDER BY monthly_revenue DESC;

-- Top 3 Months by Revenue
SELECT 
    strftime('%Y-%m', order_date) AS year_month,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY year_month
ORDER BY monthly_revenue DESC
LIMIT 3;
