-- Sales by Pizza Category
SELECT category, ROUND(SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales) * 100, 2) AS Category_Revenue_Percentage
FROM pizza_sales
GROUP BY category;

-- Sales by Pizza Size
SELECT size, ROUND(SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales) * 100, 2) AS Size_Revenue_Percentage
FROM pizza_sales
GROUP BY size;
