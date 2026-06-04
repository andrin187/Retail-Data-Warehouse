CREATE VIEW category_revenue_summary AS
SELECT
    category,
    SUM(revenue) AS total_revenue
FROM fact_sales
JOIN dim_product
    ON fact_sales.product_id = dim_product.product_id
GROUP BY category;

-- Revenue by Vendor View

CREATE VIEW vendor_revenue_summary AS
SELECT
    vendor_name,
    SUM(revenue) AS total_revenue
FROM fact_sales
JOIN dim_vendor
    ON fact_sales.vendor_id = dim_vendor.vendor_id
GROUP BY vendor_name;

-- Revenue by Date View

CREATE VIEW date_revenue_summary AS
SELECT
    full_date,
    SUM(revenue) AS total_revenue
FROM fact_sales
JOIN dim_date
    ON fact_sales.date_id = dim_date.date_id
GROUP BY full_date;
