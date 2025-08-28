SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short,
    jpf.job_location,
    jpf.job_via,
    jpf.job_posted_date::DATE,
    ROUND(jpf.salary_year_avg, 0) AS salary_year_avg
FROM
    job_postings_fact jpf
LEFT JOIN
    company_dim cd ON cd.company_id = jpf.company_id
WHERE
    (
        (jpf.job_title_short = 'Data Analyst' AND jpf.salary_year_avg > 100000)
    OR
        (jpf.job_title_short = 'Business Analyst' AND jpf.salary_year_avg > 70000)
    )
    AND
    jpf.job_location IN ('Boston, MA', 'Anywhere')
ORDER BY
    salary_year_avg DESC
