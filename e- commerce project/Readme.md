# Retail Sales & Customer Behavior Analytics – Python + SQL + Power BI

![e-commerce logo]( https://github.com/DEVDAYALWANI19/Portfolio-Projects/blob/114303c376c4d291ec87e5917acf488449eb456f/e-%20commerce%20project/isometric-laptop-with-shopping-cart-keypad_1262-16544.avif)

---
## Project Overview
This project analyzes an e-commerce retail dataset to uncover insights into sales trends, customer behavior, and product performance. The analysis is implemented through a Python data pipeline and SQL views designed for Power BI dashboarding.

---

## Dataset Information
# The dataset was downloaded from Kaggle using the Kaggle API:

o	Dataset: Online Retail II from UCI Machine Learning Repository (available on Kaggle)
o	Contains: 525,446 transactions from a UK-based online retailer (2010-2011)
 [Dataset]( https://www.kaggle.com/datasets/shravankanamadi/online-retail-e-commerce-data)

The dataset contains the following columns:
o	**nvoice** – Unique order ID
o	**StockCode** – Product code
o	**Description** – Name of the product
o	**Quantity** – Number of units sold
o	**InvoiceDate** – When the purchase happened
o	**Price** – Unit price of the product
o	**Customer ID** – Unique identifier for each customer
o	**Country** – Where the customer is from

---

## Tools & Technologies Used
- **Python (jupyter notebook)** – Data cleaning and Processing
­	**SQL** - Analysis
- **Power BI** – Interactive visualizations and dashboard  
- **Kaggle API** – Dataset download  
- **DAX** – Custom calculations in Power BI  

---

## python – Data Cleaning And Preprocessing

--
## 1. Data Cleaning (Python)

•	Handled missing values (dropped nulls)

•	Removed duplicates

•	Fixed data types (converted descriptions to strings, dates to datetime)

•	Added calculated columns:

o	Year/Month/Day extraction from dates

o	Total price (quantity × price)

•	Standardized column names to lowercase


--
## 2. Database Integration

•	Processed data loaded into PostgreSQL database (`retails_db`)

•	 Table name: (`retails`)

---
## SQL Analysis View – 
The project includes 14 analytical views designed for Power BI dashboarding:
1.	**Total Sales Over Time** - Monthly sales trends
2.	**Top Selling Products** - Products by revenue
3.	**Top Revenue-Generating Countries** (Excluding UK)
4.	**Monthly Growth Rate** - Percentage change in sales
5.	**Customer Retention** - Order counts per customer
6.	**Customer Order Frequency** - Average orders per customer
7.	**High-Value Customers by Country** - Customers spending above average
8.	**Most Returned Products** - Frequent returns analysis
9.	**Average Order Size** - Typical quantity per order
10.	**Low-Performing Products** - High quantity but low revenue items
11.	**Sales by Day of Week** - Weekly patterns
12.	**Sales by Hour of Day** - Daily shopping patterns
13.	**Seasonal Peaks** - Monthly sales performance
14.	**Revenue Lost from Returns** - Financial impact of returns


---
## Dashboard Preview

![e-commerce Dashboard Screenshot]( https://github.com/DEVDAYALWANI19/Portfolio-Projects/blob/114303c376c4d291ec87e5917acf488449eb456f/e-%20commerce%20project/Screenshot%202025-08-14%20120509.png)

---

##Contact
**Author:**  DEV DAYALWANI 
**GitHub:** [https://github.com/DEVDAYALWANI19]  
**Email:**  devdayalwani3@gmail.com

