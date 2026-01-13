USE campus;

-- =====================================================
-- MASTER TABLES
-- =====================================================

INSERT INTO tbl_cp_msalutation (value, description) VALUES
('Mr', 'Male'),
('Ms', 'Female'),
('Dr', 'Doctor');

INSERT INTO tbl_cp_mskills (name, description, version, complexity, status) VALUES
('Python', 'Programming language', '3.10', 'Intermediate', 'ACTIVE'),
('Java', 'Object oriented language', '17', 'Advanced', 'ACTIVE'),
('SQL', 'Database query language', NULL, 'Intermediate', 'ACTIVE'),
('HTML', 'Markup language', '5', 'Beginner', 'ACTIVE');

INSERT INTO tbl_cp_mlanguages (name) VALUES
('English'),
('Hindi'),
('Telugu');

INSERT INTO tbl_cp_mcolleges (college_name, city, state) VALUES
('JNTU Hyderabad', 'Hyderabad', 'Telangana'),
('Anna University', 'Chennai', 'Tamil Nadu');

INSERT INTO tbl_cp_mcourses (course_name, stream) VALUES
('B.Tech', 'CSE'),
('B.Tech', 'IT'),
('MBA', 'HR');

INSERT INTO tbl_cp_minterests (name) VALUES
('Web Development'),
('Data Science'),
('Cloud Computing');

-- =====================================================
-- STUDENT CORE
-- =====================================================

INSERT INTO tb_cp_student (
  salutation_id, first_name, middle_name, last_name,
  email, contact_number, current_city, gender,
  user_type, status, created_at
) VALUES
(1, 'Uma', NULL, 'Reddy', 'uma@gmail.com', '9000000001',
 'Hyderabad', 'Male', 'College Student', 'ACTIVE', NOW()),

(2, 'Sneha', 'K', 'Iyer', 'sneha@gmail.com', '9000000002',
 'Chennai', 'Female', 'College Student', 'ACTIVE', NOW()),

(1, 'Rahul', NULL, 'Verma', 'rahul@gmail.com', '9000000003',
 'Delhi', 'Male', 'Working Professional', 'ACTIVE', NOW());

-- =====================================================
-- AUTHENTICATION
-- =====================================================

INSERT INTO tb_cp_auth_credentials (
  student_id, password_hash, created_at
) VALUES
(1, 'hash_pwd_uma', NOW()),
(2, 'hash_pwd_sneha', NOW()),
(3, 'hash_pwd_rahul', NOW());

INSERT INTO tb_cp_password_history (
  student_id, password_hash, changed_at
) VALUES
(1, 'old_hash_uma', NOW()),
(2, 'old_hash_sneha', NOW()),
(3, 'old_hash_rahul', NOW());

-- =====================================================
-- CONTACT & ADDRESS
-- =====================================================

INSERT INTO tb_cp_student_contact (
  student_id, contact_type, contact_name,
  relationship, phone_number, created_at
) VALUES
(1, 'EMERGENCY', 'Ramesh Reddy', 'Father', '9999999991', NOW()),
(2, 'REFERENCE', 'Anita Sharma', 'Professor', '9999999992', NOW());

INSERT INTO tb_cp_student_address (
  student_id, address_line_1, city, state,
  postal_code, country, address_type, created_at
) VALUES
(1, 'Madhapur', 'Hyderabad', 'Telangana', '500081', 'India', 'Home', NOW()),
(2, 'T Nagar', 'Chennai', 'Tamil Nadu', '600017', 'India', 'Home', NOW());

INSERT INTO tb_cp_student_email (
  student_id, email, is_primary, is_verified, created_at
) VALUES
(1, 'uma.alt@gmail.com', FALSE, TRUE, NOW()),
(2, 'sneha.alt@gmail.com', FALSE, TRUE, NOW());

INSERT INTO tb_cp_student_phone (
  student_id, phone_number, is_primary, is_verified, created_at
) VALUES
(1, '9888888881', FALSE, TRUE, NOW()),
(2, '9888888882', FALSE, TRUE, NOW());

-- =====================================================
-- EDUCATION & CAREER
-- =====================================================

INSERT INTO tb_cp_student_education (
  student_id, college_id, course_id, start_year, end_year, created_at
) VALUES
(1, 1, 1, 2021, 2025, NOW()),
(2, 2, 2, 2020, 2024, NOW());

INSERT INTO tb_cp_student_workexp (
  student_id, years_of_experience, created_at
) VALUES
(3, '3 years', NOW());

INSERT INTO tb_cp_job_preferences (
  student_id, currently_looking_for, work_mode,
  preferred_city, created_at
) VALUES
(1, 'Internships', 'Work from home', 'Hyderabad', NOW()),
(2, 'Jobs', 'In-office', 'Chennai', NOW()),
(3, 'Jobs', 'Work from home', NULL, NOW());

-- =====================================================
-- SCHOOL PROFILE (OPTIONAL 1–1)
-- =====================================================

INSERT INTO tb_cp_student_school (
  student_id, standard, board, school_name, created_at
) VALUES
(1, 'Class XII', 'State Board', 'Narayana Junior College', NOW());

-- =====================================================
-- MANY TO MANY (M2M)
-- =====================================================

INSERT INTO tb_cp_m2m_std_skill (student_id, skill_id, created_at) VALUES
(1, 1, NOW()), -- Uma → Python
(1, 3, NOW()), -- Uma → SQL
(2, 4, NOW()), -- Sneha → HTML
(3, 2, NOW()); -- Rahul → Java

INSERT INTO tb_cp_m2m_std_lng (student_id, language_id, created_at) VALUES
(1, 1, NOW()), -- English
(1, 3, NOW()), -- Telugu
(2, 1, NOW()),
(2, 2, NOW()),
(3, 1, NOW());

INSERT INTO tb_cp_m2m_std_interest (student_id, interest_id, created_at) VALUES
(1, 1, NOW()), -- Web Dev
(2, 2, NOW()), -- Data Science
(3, 3, NOW()); -- Cloud
