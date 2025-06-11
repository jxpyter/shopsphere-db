-- CTE: The marketing team wants to see which customers spend the most.
WITH customer_spending AS (
    SELECT 
        u.user_id,
        u.username,
        SUM(oi.quantity * oi.unit_price) AS total_spent
    FROM users u
    JOIN orders o ON u.user_id = o.user_id
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY u.user_id, u.username
)