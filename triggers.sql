DROP TRIGGER IF EXISTS `covid-19`.`person_AFTER_DELETE`;
DELIMITER $$
USE `covid-19`$$
CREATE DEFINER = CURRENT_USER TRIGGER `covid-19`.`person_AFTER_DELETE` AFTER DELETE ON `person` FOR EACH ROW
BEGIN
delete from person_data where id_person = old.id_person;
END$$
DELIMITER ;

-- DROP TRIGGER person_AFTER_DELETE;


DROP TRIGGER IF EXISTS `covid-19`.`person_data_AFTER_DELETE`;
DELIMITER $$
USE `covid-19`$$
CREATE DEFINER = CURRENT_USER TRIGGER `covid-19`.`person_data_AFTER_DELETE` AFTER DELETE ON `person_data` FOR EACH ROW
BEGIN

delete from hospital_treatment where id_hospital = old.id_hospital;

END$$
DELIMITER ;
-- DROP TRIGGER person_data_AFTER_DELETE;

/* DROP TRIGGER IF EXISTS `covid-19`.`person_data_AFTER_DELETE1`;
DELIMITER $$
USE `covid-19`$$
CREATE DEFINER = CURRENT_USER TRIGGER `covid-19`.`person_data_AFTER_DELETE1` AFTER DELETE ON `person_data` FOR EACH ROW
BEGIN

delete from person where id_person = old.id_person;

END$$
DELIMITER ;

DROP TRIGGER person_data_AFTER_DELETE1;

*/