# 🛠️ ShopSphere DB – Development Roadmap

This file tracks pending tasks, improvements, and planned features for the ShopSphere PostgreSQL project.

---

## ✅ Completed

- [x] Initial database schema (users, products, orders, inventory, etc.)
- [x] JSON-based stored procedure to create orders
- [x] Stock management trigger with log table
- [x] Views with window functions and CTEs
- [x] Role-based access control (admin, customer, readonly)
- [x] Modular SQL structure and full setup script
- [x] English README with usage examples

---

## 🟡 In Progress

- [ ] Add documentation under `docs/` for:
  - Schema overview
  - Procedure logic
  - Trigger behavior
  - Role permissions

- [ ] Improve sample dataset (more diversity, edge cases)

- [ ] Add SQL test scripts to validate procedure outputs

---

## 🔜 Planned Features

- [ ] Materialized views for analytics reports (e.g., weekly revenue)
- [ ] Audit trail via insert/update/delete triggers
- [ ] ETL pipeline example (CSV to PostgreSQL)
- [ ] Add Docker support for local setup
- [ ] Create REST-like mock procedures (e.g., `get_user_orders(user_id)`)
- [ ] Performance tuning: indexes, query optimization
- [ ] GitHub Wiki or interactive docs (optional)

---

## 💡 Suggestions / Ideas

- Automatic archiving of completed orders
- Email notifications (simulated via `NOTIFY`/`LISTEN`)
- Multi-tenant support (schema-per-customer)
- Add unit test coverage using pgTAP (PostgreSQL unit testing)

---

> Contributions or suggestions are welcome. Feel free to open an issue or pull request.
