DROP DATABASE IF EXISTS `education`; 
CREATE DATABASE IF NOT EXISTS `education`; 
USE `education`;
SET NAMES UTF8MB4; 
SET character_set_client = UTF8MB4;

DROP TABLE IF EXISTS Colleges;

CREATE TABLE `Colleges` (
	`CollegeID`		int NOT NULL,
    `Name`			varchar(20) NOT NULL,
	`Students`		int NOT NULL,
	`City`			varchar(15) NULL,
    `Region`		varchar(15) NULL,
    `County`		varchar(15) NULL,
    PRIMARY KEY (`CollegeID`),
    INDEX `CollegeID` (`CollegeID` ASC), 
    INDEX `Name` (`Name` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Students` (
	`StudentID`		int NOT NULL,
	`CollegeID`		int NOT NULL,
    `FristName`		varchar(20) NOT NULL,
    `LastName`		varchar(20) NOT NULL,
	`BirthDate`		varchar(15) NULL,
	`Email`			varchar(15) NULL,
	`City`			varchar(15) NULL,
    `Region`		varchar(15) NULL,
    `County`		varchar(15) NULL,
    PRIMARY KEY (`StudentID`),
    INDEX `StudentID` (`StudentID` ASC), 
    INDEX `LastName` (`LastName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `Colleges` VALUES(1,'MIT',11,'Cambridge','MA','USA'); 
INSERT INTO `Colleges` VALUES(2,'Brown',9,'Providence','RI','USA'); 
INSERT INTO `Colleges` VALUES(3,'Dartmouth',6,'Hanover','NH','USA');

INSERT INTO `Students` VALUES(1,1,'Tanner', 'Papenfuss','01/01/01','tjp','Cambridge','MA','USA'); 

select * from Students
