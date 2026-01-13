Overview

This project demonstrates the design and implementation of a relational database for a campus/student management system.
The database is created using MySQL and follows proper database design principles such as normalization, master–transaction separation, and many-to-many relationships.

The goal of this project is to show:
• Clear data modeling
• Proper naming conventions
• Use of master tables, transaction tables, and M2M tables
• Practical SQL implementation

Database Details

Database Name:
campus

The entire project uses one single schema (database) named campus.

Tables are logically divided into:

Master tables

Transaction (operational) tables

Many-to-many (M2M) tables

This separation is logical (by purpose), not physical.

Naming Conventions Used

All tables follow a strict naming convention:

• tbl_cp_m* → Master tables
• tb_cp_* → Transaction / core tables
• tb_cp_m2m_* → Many-to-many relationship tables

Example:
• tbl_cp_mskills → Master skills table
• tb_cp_student → Core student table
• tb_cp_m2m_std_skill → Student–Skill M2M table

Master Tables

Master tables store reference data that changes rarely and is reused across the system.

Master tables included:
• tbl_cp_msalutation
• tbl_cp_mskills
• tbl_cp_mlanguages
• tbl_cp_mcolleges
• tbl_cp_mcourses
• tbl_cp_minterests

These tables ensure data consistency and avoid duplication.

Transaction Tables

Transaction tables store user-specific and frequently changing data.

Transaction tables included:
• tb_cp_student
• tb_cp_auth_credentials
• tb_cp_password_history
• tb_cp_student_contact
• tb_cp_student_address
• tb_cp_student_email
• tb_cp_student_phone
• tb_cp_student_education
• tb_cp_student_workexp
• tb_cp_job_preferences
• tb_cp_student_school

These tables represent the core operational data of the system.

Many-to-Many (M2M) Tables

Many-to-many tables are used where one student can relate to multiple records and vice versa.

M2M tables included:
• tb_cp_m2m_std_skill
• tb_cp_m2m_std_lng
• tb_cp_m2m_std_interest

Each M2M table stores only the IDs of the related entities and follows a consistent naming pattern.

Total Tables

Total number of tables in the database:
20 tables

• Master tables: 6
• Transaction tables: 11
• M2M tables: 3

SQL Files Content

The SQL scripts in this project include:
• Database creation (CREATE DATABASE campus)
• Table creation statements for all tables
• Mock data insertion for every table
• SELECT queries to display data from all tables

How to Run the Project

Open MySQL Workbench or any MySQL client

Run the database and table creation SQL script

Run the mock data insertion SQL script

Use the provided SELECT queries to verify the data

Testing

The project has been tested using:
• SELECT * queries for all tables
• Foreign key validation
• Many-to-many relationship verification

Successful execution of the SELECT queries confirms that:
• Tables are created correctly
• Data is inserted properly
• Relationships are functioning as expected
