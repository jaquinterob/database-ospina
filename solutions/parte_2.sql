--1
SELECT order_date, COUNT(*) AS 'orders_count' 
FROM orders
GROUP BY order_date
ORDER by 1

--2
SELECT a.order_date, SUM(B.list_price) AS 'price_order_day' 
FROM orders a, order_items b  
where  a.order_id = b.order_id
group by a.order_date
ORDER BY 1

--3
SELECT a.order_date,c.product_name,COUNT(*) AS 'sum_day_product'
FROM orders a, order_items b, products c
WHERE a.order_id = b.order_id
AND b.product_id = c.product_id
GROUP BY a.order_date,c.product_name
ORDER BY 1

--4
SELECT a.order_date,c.product_name,SUM(b.list_price) AS 'price_sum'
FROM orders a, order_items b, products c
WHERE a.order_id = b.order_id
AND b.product_id = c.product_id
GROUP BY a.order_date,c.product_name
ORDER BY 1

--5
SELECT a.order_date,b.customer_id, COUNT(*) AS 'orders_count'
FROM orders a, customers b 
WHERE a.customer_id = b.customer_id
GROUP BY  a.order_date,b.customer_id
ORDER BY 1

--6
SELECT MONTH(a.order_date),b.customer_id, count(*) AS 'orders_by_month'
FROM orders a, customers b 
WHERE a.customer_id = b.customer_id
GROUP BY  MONTH(a.order_date),b.customer_id
ORDER BY 1
