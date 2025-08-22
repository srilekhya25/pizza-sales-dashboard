-- Top 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Revenue DESC
LIMIT 5;

-- Bottom 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Revenue ASC
LIMIT 5;

-- Top 5 Pizzas by Quantity Sold
SELECT pizza_name, SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC
LIMIT 5;

-- Bottom 5 Pizzas by Quantity Sold
SELECT pizza_name, SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC
LIMIT 5;
