# campus5 — Database Schema

A MySQL relational database powering a **campus recruitment platform**. It handles the complete lifecycle from student profiling and academic records to company job postings, multi-round recruitment drives, and detailed exam/interview session tracking.

---

## Database

```sql
CREATE DATABASE campus;
USE campus;
```

---

## Table Groups

| Group | Tables | Description |
|-------|--------|-------------|
| Master / Lookup | 7 | Salutations, languages, interests, courses, colleges, certifications, skills |
| Recruitment Lookup | 5 | Modules, difficulty levels, round results, attendance codes, interviewers |
| Geography | 4 | Countries, states, cities, pincodes |
| Student Core | 1 | Central student profile |
| Education | 2 | School records, college/course education |
| Semesters / Subjects / Marks | 4 | Semester master, subjects, college-subject mapping, student marks |
| Work Experience & Projects | 2 | Work history, projects |
| Student Many-to-Many | 5 | Student ↔ skills, languages, interests, certifications, project skills |
| Question Bank | 2 | Questions, MCQ options |
| Company & Job Description | 2 | Companies, job descriptions |
| Address | 3 | Student, college, and company addresses |
| Round Configuration | 2 | JD round setup, module-round mapping |
| Recruitment Drive | 1 | Drive linked to a JD |
| Application | 2 | Applications, status history |
| Exam Session | 2 | Exam sittings, question responses |
| Interview Session | 3 | Interview sittings, module scores, question responses |

**Total: 47 tables**

---

## Schema Conventions

**Naming**
- All tables are prefixed `tbl_cp_`
- Master/lookup tables: `tbl_cp_m<entity>` (e.g., `tbl_cp_mskills`)
- Junction/many-to-many tables: `tbl_cp_m2m_<entities>` (e.g., `tbl_cp_m2m_std_skill`)

**Keys**
- Every table has a `row_id INT AUTO_INCREMENT PRIMARY KEY` (surrogate key)
- A separate business key column (e.g., `student_id`, `college_id`) is always present and marked `UNIQUE`

**Timestamps**
- All tables include `created_at DATETIME DEFAULT CURRENT_TIMESTAMP`
- All tables include `updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP`

**Sentinel Date Values**

| Value | Meaning |
|-------|---------|
| `1900-01-01` | Not provided / not yet set |
| `9999-12-31` | No expiry / open-ended |

**BOOLEAN Columns**
- Declared as `BOOLEAN NULL` (tri-state) to distinguish between *explicitly false* and *not yet set*

**Foreign Keys**
- All FK constraints use `ON DELETE RESTRICT` to prevent accidental cascade deletes

---

## Key Relationships

```
tbl_cp_mcolleges
    └── tbl_cp_student_education  (college_id)
    └── tbl_cp_college_sem_subject (college_id)
    └── tbl_cp_college_address     (college_id)

tbl_cp_student
    ├── tbl_cp_student_school
    ├── tbl_cp_student_education
    ├── tbl_cp_student_address
    ├── tbl_cp_student_workexp
    │       └── tbl_cp_studentprojects
    ├── tbl_cp_m2m_std_skill
    ├── tbl_cp_m2m_std_lng
    ├── tbl_cp_m2m_std_interest
    ├── tbl_cp_m2m_student_certification
    └── tbl_cp_application
            ├── tbl_cp_application_status_history
            ├── tbl_cp_exam_session
            │       └── tbl_cp_m2m_exam_question_response
            └── tbl_cp_interview_session
                    ├── tbl_cp_m2m_session_module_score
                    └── tbl_cp_m2m_session_question_response

tbl_cp_mcompany
    └── tbl_cp_job_description
            └── tbl_cp_jd_round_config
                    └── tbl_cp_m2m_jd_round_module
            └── tbl_cp_recruitment_drive
                    └── tbl_cp_application
```

---

## Recruitment Flow

```
Company → Job Description → Round Config → Recruitment Drive
                                                    ↓
                                             Application (Student)
                                                    ↓
                                    ┌───────────────┴───────────────┐
                                Exam Session               Interview Session
                                    ↓                               ↓
                          Question Responses          Module Scores + Question Responses
```

---

## Notable Design Decisions

**Dual scoring model**
Modules with `has_questions = TRUE` are auto-scored via question responses. Modules with `has_questions = FALSE` (e.g., Communication, Stability) are scored manually by the interviewer directly in `tbl_cp_m2m_session_module_score.score_sum`.

**Separate exam vs. interview sessions**
`tbl_cp_exam_session` handles online/written tests (tracks `score_pct`, `cutoff_pct`, correct/incorrect counts). `tbl_cp_interview_session` handles face-to-face rounds (tracks `total_score`, `bonus_marks`, `internal_feedback`, `external_feedback`).

**Internal vs. external feedback**
`internal_feedback` is written by internal mentors and not shared with the client. `external_feedback` is the formal document shared after final rounds.

**Geography hierarchy**
Country → State → City → Pincode. All address tables (student, college, company) reference `pincode_id`, which chains up to the full geography.

**Application serial number**
`tbl_cp_application.serial_no` is unique per drive (`UNIQUE (drive_id, serial_no)`), allowing ordered candidate listing within each drive.

---

## Schema Alterations

Two `ALTER TABLE` statements were applied after initial creation:

```sql
-- Step 1: Add column
ALTER TABLE tbl_cp_student
ADD COLUMN profile_photo_url VARCHAR(500) NOT NULL DEFAULT 'not_uploaded'
AFTER resume_url;

-- Step 2: Update default value
ALTER TABLE tbl_cp_student
MODIFY COLUMN profile_photo_url VARCHAR(500) NOT NULL DEFAULT 'default_profile.png';
```

Final effective definition: `profile_photo_url VARCHAR(500) NOT NULL DEFAULT 'default_profile.png'`

---

## Quick Reference — All SELECT Statements

```sql
-- Master / Lookup
SELECT * FROM tbl_cp_msalutation;
SELECT * FROM tbl_cp_mlanguages;
SELECT * FROM tbl_cp_minterests;
SELECT * FROM tbl_cp_mcourses;
SELECT * FROM tbl_cp_mcolleges;
SELECT * FROM tbl_cp_mcertifications;
SELECT * FROM tbl_cp_mskills;

-- Recruitment Lookup
SELECT * FROM tbl_cp_mmodule;
SELECT * FROM tbl_cp_mdifficulty;
SELECT * FROM tbl_cp_mround_result;
SELECT * FROM tbl_cp_mattendance;
SELECT * FROM tbl_cp_minterviewer;

-- Geography
SELECT * FROM tbl_cp_mcountries;
SELECT * FROM tbl_cp_mstates;
SELECT * FROM tbl_cp_mcities;
SELECT * FROM tbl_cp_mpincodes;

-- Student Core
SELECT * FROM tbl_cp_student;

-- Education
SELECT * FROM tbl_cp_student_school;
SELECT * FROM tbl_cp_student_education;

-- Semesters / Subjects / Marks
SELECT * FROM tbl_cp_msemester;
SELECT * FROM tbl_cp_msubjects;
SELECT * FROM tbl_cp_college_sem_subject;
SELECT * FROM tbl_cp_student_subject_marks;

-- Work Experience & Projects
SELECT * FROM tbl_cp_student_workexp;
SELECT * FROM tbl_cp_studentprojects;

-- Student Many-to-Many
SELECT * FROM tbl_cp_m2m_std_skill;
SELECT * FROM tbl_cp_m2m_std_lng;
SELECT * FROM tbl_cp_m2m_std_interest;
SELECT * FROM tbl_cp_m2m_student_certification;
SELECT * FROM tbl_cp_m2m_studentproject_skill;

-- Question Bank
SELECT * FROM tbl_cp_mquestions;
SELECT * FROM tbl_cp_m2m_question_options;

-- Company & Job Description
SELECT * FROM tbl_cp_mcompany;
SELECT * FROM tbl_cp_job_description;

-- Address
SELECT * FROM tbl_cp_student_address;
SELECT * FROM tbl_cp_college_address;
SELECT * FROM tbl_cp_company_address;

-- Round Configuration
SELECT * FROM tbl_cp_jd_round_config;
SELECT * FROM tbl_cp_m2m_jd_round_module;

-- Recruitment Drive
SELECT * FROM tbl_cp_recruitment_drive;

-- Application
SELECT * FROM tbl_cp_application;
SELECT * FROM tbl_cp_application_status_history;

-- Exam Session
SELECT * FROM tbl_cp_exam_session;
SELECT * FROM tbl_cp_m2m_exam_question_response;

-- Interview Session
SELECT * FROM tbl_cp_interview_session;
SELECT * FROM tbl_cp_m2m_session_module_score;
SELECT * FROM tbl_cp_m2m_session_question_response;
```

---

## Tech Stack

| Component | Detail |
|-----------|--------|
| Database | MySQL 8.0+ |
| Engine | InnoDB (default) |
| Charset | Recommended: `utf8mb4` |
| Collation | Recommended: `utf8mb4_unicode_ci` |