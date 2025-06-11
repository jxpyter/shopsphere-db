-- INIT
\i init/create_database.sql
\i init/create_tables.sql

-- DATA
\i data/insert_sample_data.sql

-- VIEWS
\i views/order_summary_view.sql
\i views/detailed_order_items_view.sql
\i views/customer_spending_cte.sql
\i views/product_sales_rank.sql

-- TRIGGERS
\i triggers/inventory_log_table.sql
\i triggers/trg_update_stock_after_order.sql
\i triggers/update_stock_and_log.sql

-- PROCEDURES
\i procedures/create_order_procedure.sql
\i procedures/call_example.sql

-- ROLES
\i roles/roles.sql
