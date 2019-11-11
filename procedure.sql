DELIMITER $$

CREATE
    PROCEDURE `mikael_dev`.`create_email`()
 
	BEGIN
SELECT *, CONCAT(SUBSTRING(F_NAME,1,1), L_NAME, '@maseno.ac.ke') AS EMAIL FROM student_details;
	END$$

DELIMITER ;

