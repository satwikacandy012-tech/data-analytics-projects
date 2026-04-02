-- Sales Data Analysis Project

-- Create table
CREATE TABLE sales_data (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_sales DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO sales_data VALUES
(1, '2025-01-05', 'Alice Johnson', 'East', 'Laptop', 'Electronics', 1, 800, 800),
(2, '2025-01-07', 'Bob Smith', 'West', 'Phone', 'Electronics', 2, 500, 1000),
(3, '2025-01-10', 'Carol Lee', 'South', 'Chair', 'Furniture', 1, 150, 150),
(4, '2025-01-12', 'David Brown', 'North', 'Notebook', 'Stationery', 10, 5, 50),
(5, '2025-01-15', 'Emma Davis', 'East', 'Tablet', 'Electronics', 1, 300, 300);

-- Total revenue
SELECT SUM(total_sales) AS total_revenue FROM sales_data;

-- Sales by region
SELECT region, SUM(total_sales) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;

-- Top products
SELECT product_name, SUM(total_sales) AS revenue
FROM sales_data
GROUP BY product_name
ORDER BY revenue DESC;

-- Average order value
SELECT AVG(total_sales) AS avg_order_value FROM sales_data;
