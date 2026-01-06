CREATE DATABASE user_data;
USE user_data;

-- =====================
-- USERS
-- =====================
CREATE TABLE users (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  salutation_id INT,
  first_name VARCHAR(100) NOT NULL,
  middle_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(255) NOT NULL UNIQUE,
  contact_number VARCHAR(20) UNIQUE,
  current_city VARCHAR(100),
  gender VARCHAR(20),
  user_type VARCHAR(100),
  status VARCHAR(30) NOT NULL,
  created_at DATETIME,
  updated_at DATETIME,
  FOREIGN KEY (salutation_id)
    REFERENCES meta_data.salutations(row_id)
);

-- =====================
-- AUTH CREDENTIALS
-- =====================
CREATE TABLE auth_credentials (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  password_last_changed_at DATETIME,
  failed_login_attempts INT,
  account_locked BOOLEAN,
  created_at DATETIME,
  updated_at DATETIME,
  FOREIGN KEY (user_id)
    REFERENCES users(row_id)
);

-- =====================
-- PASSWORD HISTORY
-- =====================
CREATE TABLE password_history (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  changed_at DATETIME,
  FOREIGN KEY (user_id)
    REFERENCES users(row_id)
);

-- =====================
-- USER CONTACTS
-- =====================
CREATE TABLE user_contacts (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  contact_type VARCHAR(50) NOT NULL,
  contact_name VARCHAR(150) NOT NULL,
  relationship VARCHAR(100),
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(255),
  company_name VARCHAR(255),
  designation VARCHAR(255),
  created_at DATETIME,
  FOREIGN KEY (user_id)
    REFERENCES users(row_id)
);

-- =====================
-- ADDRESSES
-- =====================
CREATE TABLE addresses (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  address_line_1 VARCHAR(255) NOT NULL,
  address_line_2 VARCHAR(255),
  city VARCHAR(100),
  state VARCHAR(100),
  postal_code VARCHAR(20),
  country VARCHAR(100),
  address_type VARCHAR(50),
  created_at DATETIME,
  updated_at DATETIME,
  FOREIGN KEY (user_id)
    REFERENCES users(row_id)
);

-- =====================
-- USER EMAILS
-- =====================
CREATE TABLE user_emails (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  email VARCHAR(255) NOT NULL,
  is_primary BOOLEAN,
  is_verified BOOLEAN,
  created_at DATETIME,
  verified_at DATETIME,
  UNIQUE (user_id, email),
  FOREIGN KEY (user_id)
    REFERENCES users(row_id)
);

-- =====================
-- USER PHONES
-- =====================
CREATE TABLE user_phones (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  is_primary BOOLEAN,
  is_verified BOOLEAN,
  created_at DATETIME,
  verified_at DATETIME,
  UNIQUE (user_id, phone_number),
  FOREIGN KEY (user_id)
    REFERENCES users(row_id)
);

-- =====================
-- SCHOOL PROFILE
-- =====================
CREATE TABLE school_profile (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL UNIQUE,
  standard VARCHAR(100),
  created_at DATETIME,
  FOREIGN KEY (user_id)
    REFERENCES users(row_id)
);
