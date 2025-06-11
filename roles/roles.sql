--CREATING ROLES
-- Main roles
CREATE ROLE admin;
CREATE ROLE readonly;
CREATE ROLE customer;

-- Users (for test)
CREATE USER admin_user WITH PASSWORD 'admin123';
CREATE USER reader_user WITH PASSWORD 'read123';
CREATE USER customer_user WITH PASSWORD 'cust123';

-- Assign roles to the user
GRANT admin TO admin_user;
GRANT readonly TO reader_user;
GRANT customer TO customer_user;


-- Authorize
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO admin;

-- Read-only
GRANT CONNECT ON DATABASE shopsphere TO readonly;
GRANT USAGE ON SCHEMA public TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;

-- Customer
-- Note: Only products and order_summary_view for now
GRANT SELECT ON products TO customer;
GRANT SELECT ON order_summary_view TO customer;



-- EXTRA SECURITY (OPTIONAL BUT PROFESSIONAL)
-- Get `readonly` automatic SELECT as new tables are created:
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT ON TABLES TO readonly;













