-- TRIGGER: Automated Processing and Logging with Trigger
--In the real world, inventory tracking is a critical need. Instead of manually reducing stock when an order is entered, the database should do it automatically. Also, a log should be kept for possible audit.

--TRIGGER FUNCTION
CREATE OR REPLACE FUNCTION update_stock_and_log()
RETURNS TRIGGER AS $$
BEGIN
    -- Reduce stock
    UPDATE products
    SET stock = stock - NEW.quantity
    WHERE product_id = NEW.product_id;

    -- Create log
    INSERT INTO inventory_log (product_id, change_amount, action_type)
    VALUES (NEW.product_id, -NEW.quantity, 'order');

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;