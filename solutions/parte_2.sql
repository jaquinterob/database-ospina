--1
SELECT order_date, COUNT(*) AS 'orders_count' 
from orders
GROUP BY order_date
ORDER by 1

--2
SELECT a.order_date, SUM(B.list_price) as 'price_order_day' FROM orders a, order_items b  
where  a.order_id = b.order_id
group by a.order_date
order by 1

--3
SELECT a.order_date,c.product_name,count(*) AS 'sum_day_product'
from orders a, order_items b, products c
where a.order_id = b.order_id
AND b.product_id = c.product_id
GROUP BY a.order_date,c.product_name
ORDER by 1

--4
SELECT a.order_date,c.product_name,SUM(b.list_price) as 'price_sum'
from orders a, order_items b, products c
where a.order_id = b.order_id
AND b.product_id = c.product_id
GROUP BY a.order_date,c.product_name
ORDER by 1

--5
SELECT a.order_date,b.customer_id, count(*) as 'orders_count'
from orders a, customers b 
where a.customer_id = b.customer_id
group by  a.order_date,b.customer_id
order by 1

--6
SELECT MONTH(a.order_date),b.customer_id, count(*) as 'orders_by_month'
from orders a, customers b 
where a.customer_id = b.customer_id
group by  MONTH(a.order_date),b.customer_id
order by 1
