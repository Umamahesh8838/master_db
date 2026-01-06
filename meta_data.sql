CREATE DATABASE meta_data;
USE meta_data;

-- =====================
-- SALUTATIONS
-- =====================
CREATE TABLE salutations (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  value VARCHAR(50) NOT NULL UNIQUE,
  description VARCHAR(255)
);

-- =====================
-- SKILLS (MASTER)
-- =====================
CREATE TABLE skills (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  description VARCHAR(255),
  version VARCHAR(50),
  complexity VARCHAR(50),
  status VARCHAR(30)
);

-- =====================
-- LANGUAGES
-- =====================
CREATE TABLE languages (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE
);

-- =====================
-- COLLEGES
-- =====================
CREATE TABLE colleges (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  college_name VARCHAR(255) NOT NULL UNIQUE,
  city VARCHAR(100),
  state VARCHAR(100)
);

-- =====================
-- COURSES
-- =====================
CREATE TABLE courses (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(100) NOT NULL,
  stream VARCHAR(100),
  UNIQUE (course_name, stream)
);

-- =====================
-- AREAS OF INTEREST
-- =====================
CREATE TABLE areas_of_interest (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE
);
