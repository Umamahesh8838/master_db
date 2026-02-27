-- MASTER / LOOKUP TABLES
SELECT * FROM tbl_cp_msalutation;
SELECT * FROM tbl_cp_mlanguages;
SELECT * FROM tbl_cp_minterests;
SELECT * FROM tbl_cp_mcourses;
SELECT * FROM tbl_cp_mcolleges;
SELECT * FROM tbl_cp_mcertifications;
SELECT * FROM tbl_cp_mskills;

-- RECRUITMENT LOOKUP TABLES
SELECT * FROM tbl_cp_mmodule;
SELECT * FROM tbl_cp_mdifficulty;
SELECT * FROM tbl_cp_mround_result;
SELECT * FROM tbl_cp_mattendance;
SELECT * FROM tbl_cp_minterviewer;

-- GEOGRAPHY MASTER
SELECT * FROM tbl_cp_mcountries;
SELECT * FROM tbl_cp_mstates;
SELECT * FROM tbl_cp_mcities;
SELECT * FROM tbl_cp_mpincodes;

-- STUDENT CORE
SELECT * FROM tbl_cp_student;

-- EDUCATION
SELECT * FROM tbl_cp_student_school;
SELECT * FROM tbl_cp_student_education;

-- SEMESTERS / SUBJECTS / MARKS
SELECT * FROM tbl_cp_msemester;
SELECT * FROM tbl_cp_msubjects;
SELECT * FROM tbl_cp_college_sem_subject;
SELECT * FROM tbl_cp_student_subject_marks;

-- WORK EXPERIENCE & PROJECTS
SELECT * FROM tbl_cp_student_workexp;
SELECT * FROM tbl_cp_studentprojects;

-- STUDENT MANY-TO-MANY
SELECT * FROM tbl_cp_m2m_std_skill;
SELECT * FROM tbl_cp_m2m_std_lng;
SELECT * FROM tbl_cp_m2m_std_interest;
SELECT * FROM tbl_cp_m2m_student_certification;
SELECT * FROM tbl_cp_m2m_studentproject_skill;

-- QUESTION BANK
SELECT * FROM tbl_cp_mquestions;
SELECT * FROM tbl_cp_m2m_question_options;

-- COMPANY & JOB DESCRIPTION
SELECT * FROM tbl_cp_mcompany;
SELECT * FROM tbl_cp_job_description;

-- ADDRESS
SELECT * FROM tbl_cp_student_address;
SELECT * FROM tbl_cp_college_address;
SELECT * FROM tbl_cp_company_address;

-- ROUND CONFIGURATION
SELECT * FROM tbl_cp_jd_round_config;
SELECT * FROM tbl_cp_m2m_jd_round_module;

-- RECRUITMENT DRIVE
SELECT * FROM tbl_cp_recruitment_drive;

-- APPLICATION
SELECT * FROM tbl_cp_application;
SELECT * FROM tbl_cp_application_status_history;

-- EXAM SESSION
SELECT * FROM tbl_cp_exam_session;
SELECT * FROM tbl_cp_m2m_exam_question_response;

-- INTERVIEW SESSION
SELECT * FROM tbl_cp_interview_session;
SELECT * FROM tbl_cp_m2m_session_module_score;
SELECT * FROM tbl_cp_m2m_session_question_response;