# Retail-Data-Warehouse

## Project Overview

Designed and implemented a retail data warehouse in PostgreSQL using a star schema architecture.
The warehouse supports analytical reporting on sales performance, vendors, products, and inventory-related metrics.

## 💡  Technologies

- PostgreSQL
- SQL
- pgAdmin

## 💡Data Model

### Dimension Tables
- dim_product
- dim_vendor
- dim_date

### Fact Tables
- fact_sales

## Example Business Questions

- Which vendor generated the most revenue?
- Which product categories perform best?
- How does revenue trend over time?

## 💡Views

- category_revenue_summary
- vendor_revenue_summary
- date_revenue_summary

## 💡Future Enhancements

- Python ETL pipeline
- Automated data loading
- Dashboard integration
