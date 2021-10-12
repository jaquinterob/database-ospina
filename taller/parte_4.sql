--1
SELECT a.order_date, AVG(b.count_orders_by_day) AS 'average'
FROM orders a
JOIN (SELECT order_date, COUNT(*) AS 'count_orders_by_day'
      FROM orders
      GROUP BY order_date ) b
ON a.order_date = b.order_date
GROUP BY a.order_date
ORDER BY average DESC 

--2
SELECT MONTH(a.order_date) AS 'month', AVG(b.list_price) AS 'price_average'
FROM orders a, order_items b
WHERE a.order_id = b.order_id
GROUP BY MONTH(a.order_date)
ORDER BY 1

--3
SELECT a.order_date AS 'day', c.product_name AS 'product' , AVG(b.list_price) AS 'price_average'
FROM orders a, order_items b, products c
WHERE a.order_id = b.order_id
AND b.product_id = c.product_id
GROUP BY a.order_date, product_name
ORDER BY 1
