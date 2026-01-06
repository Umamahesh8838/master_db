CREATE DATABASE job_data;
USE job_data;

-- =====================
-- EDUCATION
-- =====================
CREATE TABLE education (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,        -- logical ref → user_data.users
  college_id INT NOT NULL,     -- logical ref → meta_data.colleges
  course_id INT NOT NULL,      -- logical ref → meta_data.courses
  start_year INT,
  end_year INT,
  created_at DATETIME
);

-- =====================
-- WORK EXPERIENCE
-- =====================
CREATE TABLE work_experience (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL UNIQUE, -- logical ref → user_data.users
  years_of_experience VARCHAR(50),
  created_at DATETIME
);

-- =====================
-- JOB PREFERENCES
-- =====================
CREATE TABLE job_preferences (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL UNIQUE, -- logical ref → user_data.users
  currently_looking_for VARCHAR(50),
  work_mode VARCHAR(50),
  preferred_city VARCHAR(100),
  created_at DATETIME,
  updated_at DATETIME
);

-- =====================
-- USER SKILLS
-- =====================
CREATE TABLE user_skills (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,   -- logical ref → user_data.users
  skill_id INT NOT NULL,  -- logical ref → meta_data.skills
  created_at DATETIME,
  UNIQUE (user_id, skill_id)
);

-- =====================
-- USER LANGUAGES
-- =====================
CREATE TABLE user_languages (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,     -- logical ref → user_data.users
  language_id INT NOT NULL, -- logical ref → meta_data.languages
  created_at DATETIME,
  UNIQUE (user_id, language_id)
);

-- =====================
-- USER INTERESTS
-- =====================
CREATE TABLE user_interests (
  row_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,      -- logical ref → user_data.users
  interest_id INT NOT NULL,  -- logical ref → meta_data.areas_of_interest
  created_at DATETIME,
  UNIQUE (user_id, interest_id)
);
