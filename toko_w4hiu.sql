-- login: root
mysql -u root
-- membuat database
CREATE DATABASE toko_w4hiu;
-- masuk ke database
use toko_w4hiu;
-- membuat tabel produk
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(255) NOT NULL,
    harga DECIMAL(10,2) NOT NULL,
    deskripsi TEXT,
    stok INT NOT NULL
);
-- membuat tabel user
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
-- membuat tabel order
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
-- menambahkan produk ke tabel(CREATE)
INSERT INTO products (nama_produk, harga, deskripsi, stok)
VALUES ('Kaos Polos', 75000.00, 'Kaos polos bahan katun combed 30s', 100);
-- MENAMPILKAN DATA DARI TABEL (READ)
SELECT * FROM products;
-- UPDATE DATA DI TABEL (UPDATE)
UPDATE products
SET harga = 80000.00, stok = 90
WHERE id = 1;   
-- DELETE DATA DI TABEL (DELETE)
DELETE FROM products
WHERE id = 1;