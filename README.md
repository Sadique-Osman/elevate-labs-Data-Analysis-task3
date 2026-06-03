# Task 3: SQL for Data Analysis
## Data Analyst Internship — Elevate Labs

---

## Objective
Use SQL queries to extract and analyze data from a 
real-world e-commerce database, demonstrating core 
data analysis skills using structured query language.

---

## Tools Used
- SQLite (DB Browser for SQLite)
- VS Code with SQLTools extension
- GitHub for version control

---

## Dataset
**Name:** Sample - Superstore  
**Rows:** 9,994  
**Source:** Kaggle E-commerce Dataset  

### Columns:
- Order ID, Order Date, Ship Date, Ship Mode
- Customer ID, Customer Name, Segment
- Country, City, State, Region
- Product ID, Category, Sub-Category, Product Name
- Sales, Quantity, Discount, Profit

---

## Queries Performed

### 1. SELECT with WHERE and ORDER BY
Filtered high-value orders above $500 and sorted 
by sales in descending order to identify top 
performing transactions.

### 2. GROUP BY with Aggregate Functions
Grouped data by product category to calculate 
total revenue (SUM) and average order value (AVG) 
per category — core business KPI analysis.

### 3. HAVING Clause
Filtered grouped results to show only cities 
generating more than $10,000 in total sales. 
Demonstrates difference between WHERE and HAVING.

### 4. Subquery
Identified customers whose individual purchase 
value exceeds the overall average sales amount. 
Used nested SELECT to calculate dynamic threshold.

### 5. CREATE VIEW
Created a reusable virtual table (revenue_summary) 
showing total sales by category and region. 
Views simplify complex queries for repeated use.

### 6. CREATE INDEX
Created an index on the Category column to 
optimize query performance on large datasets. 
Reduces full table scans on frequently filtered columns.

### 7. Average Revenue Per User (ARPU)
Calculated average spending per customer using 
GROUP BY and AVG. ARPU is a standard KPI used 
by every e-commerce business to identify 
high-value customers.

---

## Key Insights
- Technology category generates highest total revenue
- Several cities exceed $10,000 in cumulative sales
- High-value customers identified above average spend
- Index optimization applied on most queried column

---

## Concepts Demonstrated
| Concept | Query |
|---|---|
| SELECT, WHERE, ORDER BY | Query 1 |
| GROUP BY, SUM, AVG | Query 2 |
| HAVING | Query 3 |
| Subquery | Query 4 |
| CREATE VIEW | Query 5 |
| CREATE INDEX | Query 6 |
| ARPU Calculation | Query 7 |

---

## Files in this Repository
- `analysis.sql` — All SQL queries with comments
- `screenshots/` — Output screenshots for each query
- `README.md` — Project documentation

---

## Author
**Mohammad Sadique**  
BCA (Information Technology)  
Data Analyst Intern  
[LinkedIn](https://www.linkedin.com/in/mohammad-sadique-1028ba2a1) | 
[Portfolio](https://sadique-osman.github.io/portfolio) |
[GitHub](https://github.com/Sadique-Osman)
