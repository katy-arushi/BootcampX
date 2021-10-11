-- Calculate the average total duration of assistance requests FOR each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration

SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT
  cohorts.name,
  SUM(completed_at - started_at) AS total_duration
FROM
  assistance_requests
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY
  cohorts.name
ORDER BY
  total_duration
) AS max_cohort_duration;