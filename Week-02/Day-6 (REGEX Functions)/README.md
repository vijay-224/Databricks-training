# 📅 Week 2 - Day 6

# 🔍 SQL REGEX Functions & Pattern Matching Practice

## 🎯 Assignment Overview

This assignment focused on learning and implementing **SQL Regular Expressions (REGEX)** for advanced text processing and pattern-matching operations using a relational database environment.

The practice session emphasized:

* Pattern searching
* String extraction
* Text validation
* Email and phone parsing
* Structured data analysis
* Business-oriented text processing using SQL REGEX functions

---

# 🧱 Database Design

The following table was created for REGEX-based query practice:

* 📝 Regex Practice Data

### Database Features

The dataset contains:

* Employee identifiers
* Email addresses
* Phone numbers
* Mixed alphanumeric strings
* Country codes
* Domain information

The records were designed to simulate real-world business text-processing scenarios.

---

# 🔑 SQL REGEX Concepts Practiced

* Pattern Matching Operations
* Text Extraction Techniques
* Numeric and Alphabetic Detection
* Prefix and Suffix Identification
* Boundary-based Matching
* Email Structure Parsing
* Phone Number Validation
* Business Data Validation Rules

---

# 📚 Detailed Topics Covered

## 1️⃣ Numeric Prefix Detection

### Pattern Used

```regex id="ol45x4"
^[0-9]+
```

### Applications

* Detecting numbers at the beginning of strings
* Validating numeric prefixes
* Extracting starting numeric sequences

---

## 2️⃣ Numeric Suffix Detection

### Pattern Used

```regex id="0zk6tw"
[0-9]+$
```

### Applications

* Extracting ending digits
* Validating numeric suffixes
* Identifying final number sequences

---

## 3️⃣ First Character Identification

### Pattern Used

```regex id="7y4x9t"
^.
```

### Applications

* Extracting the first character
* Identifying string prefixes
* Detecting starting symbols

---

## 4️⃣ Last Character Identification

### Pattern Used

```regex id="ddrz8s"
.$
```

### Applications

* Extracting ending characters
* Suffix validation
* Final symbol detection

---

## 5️⃣ Fixed-Length Number Matching

### Pattern Used

```regex id="x1m4f8"
[0-9]{2}
```

### Applications

* Matching exactly two digits
* Restricted numeric validation
* Pattern-specific extraction

---

## 6️⃣ Single Digit Search

### Pattern Used

```regex id="5p4w8l"
[0-9]
```

### Applications

* Detecting numeric presence
* Extracting individual digits
* Basic numeric scanning

---

## 7️⃣ Country Code Parsing

### Applications

* Extracting phone country codes
* International number validation
* Telecom data analysis

---

## 8️⃣ Embedded Numeric Extraction

### Applications

* Extracting numbers between text
* Processing mixed alphanumeric strings
* Parsing structured identifiers

---

## 9️⃣ Email Username Extraction

### Applications

* Retrieving text before `@`
* User identity parsing
* Login credential analysis

---

## 🔟 Email Domain Extraction

### Applications

* Extracting provider domains
* Domain validation
* Email analytics processing

---

## 1️⃣1️⃣ Domain Name Analysis

### Applications

* Business email verification
* Domain-specific reporting
* Email classification systems

---

## 1️⃣2️⃣ Top-Level Domain (TLD) Extraction

### Applications

* Extracting `.com`, `.in`, `.org`, `.uk`
* TLD validation
* Regional domain categorization

---

## 1️⃣3️⃣ Alphabetic Sequence Extraction

### Pattern Used

```regex id="9yqf3j"
[A-Za-z]+
```

### Applications

* Extracting text-only values
* Character sequence validation
* Alphabetic classification

---

## 1️⃣4️⃣ Continuous Numeric Extraction

### Pattern Used

```regex id="ef7j3v"
[0-9]+
```

### Applications

* Extracting grouped digits
* Parsing number blocks
* Structured numeric analysis

---

## 1️⃣5️⃣ Prefix-Based Text Extraction

### Applications

* Extracting leading identifiers
* Business code validation
* Prefix matching logic

---

## 1️⃣6️⃣ Suffix-Based Text Extraction

### Applications

* Extracting ending codes
* Suffix validation
* Regional code parsing

---

## 1️⃣7️⃣ Employee ID Parsing

### Applications

* Extracting employee numbers
* Structured identifier analysis
* Business code extraction

---

## 1️⃣8️⃣ Ending Country Code Validation

### Applications

* Detecting regional numeric codes
* Country classification logic
* Text-based code analysis

---

## 1️⃣9️⃣ Delimiter-Based Alphabetic Extraction

### Applications

* Extracting text between underscores
* Parsing embedded location codes
* Structured string segmentation

---

## 2️⃣0️⃣ International Number Validation

### Applications

* Extracting digits after `+`
* Validating international phone numbers
* Telecom formatting analysis

---

# 💻 Assignment Tasks Completed

✅ Solved 20 SQL REGEX-based extraction queries

📈 Covered beginner to advanced-level REGEX concepts

🌍 Worked on practical business scenarios including:

* Email parsing
* Phone number validation
* Employee ID extraction
* Domain classification
* Structured text analysis
* Mixed-value processing

---

# 🧠 Key Takeaways

* Improved understanding of SQL REGEX fundamentals
* Learned efficient text extraction techniques
* Applied boundary matching effectively
* Practiced business-oriented validation logic
* Built confidence in regex-based SQL querying
* Enhanced real-world text-processing skills

---

# 🛠️ Technologies & Tools Used

* 🧪 DB-Fiddle
* 🐬 MySQL
* 🌐 GitHub

---

# 🚀 Future Learning Goals

* Advanced `REGEXP_REPLACE()` operations
* `REGEXP_LIKE()` implementation
* Complex validation rules using REGEX
* Data-cleaning and transformation queries

---

# 📁 Project Files

| File Name              | Description                                      |
| ---------------------- | ------------------------------------------------ |
| `data_creation.sql`    | Database schema and sample REGEX practice data   |
| `practice_queries.sql` | Collection of SQL REGEX pattern-matching queries |
| `README.md`            | Documentation for SQL REGEX practice session     |

---

# ✅ Final Outcome

This practice session strengthened SQL REGEX and text-processing fundamentals through hands-on implementation of pattern matching, string extraction, email validation, phone parsing, and structured business data analysis.

The exercises significantly improved practical SQL query-writing confidence for handling real-world text validation and regex-based business operations in production-level database systems.
