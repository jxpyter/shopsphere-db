# 🛒 ShopSphere DB – PostgreSQL E-Commerce Database Project

A fully modular, real-world **PostgreSQL database** project designed with scalability and professional structure in mind.  
Includes advanced SQL features: views, CTEs, window functions, triggers, stored procedures, and role-based access control.

---

## 📁 Project Structure

| Folder           | Contents                                      |
| ---------------- | --------------------------------------------- |
| `init/`          | Database & schema setup                       |
| `data/`          | Sample dataset                                |
| `views/`         | Reporting views (CTE, window functions)       |
| `procedures/`    | JSON-based order procedure and usage examples |
| `triggers/`      | Stock update logic and logging triggers       |
| `roles/`         | Roles, test users, and permissions            |
| `full_setup.sql` | Main installer script (runs all components)   |

---

## 🧪 Setup

```bash
git clone https://github.com/jxpyter/shopsphere-db.git
cd shopsphere-db

# Inside PostgreSQL shell
psql -U postgres

-- Run the full setup
\i full_setup.sql
You may need to change the DB name in 01_create_database.sql.


💡 Features
✅ Fully normalized relational schema

✅ Views, CTEs, window functions

✅ JSON-based stored procedures

✅ Inventory triggers & logs

✅ Role-based access (admin, readonly, customer)

✅ Modular and scalable structure


🧾 Example – Place an Order

CALL create_order(
    2,
    '[
        {"product_id": 4, "quantity": 1, "unit_price": 29.99},
        {"product_id": 5, "quantity": 2, "unit_price": 15.90}
    ]'
);


⚙️ Technologies
PostgreSQL 15+

PL/pgSQL

SQL (DDL, DML, DCL)

Transactional design

JSON handling

📬 Contact
For feedback or contributions, feel free to open an issue or pull request.
```
