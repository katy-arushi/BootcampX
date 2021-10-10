-- GET all currently enrolled students which have less than 100 total assignment submissions

SELECT
  students.name AS student,
  count(assignment_submissions.*) AS total_submissions
FROM
  assignment_submissions
  JOIN students ON students.id = student_id
WHERE
  students.end_date IS NULL
GROUP BY
  students.name
HAVING
  count(assignment_submissions.*) < 100;


-- HAVING clause works like WHERE but on aggregated data

/*
GROUP BY
  allows us to combine the results based on a column so an AGGREGATE can be applied to each group.
HAVING
  allows us to filter our results based on the result of an AGGREGATE FUNCTION.
*/