USE reastaurant;
show tables;
SELECT * FROM customers
WHERE age > 20;
SELECT * FROM customers
ORDER BY age DESC;
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;
SELECT customers.customer_name,
       orders.order_id,
       orders.total_amount
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id;
select * from menu;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT 
    customers.customer_name,
    orders.order_id,
    menu.item_name,
    order_items.quantity,
    menu.price
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN order_items
    ON orders.order_id = order_items.order_id
JOIN menu
    ON order_items.item_id = menu.item_id;
    
    USE restaurant;

UPDATE customers
SET age = 19
WHERE customer_id = 4;

SELECT * FROM customers
WHERE customer_id = 4;

DELETE FROM customers
WHERE customer_id = 6;
SELECT * FROM customers;

SELECT customer_id
FROM customers

UNION

SELECT customer_id
FROM orders;

SELECT customer_id
FROM customers

UNION ALL

SELECT customer_id
FROM orders;

