--customers

CREATE TABLE customers(
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCAHAR(100) NOT NULL
);

-- orders
CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    price NUMERIC NOT NULL,
    cust_id INTEGER NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers (cust_id)
);

-- products
CREATE TABLE products (
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    price NUMERIC NOT NULL
);


--order items
CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    ord_id INTEGER NOT NULL,
    p_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (ord_id) REFERENCES orders(ord_id),
    FOREIGN KEY (p_id) REFERENCES products(p_id)
);


-- insert data

INSERT INTO customers (cust_name)
VALUES
    ('Raju'), ('Sham'), ('Paul'), ('Alex');


INSERT INTO orders (ord_date, cust_id)
VALUES
    ('2024-01-01', 1), -- Raju fi rst order
    ('2024-02-01', 2), -- Sham fi rst order
    ('2024-03-01', 3), -- Paul fi rst order
    ('2024-04-04', 2); -- Sham second order


INSERT INTO products (p_name, price)
VALUES
    ('Laptop', 55000.00),
    ('Mouse', 500),
    ('Keyboard', 800.00),
    ('Cable', 250.00);


INSERT INTO order_items (ord_id, p_id, quantity)
VALUES
    (1, 1, 1), -- Raju ordered 1 Laptop
    (1, 4, 2), -- Raju ordered 2 Cables
    (2, 1, 1), -- Sham ordered 1 Laptop
    (3, 2, 1), -- Paul ordered 1 Mouse
    (3, 4, 5), -- Paul ordered 5 Cables
    (4, 3, 1); -- Sham ordered 1 Keyboard


SELECT
    c.cust_name,
    o.ord_date,
    p.p_name,
    p.price,
    oi.quantity,
    (oi.quantity*p.price) AS total_price
        FROM order_items oi
        JOIN
            products p ON oi.p_id=p.p_id
        JOIN
            orders o ON o.ord_id=oi.ord_id
        JOIN
            customers c ON o.cust_id=c.cust_id;

