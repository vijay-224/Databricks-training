-- 1. Display current date
SELECT CURDATE();

-- 2. Display current date using CURRENT_DATE()
SELECT CURRENT_DATE();

-- 3. Display current time
SELECT CURTIME();

-- 4. Display current time using CURRENT_TIME()
SELECT CURRENT_TIME();

-- 5. Display current date and time
SELECT NOW();

-- 6. Display current timestamp
SELECT CURRENT_TIMESTAMP;

-- 7. Extract year from order_date
SELECT YEAR(order_date) FROM orders;

-- 8. Extract month from order_date
SELECT MONTH(order_date) FROM orders;

-- 9. Extract day from order_date
SELECT DAY(order_date) FROM orders;

-- 10. Extract year using EXTRACT()
SELECT EXTRACT(YEAR FROM order_date) FROM orders;

-- 11. Extract month using EXTRACT()
SELECT EXTRACT(MONTH FROM order_date) FROM orders;

-- 12. Extract day using EXTRACT()
SELECT EXTRACT(DAY FROM order_date) FROM orders;

-- 13. Display month name
SELECT MONTHNAME(order_date) FROM orders;

-- 14. Display day name
SELECT DAYNAME(order_date) FROM orders;

-- 15. Display weekday number
SELECT WEEKDAY(order_date) FROM orders;

-- 16. Display day of week number
SELECT DAYOFWEEK(order_date) FROM orders;

-- 17. Find weekend orders using DAYNAME()
SELECT order_id, order_date FROM orders WHERE DAYNAME(order_date) IN ('Saturday', 'Sunday');

-- 18. Find weekend orders using DAYOFWEEK()
SELECT order_id, order_date FROM orders WHERE DAYOFWEEK(order_date) IN (1,7);

-- 19. Find weekday orders
SELECT order_id, order_date FROM orders WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;

-- 20. Add 5 days to order_date
SELECT order_date, DATE_ADD(order_date, INTERVAL 5 DAY) FROM orders;

-- 21. Subtract 3 days from order_date
SELECT order_date, DATE_SUB(order_date, INTERVAL 3 DAY) FROM orders;

-- 22. Add 1 month
SELECT DATE_ADD(order_date, INTERVAL 1 MONTH) FROM orders;

-- 23. Subtract 2 months
SELECT DATE_SUB(order_date, INTERVAL 2 MONTH) FROM orders;

-- 24. Add 1 year
SELECT DATE_ADD(order_date, INTERVAL 1 YEAR) FROM orders;

-- 25. Calculate delivery days using DATEDIFF()
SELECT order_id,
DATEDIFF(delivery_date, order_date) AS delivery_days FROM orders;

-- 26. Difference in days using TIMESTAMPDIFF()
SELECT TIMESTAMPDIFF(DAY, order_date, delivery_date) AS days_diff FROM orders;

-- 27. Difference in months using TIMESTAMPDIFF()
SELECT TIMESTAMPDIFF(MONTH, order_date, delivery_date) AS months_diff FROM orders;

-- 28. Find last day of month
SELECT LAST_DAY(order_date) FROM orders;

-- 29. Find first day of month
SELECT DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY) FROM orders;

-- 30. Format date as DD-MM-YYYY
SELECT DATE_FORMAT(order_date, '%d-%m-%Y') FROM orders;

-- 31. Format date as Month DD, YYYY
SELECT DATE_FORMAT(order_date, '%M %d, %Y') FROM orders;

-- 32. Convert string to date
SELECT STR_TO_DATE('15-01-2024', '%d-%m-%Y');

-- 33. Format timestamp
SELECT DATE_FORMAT(order_timestamp, '%d-%m-%Y %H:%i:%s') FROM orders;

-- 34. Find January orders
SELECT * FROM orders WHERE MONTH(order_date)=1;

-- 35. Find February orders
SELECT * FROM orders WHERE MONTHNAME(order_date)='February';

-- 36. Display financial year
SELECT order_date, CASE WHEN MONTH(order_date) >= 4 THEN CONCAT(YEAR(order_date), '-', YEAR(order_date)+1) ELSE CONCAT(YEAR(order_date)-1, '-', YEAR(order_date))
END AS financial_year FROM orders;

-- 37. Find orders placed in last 7 days
SELECT * FROM orders WHERE order_date >= CURDATE() - INTERVAL 7 DAY;

-- 38. Find orders placed today
SELECT * FROM orders WHERE DATE(order_timestamp)=CURDATE();