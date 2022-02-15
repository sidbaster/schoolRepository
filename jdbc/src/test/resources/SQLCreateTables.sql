DROP TABLE IF EXISTS student_courses CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS groups CASCADE;
DROP TABLE IF EXISTS students CASCADE;

CREATE TABLE groups(
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(128) NOT NULL
);

 CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    group_id INT REFERENCES groups(group_id),
    first_name VARCHAR(128) NOT NULL,
    last_name VARCHAR(128) NOT NULL
);

CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(128) NOT NULL,
    course_description VARCHAR(255) NOT NULL
);

CREATE TABLE student_courses(
    student_id INT REFERENCES students(student_id) ON UPDATE CASCADE ON DELETE CASCADE,
    course_id INT REFERENCES courses(course_id) ON UPDATE CASCADE ON DELETE CASCADE
)