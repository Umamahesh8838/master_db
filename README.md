# 📦 Database Architecture – Multi-Database Design

This repository documents a **3-database architecture** designed for a scalable, secure, and modular application (similar to job portals like Internshala).

The databases are logically separated based on **data nature, usage pattern, and scalability requirements**.

---

## 🧱 Overview

We use **three MySQL databases**:

1. **meta_data** – Master / lookup data  
2. **user_data** – User identity & security  
3. **job_data** – Career, education & preferences  

Each database has a **clear responsibility**, which improves:
- Scalability
- Security
- Maintainability
- Clean schema design

---

## 🟩 1. meta_data DATABASE  
### 👉 Master / Lookup / Rarely Changing Data

### Structure
meta_data
│
├── salutations
├── skills
├── languages
├── colleges
├── courses
├── areas_of_interest


### Purpose
- Stores **reference / master data**
- Shared across multiple modules
- Data **changes very rarely**

### Reason for Separation
- Avoids data duplication
- Easy to cache
- Stable data → low maintenance
- Can be reused by multiple services

### Examples
- Salutations: Mr, Ms, Dr  
- Skills: Python, Java, SQL  
- Languages: English, Hindi  
- Colleges & Courses  

---

## 🟩 2. user_data DATABASE  
### 👉 User Identity, Profile & Security

### Structure

user_data
│
├── users
├── auth_credentials
├── password_history
├── user_contacts
├── addresses
├── user_emails
├── user_phones
├── school_profile


### Purpose
- Stores **core user information**
- Handles **authentication and security**
- Contains **personal and sensitive data**

### Key Rule
✅ **All Foreign Keys are valid inside this database**  
(No cross-database foreign key constraints)

### Reason for Separation
- Better data privacy
- Stronger security controls
- Easier compliance handling
- Independent backups

---

## 🟨 3. job_data DATABASE  
### 👉 Career, Education & Preferences

### Structure
job_data
│
├── education
├── work_experience
├── job_preferences
├── user_skills
├── user_languages
├── user_interests


### Purpose
- Stores **career-related information**
- Frequently queried for:
  - Job matching
  - Filtering
  - Analytics
- Designed to **scale independently**

### Important Note ⚠️
- No cross-database foreign keys
- Tables store only **IDs**:
  - user_id
  - skill_id
  - language_id

### Reason for Separation
- High read/write operations
- Analytics-friendly schema
- Easier scaling and sharding
- Job module can evolve independently

---

## 🔗 Cross-Database Relationship Strategy

| Database   | Relationship Handling |
|-----------|-----------------------|
| meta_data | Reference IDs only |
| user_data | Strict FK constraints |
| job_data  | Logical references using IDs |

👉 Cross-database joins are handled at the **application level**, not at the database level.

---

## ✅ Benefits of This Architecture

- ✔ Clear separation of concerns  
- ✔ Better performance  
- ✔ Improved security  
- ✔ Easy maintenance  
- ✔ Scalable design  
- ✔ Industry-standard approach  

---

## 📌 Ideal Use Cases

- Job portals  
- Internship platforms  
- Career guidance systems  
- Education & recruitment applications  

---

## 🧠 Design Philosophy

> **"Keep master data stable, user data secure, and job data scalable."**
