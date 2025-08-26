WITH job_posting AS (
    SELECT
        SJD.skill_id,
        COUNT(*) AS skill_count
    FROM
        job_postings_fact JPF
    INNER JOIN
        skills_job_dim SJD ON SJD.job_id = JPF.job_id
    WHERE
        JPF.job_work_from_home = TRUE AND
        job_title_short = 'Data Analyst'
    GROUP BY
        SJD.skill_id
)
SELECT
    SD.skill_id,
    SD.skills,
    JP.skill_count
FROM
    skills_dim SD
INNER JOIN
    job_posting JP ON JP.skill_id = SD.skill_id
ORDER BY
    JP.skill_count DESC
LIMIT
    5;
