WITH company_job_count AS (
    SELECT
        company_id,
        COUNT(*) AS job_opening
    FROM
        job_postings_fact
    GROUP BY
        company_id
)
SELECT
    CD.name,
    CJC.job_opening
FROM
    company_dim CD
LEFT JOIN
    company_job_count CJC ON CJC.company_id = CD.company_id
ORDER BY
    CJC.job_opening DESC