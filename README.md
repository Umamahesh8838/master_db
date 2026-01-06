# master_db
1. meta_data DATABASE

👉 Master / lookup / rarely changing data

meta_data
│
├── salutations
├── skills
├── languages
├── colleges
├── courses
├── areas_of_interest


Reason:

These are reference tables

Used by many modules

Change very rarely

🟩 2. user_data DATABASE

👉 User identity, profile, security

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


Reason:

Core user information

Authentication & security

Personal data

✅ All FKs here are VALID (same DB)

🟨 3. job_data DATABASE

👉 Career, education, preferences

job_data
│
├── education
├── work_experience
├── job_preferences
├── user_skills
├── user_languages
├── user_interests


Reason:

Job & career related

Frequently queried for analytics

Can scale independently

⚠️ These tables store IDs (user_id, skill_id, etc.)
