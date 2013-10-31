CREATE TABLE IF NOT EXISTS `deparment` (
	`id`				INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`name`			VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `regency` (
	`id`				INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`name`			VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `employee` (
	`id`				INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`name`			VARCHAR(50) NOT NULL,
	`age`				INT UNSIGNED,
	`phone`			VARCHAR(12),
	`gender`			TINYINT,
	`date_of_birth`	DATE,
	`family`			TEXT,
	`department_id`	INT UNSIGNED,
	`regency_id`		INT UNSIGNED,
	FOREIGN KEY (`department_id`) REFERENCES deparment(`id`) ON DELETE CASCADE,
	FOREIGN KEY (`regency_id`) REFERENCES regency(`id`) ON DELETE CASCADE
);