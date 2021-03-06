-- Get ALL of the students without a gmail.com or phone number.

SELECT
  name,
  email,
  id,
  cohort_id
FROM
  students
WHERE
  (email NOT LIKE '%gmail%');

AND email IS NULL;