-- get the total number of assignment_submissions for each student currently enrolled individually, and output the totals next TO the student's name

SELECT
  students.name AS student,
  count(assignment_submissions.*) AS total_submissions
FROM
  assignment_submissions
  JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY
  students.name;


/*
 GROUP BY
 allows us to combine the results based on a column so an AGGREGATE can be applied to each group.
 HAVING
 allows us to filter our results based on the result of an AGGREGATE FUNCTION.
 */