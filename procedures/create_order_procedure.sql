-- STORED PROCEDURE: Creating an Order with Stored Procedure (Atomic Process)

--Script: We want to process the order in one go
--When a user from frontend presses “Place Order” button, the following steps should run in the background:
--New order registration (orders)
--Add order items (order_items)
--Dropping from stock is already working with trigger
--All these steps should work as a single transaction

-- Stored Procedure: CREATE_ORDER
CREATE OR REPLACE PROCEDURE create_order(p_user_id INT, p_items JSON)
LANGUAGE plpgsql
AS $$
DECLARE
    v_order_id INT;
    item JSON;
    v_product_id INT;
    v_quantity INT;
    v_unit_price NUMERIC;
BEGIN
    -- Create order
    INSERT INTO orders (user_id, order_date, status)
    VALUES (p_user_id, NOW(), 'pending')
    RETURNING order_id INTO v_order_id;

    -- Process for each product in JSON
    FOR item IN SELECT * FROM json_array_elements(p_items)
    LOOP
        v_product_id := (item ->> 'product_id')::INT;
        v_quantity := (item ->> 'quantity')::INT;
        v_unit_price := (item ->> 'unit_price')::NUMERIC;

        INSERT INTO order_items (order_id, product_id, quantity, unit_price)
        VALUES (v_order_id, v_product_id, v_quantity, v_unit_price);
    END LOOP;

    -- Automatic COMMIT if successful (already mandatory in PostgreSQL procedure)
END;
$$;