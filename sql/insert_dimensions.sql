INSERT INTO dim_product(
    product_name,
    product_type,
    price,
    category,
    supplier
)
VALUES
('Running Shoes', 'Athletic Footwear', 89.99, 'Footwear', 'Nike'),
('Soccer Cleats', 'Athletic Footwear', 119.99, 'Footwear', 'Adidas'),
('Basketball Shoes', 'Athletic Footwear', 149.99, 'Footwear', 'Nike'),
('Running Shorts', 'Athletic Apparel', 39.99, 'Apparel', 'Puma'),
('Hoodie', 'Casual Apparel', 69.99, 'Apparel', 'Nike');

-- Vendor Data

INSERT INTO dim_vendor(
    vendor_name,
    contact_email,
    country,
    vendor_type
)
VALUES
('Nike', 'support@nike.com', 'USA', 'Apparel'),
('Adidas', 'contact@adidas.com', 'Germany', 'Apparel'),
('Puma', 'info@puma.com', 'Germany', 'Apparel'),
('Under Armour', 'support@underarmour.com', 'USA', 'Apparel'),
('New Balance', 'support@newbalance.com', 'USA', 'Apparel');

-- Date Data

INSERT INTO dim_date(
    full_date,
    year,
    month,
    quarter,
    weekday
)
VALUES
('2026-05-29', 2026, 5, 2, 'Friday'),
('2026-05-30', 2026, 5, 2, 'Saturday'),
('2026-05-31', 2026, 5, 2, 'Sunday'),
('2026-06-01', 2026, 6, 2, 'Monday');
