-- Daily Sales Trend
SELECT order_date, SUM(total_price) AS Daily_Revenue, SUM(quantity) AS Daily_Pizzas_Sold
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;

-- Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS Month, SUM(total_price) AS Monthly_Revenue, SUM(quantity) AS Monthly_Pizzas_Sold
FROM pizza_sales
GROUP BY Month
ORDER BY Month;
