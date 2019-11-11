
DELIMITER $$

CREATE
    FUNCTION `create_email`(f_char VARCHAR(4), f2_char VARCHAR(16)) RETURNS VARCHAR(70) DETERMINISTIC
    
 BEGIN
 DECLARE email VARCHAR(70);
SELECT CONCAT (f_char, f2_char, '@maseno.ac.ke') INTO email;

RETURN email;
    END$$

DELIMITER ;





