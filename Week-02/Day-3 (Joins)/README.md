# 📅 Week 2 - Day 3

# 🔗 SQL Self Joins and Advanced Join Practice

## 🎯 Objective

The objective of this assignment was to understand and implement advanced SQL join operations using relational database tables such as **Employees**, **Departments**, and **Projects**.

This practice session focused on learning:

* Self Joins
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN Simulation
* INNER JOIN
* NULL-value Analysis
* Relationship Mapping Queries
* Hierarchical Data Analysis

---

# 🧱 Database Setup

The following tables were created and used for SQL join practice:

* 👨‍💼 Employees
* 🏢 Departments
* 📂 Projects

The database schema includes:

* Primary Key Constraints
* Foreign Key Relationships
* Self-referencing Relationships (Manager → Employee)
* NULL-value Handling
* Sample Data Insertion for Relational Analysis

---

# 🔑 Core Concepts Implemented

* Primary Keys
* Foreign Keys
* Self Joins
* Relational Mapping
* Data Insertion
* Join Operations
* Handling Missing Relationships
* Hierarchical Querying

---

# 📚 Topics Covered

## 1️⃣ LEFT JOIN

### Implemented Features

* Retrieving all employee records
* Displaying unmatched department or project rows as `NULL`

### Applications

* Employee-department mapping
* Missing relationship analysis

---

## 2️⃣ RIGHT JOIN / Equivalent LEFT JOIN

### Implemented Features

* Fetching all records from projects and departments
* Understanding database compatibility limitations

### Applications

* Complete relationship reporting
* Project assignment verification

---

## 3️⃣ FULL OUTER JOIN / UNION Simulation

### Implemented Features

* Combining unmatched rows from multiple tables
* Simulating full joins using `UNION`

### Applications

* Comprehensive relationship analysis
* Missing data identification

---

## 4️⃣ INNER JOIN Concepts

### Implemented Features

* Matching employees with departments
* Matching employees with assigned projects

### Applications

* Relationship validation
* Department-wise employee reporting

---

## 5️⃣ SELF JOIN

### Implemented Features

* Mapping employees to their managers
* Understanding hierarchical relationships within the same table

### Applications

* Employee-manager hierarchy analysis
* Organizational structure reporting

---

## 6️⃣ NULL Filtering

### Implemented Features

* Identifying employees without managers
* Detecting employees without departments
* Finding employees without projects

### Applications

* Missing relationship detection
* Data quality analysis

---

## 7️⃣ Multi-Table Joins

### Tables Joined

* Employees
* Departments
* Projects

### Implemented Features

* Building structured relationship reports
* Combining multiple relational datasets

### Applications

* Employee project allocation analysis
* Department-level reporting

---

## 8️⃣ Relationship Analysis Queries

### Queries Implemented

* Employees not assigned to projects
* Departments without employees
* Employees without managers
* Employees without departments

### Applications

* Organizational analysis
* Resource allocation tracking

---

## 9️⃣ Aggregate Join Queries

### Implemented Features

* Counting employees per department
* Grouping project assignments
* Summarizing relational records

### Applications

* Department workforce analysis
* Project distribution reporting

---

## 🔟 Join Optimization Concepts

### Concepts Covered

* Choosing the correct join type
* Improving query readability
* Efficient relationship analysis

### Benefits

* Better query performance
* Structured and maintainable SQL queries

---

# 💻 Assignment Work

✅ Solved 30 SQL Join Queries

📈 Covered beginner to advanced-level SQL join concepts

🌍 Practiced real-world scenarios including:

* Employee-manager hierarchy analysis
* Department assignment tracking
* Project allocation analysis
* Missing relationship detection
* Department-wise employee count analysis

---

# 🧠 Key Learnings

* Understanding differences between join types
* Writing self joins for hierarchical data
* Simulating unsupported joins using `UNION`
* Handling NULL values effectively
* Writing structured multi-table queries
* Choosing the correct join for different business scenarios

---

# 🛠️ Tools Used

* 🧪 DB-Fiddle
* 🐬 MySQL / SQLite
* 🌐 GitHub

---

# 🚀 Next Steps

Planned learning topics:

* Nested Subqueries with Joins
* Advanced Aggregate Functions
* Query Optimization & Indexing
* Mini Employee Management Database Projects

---

# 📁 Files Included

| File Name              | Description                                  |
| ---------------------- | -------------------------------------------- |
| `data_creation.sql`    | Table creation and sample data insertion     |
| `practice_queries.sql` | Collection of 30 SQL join assignment queries |
| `README.md`            | Documentation for Day 3 SQL join practice    |

---

# ✅ Conclusion

This assignment strengthened SQL join fundamentals through hands-on implementation of self joins, multi-table joins, unmatched record analysis, manager hierarchy mapping, and relational database management.

The exercises significantly improved practical SQL query-writing confidence and enhanced understanding of real-world relational database problem-solving using advanced join operations.
