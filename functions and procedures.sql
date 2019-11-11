DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    TRIGGER `mikael_dev`.`update_trigger`
    
 BEFORE UPDATE 
ON `mikael_dev`.`student_details`
FOR EACH ROW BEGIN
INSERT INTO s_details_before_update

SET ACTION = "update",
adm_no = OLD.adm_no,
f_name = OLD.f_name,
l_name = OLD.l_name,
stage = OLD.stage,
Time_changed= NOW();
    END$$

DELIMITER ;

