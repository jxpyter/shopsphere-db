--USAGE (CALL COMMAND)
CALL create_order(
    3,  -- user_id
    '[
        {"product_id": 2, "quantity": 1, "unit_price": 49.99},
        {"product_id": 5, "quantity": 2, "unit_price": 19.90}
    ]'
);