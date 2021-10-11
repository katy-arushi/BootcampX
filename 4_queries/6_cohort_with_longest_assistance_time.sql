-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.

SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY duration DESC
LIMIT 1;