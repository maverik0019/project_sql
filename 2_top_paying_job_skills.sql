/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query ('Canada', 'Chile', 'Australia')
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/

WITH top_paying_jobs AS (
    SELECT	
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND 
        job_location IN ('Canada', 'Chile', 'Australia') AND 
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC;


/*

[
  {
    "job_id": 152069,
    "job_title": "Data Architect",
    "salary_year_avg": "154000.0",
    "company_name": "Nestlé",
    "skills": "python"
  },
  {
    "job_id": 152069,
    "job_title": "Data Architect",
    "salary_year_avg": "154000.0",
    "company_name": "Nestlé",
    "skills": "azure"
  },
  {
    "job_id": 152069,
    "job_title": "Data Architect",
    "salary_year_avg": "154000.0",
    "company_name": "Nestlé",
    "skills": "power bi"
  },
  {
    "job_id": 897521,
    "job_title": "Data Analyst - Insights",
    "salary_year_avg": "118500.0",
    "company_name": "DoorDash",
    "skills": "sql"
  },
  {
    "job_id": 897521,
    "job_title": "Data Analyst - Insights",
    "salary_year_avg": "118500.0",
    "company_name": "DoorDash",
    "skills": "python"
  },
  {
    "job_id": 897521,
    "job_title": "Data Analyst - Insights",
    "salary_year_avg": "118500.0",
    "company_name": "DoorDash",
    "skills": "r"
  },
  {
    "job_id": 897521,
    "job_title": "Data Analyst - Insights",
    "salary_year_avg": "118500.0",
    "company_name": "DoorDash",
    "skills": "go"
  },
  {
    "job_id": 897521,
    "job_title": "Data Analyst - Insights",
    "salary_year_avg": "118500.0",
    "company_name": "DoorDash",
    "skills": "excel"
  },
  {
    "job_id": 205303,
    "job_title": "Data Analyst, Risk User Experience",
    "salary_year_avg": "111175.0",
    "company_name": "Stripe",
    "skills": "sql"
  },
  {
    "job_id": 205303,
    "job_title": "Data Analyst, Risk User Experience",
    "salary_year_avg": "111175.0",
    "company_name": "Stripe",
    "skills": "python"
  },
  {
    "job_id": 205303,
    "job_title": "Data Analyst, Risk User Experience",
    "salary_year_avg": "111175.0",
    "company_name": "Stripe",
    "skills": "spark"
  },
  {
    "job_id": 205303,
    "job_title": "Data Analyst, Risk User Experience",
    "salary_year_avg": "111175.0",
    "company_name": "Stripe",
    "skills": "hadoop"
  },
  {
    "job_id": 1180796,
    "job_title": "Data Analyst, Growth",
    "salary_year_avg": "111175.0",
    "company_name": "Stripe",
    "skills": "sql"
  },
  {
    "job_id": 1180796,
    "job_title": "Data Analyst, Growth",
    "salary_year_avg": "111175.0",
    "company_name": "Stripe",
    "skills": "python"
  },
  {
    "job_id": 1180796,
    "job_title": "Data Analyst, Growth",
    "salary_year_avg": "111175.0",
    "company_name": "Stripe",
    "skills": "spark"
  },
  {
    "job_id": 1180796,
    "job_title": "Data Analyst, Growth",
    "salary_year_avg": "111175.0",
    "company_name": "Stripe",
    "skills": "hadoop"
  },
  {
    "job_id": 409209,
    "job_title": "Data Analyst (VBA, Tableau)",
    "salary_year_avg": "109000.0",
    "company_name": "Sun Life",
    "skills": "sql"
  },
  {
    "job_id": 409209,
    "job_title": "Data Analyst (VBA, Tableau)",
    "salary_year_avg": "109000.0",
    "company_name": "Sun Life",
    "skills": "python"
  },
  {
    "job_id": 409209,
    "job_title": "Data Analyst (VBA, Tableau)",
    "salary_year_avg": "109000.0",
    "company_name": "Sun Life",
    "skills": "vba"
  },
  {
    "job_id": 409209,
    "job_title": "Data Analyst (VBA, Tableau)",
    "salary_year_avg": "109000.0",
    "company_name": "Sun Life",
    "skills": "excel"
  },
  {
    "job_id": 409209,
    "job_title": "Data Analyst (VBA, Tableau)",
    "salary_year_avg": "109000.0",
    "company_name": "Sun Life",
    "skills": "tableau"
  },
  {
    "job_id": 629221,
    "job_title": "Analytics Engineering Lead",
    "salary_year_avg": "108415.5",
    "company_name": "Swiss Re",
    "skills": "python"
  },
  {
    "job_id": 629221,
    "job_title": "Analytics Engineering Lead",
    "salary_year_avg": "108415.5",
    "company_name": "Swiss Re",
    "skills": "typescript"
  },
  {
    "job_id": 629221,
    "job_title": "Analytics Engineering Lead",
    "salary_year_avg": "108415.5",
    "company_name": "Swiss Re",
    "skills": "spark"
  },
  {
    "job_id": 1232872,
    "job_title": "Analytics Lab Architect",
    "salary_year_avg": "101014.0",
    "company_name": "Swiss Re",
    "skills": "azure"
  },
  {
    "job_id": 1232872,
    "job_title": "Analytics Lab Architect",
    "salary_year_avg": "101014.0",
    "company_name": "Swiss Re",
    "skills": "databricks"
  },
  {
    "job_id": 973984,
    "job_title": "Data Analyst - HoYolab and Content Creator",
    "salary_year_avg": "100500.0",
    "company_name": "HoYoverse",
    "skills": "sql"
  },
  {
    "job_id": 973984,
    "job_title": "Data Analyst - HoYolab and Content Creator",
    "salary_year_avg": "100500.0",
    "company_name": "HoYoverse",
    "skills": "excel"
  },
  {
    "job_id": 1531638,
    "job_title": "Práctica Profesional Data Analyst & Documentation",
    "salary_year_avg": "100500.0",
    "company_name": "SimpliRoute",
    "skills": "sql"
  },
  {
    "job_id": 1531638,
    "job_title": "Práctica Profesional Data Analyst & Documentation",
    "salary_year_avg": "100500.0",
    "company_name": "SimpliRoute",
    "skills": "excel"
  },
  {
    "job_id": 1531638,
    "job_title": "Práctica Profesional Data Analyst & Documentation",
    "salary_year_avg": "100500.0",
    "company_name": "SimpliRoute",
    "skills": "notion"
  }
]
/*