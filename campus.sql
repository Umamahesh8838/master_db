-- =====================================================
-- CREATE DATABASE
-- =====================================================
CREATE DATABASE campus;
USE campus;

-- =====================================================
-- MASTER TABLES
-- =====================================================

-- Salutations Master
CREATE TABLE tbl_cp_msalutation (
  salutation_id INT AUTO_INCREMENT PRIMARY KEY,
  value VARCHAR(50) NOT NULL UNIQUE,
  description VARCHAR(255)
);

-- Skills Master
CREATE TABLE tbl_cp_mskills (
  skill_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  description VARCHAR(255),
  version VARCHAR(50),
  complexity VARCHAR(50),
  status VARCHAR(30)
);

-- Languages Master
CREATE TABLE tbl_cp_mlanguages (
  language_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE
);

-- Colleges Master
CREATE TABLE tbl_cp_mcolleges (
  college_id INT AUTO_INCREMENT PRIMARY KEY,
  college_name VARCHAR(255) NOT NULL UNIQUE,
  city VARCHAR(100),
  state VARCHAR(100)
);

-- Courses Master
CREATE TABLE tbl_cp_mcourses (
  course_id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(100) NOT NULL,
  stream VARCHAR(100),
  UNIQUE (course_name, stream)
);

-- Areas of Interest Master
CREATE TABLE tbl_cp_minterests (
  interest_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE
);

-- =====================================================
-- CORE TRANSACTION TABLES
-- =====================================================

-- Student Table
CREATE TABLE tb_cp_student (
  student_id INT AUTO_INCREMENT PRIMARY KEY,
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
    REFERENCES tbl_cp_msalutation(salutation_id)
);

-- =====================================================
-- AUTHENTICATION TABLES
-- =====================================================

CREATE TABLE tb_cp_auth_credentials (
  auth_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  password_last_changed_at DATETIME,
  failed_login_attempts INT DEFAULT 0,
  account_locked BOOLEAN DEFAULT FALSE,
  created_at DATETIME,
  updated_at DATETIME,
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);

CREATE TABLE tb_cp_password_history (
  pwd_hist_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  changed_at DATETIME,
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);

-- =====================================================
-- CONTACT & ADDRESS TABLES
-- =====================================================

CREATE TABLE tb_cp_student_contact (
  contact_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  contact_type VARCHAR(50) NOT NULL,
  contact_name VARCHAR(150) NOT NULL,
  relationship VARCHAR(100),
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(255),
  company_name VARCHAR(255),
  designation VARCHAR(255),
  created_at DATETIME,
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);

CREATE TABLE tb_cp_student_address (
  address_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  address_line_1 VARCHAR(255) NOT NULL,
  address_line_2 VARCHAR(255),
  city VARCHAR(100),
  state VARCHAR(100),
  postal_code VARCHAR(20),
  country VARCHAR(100),
  address_type VARCHAR(50),
  created_at DATETIME,
  updated_at DATETIME,
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);

CREATE TABLE tb_cp_student_email (
  email_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  email VARCHAR(255) NOT NULL,
  is_primary BOOLEAN,
  is_verified BOOLEAN,
  created_at DATETIME,
  verified_at DATETIME,
  UNIQUE (student_id, email),
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);


CREATE TABLE tb_cp_student_school (
  school_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL UNIQUE,
  standard VARCHAR(50) NOT NULL,
  board VARCHAR(100),
  school_name VARCHAR(255),
  created_at DATETIME,
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);


CREATE TABLE tb_cp_student_phone (
  phone_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  is_primary BOOLEAN,
  is_verified BOOLEAN,
  created_at DATETIME,
  verified_at DATETIME,
  UNIQUE (student_id, phone_number),
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);

-- =====================================================
-- EDUCATION & CAREER TABLES
-- =====================================================

CREATE TABLE tb_cp_student_education (
  edu_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  college_id INT NOT NULL,
  course_id INT NOT NULL,
  start_year INT,
  end_year INT,
  created_at DATETIME,
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id),
  FOREIGN KEY (college_id)
    REFERENCES tbl_cp_mcolleges(college_id),
  FOREIGN KEY (course_id)
    REFERENCES tbl_cp_mcourses(course_id)
);

CREATE TABLE tb_cp_student_workexp (
  workexp_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL UNIQUE,
  years_of_experience VARCHAR(50),
  created_at DATETIME,
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);

CREATE TABLE tb_cp_job_preferences (
  pref_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL UNIQUE,
  currently_looking_for VARCHAR(50),
  work_mode VARCHAR(50),
  preferred_city VARCHAR(100),
  created_at DATETIME,
  updated_at DATETIME,
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id)
);

-- =====================================================
-- MANY TO MANY (M2M) TABLES
-- =====================================================

CREATE TABLE tb_cp_m2m_std_skill (
  m2m_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  skill_id INT NOT NULL,
  created_at DATETIME,
  UNIQUE (student_id, skill_id),
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id),
  FOREIGN KEY (skill_id)
    REFERENCES tbl_cp_mskills(skill_id)
);

CREATE TABLE tb_cp_m2m_std_lng (
  m2m_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  language_id INT NOT NULL,
  created_at DATETIME,
  UNIQUE (student_id, language_id),
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id),
  FOREIGN KEY (language_id)
    REFERENCES tbl_cp_mlanguages(language_id)
);

CREATE TABLE tb_cp_m2m_std_interest (
  m2m_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  interest_id INT NOT NULL,
  created_at DATETIME,
  UNIQUE (student_id, interest_id),
  FOREIGN KEY (student_id)
    REFERENCES tb_cp_student(student_id),
  FOREIGN KEY (interest_id)
    REFERENCES tbl_cp_minterests(interest_id)
);

show tables;

drop database campus;
