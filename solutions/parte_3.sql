--1
SELECT TOP 5 order_date,COUNT(*) AS 'sold_orders'
FROM orders
GROUP BY order_date
ORDER BY COUNT(*) DESC

--2
SELECT TOP 3 c.product_name,COUNT(*) as 'count_orders'
FROM orders a, order_items b, products c 
where a.order_id = b.order_id
AND b.product_id = c.product_id
GROUP BY c.product_name
ORDER BY COUNT(*) DESC

--3
SELECT c.product_name,COUNT(*) as 'count_orders'
FROM orders a, order_items b, products c 
where a.order_id = b.order_id
AND b.product_id = c.product_id
GROUP BY c.product_name
ORDER BY COUNT(*) DESC

--4
SELECT TOP 1 b.product_name, MAX(a.list_price) as 'highest_price'
FROM order_items a, products b 
where  a.product_id = b.product_id
GROUP BY b.product_name
ORDER BY MAX(a.list_price) DESC

--5
SELECT TOP 1  b.product_name, MIN(a.list_price) as 'lowest_price'
FROM order_items a, products b 
where  a.product_id = b.product_id
GROUP BY b.product_name
ORDER BY MIN(a.list_price)

--6
SELECT TOP 1 c.product_name,COUNT(*) as 'count_orders'
FROM orders a, order_items b, products c 
where a.order_id = b.order_id
AND b.product_id = c.product_id
GROUP BY c.product_name
ORDER BY COUNT(*) 
