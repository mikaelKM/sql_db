CREATE TABLE s_details (
ID INT AUTO_INCREMENT PRIMARY KEY,
F_NAME VARCHAR (20) NOT NULL, 
L_NAME VARCHAR (20) NOT NULL,
GENDER VARCHAR (6) NOT NULL, 
STAGE VARCHAR (7) NOT NULL
);

ALTER TABLE s_details
 ADD ADM_NO VARCHAR(15) NOT NULL UNIQUE AFTER ID;

LOAD DATA LOCAL INFILE "C:\\Users\\Dell\\desktop\\students.csv" 
FIELDS SEPERATED BY ','
FIELDS ENCLOSED BY ','
LINES TERMINATED BY "\n" (ADM_NO, F_NAME, L_NAME, GENDER, STAGE)
 INTO s_details;


LOAD DATA INFILE "C:/Users/Dell/desktop/students.csv"
INTO TABLE s_details
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE "C:/Users/Dell/desktop/students.csv"
INTO TABLE s_details
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT *  FROM student_details;

SELECT *, CONCAT(SUBSTRING(F_NAME,1,1), L_NAME, '@maseno.ac.ke') AS EMAIL FROM s_details;

ALTER TABLE s_details ADD COLUMN EMAIL VARCHAR(100) AFTER STAGE;
SELECT * FROM s_details WHERE STAGE='Third' AND (CHAR_LENGTH(F_NAME)>7);

UPDATE s_details SET EMAIL = CONCAT(SUBSTRING(F_NAME,1,1), L_NAME, '@maseno.ac.ke');

SELECT * FROM s_details WHERE SUBSTRING(ADM_NO,10,12)='017' AND (CHAR_LENGTH(F_NAME)>7);

SHOW INDEX FROM s_details;

ALTER TABLE s_details CHANGE email email VARCHAR(100) AFTER gender; /*changing column position*/

ALTER TABLE s_details RENAME STUDENT_DETAILS; /*renaming table*/

CREATE TABLE tudent_details_Backup SELECT * FROM student_details; /*creating a backup tabale*/

CREATE TABLE new_backup LIKE STUDENT_DETAILS; /*creating a new table with the old table structure*/
SELECT * FROM new_backup;
DROP TABLE new_backup;


SELECT * FROM tudent_details_Backup;

SELECT * INTO new_backup FROM student_details; /*not working */

SELECT COUNT(*) AS student_no FROM student_details WHERE SUBSTRING(ADM_NO,10,12)='017' AND (CHAR_LENGTH(F_NAME)>7);
SELECT * FROM student_details LIMIT 3; /*selecting limited records*/ 
SELECT * FROM student_details WHERE RIGHT(adm_no, 3)='017'OR RIGHT(adm_no, 3)='019' LIMIT 3; /*right function takes the characters in the right side, while left vice versa */