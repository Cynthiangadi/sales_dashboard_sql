  /what are the monthly sales, profit, and quantity?

SELECT 
strftime('%m-%Y', order_date) AS order_month,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
SUM(quantity) AS total_quantity  
FROM 
orders
GROUP BY 
strftime('%m-%Y', order_date)
ORDER BY order_month;

  /what are the total sales and profit by different ship mode?

SELECT 
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ship_mode 
FROM 
orders
GROUP BY 
ship_mode; 

  /what are the total sales and profit by different segments?

SELECT 
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
segment
FROM 
orders 
GROUP BY 
segment ;

  /what are the total sales and profit by different categories and subcategories?


SELECT 
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
category,
sub_category
FROM
orders
GROUP BY 
category,
sub_category;

  /What is the quantity for each region?
  
SELECT
SUM(quantity) AS total_quantity,
region 
FROM 
orders
GROUP BY 
region ;

   /What is the average discount for each product category? 
   
   SELECT 
   category ,
   AVG(discount) AS average_discount
   FROM orders
   GROUP BY 
   category ;
   
    /What are the average sales and profit per order?

    SELECT
    AVG(sales) AS average_sales,
    AVG(profit) AS average_profit
    FROM 
    orders;

   / What is the most profitable product?
SELECT 
SUM(profit), 
product_name AS profitable_product
FROM orders;

  /Who are the top 5 customers based on their total spending? 

SELECT 
customer_name,
sales,
quantity
FROM orders
LIMIT 5;

  /How many orders were placed in each year?

SELECT 
order_date,

FROM orders;


