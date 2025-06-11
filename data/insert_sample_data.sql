-- DUMMY DATA ENTRY
INSERT INTO roles (role_name) VALUES 
('admin'), ('customer'), ('readonly');

INSERT INTO users (username, email, password_hash, role_id) VALUES
('admin01', 'admin@example.com', 'admin123', 1),
('john_doe', 'john@example.com', '1234', 2),
('jane_smith', 'jane@example.com', '1234', 2),
('mark_travis', 'mark@example.com', '1234', 2),
('lara_croft', 'lara@example.com', '1234', 2);

INSERT INTO categories (name) VALUES
('Elektronik'), ('Ev Ürünleri'), ('Kitap'), ('Kıyafet');

INSERT INTO products (name, price, stock, category_id) VALUES
('Kablosuz Mouse', 250.00, 50, 1),
('Mekanik Klavye', 750.00, 40, 1),
('HDMI Kablosu', 80.00, 100, 1),
('Çay Makinesi', 450.00, 30, 2),
('Tava Seti', 380.00, 25, 2),
('Tarih Atlası', 120.00, 60, 3),
('Yazlık Elbise', 300.00, 70, 4),
('Kışlık Mont', 850.00, 20, 4);

INSERT INTO addresses (user_id, address_line, city, country, postal_code) VALUES
(2, 'Atatürk Cad. No: 15', 'İstanbul', 'Türkiye', '34000'),
(3, 'Cumhuriyet Mah. 23. Sk. No:8', 'Ankara', 'Türkiye', '06000'),
(4, 'Barbaros Blv. No:18', 'İzmir', 'Türkiye', '35000'),
(5, 'Fatih Mah. No:5', 'Bursa', 'Türkiye', '16000');

INSERT INTO orders (user_id, order_date, status) VALUES
(2, '2025-06-01', 'shipped'),
(3, '2025-06-03', 'pending'),
(2, '2025-06-04', 'delivered'),
(4, '2025-06-05', 'shipped'),
(5, '2025-06-06', 'cancelled');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 250.00),
(1, 2, 1, 750.00),
(2, 4, 1, 450.00),
(2, 6, 2, 120.00),
(3, 3, 2, 80.00),
(4, 7, 1, 300.00),
(4, 8, 1, 850.00),
(5, 5, 1, 380.00);

INSERT INTO payments (order_id, payment_method, paid_amount, payment_date) VALUES
(1, 'kredi_karti', 1000.00, '2025-06-01'),
(2, 'havale', 690.00, '2025-06-03'),
(3, 'kapıda_odeme', 160.00, '2025-06-04'),
(4, 'kredi_karti', 1150.00, '2025-06-05');