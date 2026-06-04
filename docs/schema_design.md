# Retail Data Warehouse - Schema Design
### Overview

This project implements a retail sales data warehouse in PostgreSQL using a star schema architecture. The warehouse is designed to support analytical reporting on product performance, vendor performance, and sales trends.

The schema consists of three dimension tables and one fact table:

dim_product
dim_vendor
dim_date
fact_sales
Star Schema Architecture
                 dim_product
                      |
                      |
                      |
dim_vendor ------ fact_sales ------ dim_date

The fact table stores measurable business metrics, while dimension tables provide descriptive business context.

Dimension Tables
dim_product

Stores descriptive product information.

Column	Data Type	Description
product_id	SERIAL	Primary Key
product_name	VARCHAR(100)	Product name
product_type	VARCHAR(100)	Product type
price	DECIMAL(10,2)	Product price
category	VARCHAR(100)	Product category
supplier	VARCHAR(100)	Product supplier

Business Purpose

Provides product attributes used for sales analysis by category, supplier, and product type.

dim_vendor

Stores vendor information.

Column	Data Type	Description
vendor_id	SERIAL	Primary Key
vendor_name	VARCHAR(100)	Vendor name
contact_email	VARCHAR(255)	Vendor contact email
country	VARCHAR(50)	Vendor country
vendor_type	VARCHAR(50)	Vendor classification

Business Purpose

Supports vendor performance reporting and supplier analysis.

dim_date

Stores calendar attributes used for time-based analysis.

Column	Data Type	Description
date_id	SERIAL	Primary Key
full_date	DATE	Calendar date
year	INTEGER	Year
month	INTEGER	Month
quarter	INTEGER	Quarter
weekday	VARCHAR(20)	Day of week

Business Purpose

Enables trend analysis, monthly reporting, and time-series analytics.

Fact Table
fact_sales

Stores transactional sales metrics.

Column	Data Type	Description
sale_id	SERIAL	Primary Key
vendor_id	INTEGER	Foreign Key to dim_vendor
date_id	INTEGER	Foreign Key to dim_date
product_id	INTEGER	Foreign Key to dim_product
quantity_sold	INTEGER	Units sold
revenue	DECIMAL(10,2)	Revenue generated

Business Purpose

Captures measurable business events and serves as the central table for analytical reporting.

Table Relationships
Product Relationship
fact_sales.product_id
        ↓
dim_product.product_id

Provides product information for each sales transaction.

Vendor Relationship
fact_sales.vendor_id
        ↓
dim_vendor.vendor_id

Provides vendor information for each sales transaction.

Date Relationship
fact_sales.date_id
        ↓
dim_date.date_id

Provides calendar context for sales analysis.

Analytical Capabilities

The warehouse supports business questions such as:

Which vendors generate the most revenue?
Which product categories perform best?
How does revenue trend over time?
Which products generate the highest sales volume?
Which vendors contribute the most sales activity?
Implemented Views
category_revenue_summary

Aggregates revenue by product category.

vendor_revenue_summary

Aggregates revenue by vendor.

date_revenue_summary

Aggregates revenue by date.

Technologies Used
PostgreSQL
SQL
pgAdmin
Git
GitHub
Future Enhancements
Python ETL pipeline using Pandas
Automated warehouse loading from CSV files
Data quality validation checks
Incremental data loading
Power BI dashboard integration
Cloud deployment (AWS/Azure)
Project Learning Outcomes

Through this project, the following concepts were applied:

Relational database design
Star schema modeling
Primary and foreign key relationships
Referential integrity
SQL data manipulation
SQL aggregations and analytical queries
Business intelligence reporting
Data warehouse architecture
View creation and reporting layers
