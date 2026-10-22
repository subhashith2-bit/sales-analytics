CREATE DATABASE IF NOT EXISTS sales_analytics;

USE sales_analytics;


-- =========================================================
-- 1. Total Purchase Amount
-- =========================================================

SELECT
    SUM(purchase_amount) AS total_purchase_amount
FROM customer_shopping_behavior;


-- =========================================================
-- 2. Average Purchase Amount
-- =========================================================

SELECT
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior;


-- =========================================================
-- 3. Category-wise Sales Analysis
-- =========================================================

SELECT
    category,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY category
ORDER BY total_purchase_amount DESC;


-- =========================================================
-- 4. Top 10 Products by Purchase Amount
-- =========================================================

SELECT
    item_purchased,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY item_purchased
ORDER BY total_purchase_amount DESC
LIMIT 10;


-- =========================================================
-- 5. Top 10 Locations by Purchase Amount
-- =========================================================

SELECT
    location,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY location
ORDER BY total_purchase_amount DESC
LIMIT 10;


-- =========================================================
-- 6. Seasonal Purchase Analysis
-- =========================================================

SELECT
    season,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY season
ORDER BY total_purchase_amount DESC;


-- =========================================================
-- 7. Subscription Analysis
-- =========================================================

SELECT
    subscription_status,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY subscription_status
ORDER BY total_purchase_amount DESC;


-- =========================================================
-- 8. Discount Analysis
-- =========================================================

SELECT
    discount_applied,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY discount_applied
ORDER BY total_purchase_amount DESC;


-- =========================================================
-- 9. Payment Method Analysis
-- =========================================================

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY payment_method
ORDER BY total_transactions DESC;


-- =========================================================
-- 10. Purchase Frequency Analysis
-- =========================================================

SELECT
    frequency_of_purchases,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY frequency_of_purchases
ORDER BY total_transactions DESC;


-- =========================================================
-- 11. Review Rating Analysis
-- =========================================================

SELECT
    review_rating,
    COUNT(*) AS total_reviews,
    AVG(purchase_amount) AS average_purchase_amount,
    SUM(purchase_amount) AS total_purchase_amount
FROM customer_shopping_behavior
GROUP BY review_rating
ORDER BY review_rating;


-- =========================================================
-- 12. Age Group Analysis
-- =========================================================

SELECT
    age_group,
    COUNT(*) AS total_transactions,
    AVG(purchase_amount) AS average_purchase_amount,
    SUM(purchase_amount) AS total_purchase_amount
FROM customer_shopping_behavior
GROUP BY age_group
ORDER BY average_purchase_amount DESC;