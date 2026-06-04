-- Create Product Dimension

CREATE TABLE dim_product(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_type VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(100) NOT NULL,
    supplier VARCHAR(100) NOT NULL
);

-- Create Vendor Dimension

CREATE TABLE dim_vendor(
    vendor_id SERIAL PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    country VARCHAR(50) NOT NULL,
    vendor_type VARCHAR(50) NOT NULL
);

-- Create Date Dimension

CREATE TABLE dim_date(
    date_id SERIAL PRIMARY KEY,
    full_date DATE NOT NULL,
    year INT NOT NULL,
    month INT NOT NULL,
    quarter INT NOT NULL,
    weekday VARCHAR(20) NOT NULL
);

-- Create Sales Fact Table

CREATE TABLE fact_sales(
    sale_id SERIAL PRIMARY KEY,
    vendor_id INTEGER NOT NULL,
    date_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity_sold INTEGER NOT NULL,
    revenue DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (vendor_id)
        REFERENCES dim_vendor(vendor_id),

    FOREIGN KEY (date_id)
        REFERENCES dim_date(date_id),

    FOREIGN KEY (product_id)
        REFERENCES dim_product(product_id)
);
