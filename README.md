# Campus Database SQL Project

## Overview
This repository contains a complete MySQL database design for a Campus / Student Management system.
The project demonstrates proper database modeling using master tables, transaction tables, and many-to-many (M2M) tables.

The database is designed for academic learning and follows clean naming conventions and normalization principles.

---

## Database Information
Database Name:
campus

The entire project uses one single database (schema) named campus.

Tables are logically divided into:
- Master tables (reference data)
- Transaction tables (operational data)
- Many-to-Many (M2M) tables

---

## Naming Conventions

The following naming standards are used consistently:

- tbl_cp_m*   → Master tables
- tb_cp_*     → Transaction / core tables
- tb_cp_m2m_* → Many-to-many relationship tables

Examples:
- tbl_cp_mskills → Master skills table
- tb_cp_student → Student core table
- tb_cp_m2m_std_skill → Student–Skill M2M table

---

## Master Tables

Master tables store reference data that changes rarely and is shared across the system.

Master tables included:
- tbl_cp_msalutation
- tbl_cp_mskills
- tbl_cp_mlanguages
- tbl_cp_mcolleges
- tbl_cp_mcourses
- tbl_cp_minterests

---

## Transaction Tables

Transaction tables store student-specific and frequently changing data.

Transaction tables included:
- tb_cp_student
- tb_cp_auth_credentials
- tb_cp_password_history
- tb_cp_student_contact
- tb_cp_student_address
- tb_cp_student_email
- tb_cp_student_phone
- tb_cp_student_education
- tb_cp_student_workexp
- tb_cp_job_preferences
- tb_cp_student_school

---

## Many-to-Many (M2M) Tables

M2M tables represent relationships where multiple students can be linked to multiple records.

M2M tables included:
- tb_cp_m2m_std_skill
- tb_cp_m2m_std_lng
- tb_cp_m2m_std_interest

Each M2M table stores only IDs and follows a strict naming pattern.

---

## Total Tables

Total number of tables: 20

Master tables: 6
Transaction tables: 11
M2M tables: 3

---

## SQL Scripts Included

This project contains SQL scripts for:
- Creating the campus database
- Creating all tables
- Inserting mock/sample data into every table
- SELECT queries to verify all tables

---

## How to Run

1. Open MySQL Workbench or any MySQL client
2. Execute the database and table creation SQL
3. Execute the mock data insertion SQL
4. Run SELECT queries to verify data

---

## Testing

The database has been tested using:
- SELECT queries on all tables
- Foreign key validation
- Many-to-many relationship verification

---

]
