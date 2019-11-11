CREATE TABLE TABLE_1(
	TBL_ID INT AUTO_INCREMENT PRIMARY KEY, 
	ATTRIB2 VARCHAR(13), 
	ATTRIB3 TIMESTAMP
	);

SELECT USER FROM mysql.user;

CREATE`students` DATABASE STUDENTS;

CREATE TABLE STUDENTS_BIO(
	TBL_ID INT AUTO_INCREMENT PRIMARY KEY, 
	ADM_NO VARCHAR(15) UNIQUE, 
	S_NAME VARCHAR(100), 
	R_TIME TIMESTAMP
	);

CREATE TABLE S_ACADEMIC(
	TBL_ID INT AUTO_INCREMENT PRIMARY KEY, 
	SCHOOL VARCHAR(100) NOT NULL, 
	DEPARTMENT VARCHAR(60) NOT NULL,
	PROGRAM VARCHAR(70) NOT NULL, 
	UNITS INTEGER NOT NULL
	);

CREATE TABLE EXAMINATION(
	TBL_ID INT AUTO_INCREMENT PRIMARY KEY, 
	ADM_NO VARCHAR(15) UNIQUE, 
	UNIT1 DECIMAL, 
	UNIT2 DECIMAL, 
	UNIT3 DECIMAL, 
	UNIT4 DECIMAL, 
	UNIT5 DECIMAL, 
	UNIT6 DECIMAL, 
	UNIT7 DECIMAL, 
	UNIT8 DECIMAL, 
	AVERAGE DECIMAL
	);

ALTER TABLE S_ACADEMIC ADD ADM_NO VARCHAR(15) UNIQUE AFTER TBL_ID;

INSERT INTO STUDENTS_BIO(
	ADM_NO, 
	S_NAME
	) 
VALUES (
	'MT/00049/017', 
	'MIKAEL KASIKE'
	);


SELECT * FROM students_bio;
INSERT INTO s_academic(
	ADM_NO, 
	SCHOOL, 
	DEPARTMENT, 
	PROGRAM, 
	UNITS
	) 
VALUES (
	'MT/00049/017', 
	'MATHEMATICS', 
	'PURE MATHEMATICS', 
	'MATHCOMP', 
	8
	);
SELECT * FROM S_ACADEMIC;
SELECT s.s_name, a.school FROM students_bio s INNER JOIN s_academic a USING(adm_no);
INSERT INTO examination (
	adm_no, 
	unit1, 
	unit3, 
	unit4, 
	unit6, 
	unit7, 
	unit8
	) 
VALUES (
	'MT/00049/017', 
	77.4, 
	50.4, 
	89, 
	54,
	77, 
	68
	);

SELECT AVG(unit1+unit3+unit4) AS average FROM examination WHERE tbl_id = 1;

INSERT INTO examination (
	adm_no, 
	unit1, u
	nit3, 
	unit4, 
	unit6, 
	unit7, 
	unit8
	) 
VALUES (
	'MT/00048/017', 
	77.4, 
	50.4, 
	89, 
	59,
	77, 
	68
	);

INSERT INTO STUDENTS_BIO(ADM_NO, S_NAME) VALUES ('MT/00048/017', 'MIKAEL KASIKE');
SELECT adm_no, SUM(unit1+unit3+unit4+unit6+unit8) AS total FROM examination GROUP BY tbl_id;
SELECT adm_no, SUM(unit1+unit3+unit4+unit6+unit8) AS total, SUM(unit1+unit3+unit4+unit6+unit8)/5 AS average FROM examination GROUP BY tbl_id;
SELECT adm_no, SUM(unit1+unit3+unit4+unit6+unit8) AS total, SUM(unit1+unit3+unit4+unit6+unit8)/5 AS average, CASE WHEN SUM(unit1+unit3+unit4+unit6+unit8)/5 > 67.7 THEN "B" WHEN SUM(unit1+unit3+unit4+unit6+unit8)/5 < 68 THEN "C" END AS grade FROM examination GROUP BY tbl_id;


SELECT s.s_name, a.school, 
SUM(
	e.unit1+e.unit3+e.unit4+e.unit6+e.unit6
	) AS total, 
SUM(
	e.unit1+e.unit3+e.unit6+e.unit8
	)/5 AS average, 
CASE WHEN SUM(
	e.unit1+e.unit3+e.unit4+e.unit6+e.unit8
	)/5 > 67.7 THEN "B" 
WHEN SUM(
	e.unit1+e.unit3+e.unit4+e.unit6+e.unit8
	)/5 < 68 THEN "C" 
END AS grade 
FROM students_bio s 
INNER JOIN s_academic a 
USING(adm_no) 
INNER JOIN examination e 
USING(adm_no) 
GROUP BY s.adm_no;