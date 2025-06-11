CREATE TABLE inventory_log (
    log_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    change_amount INT,
    action_type VARCHAR(50),  -- exmp: 'order'
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);