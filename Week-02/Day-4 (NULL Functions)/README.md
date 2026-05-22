# 📅 Week 2 - Day 4

# 📆 SQL NULL Functions Practice

## 🎯 Objective

The objective of this practice session was to understand and implement SQL NULL handling functions using relational database tables such as **Employees**, **Orders**, and **Products**.

This session focused on:

* NULL replacement
* NULL comparison
* Conditional NULL handling
* Safe arithmetic operations
* Fallback logic implementation
* Real-time business data processing using NULL-based logic

---

# 🧱 Database Setup

The following tables were created and used for SQL NULL function practice:

* 👨‍💼 Employees
* 📦 Orders
* 🛒 Products

The database schema includes:

* NULL value handling
* Integer and string NULL processing
* Business-oriented sample records
* Conditional data replacement

---

# 🔑 Core Concepts Implemented

* NULL Detection
* NULL Replacement
* Conditional NULL Logic
* Multiple Fallback Handling
* NULL-safe Calculations
* Divide-by-zero Prevention
* Data Cleaning Operations
* Real-Time Business Scenarios

---

# 📚 Topics Covered

## 1️⃣ NULL Checking

### Techniques Used

* `IS NULL`
* `IS NOT NULL`

### Implemented Features

* Finding missing salaries
* Detecting missing discounts
* Identifying missing categories
* Finding employees without managers

### Applications

* Data quality analysis
* Missing record identification

---

## 2️⃣ ISNULL() Function

### Function Used

* `ISNULL(column, replacement_value)`

### Implemented Features

* Replacing NULL salary values with default values
* Replacing NULL bonuses with fallback amounts
* Handling missing stock values
* Replacing NULL order amounts safely

### Applications

* Payroll reporting
* Inventory management
* Financial data correction

---

## 3️⃣ COALESCE() Function

### Function Used

* `COALESCE(value1, value2, value3...)`

### Implemented Features

* Retrieving the first available value
* Layered fallback handling
* Safe replacement for incomplete records

### Examples

* `COALESCE(salary, bonus, 1000)`
* `COALESCE(price, default_price)`
* `COALESCE(amount, discount, 0)`

### Applications

* Business reporting
* Compensation calculations
* Product pricing systems

---

## 4️⃣ NULLIF() Function

### Function Used

* `NULLIF(value1, value2)`

### Implemented Features

* Converting zero values into NULL
* Preventing divide-by-zero errors
* Replacing matching values safely

### Applications

* Safe arithmetic calculations
* Financial reporting
* Data standardization

---

## 5️⃣ Conditional NULL-Based Calculations

### Implemented Features

* Salary + bonus calculations
* Amount - discount calculations
* NULL-safe arithmetic operations

### Handling Scenarios

* Missing financial data
* Partial business records
* Incomplete compensation details

---

## 6️⃣ Real-Time Business Filtering

### Queries Implemented

* Employees with missing salary but assigned managers
* Orders with missing payment details
* Products with missing prices but valid categories
* Employees with fully missing compensation data

### Applications

* Data auditing
* Business validation reporting
* Missing-data analysis

---

## 7️⃣ Multi-Level NULL Fallback Logic

### Strategy Implemented

* Primary Value
* Secondary Backup Value
* Default System Value

### Example

```sql
COALESCE(salary, bonus, 1000)
```

### Applications

* Reliable reporting systems
* Financial fallback calculations
* Data recovery logic

---

## 8️⃣ Data Cleaning Operations

### Functions Used

* `NULLIF()`
* `ISNULL()`
* `COALESCE()`

### Implemented Features

* Standardizing inconsistent records
* Replacing missing values
* Improving report consistency

### Applications

* Data preprocessing
* Production-ready reporting
* Business intelligence preparation

---

## 9️⃣ Error Prevention Techniques

### Techniques Used

* `NULLIF()` for divide-by-zero prevention
* Safe NULL arithmetic
* Controlled fallback replacements

### Benefits

* Improved query stability
* Reliable analytical outputs
* Production-safe SQL reporting

---

## 🔟 Business Intelligence Use Cases

Applied NULL handling for:

* Employee payroll reports
* Product inventory correction
* Discount validation
* Order payment analysis
* Missing-data auditing

---

# 💻 Practice Work

✅ Solved 24 SQL NULL Handling Queries

📈 Covered beginner to advanced-level NULL handling concepts

🌍 Practiced real-world scenarios including:

* Payroll calculations
* Missing-value replacement
* Inventory validation
* Safe financial calculations
* Data consistency reporting

---

# 🧠 Key Learnings

* Understanding SQL NULL behavior
* Replacing missing values efficiently
* Performing safe arithmetic operations
* Applying fallback logic effectively
* Preventing runtime calculation errors
* Handling real-world incomplete datasets

---

# 🛠️ Tools Used

* 🧪 DB-Fiddle
* 🐬 MySQL
* 🌐 GitHub

---

# 🚀 Next Steps

Planned learning topics:

* Advanced Conditional Expressions
* CASE Statements with NULL Handling
* Aggregate NULL Behavior
* Business Reports with Clean Fallback Logic

---

# 📁 Files Included

| File Name              | Description                                                             |
| ---------------------- | ----------------------------------------------------------------------- |
| `data_creation.sql`    | Employees, Orders, and Products table structure with sample NULL values |
| `practice_queries.sql` | Collection of SQL NULL handling queries                                 |
| `README.md`            | Documentation for Day 4 SQL NULL Functions practice                     |

---

# ✅ Conclusion

This practice session strengthened SQL NULL handling fundamentals through hands-on implementation of NULL checking, replacement, fallback logic, safe calculations, and real-time business filtering.

The exercises significantly improved practical SQL query-writing confidence for handling incomplete and inconsistent datasets effectively in production-level business environments.
