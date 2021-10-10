-- Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

SELECT
  cohorts.name AS cohort,
  count(assignment_submissions.*) AS total_submissions
FROM
  assignment_submissions
  JOIN students ON assignment_submissions.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY
  cohorts.name
ORDER BY
  count(assignment_submissions.*) DESC;