-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

SELECT students.name, cohorts.name FROM students JOIN cohorts ON students.cohort_id = cohorts.id;