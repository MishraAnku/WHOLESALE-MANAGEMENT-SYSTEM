-- Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price DECIMAL(10, 2)
);

-- Create Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert values into Products Table
INSERT INTO products (product_id, product_name, unit_price) 
VALUES 
    (1, 'Product A', 10.00),
    (2, 'Product B', 20.00),
    (3, 'Product C', 15.00);

-- Insert values into Orders Table
INSERT INTO orders (order_id, product_id, quantity, order_date) 
VALUES 
    (1, 1, 5, '2024-03-01'),
    (2, 2, 3, '2024-03-03'),
    (3, 1, 2, '2024-03-05');

-- Perform a join operation to get order details along with product details
SELECT 
    o.order_id,
    p.product_name,
    p.unit_price,
    o.quantity,
    o.order_date
FROM 
    orders o
INNER JOIN 
    products p ON o.product_id = p.product_id;

