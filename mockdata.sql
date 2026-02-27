USE campus;

-- =====================================================
-- SALUTATIONS
-- =====================================================
INSERT INTO tbl_cp_msalutation (salutation_id, value, description) VALUES
(1, 'Mr.',  'Mister'),
(2, 'Ms.',  'Miss / Ms.'),
(3, 'Mrs.', 'Missus'),
(4, 'Dr.',  'Doctor');

-- =====================================================
-- LANGUAGES
-- =====================================================
INSERT INTO tbl_cp_mlanguages (language_id, language_code, language_name) VALUES
(1, 'PY',   'Python'),
(2, 'JAVA', 'Java'),
(3, 'JS',   'JavaScript'),
(4, 'SQL',  'SQL'),
(5, 'CPP',  'C++');

-- =====================================================
-- INTERESTS
-- =====================================================
INSERT INTO tbl_cp_minterests (interest_id, name) VALUES
(1, 'Machine Learning'),
(2, 'Web Development'),
(3, 'Data Analytics'),
(4, 'Cloud Computing'),
(5, 'Cybersecurity'),
(6, 'Mobile App Development');

-- =====================================================
-- COURSES
-- =====================================================
INSERT INTO tbl_cp_mcourses (course_id, course_name, course_code, specialization_name, specialization_code) VALUES
(1, 'Bachelor of Engineering', 'BE',   'Computer Science',       'CS'),
(2, 'Bachelor of Engineering', 'BE',   'Information Technology', 'IT'),
(3, 'Bachelor of Technology',  'BTECH','Computer Science',       'CS'),
(4, 'Master of Computer Applications', 'MCA', 'General',         'GEN'),
(5, 'Bachelor of Science',     'BSC',  'Computer Science',       'CS');

-- =====================================================
-- COLLEGES
-- =====================================================
INSERT INTO tbl_cp_mcolleges (college_id, college_name, spoc_name, spoc_phone, spoc_email, tpo_name, tpo_phone, tpo_email, student_coordinator_name, student_coordinator_phone, student_coordinator_email, priority) VALUES
(1, 'Osmania University College of Engineering', 'Ramesh Babu',    '9848011234', 'ramesh@ouce.ac.in',    'Suresh Reddy',   '9848022345', 'tpo@ouce.ac.in',    'Kavitha Rao',     '9848033456', 'kavitha@ouce.ac.in',    2),
(2, 'JNTU Hyderabad',                            'Venkatesh Naik', '9849011234', 'venkat@jntuh.ac.in',   'Mahesh Kumar',   '9849022345', 'tpo@jntuh.ac.in',   'Priya Sharma',    '9849033456', 'priya@jntuh.ac.in',     1),
(3, 'Vasavi College of Engineering',             'Laxman Rao',     '9850011234', 'laxman@vasavi.ac.in',  'Vijay Anand',    '9850022345', 'tpo@vasavi.ac.in',  'Deepika Reddy',   '9850033456', 'deepika@vasavi.ac.in',  3),
(4, 'Chaitanya Bharathi Institute of Technology','Naresh Gupta',   '9851011234', 'naresh@cbit.ac.in',    'Srinivas Murthy','9851022345', 'tpo@cbit.ac.in',    'Anitha Varma',    '9851033456', 'anitha@cbit.ac.in',     3),
(5, 'Muffakham Jah College of Engineering',      'Ravi Shankar',   '9852011234', 'ravi@mjcet.ac.in',     'Uma Devi',       '9852022345', 'tpo@mjcet.ac.in',   'Kiran Babu',      '9852033456', 'kiran@mjcet.ac.in',     4);

-- =====================================================
-- CERTIFICATIONS
-- =====================================================
INSERT INTO tbl_cp_mcertifications (certification_id, certification_name, certification_code, issuing_organization, certification_type, mode, validity_period_value, validity_period_unit, is_lifetime) VALUES
(1, 'AWS Certified Solutions Architect',    'AWS-SAA',   'Amazon Web Services', 'Cloud',       'Online', 3,  'Years', FALSE),
(2, 'Google Professional Data Engineer',   'GCP-PDE',   'Google',              'Cloud',       'Online', 2,  'Years', FALSE),
(3, 'Python for Data Science',             'PY-DS-IBM', 'IBM',                 'Programming', 'Online', 0,  'Years', TRUE),
(4, 'Oracle Certified Java Programmer',    'OCJP-11',   'Oracle',              'Programming', 'Online', 0,  'Years', TRUE),
(5, 'Microsoft Azure Fundamentals',        'AZ-900',    'Microsoft',           'Cloud',       'Online', 0,  'Years', TRUE);

-- =====================================================
-- SKILLS
-- =====================================================
INSERT INTO tbl_cp_mskills (skill_id, name, description, language_id, version, complexity, status) VALUES
(1,  'Django',         'Python web framework',            1, '4.2',    'Intermediate', 'Active'),
(2,  'Pandas',         'Data analysis library',           1, '2.0',    'Intermediate', 'Active'),
(3,  'NumPy',          'Numerical computing library',     1, '1.25',   'Beginner',     'Active'),
(4,  'Spring Boot',    'Java application framework',      2, '3.1',    'Advanced',     'Active'),
(5,  'Hibernate',      'Java ORM framework',              2, '6.2',    'Intermediate', 'Active'),
(6,  'React.js',       'Frontend JavaScript library',     3, '18.2',   'Intermediate', 'Active'),
(7,  'Node.js',        'JavaScript runtime',              3, '20.0',   'Intermediate', 'Active'),
(8,  'MySQL',          'Relational database',             4, '8.0',    'Beginner',     'Active'),
(9,  'PostgreSQL',     'Advanced relational database',    4, '15.0',   'Intermediate', 'Active'),
(10, 'STL',            'C++ Standard Template Library',   5, 'C++17',  'Advanced',     'Active');

-- =====================================================
-- MODULES
-- =====================================================
INSERT INTO tbl_cp_mmodule (module_id, module_name, module_code, description, has_questions) VALUES
(1, 'Aptitude',       'APT',  'Quantitative and logical reasoning',  TRUE),
(2, 'Python',         'PY',   'Python programming fundamentals',     TRUE),
(3, 'Java',           'JAVA', 'Java programming fundamentals',       TRUE),
(4, 'SQL',            'SQL',  'Database query and design',           TRUE),
(5, 'Data Structures','DSA',  'Arrays, trees, graphs, sorting',      TRUE),
(6, 'Communication',  'COMM', 'Verbal and written communication',    FALSE),
(7, 'Stability',      'STAB', 'Emotional and situational stability', FALSE);

-- =====================================================
-- DIFFICULTY
-- =====================================================
INSERT INTO tbl_cp_mdifficulty (difficulty_id, level_code, level_label, score_weight) VALUES
(1, 'EASY',   'Easy',   1.00),
(2, 'MEDIUM', 'Medium', 1.50),
(3, 'HARD',   'Hard',   2.00);

-- =====================================================
-- ROUND RESULTS
-- =====================================================
INSERT INTO tbl_cp_mround_result (result_id, label) VALUES
(1, 'Pass'),
(2, 'Fail'),
(3, 'Selected'),
(4, 'Not Selected'),
(5, 'Absent'),
(6, 'Cheating');

-- =====================================================
-- ATTENDANCE
-- =====================================================
INSERT INTO tbl_cp_mattendance (attendance_id, code, label) VALUES
(1, 'P', 'Present'),
(2, 'A', 'Absent'),
(3, 'R', 'Rejected'),
(4, 'C', 'Cheating');

-- =====================================================
-- INTERVIEWERS
-- =====================================================
INSERT INTO tbl_cp_minterviewer (interviewer_id, name, email, phone, is_internal, company, designation, is_active) VALUES
(1, 'Rajesh Varma',    'rajesh.varma@campus4.com',    '9800011111', TRUE,  'Campus4',      'Senior Mentor',    TRUE),
(2, 'Sunitha Pillai',  'sunitha.pillai@campus4.com',  '9800022222', TRUE,  'Campus4',      'Technical Mentor', TRUE),
(3, 'Arun Krishnamurthy', 'arun.k@infosys.com',       '9800033333', FALSE, 'Infosys',      'Lead Engineer',    TRUE),
(4, 'Meena Iyer',      'meena.iyer@tcs.com',          '9800044444', FALSE, 'TCS',          'HR Manager',       TRUE),
(5, 'Prasad Nambiar',  'prasad.n@wipro.com',          '9800055555', FALSE, 'Wipro',        'Tech Lead',        TRUE);

-- =====================================================
-- GEOGRAPHY
-- =====================================================
INSERT INTO tbl_cp_mcountries (country_id, country_name, country_code) VALUES
(1, 'India',          'IN'),
(2, 'United States',  'US'),
(3, 'United Kingdom', 'UK');

INSERT INTO tbl_cp_mstates (state_id, state_name, state_code, country_id) VALUES
(1, 'Telangana',      'TG', 1),
(2, 'Andhra Pradesh', 'AP', 1),
(3, 'Karnataka',      'KA', 1),
(4, 'Maharashtra',    'MH', 1),
(5, 'Tamil Nadu',     'TN', 1);

INSERT INTO tbl_cp_mcities (city_id, city_name, state_id) VALUES
(1, 'Hyderabad',   1),
(2, 'Warangal',    1),
(3, 'Nizamabad',   1),
(4, 'Vijayawada',  2),
(5, 'Visakhapatnam',2),
(6, 'Bengaluru',   3),
(7, 'Mumbai',      4),
(8, 'Pune',        4),
(9, 'Chennai',     5);

INSERT INTO tbl_cp_mpincodes (pincode_id, pincode, city_id, area_name) VALUES
(1,  '500001', 1, 'Abids'),
(2,  '500008', 1, 'Ameerpet'),
(3,  '500016', 1, 'Kukatpally'),
(4,  '500034', 1, 'Madhapur'),
(5,  '506001', 2, 'Warangal City'),
(6,  '503001', 3, 'Nizamabad City'),
(7,  '520001', 4, 'Vijayawada City'),
(8,  '530001', 5, 'Visakhapatnam City'),
(9,  '560001', 6, 'MG Road Bengaluru'),
(10, '400001', 7, 'Colaba Mumbai');

-- =====================================================
-- STUDENTS
-- =====================================================
INSERT INTO tbl_cp_student (student_id, salutation_id, first_name, middle_name, last_name, email, alt_email, contact_number, alt_contact_number, linkedin_url, github_url, date_of_birth, current_city, gender, user_type, is_active, status) VALUES
(1, 1, 'Uma',     'Devi',    'Sharma',    'uma.sharma@gmail.com',     'uma.s@yahoo.com',       '9901111111', '9901111112', 'linkedin.com/in/umasharma',     'github.com/umasharma',     '2001-05-14', 'Hyderabad',    'Female', 'Student', TRUE,  'Active'),
(2, 1, 'Mahesh',  'Kumar',   'Reddy',     'mahesh.reddy@gmail.com',   'mahesh.r@yahoo.com',    '9902222222', '9902222223', 'linkedin.com/in/maheshreddy',   'github.com/maheshreddy',   '2000-08-22', 'Hyderabad',    'Male',   'Student', TRUE,  'Active'),
(3, 1, 'Vijay',   'Shankar', 'Naidu',     'vijay.naidu@gmail.com',    'vijay.n@yahoo.com',     '9903333333', '9903333334', 'linkedin.com/in/vijaynaidu',    'github.com/vijaynaidu',    '2001-03-11', 'Warangal',     'Male',   'Student', TRUE,  'Active'),
(4, 1, 'Venu',    'Gopal',   'Rao',       'venu.rao@gmail.com',       'venu.r@yahoo.com',      '9904444444', '9904444445', 'linkedin.com/in/venurao',       'github.com/venurao',       '2000-12-01', 'Vijayawada',   'Male',   'Student', TRUE,  'Active'),
(5, 2, 'Priya',   'Lakshmi', 'Iyer',      'priya.iyer@gmail.com',     'priya.i@yahoo.com',     '9905555555', '9905555556', 'linkedin.com/in/priyaiyer',     'github.com/priyaiyer',     '2001-07-19', 'Hyderabad',    'Female', 'Student', TRUE,  'Active'),
(6, 1, 'Ravi',    'Kiran',   'Babu',      'ravi.babu@gmail.com',      'ravi.b@yahoo.com',      '9906666666', '9906666667', 'linkedin.com/in/ravibabu',      'github.com/ravibabu',      '2000-02-28', 'Hyderabad',    'Male',   'Student', TRUE,  'Active'),
(7, 2, 'Kavitha', 'Sree',    'Varma',     'kavitha.varma@gmail.com',  'kavitha.v@yahoo.com',   '9907777777', '9907777778', 'linkedin.com/in/kavithavarma',  'github.com/kavithavarma',  '2001-09-30', 'Bengaluru',    'Female', 'Student', TRUE,  'Active'),
(8, 1, 'Suresh',  'Babu',    'Goud',      'suresh.goud@gmail.com',    'suresh.g@yahoo.com',    '9908888888', '9908888889', 'linkedin.com/in/sureshgoud',    'github.com/sureshgoud',    '2000-06-15', 'Hyderabad',    'Male',   'Student', TRUE,  'Active'),
(9, 2, 'Anitha',  'Kumari',  'Nair',      'anitha.nair@gmail.com',    'anitha.n@yahoo.com',    '9909999999', '9909999990', 'linkedin.com/in/anithanair',    'github.com/anithanair',    '2001-01-25', 'Chennai',      'Female', 'Student', TRUE,  'Active'),
(10,1, 'Karthik', 'Sai',     'Prasad',    'karthik.prasad@gmail.com', 'karthik.p@yahoo.com',   '9910000000', '9910000001', 'linkedin.com/in/karthikprasad', 'github.com/karthikprasad', '2000-11-08', 'Hyderabad',    'Male',   'Student', TRUE,  'Active');

-- =====================================================
-- STUDENT SCHOOL
-- =====================================================
INSERT INTO tbl_cp_student_school (school_id, student_id, standard, board, school_name, percentage, passing_year) VALUES
(1,  1,  '10th', 'CBSE',   'St. Ann High School Hyderabad',          88.40, 2017),
(2,  1,  '12th', 'CBSE',   'St. Ann High School Hyderabad',          91.20, 2019),
(3,  2,  '10th', 'SSC',    'Narayana High School Hyderabad',         85.00, 2016),
(4,  2,  '12th', 'MPC',    'Narayana Junior College Hyderabad',      92.60, 2018),
(5,  3,  '10th', 'SSC',    'Krishnaveni High School Warangal',       79.80, 2017),
(6,  3,  '12th', 'MPC',    'Sri Chaitanya Junior College Warangal',  83.40, 2019),
(7,  4,  '10th', 'SSC',    'Bhashyam High School Vijayawada',        90.20, 2016),
(8,  4,  '12th', 'MPC',    'Bhashyam Junior College Vijayawada',     87.60, 2018),
(9,  5,  '10th', 'CBSE',   'DAV Public School Hyderabad',            93.80, 2017),
(10, 5,  '12th', 'CBSE',   'DAV Public School Hyderabad',            96.00, 2019),
(11, 6,  '10th', 'SSC',    'Little Flower High School Hyderabad',    82.00, 2016),
(12, 6,  '12th', 'MPC',    'Sri Gayatri Junior College Hyderabad',   80.20, 2018),
(13, 7,  '10th', 'CBSE',   'Kendriya Vidyalaya Bengaluru',           89.60, 2017),
(14, 7,  '12th', 'CBSE',   'Kendriya Vidyalaya Bengaluru',           94.20, 2019),
(15, 8,  '10th', 'SSC',    'St. Patrick High School Secunderabad',   76.40, 2016),
(16, 8,  '12th', 'MPC',    'Sri Chaitanya Junior College Hyderabad', 81.00, 2018),
(17, 9,  '10th', 'CBSE',   'Good Shepherd Matriculation Chennai',    91.00, 2017),
(18, 9,  '12th', 'CBSE',   'Good Shepherd Matriculation Chennai',    88.60, 2019),
(19, 10, '10th', 'SSC',    'Silver Oaks High School Hyderabad',      86.20, 2016),
(20, 10, '12th', 'MPC',    'Narayana Junior College Hyderabad',      89.40, 2018);

-- =====================================================
-- STUDENT EDUCATION
-- =====================================================
INSERT INTO tbl_cp_student_education (edu_id, student_id, college_id, course_id, start_year, end_year, cgpa, percentage) VALUES
(1,  1,  1, 1, 2019, 2023, 8.20, 78.40),
(2,  2,  2, 3, 2018, 2022, 7.80, 74.60),
(3,  3,  3, 1, 2019, 2023, 7.40, 70.80),
(4,  4,  4, 2, 2018, 2022, 8.60, 82.00),
(5,  5,  1, 1, 2019, 2023, 9.10, 87.20),
(6,  6,  2, 3, 2018, 2022, 7.20, 68.40),
(7,  7,  5, 4, 2019, 2022, 8.80, 84.00),
(8,  8,  3, 2, 2018, 2022, 7.60, 72.20),
(9,  9,  4, 1, 2019, 2023, 8.40, 80.60),
(10, 10, 1, 3, 2018, 2022, 8.00, 76.00);

-- =====================================================
-- SEMESTERS (for BE CS - course_id 1)
-- =====================================================
INSERT INTO tbl_cp_msemester (semester_id, course_id, semester_number, semester_name) VALUES
(1, 1, 1, 'Semester 1'),
(2, 1, 2, 'Semester 2'),
(3, 1, 3, 'Semester 3'),
(4, 1, 4, 'Semester 4'),
(5, 1, 5, 'Semester 5'),
(6, 1, 6, 'Semester 6'),
(7, 1, 7, 'Semester 7'),
(8, 1, 8, 'Semester 8');

-- =====================================================
-- SUBJECTS
-- =====================================================
INSERT INTO tbl_cp_msubjects (subject_id, subject_code, subject_name) VALUES
(1,  'CS101', 'Engineering Mathematics I'),
(2,  'CS102', 'Programming in C'),
(3,  'CS201', 'Data Structures'),
(4,  'CS202', 'Database Management Systems'),
(5,  'CS301', 'Operating Systems'),
(6,  'CS302', 'Computer Networks'),
(7,  'CS401', 'Software Engineering'),
(8,  'CS402', 'Machine Learning'),
(9,  'CS403', 'Web Technologies'),
(10, 'CS404', 'Cloud Computing');

-- =====================================================
-- COLLEGE SEMESTER SUBJECT MAPPING
-- =====================================================
INSERT INTO tbl_cp_college_sem_subject (college_sem_subject_id, college_id, semester_id, subject_id, credits) VALUES
(1,  1, 1, 1, 4.0),
(2,  1, 1, 2, 4.0),
(3,  1, 2, 3, 4.0),
(4,  1, 2, 4, 3.0),
(5,  1, 3, 5, 4.0),
(6,  1, 3, 6, 3.0),
(7,  1, 4, 7, 3.0),
(8,  1, 4, 8, 4.0),
(9,  1, 5, 9, 3.0),
(10, 1, 5, 10,3.0);

-- =====================================================
-- STUDENT SUBJECT MARKS
-- =====================================================
INSERT INTO tbl_cp_student_subject_marks (student_id, college_sem_subject_id, evaluation_type, marks_obtained) VALUES
(1, 1, 'internal', 38.00),
(1, 1, 'external', 55.00),
(1, 2, 'internal', 42.00),
(1, 2, 'external', 60.00),
(1, 3, 'internal', 35.00),
(1, 3, 'external', 52.00),
(5, 1, 'internal', 48.00),
(5, 1, 'external', 70.00),
(5, 2, 'internal', 46.00),
(5, 2, 'external', 68.00),
(5, 3, 'internal', 49.00),
(5, 3, 'external', 72.00);

-- =====================================================
-- WORK EXPERIENCE
-- =====================================================
INSERT INTO tbl_cp_student_workexp (workexp_id, student_id, company_name, company_location, designation, employment_type, start_date, end_date, is_current) VALUES
(1, 2,  'TCS',           'Hyderabad',  'Software Trainee',     'Full-Time',  '2022-07-01', '2023-06-30', FALSE),
(2, 4,  'Infosys',       'Hyderabad',  'Systems Engineer',     'Full-Time',  '2022-09-01', '1900-01-01', TRUE),
(3, 6,  'Wipro',         'Pune',       'Associate Consultant',  'Full-Time',  '2022-08-15', '2023-08-14', FALSE),
(4, 8,  'HCL Technologies','Hyderabad','Junior Developer',      'Full-Time',  '2022-11-01', '1900-01-01', TRUE),
(5, 10, 'Tech Mahindra', 'Hyderabad',  'Software Engineer',     'Full-Time',  '2022-07-01', '2023-07-01', FALSE);

-- =====================================================
-- STUDENT PROJECTS
-- =====================================================
INSERT INTO tbl_cp_studentprojects (project_id, student_id, workexp_id, project_title, project_description, achievements, project_start_date, project_end_date) VALUES
(1, 1,  NULL, 'Student Placement Portal',         'A web app to manage campus placements using Django and MySQL',            'Reduced manual effort by 60%',           '2022-10-01', '2023-03-31'),
(2, 2,  1,    'Inventory Management System',      'Java Spring Boot based system to track warehouse inventory',              'Deployed in production at TCS',           '2022-08-01', '2023-01-31'),
(3, 3,  NULL, 'Face Recognition Attendance',      'Python OpenCV based attendance marking system',                           'Accuracy of 96%',                        '2022-11-01', '2023-02-28'),
(4, 4,  2,    'Employee Leave Management System', 'React and Node.js based leave tracking portal for Infosys internal use',  'Used by 200+ employees',                  '2022-10-01', '2023-04-30'),
(5, 5,  NULL, 'Stock Price Prediction',           'LSTM model to predict stock prices using Python and TensorFlow',          'Achieved 87% prediction accuracy',        '2022-09-01', '2023-01-31'),
(6, 6,  3,    'Hospital Management System',       'PHP and MySQL based patient and doctor records management',               'Awarded best intern project at Wipro',    '2022-09-01', '2023-03-31'),
(7, 7,  NULL, 'E-Commerce Website',               'Full stack e-commerce using React frontend and Django backend',           'Handles 500+ concurrent users',           '2022-08-01', '2022-12-31'),
(8, 8,  4,    'Network Traffic Analyzer',         'Python tool to monitor and log network packets in real-time',             'Used internally at HCL for auditing',     '2022-12-01', '2023-05-31'),
(9, 9,  NULL, 'Movie Recommendation System',      'Collaborative filtering recommendation engine using Python',              'Integrated with 10,000 movie dataset',    '2023-01-01', '2023-06-30'),
(10,10, 5,    'Customer Churn Prediction',        'ML model to predict telecom customer churn using scikit-learn',           'Improved retention strategy by 25%',      '2022-08-01', '2023-01-31');

-- =====================================================
-- STUDENT SKILLS (M2M)
-- =====================================================
INSERT INTO tbl_cp_m2m_std_skill (student_id, skill_id) VALUES
(1, 1), (1, 8),  -- Uma: Django, MySQL
(2, 4), (2, 5),  -- Mahesh: Spring Boot, Hibernate
(3, 1), (3, 2),  -- Vijay: Django, Pandas
(4, 6), (4, 7),  -- Venu: React, Node.js
(5, 2), (5, 3),  -- Priya: Pandas, NumPy
(6, 8), (6, 9),  -- Ravi: MySQL, PostgreSQL
(7, 1), (7, 6),  -- Kavitha: Django, React
(8, 10),(8, 9),  -- Suresh: STL, PostgreSQL
(9, 2), (9, 1),  -- Anitha: Pandas, Django
(10,4), (10,8);  -- Karthik: Spring Boot, MySQL

-- =====================================================
-- STUDENT LANGUAGES (M2M)
-- =====================================================
INSERT INTO tbl_cp_m2m_std_lng (student_id, language_id) VALUES
(1, 1), (1, 4),  -- Uma: Python, SQL
(2, 2), (2, 4),  -- Mahesh: Java, SQL
(3, 1), (3, 4),  -- Vijay: Python, SQL
(4, 3), (4, 4),  -- Venu: JavaScript, SQL
(5, 1), (5, 4),  -- Priya: Python, SQL
(6, 1), (6, 4),  -- Ravi: Python, SQL
(7, 1), (7, 3),  -- Kavitha: Python, JavaScript
(8, 5), (8, 4),  -- Suresh: C++, SQL
(9, 1), (9, 4),  -- Anitha: Python, SQL
(10,2), (10,4);  -- Karthik: Java, SQL

-- =====================================================
-- STUDENT INTERESTS (M2M)
-- =====================================================
INSERT INTO tbl_cp_m2m_std_interest (student_id, interest_id) VALUES
(1, 2), (1, 3),
(2, 2), (2, 4),
(3, 1), (3, 3),
(4, 2), (4, 6),
(5, 1), (5, 3),
(6, 5), (6, 3),
(7, 2), (7, 1),
(8, 5), (8, 4),
(9, 1), (9, 3),
(10,2), (10,4);

-- =====================================================
-- STUDENT CERTIFICATIONS (M2M)
-- =====================================================
INSERT INTO tbl_cp_m2m_student_certification (student_id, certification_id, issue_date, expiry_date, certificate_url, credential_id, is_verified) VALUES
(1,  3, '2023-01-15', '9999-12-31', 'https://certs.ibm.com/uma-pyds',    'IBM-PY-001',  TRUE),
(2,  4, '2022-12-10', '9999-12-31', 'https://certs.oracle.com/mahesh',   'ORC-J-002',   TRUE),
(3,  3, '2023-02-20', '9999-12-31', 'https://certs.ibm.com/vijay-pyds',  'IBM-PY-003',  FALSE),
(4,  1, '2023-03-05', '2026-03-05', 'https://aws.amazon.com/cert/venu',  'AWS-SAA-004', TRUE),
(5,  2, '2023-01-28', '2025-01-28', 'https://google.com/cert/priya',     'GCP-PDE-005', TRUE),
(6,  5, '2023-04-10', '9999-12-31', 'https://microsoft.com/cert/ravi',   'AZ-900-006',  TRUE),
(7,  3, '2022-11-01', '9999-12-31', 'https://certs.ibm.com/kavitha',     'IBM-PY-007',  FALSE),
(8,  4, '2023-02-14', '9999-12-31', 'https://certs.oracle.com/suresh',   'ORC-J-008',   TRUE),
(9,  2, '2023-03-22', '2025-03-22', 'https://google.com/cert/anitha',    'GCP-PDE-009', FALSE),
(10, 1, '2022-09-15', '2025-09-15', 'https://aws.amazon.com/cert/karthik','AWS-SAA-010', TRUE);

-- =====================================================
-- PROJECT SKILLS (M2M)
-- =====================================================
INSERT INTO tbl_cp_m2m_studentproject_skill (project_id, skill_id) VALUES
(1,  1), (1,  8),
(2,  4), (2,  5),
(3,  1), (3,  2),
(4,  6), (4,  7),
(5,  2), (5,  3),
(6,  8), (6,  9),
(7,  1), (7,  6),
(8,  10),(8,  9),
(9,  2), (9,  1),
(10, 4), (10, 8);

-- =====================================================
-- QUESTION BANK
-- =====================================================
INSERT INTO tbl_cp_mquestions (question_id, module_id, difficulty_id, question_text, question_type, correct_answer, max_marks, is_active) VALUES
(1,  1, 1, 'If a train travels 60 km in 1 hour, how far will it travel in 2.5 hours?',        'mcq',       '150 km',              1.0, TRUE),
(2,  1, 2, 'A man walks 5 km north then 12 km east. What is the shortest distance from start?','mcq',       '13 km',               1.0, TRUE),
(3,  1, 3, 'Find the next number in the series: 2, 6, 12, 20, 30, ?',                         'mcq',       '42',                  2.0, TRUE),
(4,  2, 1, 'Which keyword is used to define a function in Python?',                            'mcq',       'def',                 1.0, TRUE),
(5,  2, 2, 'What is the output of: print(type([]))?',                                         'mcq',       "<class 'list'>",      1.0, TRUE),
(6,  2, 3, 'Explain the difference between @staticmethod and @classmethod in Python.',         'subjective', NULL,                 5.0, TRUE),
(7,  3, 1, 'Which of these is NOT a Java primitive type?',                                    'mcq',       'String',              1.0, TRUE),
(8,  3, 2, 'What is the output of: System.out.println(10/3) in Java?',                        'mcq',       '3',                   1.0, TRUE),
(9,  4, 1, 'What does SQL stand for?',                                                        'mcq',       'Structured Query Language', 1.0, TRUE),
(10, 4, 2, 'Which SQL clause is used to filter groups?',                                      'mcq',       'HAVING',              1.0, TRUE),
(11, 5, 1, 'What is the time complexity of binary search?',                                   'mcq',       'O(log n)',            1.0, TRUE),
(12, 5, 3, 'Explain Dijkstra\'s algorithm and its time complexity.',                          'subjective', NULL,                 5.0, TRUE);

-- =====================================================
-- QUESTION OPTIONS (MCQ only)
-- =====================================================
INSERT INTO tbl_cp_m2m_question_options (option_id, question_id, option_text, is_correct, display_order) VALUES
(1,  1, '120 km', FALSE, 1),
(2,  1, '150 km', TRUE,  2),
(3,  1, '180 km', FALSE, 3),
(4,  1, '100 km', FALSE, 4),
(5,  2, '11 km',  FALSE, 1),
(6,  2, '13 km',  TRUE,  2),
(7,  2, '17 km',  FALSE, 3),
(8,  2, '15 km',  FALSE, 4),
(9,  3, '40',     FALSE, 1),
(10, 3, '42',     TRUE,  2),
(11, 3, '36',     FALSE, 3),
(12, 3, '44',     FALSE, 4),
(13, 4, 'func',   FALSE, 1),
(14, 4, 'define', FALSE, 2),
(15, 4, 'def',    TRUE,  3),
(16, 4, 'fn',     FALSE, 4),
(17, 5, "<class 'list'>",  TRUE,  1),
(18, 5, "<class 'array'>", FALSE, 2),
(19, 5, "<class 'tuple'>", FALSE, 3),
(20, 5, "<class 'dict'>",  FALSE, 4),
(21, 7, 'int',    FALSE, 1),
(22, 7, 'float',  FALSE, 2),
(23, 7, 'String', TRUE,  3),
(24, 7, 'char',   FALSE, 4),
(25, 8, '3',      TRUE,  1),
(26, 8, '3.33',   FALSE, 2),
(27, 8, '3.0',    FALSE, 3),
(28, 8, 'Error',  FALSE, 4),
(29, 9, 'Structured Query Language', TRUE,  1),
(30, 9, 'Simple Query Language',     FALSE, 2),
(31, 9, 'Sequential Query Language', FALSE, 3),
(32, 9, 'Standard Query Language',   FALSE, 4),
(33, 10,'WHERE',   FALSE, 1),
(34, 10,'HAVING',  TRUE,  2),
(35, 10,'FILTER',  FALSE, 3),
(36, 10,'GROUP',   FALSE, 4),
(37, 11,'O(n)',    FALSE, 1),
(38, 11,'O(n^2)', FALSE, 2),
(39, 11,'O(log n)',TRUE,  3),
(40, 11,'O(1)',   FALSE, 4);

-- =====================================================
-- COMPANIES
-- =====================================================
INSERT INTO tbl_cp_mcompany (company_id, name, industry, website, city, is_active) VALUES
(1, 'Infosys',         'IT Services',    'www.infosys.com',      'Bengaluru', TRUE),
(2, 'TCS',             'IT Services',    'www.tcs.com',          'Mumbai',    TRUE),
(3, 'Wipro',           'IT Services',    'www.wipro.com',        'Bengaluru', TRUE),
(4, 'HCL Technologies','IT Services',    'www.hcltech.com',      'Noida',     TRUE),
(5, 'Mphasis',         'IT Consulting',  'www.mphasis.com',      'Bengaluru', TRUE);

-- =====================================================
-- JOB DESCRIPTIONS
-- =====================================================
INSERT INTO tbl_cp_job_description (jd_id, company_id, job_role, title, description, experience_min_yrs, experience_max_yrs, salary_min, salary_max, bond_months, location, employment_type, openings, hiring_manager_name, hiring_manager_email, status) VALUES
(1, 1, 'Software Engineer',        'Associate Software Engineer - Python',  'Looking for Python developers with Django experience',  0.0, 1.0, 350000.00, 550000.00, 12, 'Hyderabad', 'Full-Time', 10, 'Arun Krishnamurthy', 'arun.k@infosys.com',  'Open'),
(2, 2, 'Data Analyst',             'Junior Data Analyst',                   'Analyse business data using Python and SQL',            0.0, 1.0, 300000.00, 500000.00, 0,  'Chennai',   'Full-Time', 5,  'Meena Iyer',         'meena.iyer@tcs.com',  'Open'),
(3, 3, 'Java Developer',           'Java Backend Developer',                'Spring Boot microservices development',                  0.0, 2.0, 400000.00, 600000.00, 12, 'Pune',      'Full-Time', 8,  'Prasad Nambiar',     'prasad.n@wipro.com',  'Open'),
(4, 4, 'Full Stack Developer',     'Full Stack Web Developer',              'React frontend and Node.js backend development',         0.0, 1.0, 350000.00, 550000.00, 6,  'Hyderabad', 'Full-Time', 6,  'Rajesh Varma',       'rajesh.varma@campus4.com','Open'),
(5, 5, 'Machine Learning Engineer','Junior ML Engineer',                    'Build and deploy machine learning models',               0.0, 1.0, 400000.00, 650000.00, 0,  'Bengaluru', 'Full-Time', 4,  'Sunitha Pillai',     'sunitha.pillai@campus4.com','Open');

-- =====================================================
-- COMPANY ADDRESSES
-- =====================================================
INSERT INTO tbl_cp_company_address (address_id, company_id, address_line_1, address_line_2, landmark, pincode_id, address_type) VALUES
(1, 1, 'Plot No 44, Electronic City Phase 1', 'Hosur Road',      'Near Infosys Gate 1',     9,  'registered'),
(2, 2, 'TCS House, Raveline Street',          'Fort Area',       'Near CST Station',        10, 'registered'),
(3, 3, 'Wipro Limited, Sarjapur Road',        'Doddakannelli',   'Near Wipro Circle',       9,  'registered'),
(4, 4, 'Plot 3A, Sector 126, Noida',          '',                'Near HCL Campus Gate',    9,  'registered'),
(5, 5, 'Bagmane World Technology Center',     'CV Raman Nagar',  'Near Mphasis Building',   9,  'registered');

-- =====================================================
-- COLLEGE ADDRESSES
-- =====================================================
INSERT INTO tbl_cp_college_address (address_id, college_id, address_line_1, landmark, pincode_id, address_type) VALUES
(1, 1, 'Amberpet, Hyderabad',         'Near Osmania General Hospital', 1, 'campus'),
(2, 2, 'Kukatpally Housing Board',    'Near JNTU Main Gate',           3, 'campus'),
(3, 3, 'Ibrahimbagh, Hyderabad',      'Near Vasavi Engineering Gate',  1, 'campus'),
(4, 4, 'Gandipet, Hyderabad',         'Near CBIT Main Gate',           3, 'campus'),
(5, 5, 'Red Hills, Hyderabad',        'Near MJCET Gate',               2, 'campus');

-- =====================================================
-- STUDENT ADDRESSES
-- =====================================================
INSERT INTO tbl_cp_student_address (address_id, student_id, address_line_1, address_line_2, landmark, pincode_id, address_type) VALUES
(1,  1,  'H.No 5-6-78, Nallakunta',           'Near Hanuman Temple',    'Opp. State Bank',        1, 'current'),
(2,  2,  'Flat 203, Sai Residency, Ameerpet', 'Behind Big Bazaar',      'Near Metro Station',     2, 'current'),
(3,  3,  '12-1-456, Hanamkonda',              'Beside Axis Bank',       'Near Clock Tower',       5, 'current'),
(4,  4,  '40-5-12, Governorpet',              'Near NTR Statue',        'MG Road Junction',       7, 'current'),
(5,  5,  'Plot 14, Madhapur',                 'HiTec City Road',        'Near Cyber Towers',      4, 'current'),
(6,  6,  'Flat 101, Green Park Apts, Abids',  '',                       'Near Abids Circle',      1, 'current'),
(7,  7,  '23, 5th Cross, Indiranagar',        'Bengaluru',              'Near 100 Feet Road',     9, 'current'),
(8,  8,  '6-3-456, Somajiguda',               'Near Raj Bhavan',        'Opp. Punjab National Bank', 1, 'current'),
(9,  9,  '14, Anna Nagar East',               'Chennai',                'Near Anna Nagar Tower',  9, 'current'),
(10, 10, 'Flat 302, Kukatpally',              'JNTU Road',              'Near JNTU',              3, 'current');

-- =====================================================
-- ROUND CONFIGURATION
-- =====================================================
INSERT INTO tbl_cp_jd_round_config (round_config_id, jd_id, round_number, round_label, is_exam) VALUES
(1,  1, 1, 'Aptitude Test',      TRUE),
(2,  1, 2, 'Technical Interview',FALSE),
(3,  1, 3, 'HR Interview',       FALSE),
(4,  2, 1, 'Aptitude Test',      TRUE),
(5,  2, 2, 'Technical Interview',FALSE),
(6,  3, 1, 'Aptitude Test',      TRUE),
(7,  3, 2, 'Technical Interview',FALSE),
(8,  3, 3, 'HR Interview',       FALSE),
(9,  4, 1, 'Aptitude Test',      TRUE),
(10, 4, 2, 'Technical Interview',FALSE),
(11, 5, 1, 'Aptitude Test',      TRUE),
(12, 5, 2, 'Technical Interview',FALSE),
(13, 5, 3, 'HR Interview',       FALSE);

-- =====================================================
-- JD ROUND MODULE MAPPING
-- =====================================================
INSERT INTO tbl_cp_m2m_jd_round_module (jd_round_mod_id, round_config_id, module_id, weightage, difficulty_id, is_mandatory) VALUES
(1,  1,  1, 0.5000, 1, TRUE),   -- JD1 Round1: Aptitude (easy)
(2,  1,  4, 0.5000, 2, TRUE),   -- JD1 Round1: SQL (medium)
(3,  2,  2, 0.6000, 2, TRUE),   -- JD1 Round2: Python (medium)
(4,  2,  6, 0.4000, NULL,TRUE), -- JD1 Round2: Communication (manual)
(5,  3,  7, 1.0000, NULL,TRUE), -- JD1 Round3: Stability (manual)
(6,  4,  1, 0.5000, 1, TRUE),   -- JD2 Round1: Aptitude
(7,  4,  4, 0.5000, 2, TRUE),   -- JD2 Round1: SQL
(8,  5,  2, 0.5000, 2, TRUE),   -- JD2 Round2: Python
(9,  5,  6, 0.5000, NULL,TRUE), -- JD2 Round2: Communication
(10, 6,  1, 0.4000, 1, TRUE),   -- JD3 Round1: Aptitude
(11, 6,  5, 0.6000, 2, TRUE),   -- JD3 Round1: DSA
(12, 7,  3, 0.6000, 2, TRUE),   -- JD3 Round2: Java
(13, 7,  6, 0.4000, NULL,TRUE), -- JD3 Round2: Communication
(14, 9,  1, 0.4000, 1, TRUE),   -- JD4 Round1: Aptitude
(15, 9,  5, 0.6000, 2, TRUE),   -- JD4 Round1: DSA
(16, 10, 6, 0.5000, NULL,TRUE), -- JD4 Round2: Communication
(17, 10, 7, 0.5000, NULL,TRUE), -- JD4 Round2: Stability
(18, 11, 1, 0.5000, 1, TRUE),   -- JD5 Round1: Aptitude
(19, 11, 2, 0.5000, 3, TRUE),   -- JD5 Round1: Python (hard)
(20, 12, 5, 0.6000, 3, TRUE),   -- JD5 Round2: DSA (hard)
(21, 12, 6, 0.4000, NULL,TRUE); -- JD5 Round2: Communication

-- =====================================================
-- RECRUITMENT DRIVES
-- =====================================================
INSERT INTO tbl_cp_recruitment_drive (drive_id, drive_name, jd_id, start_date, end_date, description, status) VALUES
(1, 'Infosys Python Drive - Jan 2024',     1, '2024-01-10', '2024-01-20', 'Campus drive for Python associates',          'Completed'),
(2, 'TCS Data Analyst Drive - Feb 2024',   2, '2024-02-05', '2024-02-15', 'Data analyst hiring from Hyderabad colleges', 'Completed'),
(3, 'Wipro Java Drive - Mar 2024',         3, '2024-03-01', '2024-03-10', 'Java backend developer recruitment',           'Completed'),
(4, 'HCL Full Stack Drive - Apr 2024',     4, '2024-04-05', '2024-04-15', 'Full stack developer drive',                  'Active'),
(5, 'Mphasis ML Drive - May 2024',         5, '2024-05-10', '2024-05-20', 'ML engineer hiring drive',                    'Active');

-- =====================================================
-- APPLICATIONS
-- =====================================================
INSERT INTO tbl_cp_application (application_id, student_id, drive_id, serial_no, application_date, status) VALUES
(1,  1,  1, 1,  '2024-01-10', 'Selected'),
(2,  2,  1, 2,  '2024-01-10', 'Not Selected'),
(3,  3,  2, 1,  '2024-02-05', 'Selected'),
(4,  4,  2, 2,  '2024-02-05', 'Not Selected'),
(5,  5,  1, 3,  '2024-01-10', 'Selected'),
(6,  6,  3, 1,  '2024-03-01', 'Not Selected'),
(7,  7,  3, 2,  '2024-03-01', 'Selected'),
(8,  8,  4, 1,  '2024-04-05', 'Applied'),
(9,  9,  5, 1,  '2024-05-10', 'Applied'),
(10, 10, 4, 2,  '2024-04-05', 'Applied'),
(11, 1,  4, 3,  '2024-04-06', 'Applied'),
(12, 2,  3, 3,  '2024-03-02', 'Selected');

-- =====================================================
-- APPLICATION STATUS HISTORY
-- =====================================================
INSERT INTO tbl_cp_application_status_history (history_id, application_id, status, changed_date) VALUES
(1,  1,  'Applied',      '2024-01-10 09:00:00'),
(2,  1,  'In Progress',  '2024-01-12 10:30:00'),
(3,  1,  'Selected',     '2024-01-18 15:00:00'),
(4,  2,  'Applied',      '2024-01-10 09:10:00'),
(5,  2,  'In Progress',  '2024-01-12 10:30:00'),
(6,  2,  'Not Selected', '2024-01-18 15:00:00'),
(7,  3,  'Applied',      '2024-02-05 09:00:00'),
(8,  3,  'In Progress',  '2024-02-08 10:00:00'),
(9,  3,  'Selected',     '2024-02-13 14:00:00'),
(10, 4,  'Applied',      '2024-02-05 09:15:00'),
(11, 4,  'In Progress',  '2024-02-08 10:00:00'),
(12, 4,  'Not Selected', '2024-02-13 14:00:00'),
(13, 8,  'Applied',      '2024-04-05 09:00:00'),
(14, 9,  'Applied',      '2024-05-10 09:00:00'),
(15, 10, 'Applied',      '2024-04-05 09:30:00');

-- =====================================================
-- EXAM SESSIONS
-- =====================================================
INSERT INTO tbl_cp_exam_session (exam_session_id, application_id, round_config_id, attendance_id, exam_date, exam_time, cutoff_pct, correct_count, incorrect_count, total_questions, score_pct, result_id, feedback) VALUES
(1, 1,  1, 1, '2024-01-12', '10:00:00', 0.4000, 16, 4, 20, 0.8000, 1, 'Good performance in aptitude'),
(2, 2,  1, 1, '2024-01-12', '10:00:00', 0.4000, 10, 10,20, 0.5000, 1, 'Average performance'),
(3, 3,  4, 1, '2024-02-08', '10:00:00', 0.4000, 14, 6, 20, 0.7000, 1, 'Good in SQL section'),
(4, 4,  4, 1, '2024-02-08', '10:00:00', 0.4000, 7,  13,20, 0.3500, 2, 'Needs improvement in aptitude'),
(5, 5,  1, 1, '2024-01-12', '10:00:00', 0.4000, 18, 2, 20, 0.9000, 1, 'Excellent performance'),
(6, 6,  6, 1, '2024-03-03', '10:00:00', 0.4000, 9,  11,20, 0.4500, 1, 'Borderline pass'),
(7, 7,  6, 1, '2024-03-03', '10:00:00', 0.4000, 15, 5, 20, 0.7500, 1, 'Good aptitude score'),
(8, 12, 6, 1, '2024-03-02', '10:00:00', 0.4000, 17, 3, 20, 0.8500, 1, 'Strong performance');

-- =====================================================
-- EXAM QUESTION RESPONSES
-- =====================================================
INSERT INTO tbl_cp_m2m_exam_question_response (response_id, exam_session_id, question_id, option_id, is_correct, marks_awarded) VALUES
(1,  1, 1,  2,  TRUE,  1.00),
(2,  1, 2,  6,  TRUE,  1.00),
(3,  1, 3,  10, TRUE,  2.00),
(4,  1, 9,  29, TRUE,  1.00),
(5,  1, 10, 34, TRUE,  1.00),
(6,  2, 1,  1,  FALSE, 0.00),
(7,  2, 2,  5,  FALSE, 0.00),
(8,  2, 9,  29, TRUE,  1.00),
(9,  2, 10, 34, TRUE,  1.00),
(10, 5, 1,  2,  TRUE,  1.00),
(11, 5, 2,  6,  TRUE,  1.00),
(12, 5, 3,  10, TRUE,  2.00),
(13, 5, 9,  29, TRUE,  1.00),
(14, 5, 10, 34, TRUE,  1.00);

-- =====================================================
-- INTERVIEW SESSIONS
-- =====================================================
INSERT INTO tbl_cp_interview_session (session_id, application_id, round_config_id, interviewer_id, attendance_id, session_date, session_time, bonus_marks, total_score, result_id, comments, internal_feedback, external_feedback) VALUES
(1, 1,  2,  1, 1, '2024-01-15', '11:00:00', 2.00, 78.00, 3, 'Good Python knowledge, confident',         'Uma showed strong Django skills. Recommend for offer.',          'Candidate demonstrated good technical ability.'),
(2, 2,  2,  1, 1, '2024-01-15', '12:00:00', 0.00, 52.00, 4, 'Weak in OOP concepts',                     'Mahesh needs to improve on OOPS and design patterns.',           'Technical skills need further development.'),
(3, 3,  5,  2, 1, '2024-02-10', '11:00:00', 1.00, 71.00, 3, 'Good SQL knowledge',                       'Vijay performed well in SQL and data analysis questions.',       'Candidate is suitable for data analyst role.'),
(4, 5,  2,  1, 1, '2024-01-16', '10:00:00', 3.00, 91.00, 3, 'Exceptional candidate',                    'Priya is the strongest candidate this drive. Highly recommend.', 'Outstanding technical and communication skills.'),
(5, 7,  7,  3, 1, '2024-03-07', '11:00:00', 1.00, 74.00, 3, 'Good Java and Spring Boot knowledge',      'Kavitha demonstrated good microservices understanding.',          'Strong candidate for Java backend role.'),
(6, 6,  7,  3, 2, '2024-03-07', '11:30:00', 0.00, 0.00,  5, 'Student was absent',                       'Ravi did not appear for the interview.',                         ''),
(7, 12, 7,  3, 1, '2024-03-06', '10:00:00', 2.00, 85.00, 3, 'Very strong in Java and DSA',              'Mahesh (drive 3) showed excellent Java skills.',                 'Highly recommended for the Java backend role.');

-- =====================================================
-- SESSION MODULE SCORES
-- =====================================================
INSERT INTO tbl_cp_m2m_session_module_score (score_id, session_id, module_id, correct_count, incorrect_count, total_questions, score_sum) VALUES
(1,  1, 2, 8,  2,  10, 38.00),  -- Uma - Python module
(2,  1, 6, NULL, NULL, NULL, 40.00),  -- Uma - Communication (manual)
(3,  2, 2, 5,  5,  10, 25.00),  -- Mahesh - Python module
(4,  2, 6, NULL, NULL, NULL, 27.00),  -- Mahesh - Communication (manual)
(5,  3, 4, 7,  3,  10, 35.00),  -- Vijay - SQL module
(6,  3, 6, NULL, NULL, NULL, 36.00),  -- Vijay - Communication (manual)
(7,  4, 2, 9,  1,  10, 45.00),  -- Priya - Python module
(8,  4, 6, NULL, NULL, NULL, 46.00),  -- Priya - Communication (manual)
(9,  5, 3, 8,  2,  10, 40.00),  -- Kavitha - Java module
(10, 5, 6, NULL, NULL, NULL, 34.00),  -- Kavitha - Communication (manual)
(11, 7, 3, 9,  1,  10, 45.00),  -- Mahesh (session 7) - Java module
(12, 7, 6, NULL, NULL, NULL, 40.00); -- Mahesh (session 7) - Communication (manual)

-- =====================================================
-- SESSION QUESTION RESPONSES
-- =====================================================
INSERT INTO tbl_cp_m2m_session_question_response (response_id, session_id, question_id, is_correct, marks_awarded) VALUES
(1,  1, 4,  TRUE,  1.00),
(2,  1, 5,  TRUE,  1.00),
(3,  1, 9,  TRUE,  1.00),
(4,  1, 10, TRUE,  1.00),
(5,  2, 4,  FALSE, 0.00),
(6,  2, 5,  TRUE,  1.00),
(7,  2, 9,  FALSE, 0.00),
(8,  2, 10, TRUE,  1.00),
(9,  3, 9,  TRUE,  1.00),
(10, 3, 10, TRUE,  1.00),
(11, 4, 4,  TRUE,  1.00),
(12, 4, 5,  TRUE,  1.00),
(13, 5, 7,  TRUE,  1.00),
(14, 5, 8,  TRUE,  1.00),
(15, 7, 7,  TRUE,  1.00),
(16, 7, 8,  TRUE,  1.00);