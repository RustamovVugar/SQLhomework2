CREATE DATABASE NEWTASKDb

CREATE TABLE Students(
Id int primary key identity,
Name nvarchar(30) NOT Null,
Surname nvarchar(50),
Phone int unique,
Score int default(50),
Comment nvarchar (1000),
IsGraduated bit default 'false'
)
 
 SELECT * FROM Students

INSERT INTO Students(Name,Surname,Phone,Score,Comment)
Values('Ramil','Ehmedov',1112, 100,'Ela'),
      ('Ceyhun','Nagiyev',1456,80,'Orta'),
	  ('Elman','Rehimov',1589,70,'Pis'),
      ('Asim','Agayev',1987,60,'Berbad')

SELECT*FROM Students

INSERT INTO Students(Name,Surname,Phone,Comment,IsGraduated)
Values('Elshad','Eliyev',5555,'Orta','True'),
       ('Ziya','Rustamov',9856,'Pis','True')

SELECT*FROM Students

UPDATE Students SET Comment='Congratulations'
WHERE Score>(SELECT AVG(Score)FROM Students)

SELECT*FROM Students

UPDATE Students SET Comment= 'So bad'
WHERE Score<(SELECT AVG(Score)FROM Students)

SELECT*FROM Students

CREATE TABLE GraduatedStudents(
Id int primary key identity,
Name nvarchar(30) NOT Null,
Surname nvarchar(50),
Phone int unique,
Score int default(50),
Comment nvarchar (1000),
IsGraduated bit default 'false'
)

SELECT*FROM GraduatedStudents


INSERT INTO GraduatedStudents(Name,Surname,Phone,Comment,IsGraduated)
SELECT Name,Surname,Phone,Comment,IsGraduated FROM Students
WHERE IsGraduated='True' 

SELECT*FROM GraduatedStudents

DELETE FROM Students
WHERE IsGraduated='True'

SELECT*FROM Students





