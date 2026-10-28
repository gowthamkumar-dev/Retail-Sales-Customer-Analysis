# Retail Sales & Customer Analysis

## Project Overview

This project analyzes retail sales, customer activity, product performance, and order trends using **MySQL** and **Power BI**. The goal is to transform retail data into meaningful insights through SQL queries and an interactive dashboard.

## Tools & Technologies

- **Database:** MySQL
- **Data Visualization:** Microsoft Power BI
- **Query Language:** SQL
- **Data Modeling:** Relationships between customers, orders, order details, and products

## Database Structure

The project uses four tables:

| Table | Description |
|---|---|
| `Customers` | Customer information and registration details |
| `Products` | Product names, categories, prices, and stock quantities |
| `Orders` | Order dates, customer references, and order statuses |
| `OrderDetails` | Products, quantities, and unit prices associated with orders |

## Project Files

| File | Description |
|---|---|
| `01_Database_Setup.sql` | Creates the database tables and relationships |
| `02_Insert_Sample_Data.sql` | Inserts sample retail data |
| `03_Data_Quality_Checks.sql` | Checks data quality, invalid values, and duplicates |
| `04_Sales_Analysis.sql` | Contains SQL queries for sales analysis |
| `Retail_Sales_Customer_Analysis.pbix` | Power BI report and dashboard |
| `01_Dashboard` | Dashboard screenshot |
| `02_Data_Model` | Data model screenshot |

## SQL Analysis

The SQL scripts cover:

- Total sales and order counts
- Customer and product counts
- Product-wise and category-wise sales
- Sales by state
- Order status analysis
- Customer order analysis
- Data quality and validation checks

## Power BI Dashboard

The Power BI dashboard includes:

- **Key Performance Indicators (KPIs):** Total Sales, Total Orders, and Total Customers
- **Sales by State:** Compares sales across states
- **Sales by Product Category:** Highlights category performance
- **Orders by Status:** Shows the distribution of order statuses
- **Sales Trend Over Time:** Tracks monthly sales
- **Top-Selling Products:** Compares products by sales revenue
- **Interactive Slicers:** Filter the report by category, state, and order date

## Data Model

The report connects the four tables using their key relationships:

- Customers → Orders
- Orders → OrderDetails
- Products → OrderDetails

These relationships allow the dashboard to analyze sales across customers, products, locations, and time.

## How to Use

1. Run `01_Database_Setup.sql` in MySQL.
2. Run `02_Insert_Sample_Data.sql` to load the sample data.
3. Run `03_Data_Quality_Checks.sql` to validate the data.
4. Run `04_Sales_Analysis.sql` to explore the SQL analysis.
5. Open `Retail_Sales_Customer_Analysis.pbix` in Power BI Desktop.
6. If required, configure the MySQL connection and refresh the data.

## Project Objective

To demonstrate practical SQL querying, relational data modeling, data validation, and interactive business reporting using MySQL and Power BI.

---

**Author:** Gowtham Kumar
