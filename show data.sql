USE campus;

-- =====================================================
-- MASTER TABLES (6)
-- =====================================================

SELECT * FROM tbl_cp_msalutation;
SELECT * FROM tbl_cp_mskills;
SELECT * FROM tbl_cp_mlanguages;
SELECT * FROM tbl_cp_mcolleges;
SELECT * FROM tbl_cp_mcourses;
SELECT * FROM tbl_cp_minterests;

-- =====================================================
-- CORE / TRANSACTION TABLES (11)
-- =====================================================

SELECT * FROM tb_cp_student;
SELECT * FROM tb_cp_auth_credentials;
SELECT * FROM tb_cp_password_history;
SELECT * FROM tb_cp_student_contact;
SELECT * FROM tb_cp_student_address;
SELECT * FROM tb_cp_student_email;
SELECT * FROM tb_cp_student_phone;
SELECT * FROM tb_cp_student_education;
SELECT * FROM tb_cp_student_workexp;
SELECT * FROM tb_cp_job_preferences;
SELECT * FROM tb_cp_student_school;

-- =====================================================
-- MANY-TO-MANY (M2M) TABLES (3)
-- =====================================================

SELECT * FROM tb_cp_m2m_std_skill;
SELECT * FROM tb_cp_m2m_std_lng;
SELECT * FROM tb_cp_m2m_std_interest;
