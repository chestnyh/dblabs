-- MySQL Workbench Forward Engineering
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
-- -----------------------------------------------------
-- Schema EducationalResourceCenter
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `EducationalResourceCenter` ;
-- -----------------------------------------------------
-- Schema EducationalResourceCenter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EducationalResourceCenter` DEFAULT CHARACTER SET utf8 ;
USE `EducationalResourceCenter` ;

-- -----------------------------------------------------
-- 1. Table `EducationalResourceCenter`.`univesities`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `EducationalResourceCenter`.`univesities` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`univesities` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR (500) NOT NULL,
    `address` VARCHAR (500) NOT NULL,
    `phone` VARCHAR(15), 
    `description` TEXT, 
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `univesities_id_unique` (`id` ASC)
)ENGINE = InnoDB;


-- -----------------------------------------------------
-- 2. Table `EducationalResourceCenter`.`authors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EducationalResourceCenter`.`authors` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`authors` (

    `id` INT NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(100) NOT NULL,
    `second_name` VARCHAR(100),
    `photo_link` VARCHAR(2048),
    `biography` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `authors_id_unique` (`id` ASC)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 3. Table `EducationalResourceCenter`.`resource_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EducationalResourceCenter`.`resource_type` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`resource_type` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `resource_type_id_unique` (`id` ASC)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 4. Table `EducationalResourceCenter`.`resources`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EducationalResourceCenter`.`resources` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`resources` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(320) NOT NULL,
    `resource_type_id` INT NOT NULL,
    `description` TEXT,
    `year` INT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `resources_id_unique` (`id` ASC),
    CONSTRAINT `fk_resources_resource_type_id`
    FOREIGN KEY (`resource_type_id`)
    REFERENCES `EducationalResourceCenter`.`resource_type` (`id`)
    ON DELETE NO ACTION
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- link_table
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EducationalResourceCenter`.`resources_authors`;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`resources_authors` (
    `resources_id` INT NOT NULL,
    `authors_id` INT NOT NULL,
    UNIQUE INDEX `resources_authors_resources_id_authors_id_unique` (`resources_id`, `authors_id`),
    CONSTRAINT `fk_resources_authors_resources_id`
    FOREIGN KEY (`resources_id`)
    REFERENCES `EducationalResourceCenter`.`resources` (`id`)
    ON DELETE CASCADE,
    CONSTRAINT `fk_resources_authors_authors_id`
    FOREIGN KEY (`authors_id`)
    REFERENCES `EducationalResourceCenter`.`authors` (`id`)
    ON DELETE CASCADE
)

-- -----------------------------------------------------
-- 5. Table `EducationalResourceCenter`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EducationalResourceCenter`.`users` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(320)
    `password` VARCHAR(64),
    `phone` VARCHAR(15),
    `first_name` VARCHAR (50) NOT NULL,
    `last_name` VARCHAR (50),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (`id`),
    UNIQUE INDEX `users_id_unique` (`id` ASC),
    UNIQUE INDEX `email_id_unique` (`email` ASC)

)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 6. Table `EducationalResourceCenter`.`students`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `EducationalResourceCenter`.`students` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`students` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `users_id` INT NOT NULL,
    `info` JSON NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (`id`),
    UNIQUE INDEX `students_id_unique` (`id` ASC),
    CONSTRAINT `fk_students_users_id`
    FOREIGN KEY (`users_id`)
    REFERENCES `EducationalResourceCenter`.`users` (`id`)
    ON DELETE CASCADE
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 7. Table `EducationalResourceCenter`.`teachers`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `EducationalResourceCenter`.`teachers` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`teachers` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `users_id` INT NOT NULL,
    `info` JSON NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (`id`),
    UNIQUE INDEX `teachers_id_unique` (`id` ASC),
    CONSTRAINT `fk_teachers_users_id`
    FOREIGN KEY (`users_id`)
    REFERENCES `EducationalResourceCenter`.`users` (`id`)
    ON DELETE CASCADE
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 8. Table `EducationalResourceCenter`.`administrators`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `EducationalResourceCenter`.`administrators` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`administrators` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `users_id` INT NOT NULL,
    `info` JSON NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (`id`),
    UNIQUE INDEX `administrators_id_unique` (`id` ASC),
    CONSTRAINT `fk_administrators_users_id`
    FOREIGN KEY (`users_id`)
    REFERENCES `EducationalResourceCenter`.`users` (`id`)
    ON DELETE CASCADE

)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 9. Table `EducationalResourceCenter`.`annotated_resources`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EducationalResourceCenter`.`annotated_resources`;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`annotated_resources` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `resources_id` INT NOT NULL,
    `teachers_id` INT NOT NULL,
    `annotation` TEXT, 
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `annotated_resources_id_unique` (`id` ASC),
    CONSTRAINT `fk_annotated_resources_resources_id`
    FOREIGN KEY (`resources_id`)
    REFERENCES `EducationalResourceCenter`.`resources` (`id`)
    ON DELETE CASCADE,
    CONSTRAINT `fk_annotated_resources_teachers_id`
    FOREIGN KEY (`teachers_id`)
    REFERENCES `EducationalResourceCenter`.`teachers` (`id`)
    ON DELETE CASCADE
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 10. Table `EducationalResourceCenter`.`subjects`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `EducationalResourceCenter`.`subjects` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`subjects` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) NOT NULL,
    `teachers_id` INT NOT NULL,
    `description` TEXT,
    `year` INT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (`id`),
    UNIQUE INDEX `subjects_id_unique` (`id` ASC),
    CONSTRAINT `fk_subjects_teachers_id`
    FOREIGN KEY (`teachers_id`)
    REFERENCES `EducationalResourceCenter`.`teachers` (`id`)
    ON DELETE CASCADE

)ENGINE = InnoDB;

-- -----------------------------------------------------
-- link_table
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EducationalResourceCenter`.`students_subjects` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`students_subjects` (
    `subjects_id` INT NOT NULL,
    `students_id` INT NOT NULL,
    UNIQUE INDEX `students_subjects_subject_id_student_id` (`subjects_id`,  `students_id`),
    CONSTRAINT `fk_students_subjects_subjects_id`
    FOREIGN KEY (`subjects_id`)
    REFERENCES `EducationalResourceCenter`.`subjects` (`id`)
    ON DELETE CASCADE,
    CONSTRAINT `fk_students_subjects_students_id`
    FOREIGN KEY (`students_id`)
    REFERENCES `EducationalResourceCenter`.`students` (`id`)
    ON DELETE CASCADE
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 11. Table `EducationalResourceCenter`.`comments`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `EducationalResourceCenter`.`comments` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`comments` (

    `id` INT NOT NULL AUTO_INCREMENT,
    `students_id` INT NOT NULL,
    `annotated_resources_id` INT NOT NULL,
    `body` TEXT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (`id`),
    UNIQUE INDEX `comments_id_unique` (`id` ASC),
    CONSTRAINT `fk_comments_students_id`
    FOREIGN KEY (`students_id`)
    REFERENCES `EducationalResourceCenter`.`students` (`id`)
    ON DELETE CASCADE,
    CONSTRAINT `fk_comments_annotated_resources_id`
    FOREIGN KEY (`annotated_resources_id`)
    REFERENCES `EducationalResourceCenter`.`annotated_resources` (`id`)
    ON DELETE CASCADE,

)ENGINE = InnoDB;

-- -----------------------------------------------------
-- 12. Table `EducationalResourceCenter`.`rating_votes`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `EducationalResourceCenter`.`rating_votes` ;
CREATE TABLE IF NOT EXISTS `EducationalResourceCenter`.`rating_votes` (

    `id` INT NOT NULL AUTO_INCREMENT,
    `students_id` INT NOT NULL,
    `annotated_resources_id` INT NOT NULL,
    `point` TINYINT NOT NULL, // TODO CONSTRAINT for 1 to 5
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (`id`),
    UNIQUE INDEX `rating_votes_id_unique` (`id` ASC),
    UNIQUE INDEX `rating_votes_annotated_resources_id_students_id` (`students_id`, `annotated_resources_id`),
    CONSTRAINT `fk_rating_votes_students_id`
    FOREIGN KEY (`students_id`)
    REFERENCES `EducationalResourceCenter`.`students` (`id`)
    ON DELETE CASCADE,
    CONSTRAINT `fk_rating_votes_annotated_resources_id`
    FOREIGN KEY (`annotated_resources_id`)
    REFERENCES `EducationalResourceCenter`.`annotated_resources` (`id`)
    ON DELETE CASCADE,

)ENGINE = InnoDB;