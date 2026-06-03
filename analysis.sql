-- =============================================
-- Task 3: SQL for Data Analysis
-- Dataset: Sample - Superstore
-- Tool: SQLite (DB Browser)
-- =============================================


-- 1. SELECT with WHERE and ORDER BY
-- Finding high-value orders above $500
SELECT "Order ID", "Customer Name", "Sales", "Category"
FROM "Sample - Superstore"
WHERE "Sales" > 500
ORDER BY "Sales" DESC;


-- 2. GROUP BY with SUM and AVG
-- Total and average sales by category
SELECT "Category", 
       SUM("Sales") AS Total_Sales,
       AVG("Sales") AS Avg_Sales
FROM "Sample - Superstore"
GROUP BY "Category";


-- 3. HAVING
-- Cities with total sales greater than $10,000
SELECT "City", SUM("Sales") AS Total_Sales
FROM "Sample - Superstore"
GROUP BY "City"
HAVING SUM("Sales") > 10000;


-- 4. Subquery
-- Customers spending more than average
SELECT "Customer Name", "Sales"
FROM "Sample - Superstore"
WHERE "Sales" > (SELECT AVG("Sales") FROM "Sample - Superstore");


-- 5. CREATE VIEW
-- Reusable revenue summary by category and region
CREATE VIEW revenue_summary AS
SELECT "Category", "Region", SUM("Sales") AS Total_Sales
FROM "Sample - Superstore"
GROUP BY "Category", "Region";

SELECT * FROM revenue_summary;


-- 6. INDEX for optimization
CREATE INDEX idx_category ON "Sample - Superstore"("Category");


-- 7. Average Revenue Per Customer
SELECT "Customer Name",
       ROUND(AVG("Sales"), 2) AS Avg_Revenue
FROM "Sample - Superstore"
GROUP BY "Customer Name"
ORDER BY Avg_Revenue DESC;