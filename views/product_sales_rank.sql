-- WINDOW FUNCTION: The product manager wants to see product ranking based on sales.
SELECT 
    p.name AS product_name,
    SUM(oi.quantity) AS total_units_sold,
    RANK() OVER (ORDER BY SUM(oi.quantity) DESC) AS sales_rank
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name;
--Alternative: You can also use DENSE_RANK() OR ROW_NUMBER()