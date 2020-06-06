-- -----------------------------------------------------
-- 1. Table `EducationalResourceCenter`.`univesities`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`univesities` (`title`, `address`, `phone`, `description`) 
VALUES (
'Национальный технический университет Украины "Киевский политехнический институт имени Игоря Сикорского"',
'г. Киев, Соломенский район, пр-т Победы, 37 ',
'+380000000000',
'Тут буде опис Тут буде опис Тут буде опис Тут буде опис Тут буде опис');

INSERT INTO `EducationalResourceCenter`.`univesities` (`title`, `address`, `phone`, `description`) 
VALUES (
'Київський національний університет імені Тараса Шевченка',
'вул. Володимирська, 60, м. Київ, 01033',
'+381111111111',
'Тут буде опис Тут буде опис Тут буде опис Тут буде опис Тут буде опис');

INSERT INTO `EducationalResourceCenter`.`univesities` (`title`, `address`, `phone`, `description`) VALUES (
'Национальный аграрный университет НАУ',
'ул. Героев Обороны, 15, Киев, 03041',
'+382222222222',
'Тут буде опис Тут буде опис Тут буде опис Тут буде опис Тут буде опис');

INSERT INTO `EducationalResourceCenter`.`univesities` (`title`, `address`, `phone`, `description`) VALUES (
'Национальный университет «Киево-Могилянская академия»',
'ул. Г. Сковороды, 2, г. Киев, 04070',
'+383333333333',
'Тут буде опис Тут буде опис Тут буде опис Тут буде опис Тут буде опис');

-- -----------------------------------------------------
-- 2. Table `EducationalResourceCenter`.`authors`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`authors` (`first_name`, `second_name`, `photo_link`, `biography`) VALUES ('','','','');
INSERT INTO `EducationalResourceCenter`.`authors` (`first_name`, `second_name`, `photo_link`, `biography`) VALUES ('','','','');
INSERT INTO `EducationalResourceCenter`.`authors` (`first_name`, `second_name`, `photo_link`, `biography`) VALUES ('','','','');
INSERT INTO `EducationalResourceCenter`.`authors` (`first_name`, `second_name`, `photo_link`, `biography`) VALUES ('','','','');

-- -----------------------------------------------------
-- 3. Table `EducationalResourceCenter`.`resource_type`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`resource_type` (`type`) VALUES ('');
INSERT INTO `EducationalResourceCenter`.`resource_type` (`type`) VALUES ('');
INSERT INTO `EducationalResourceCenter`.`resource_type` (`type`) VALUES ('');
INSERT INTO `EducationalResourceCenter`.`resource_type` (`type`) VALUES ('');

INSERT INTO `EducationalResourceCenter`.`resources` (`title`, `resource_type_id`, `description`, `year`) VALUES ('','','','');
INSERT INTO `EducationalResourceCenter`.`resources` (`title`, `resource_type_id`, `description`, `year`) VALUES ('','','','');
INSERT INTO `EducationalResourceCenter`.`resources` (`title`, `resource_type_id`, `description`, `year`) VALUES ('','','','');
INSERT INTO `EducationalResourceCenter`.`resources` (`title`, `resource_type_id`, `description`, `year`) VALUES ('','','','');

-- -----------------------------------------------------
-- link_table
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`resources` (`resources_id`, `authors_id`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`resources` (`resources_id`, `authors_id`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`resources` (`resources_id`, `authors_id`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`resources` (`resources_id`, `authors_id`) VALUES ('','');

-- -----------------------------------------------------
-- 5. Table `EducationalResourceCenter`.`users`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`users` (`email`, `password`, `phone`, `first_name`, `last_name`) VALUES ('','','','','');
INSERT INTO `EducationalResourceCenter`.`users` (`email`, `password`, `phone`, `first_name`, `last_name`) VALUES ('','','','','');
INSERT INTO `EducationalResourceCenter`.`users` (`email`, `password`, `phone`, `first_name`, `last_name`) VALUES ('','','','','');
INSERT INTO `EducationalResourceCenter`.`users` (`email`, `password`, `phone`, `first_name`, `last_name`) VALUES ('','','','','');
INSERT INTO `EducationalResourceCenter`.`users` (`email`, `password`, `phone`, `first_name`, `last_name`) VALUES ('','','','','');
INSERT INTO `EducationalResourceCenter`.`users` (`email`, `password`, `phone`, `first_name`, `last_name`) VALUES ('','','','','');

-- -----------------------------------------------------
-- 6. Table `EducationalResourceCenter`.`students`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`students` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students` (`users_id`, `info`) VALUES ('','');

-- -----------------------------------------------------
-- 7. Table `EducationalResourceCenter`.`teachers`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`teachers` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`teachers` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`teachers` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`teachers` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`teachers` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`teachers` (`users_id`, `info`) VALUES ('','');

-- -----------------------------------------------------
-- 8. Table `EducationalResourceCenter`.`administrators`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`administrators` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`administrators` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`administrators` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`administrators` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`administrators` (`users_id`, `info`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`administrators` (`users_id`, `info`) VALUES ('','');

-- -----------------------------------------------------
-- 9. Table `EducationalResourceCenter`.`annotated_resources`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`annotated_resources` (`resources_id`, `teachers_id`, `annotation`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`annotated_resources` (`resources_id`, `teachers_id`, `annotation`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`annotated_resources` (`resources_id`, `teachers_id`, `annotation`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`annotated_resources` (`resources_id`, `teachers_id`, `annotation`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`annotated_resources` (`resources_id`, `teachers_id`, `annotation`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`annotated_resources` (`resources_id`, `teachers_id`, `annotation`) VALUES ('','','');

-- -----------------------------------------------------
-- 10. Table `EducationalResourceCenter`.`subjects`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`subjects` (`title`, `teachers_id`, `description`, `year`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`subjects` (`title`, `teachers_id`, `description`, `year`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`subjects` (`title`, `teachers_id`, `description`, `year`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`subjects` (`title`, `teachers_id`, `description`, `year`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`subjects` (`title`, `teachers_id`, `description`, `year`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`subjects` (`title`, `teachers_id`, `description`, `year`) VALUES ('','','');

-- -----------------------------------------------------
-- link_table
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`students_subjects` (`subjects_id`, `students_id`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students_subjects` (`subjects_id`, `students_id`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students_subjects` (`subjects_id`, `students_id`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students_subjects` (`subjects_id`, `students_id`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students_subjects` (`subjects_id`, `students_id`) VALUES ('','');
INSERT INTO `EducationalResourceCenter`.`students_subjects` (`subjects_id`, `students_id`) VALUES ('','');

-- -----------------------------------------------------
-- 11. Table `EducationalResourceCenter`.`comments`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`comments` (`students_id`, `annotated_resources_id`, `body`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`comments` (`students_id`, `annotated_resources_id`, `body`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`comments` (`students_id`, `annotated_resources_id`, `body`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`comments` (`students_id`, `annotated_resources_id`, `body`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`comments` (`students_id`, `annotated_resources_id`, `body`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`comments` (`students_id`, `annotated_resources_id`, `body`) VALUES ('','','');

-- -----------------------------------------------------
-- 12. Table `EducationalResourceCenter`.`rating_votes`
-- -----------------------------------------------------

INSERT INTO `EducationalResourceCenter`.`rating_votes` (`students_id`, `annotated_resources_id`, `point`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`rating_votes` (`students_id`, `annotated_resources_id`, `point`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`rating_votes` (`students_id`, `annotated_resources_id`, `point`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`rating_votes` (`students_id`, `annotated_resources_id`, `point`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`rating_votes` (`students_id`, `annotated_resources_id`, `point`) VALUES ('','','');
INSERT INTO `EducationalResourceCenter`.`rating_votes` (`students_id`, `annotated_resources_id`, `point`) VALUES ('','','');