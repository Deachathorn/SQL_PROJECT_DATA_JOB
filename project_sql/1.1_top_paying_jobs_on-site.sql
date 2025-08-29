SELECT
    job_id,
    name AS company_name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact jpf
LEFT JOIN
    company_dim cd ON cd.company_id = jpf.company_id
WHERE
    job_title_short = 'Data Analyst' AND job_work_from_home = FALSE AND salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT
    10;

/*
Result
======
[
  {
    "job_id": 209315,
    "company_name": "ЛАНИТ",
    "job_title": "Data base administrator",
    "job_location": "Belarus",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-10-03 11:22:20"
  },
  {
    "job_id": 1110602,
    "company_name": "Illuminate Mission Solutions",
    "job_title": "HC Data Analyst , Senior",
    "job_location": "Bethesda, MD",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-08-18 07:00:22"
  },
  {
    "job_id": 641501,
    "company_name": "Citigroup, Inc",
    "job_title": "Head of Infrastructure Management & Data Analytics - Financial...",
    "job_location": "Jacksonville, FL",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-07-03 11:30:01"
  },
  {
    "job_id": 1147675,
    "company_name": "Illuminate Mission Solutions",
    "job_title": "Sr Data Analyst",
    "job_location": "Bethesda, MD",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-04-05 12:00:12"
  },
  {
    "job_id": 229253,
    "company_name": "Torc Robotics",
    "job_title": "Director of Safety Data Analysis",
    "job_location": "Austin, TX",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "375000.0",
    "job_posted_date": "2023-04-21 08:01:55"
  },
  {
    "job_id": 101757,
    "company_name": "Care.com",
    "job_title": "Head of Data Analytics",
    "job_location": "Austin, TX",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "350000.0",
    "job_posted_date": "2023-10-23 05:01:05"
  },
  {
    "job_id": 1059665,
    "company_name": "Anthropic",
    "job_title": "Data Analyst",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "350000.0",
    "job_posted_date": "2023-06-22 07:00:59"
  },
  {
    "job_id": 894135,
    "company_name": "OpenAI",
    "job_title": "Research Scientist",
    "job_location": "San Francisco, CA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "285000.0",
    "job_posted_date": "2023-04-19 18:04:21"
  },
  {
    "job_id": 285766,
    "company_name": "Google",
    "job_title": "Partner Technology Manager, Data Analytics and AI",
    "job_location": "Austin, TX",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "254000.0",
    "job_posted_date": "2023-07-28 13:01:20"
  },
  {
    "job_id": 1147498,
    "company_name": "Channel Personnel Services",
    "job_title": "Director Analytics",
    "job_location": "Atlanta, GA",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "245000.0",
    "job_posted_date": "2023-06-30 19:56:28"
  }
]
*/