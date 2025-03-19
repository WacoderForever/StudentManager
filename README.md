## Project View
```
StudentManager/
├── pom.xml
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── studentmanager
│   │   │           ├── dao
│   │   │           ├── database
│   │   │           │   └── DBConnection.java
│   │   │           ├── features
│   │   │           ├── filters
│   │   │           ├── models
│   │   │           ├── services
│   │   │           └── servlets
│   │   │               └── DBTestServlet.java
│   │   ├── resources
│   │   └── webapp
│   │       ├── index.jsp
│   │       └── WEB-INF
│   │           ├── css
│   │           ├── js
│   │           ├── jsp
│   │           ├── lib
│   │           └── web.xml
│   └── test
│       └── java
└── target
    ├── classes
    │   └── com
    │       └── studentmanager
    │           ├── database
    │           │   └── DBConnection.class
    │           └── servlets
    │               └── DBTestServlet.class
    ├── generated-sources
    │   └── annotations
    ├── generated-test-sources
    │   └── test-annotations
    ├── maven-archiver
    │   └── pom.properties
    ├── maven-status
    │   └── maven-compiler-plugin
    │       ├── compile
    │       │   └── default-compile
    │       │       ├── createdFiles.lst
    │       │       └── inputFiles.lst
    │       └── testCompile
    │           └── default-testCompile
    │               ├── createdFiles.lst
    │               └── inputFiles.lst
    ├── StudentManager
    │   ├── index.jsp
    │   ├── META-INF
    │   └── WEB-INF
    │       ├── classes
    │       │   └── com
    │       │       └── studentmanager
    │       │           ├── database
    │       │           │   └── DBConnection.class
    │       │           └── servlets
    │       │               └── DBTestServlet.class
    │       ├── lib
    │       │   └── mariadb-java-client-3.5.2.jar
    │       └── web.xml
    └── test-classes
```

## Database Setup
```
CREATE DATABASE StudentManager;
USE StudentManager;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100)  NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('Admin', 'Student', 'Instructor') NOT NULL
);

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_of_birth DATE
);

CREATE TABLE Instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    date DATE NOT NULL,
    status ENUM('Present', 'Absent') NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

```

## Triggers for the automatic addition of users
```
DELIMITER $$

CREATE TRIGGER after_student_insert
AFTER INSERT ON Students
FOR EACH ROW
BEGIN
    DECLARE username VARCHAR(100);
    SET username = CONCAT(NEW.first_name, NEW.last_name);

    INSERT INTO Users (user_id, username, password, role)
    VALUES (NEW.student_id, username, 'default_password', 'Student');
END$$

CREATE TRIGGER after_instructor_insert
AFTER INSERT ON Instructors
FOR EACH ROW
BEGIN
    DECLARE username VARCHAR(100);
    SET username = CONCAT(NEW.first_name, NEW.last_name);

    INSERT INTO Users (user_id, username, password, role)
    VALUES (NEW.instructor_id, username, 'default_password', 'Instructor');
END$$

DELIMITER ;
```
