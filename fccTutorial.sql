SELECT * FROM student;

CREATE TABLE student (
	student_id INT AUTO_INCREMENT,
    name VARCHAR(30),
    major VARCHAR(30),
    PRIMARY KEY(student_id)
);

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

SELECT *
FROM student
ORDER BY major, student_id;

SELECT * 
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');