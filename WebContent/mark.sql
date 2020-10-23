drop table sem1;
CREATE TABLE sem1 (
  rollno  int,
  subject1 DECIMAL(5,2) ,
  subject2 DECIMAL(5,2) ,
  subject3 DECIMAL(5,2) ,
  subject4 DECIMAL(5,2) ,
  subject5 DECIMAL(5,2) ,
  PRIMARY KEY (rollno));
  
  drop table sem1sub1;
  CREATE TABLE sem1sub1 (
  rollno INT NOT NULL,
  unit_1 DECIMAL(5,2) ,
  unit_2 DECIMAL(5,2)  ,
  unit_3 DECIMAL(5,2)  ,
  unit_4 DECIMAL(5,2)  ,
  unit_5 DECIMAL(5,2)  ,
  PRIMARY KEY (rollno));
  
  
  
CREATE TABLE sem2 (
  username VARCHAR(100) NOT NULL,
  subject1 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject2 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject3 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject4 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject5 DECIMAL(5,2) NOT NULL DEFAULT 0,
  PRIMARY KEY (username));
  
  CREATE TABLE sem3 (
  username VARCHAR(100) NOT NULL,
  subject1 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject2 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject3 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject4 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject5 DECIMAL(5,2) NOT NULL DEFAULT 0,
  PRIMARY KEY (username));
  
  CREATE TABLE sem4 (
  username VARCHAR(100) NOT NULL,
  subject1 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject2 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject3 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject4 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject5 DECIMAL(5,2) NOT NULL DEFAULT 0,
  PRIMARY KEY (username));
  
  CREATE TABLE sem5 (
  username VARCHAR(100) NOT NULL,
  subject1 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject2 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject3 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject4 DECIMAL(5,2) NOT NULL DEFAULT 0,
  subject5 DECIMAL(5,2) NOT NULL DEFAULT 0,
  PRIMARY KEY (username));