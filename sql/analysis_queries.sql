-- 1) Monthly revenue trend
SELECT
    strftime('%Y-%m', InvoiceDate) AS month,
    ROUND(SUM(TotalPrice), 2) AS revenue
FROM transactions
GROUP BY month
ORDER BY month;

-- 2) Top 10 products by revenue
SELECT
    Description,
    ROUND(SUM(TotalPrice), 2) AS revenue
FROM transactions
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;

-- 3) Revenue by country
SELECT
    Country,
    ROUND(SUM(TotalPrice), 2) AS revenue
FROM transactions
GROUP BY Country
ORDER BY revenue DESC;

-- 4) Repeat vs new customers
WITH customer_orders AS (
    SELECT CustomerID, COUNT(DISTINCT InvoiceNo) AS order_count
    FROM transactions
    GROUP BY CustomerID
)
SELECT
    CASE WHEN order_count > 1 THEN 'Repeat' ELSE 'New' END AS customer_type,
    COUNT(*) AS customer_count
FROM customer_orders
GROUP BY customer_type;

-- 5) Average order value
WITH order_totals AS (
    SELECT InvoiceNo, SUM(TotalPrice) AS order_value
    FROM transactions
    GROUP BY InvoiceNo
)
SELECT ROUND(AVG(order_value), 2) AS average_order_value
FROM order_totals;

-- 6) Top customers by lifetime value
SELECT
    CustomerID,
    ROUND(SUM(TotalPrice), 2) AS lifetime_value
FROM transactions
GROUP BY CustomerID
ORDER BY lifetime_value DESC
LIMIT 10;
