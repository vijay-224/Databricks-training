-- 1. Employee Compensation Classification
SELECT
emp_id,
INITCAP(emp_name) AS proper_name,
UPPER(emp_name) AS upper_name,
LOWER(emp_name) AS lower_name,
ROUND(base_salary + COALESCE(bonus,0)) AS total_income,
EXTRACT(YEAR FROM joining_date) AS joining_year,
CASE
WHEN EXTRACT(YEAR FROM AGE(CURRENT_DATE, joining_date)) > 7 THEN 'Senior'
WHEN EXTRACT(YEAR FROM AGE(CURRENT_DATE, joining_date)) BETWEEN 4 AND 7 THEN 'Mid'
ELSE 'Junior'
END AS classification
FROM employee_payments;


-- 2. Order Delivery Delay Analysis
SELECT
order_id,
UPPER(customer_name) AS customer_name,
COALESCE(delivery_date,CURRENT_DATE) - order_date AS delivery_days,
TRUNC(order_amount,1) AS truncated_amount,
CASE
WHEN delivery_date IS NULL THEN 'Pending'
WHEN delivery_date = order_date THEN 'Same-day'
WHEN delivery_date - order_date > 3 THEN 'Delayed'
ELSE 'Normal'
END AS delivery_status
FROM orders_delivery;


-- 3. Customer Spending Pattern
SELECT
INITCAP(cust_name) AS customer_name,
TO_CHAR(purchase_date,'Month') AS purchase_month,
ROUND(purchase_amount) AS rounded_amount,
ABS(purchase_amount) AS absolute_amount,
CASE
WHEN purchase_amount > 15000 THEN 'High spender'
WHEN purchase_amount BETWEEN 8000 AND 15000 THEN 'Medium'
ELSE 'Low'
END AS spending_category
FROM customer_spending;


-- 4. Subscription Validity Check
SELECT
user_id,
SPLIT_PART(user_email,'@',2) AS domain,
EXTRACT(MONTH FROM AGE(end_date,start_date)) +
(EXTRACT(YEAR FROM AGE(end_date,start_date))*12) AS duration_months,
TO_CHAR(subscription_fee,'99,999.99') AS formatted_fee,
end_date - CURRENT_DATE AS remaining_days,
CASE
WHEN end_date > CURRENT_DATE + 30 THEN 'Active'
WHEN end_date BETWEEN CURRENT_DATE AND CURRENT_DATE + 30 THEN 'Expiring Soon'
ELSE 'Expired'
END AS status
FROM subscriptions;


-- 5. Loan EMI Risk Categorization
SELECT
loan_id,
UPPER(customer_name) AS customer_name,
ROUND((loan_amount*POWER(1+interest_rate/1200,12))/12) AS emi,
EXTRACT(YEAR FROM AGE(CURRENT_DATE,loan_start)) AS years_since_start,
CASE
WHEN interest_rate > 9 THEN 'High Risk'
WHEN interest_rate BETWEEN 8 AND 9 THEN 'Medium Risk'
ELSE 'Low Risk'
END AS risk_level
FROM loan_details;


-- 6. Employee Attendance Evaluation
SELECT
emp_id,
LOWER(emp_name) AS employee_name,
ROUND((present_days*100.0)/total_days) AS attendance_percentage,
TO_CHAR(record_date,'Month') AS month_name,
(total_days-present_days) AS absent_days,
CASE
WHEN (present_days*100.0)/total_days >=90 THEN 'Excellent'
WHEN (present_days*100.0)/total_days BETWEEN 75 AND 89 THEN 'Average'
ELSE 'Poor'
END AS attendance_status
FROM attendance;


-- 7. Product Discount Validation
SELECT
product_id,
INITCAP(product_name) AS product_name,
ABS(mrp-selling_price) AS discount_amount,
ROUND(((mrp-selling_price)/mrp)*100,2) AS discount_percentage,
TO_CHAR(sale_date,'Day') AS sale_day,
CASE
WHEN selling_price < mrp THEN 'Valid Discount'
WHEN selling_price > mrp THEN 'Overpriced'
ELSE 'No Discount'
END AS discount_status
FROM product_sales;


-- 8. Insurance Policy Aging
SELECT
policy_id,
UPPER(holder_name) AS holder_name,
EXTRACT(YEAR FROM AGE(policy_end,policy_start)) AS duration_years,
policy_end-CURRENT_DATE AS remaining_days,
ROUND(premium_amount) AS rounded_premium,
CASE
WHEN policy_end < CURRENT_DATE THEN 'Expired'
WHEN EXTRACT(YEAR FROM AGE(policy_end,policy_start)) > 3 THEN 'Long Term'
ELSE 'Mid Term'
END AS policy_status
FROM insurance_policies;


-- 9. Salary Increment Simulation
SELECT
emp_id,
LOWER(emp_name) AS employee_name,
EXTRACT(YEAR FROM AGE(CURRENT_DATE,last_hike)) AS years_since_hike,
CASE
WHEN rating=5 THEN current_salary*0.20
WHEN rating=4 THEN current_salary*0.10
ELSE 0
END AS increment_amount,
ROUND(current_salary+
CASE
WHEN rating=5 THEN current_salary*0.20
WHEN rating=4 THEN current_salary*0.10
ELSE 0
END) AS new_salary,
CASE
WHEN rating=5 THEN 'High Increment'
WHEN rating=4 THEN 'Moderate'
ELSE 'No Increment'
END AS increment_status
FROM salary_revision;


-- 10. Customer Account Status Evaluation
SELECT
account_id,
customer_name,
ABS(balance) AS absolute_balance,
CURRENT_DATE-last_transaction AS days_since_transaction,
INITCAP(branch) AS branch_name,
SIGN(balance) AS balance_sign,
CASE
WHEN balance<0 THEN 'Overdrawn'
WHEN CURRENT_DATE-last_transaction>365 THEN 'Dormant'
ELSE 'Active'
END AS account_status
FROM bank_accounts;
-- 11. Weekend Salary Credit Fraud Detection
SELECT
emp_id,
LEFT(bank_code,4) AS bank_prefix,
TO_CHAR(credit_date,'Day') AS weekday_name,
ROUND(salary) AS rounded_salary,
MOD(ROUND(salary),5) AS salary_mod,
CASE
WHEN TO_CHAR(credit_date,'Day') IN ('Saturday ','Sunday   ')
AND MOD(ROUND(salary),5)=0 THEN 'Weekend Fraud'
WHEN LEFT(bank_code,4)='HDFC' THEN 'Bank Review'
ELSE 'Normal'
END AS fraud_status
FROM salary_credit_audit;


-- 12. Salary Credit Time Drift Analysis
SELECT
emp_id,
LOWER(emp_name) AS employee_name,
EXTRACT(HOUR FROM credit_ts) AS credit_hour,
FLOOR(salary) AS floor_salary,
ABS(FLOOR(salary)-EXTRACT(HOUR FROM credit_ts)) AS difference_value,
CASE
WHEN EXTRACT(HOUR FROM credit_ts) BETWEEN 0 AND 3 THEN 'Midnight Drift'
WHEN EXTRACT(HOUR FROM credit_ts)>18 THEN 'After Hours'
ELSE 'Business Hours'
END AS time_status
FROM salary_time_drift;


-- 13. Salary Decimal Precision Audit
SELECT
emp_id,
TRUNC(salary,2) AS truncated_salary,
ABS(ROUND(salary,2)-TRUNC(salary,2)) AS precision_difference,
TO_CHAR(record_date,'Day') AS day_name,
LENGTH(emp_name) AS name_length,
CASE
WHEN ABS(ROUND(salary,2)-TRUNC(salary,2))>0.01 THEN 'Precision Loss'
ELSE 'Safe'
END AS audit_status
FROM salary_precision;


-- 14. Salary Growth Power Index
SELECT
emp_id,
UPPER(emp_name) AS employee_name,
EXTRACT(YEAR FROM AGE(CURRENT_DATE,last_hike)) AS years_since_hike,
POWER(growth_rate,EXTRACT(YEAR FROM AGE(CURRENT_DATE,last_hike))) AS growth_factor,
ROUND(base_salary*POWER(growth_rate,EXTRACT(YEAR FROM AGE(CURRENT_DATE,last_hike)))) AS projected_salary,
CASE
WHEN base_salary*POWER(growth_rate,EXTRACT(YEAR FROM AGE(CURRENT_DATE,last_hike)))>150000 THEN 'Explosive Growth'
WHEN base_salary*POWER(growth_rate,EXTRACT(YEAR FROM AGE(CURRENT_DATE,last_hike)))>100000 THEN 'Controlled'
ELSE 'Stagnant'
END AS growth_status
FROM salary_growth;


-- 15. Salary Symmetry Check
SELECT
emp_id,
INITCAP(emp_name) AS employee_name,
TRUNC(salary) AS integer_salary,
REVERSE(TRUNC(salary)::TEXT) AS reversed_salary,
TO_CHAR(processed_date,'Day') AS weekday_name,
CASE
WHEN TRUNC(salary)::TEXT=REVERSE(TRUNC(salary)::TEXT) THEN 'Symmetric Pay'
ELSE 'Asymmetric'
END AS symmetry_status
FROM salary_symmetry;


-- 16. Leap Year Salary Adjustment Audit
SELECT
emp_id,
EXTRACT(YEAR FROM credit_date) AS year_value,
CASE
WHEN MOD(EXTRACT(YEAR FROM credit_date),4)=0 THEN 'Leap Year'
ELSE 'Non-Leap'
END AS leap_check,
CEIL(salary) AS ceil_salary,
EXTRACT(DOY FROM credit_date) AS day_of_year,
CASE
WHEN EXTRACT(MONTH FROM credit_date)=2 AND EXTRACT(DAY FROM credit_date)=29
THEN 'Leap Credit'
ELSE 'Non-Leap Credit'
END AS credit_status
FROM leap_salary;


-- 17. Fiscal Year Boundary Salary Check
SELECT
emp_id,
LOWER(emp_name) AS employee_name,
CASE
WHEN EXTRACT(MONTH FROM credit_date)>=4
THEN EXTRACT(YEAR FROM credit_date)
ELSE EXTRACT(YEAR FROM credit_date)-1
END AS fiscal_year,
EXTRACT(MONTH FROM credit_date) AS month_value,
TO_CHAR(salary,'999,999.99') AS formatted_salary,
CASE
WHEN EXTRACT(MONTH FROM credit_date)=3 THEN 'Year End Credit'
WHEN EXTRACT(MONTH FROM credit_date)=4 THEN 'Year Start Credit'
ELSE 'Mid Year'
END AS fiscal_status
FROM fiscal_salary;


-- 18. Salary Random Sampling for Audit
SELECT
emp_id,
RANDOM() AS random_value,
ROUND(salary) AS rounded_salary,
TO_CHAR(record_date,'Day') AS day_name,
LEFT(emp_name,1) AS first_character,
CASE
WHEN RANDOM()>0.7 THEN 'Sampled'
ELSE 'Skipped'
END AS sample_status
FROM salary_sampling;


-- 19. Salary ASCII Integrity Check
SELECT
emp_id,
ASCII(LEFT(emp_name,1)) AS ascii_value,
EXTRACT(YEAR FROM AGE(CURRENT_DATE,join_date)) AS years_of_service,
FLOOR(salary) AS floor_salary,
CASE
WHEN ASCII(LEFT(emp_name,1))>
EXTRACT(YEAR FROM AGE(CURRENT_DATE,join_date))
THEN 'Name Dominates'
ELSE 'Experience Dominates'
END AS comparison_status
FROM salary_ascii;


-- 20. Salary vs Calendar Symmetry Logic
SELECT
emp_id,
UPPER(emp_name) AS employee_name,
EXTRACT(DAY FROM credit_date) AS day_value,
EXTRACT(MONTH FROM credit_date) AS month_value,
RIGHT(TRUNC(salary)::TEXT,2) AS last_two_digits,
ABS(EXTRACT(DAY FROM credit_date)-EXTRACT(MONTH FROM credit_date)) AS difference_value,
CASE
WHEN EXTRACT(DAY FROM credit_date)=EXTRACT(MONTH FROM credit_date)
OR RIGHT(TRUNC(salary)::TEXT,2)=LPAD(EXTRACT(MONTH FROM credit_date)::TEXT,2,'0')
THEN 'Calendar Match'
ELSE 'Calendar Drift'
END AS calendar_status
FROM salary_calendar;