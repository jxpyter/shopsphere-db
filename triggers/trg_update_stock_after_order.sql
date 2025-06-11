--TRIGGER DESCRIPTION
CREATE TRIGGER trg_update_stock_after_order
AFTER INSERT ON order_items
FOR EACH ROW
EXECUTE FUNCTION update_stock_and_log();