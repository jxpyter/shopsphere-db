-- VIEW: The customer service team wants to be able to quickly see the date, customer, total amount and status of each order.
CREATE OR REPLACE VIEW order_summary_view AS
SELECT 
    o.order_id,
    u.username AS customer,
    o.order_date,
    o.status,
    SUM(oi.quantity * oi.unit_price) AS total_amount
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, u.username, o.order_date, o.status;
--Example
SELECT * FROM order_summary_view ORDER BY order_date DESC;