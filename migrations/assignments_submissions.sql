CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  DAY INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);


-- nwget https://raw.githubusercontent.com/lighthouse-labs/w5-sql-seeds/master/bootcampx_seeds/assignment_submissions_seeds.sql -O seeds/assignment_submissions_seeds.sql

-- nwget https://raw.githubusercontent.com/lighthouse-labs/w5-sql-seeds/master/bootcampx_seeds/assignments_seeds.sql -O seeds/assignments_seeds.sql

