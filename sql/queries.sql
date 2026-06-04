-- View all products

SELECT *
FROM dim_product;

-- View all vendors

SELECT *
FROM dim_vendor;

-- View all dates

SELECT *
FROM dim_date;

-- View all sales

SELECT *
FROM fact_sales;

-- Revenue by Vendor

SELECT
    vendor_name,
    SUM(revenue) AS total_revenue
FROM fact_sales
JOIN dim_vendor
    ON fact_sales.vendor_id = dim_vendor.vendor_id
GROUP BY vendor_name
ORDER BY total_revenue DESC;

-- Revenue by Category

SELECT
    category,
    SUM(revenue) AS total_revenue
FROM fact_sales
JOIN dim_product
    ON fact_sales.product_id = dim_product.product_id
GROUP BY category
ORDER BY total_revenue DESC;

-- Revenue by Date

SELECT
    full_date,
    SUM(revenue) AS total_revenue
FROM fact_sales
JOIN dim_date
    ON fact_sales.date_id = dim_date.date_id
GROUP BY full_date
ORDER BY full_date;
