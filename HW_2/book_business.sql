/* 
 * SQL script to create a new database called bookPublishing. 
 * See the database design in draw.io:
 * https://mitprod-my.sharepoint.com/:u:/g/personal/tpapenfu_mit_edu/EV2DeKqLP69Hsr53a-tDlL4BkQxIVBokoYzMsItzadq-mA?e=p8mMw9
 * 
 * Author: Tanner Papenfuss
 * Course: 1.125 Arch and Eng Software Systems
*/

DROP DATABASE IF EXISTS `bookPublishing`; 
CREATE DATABASE IF NOT EXISTS `bookPublishing`; 
USE `bookPublishing`;
SET NAMES UTF8MB4; 
SET character_set_client = UTF8MB4;

CREATE TABLE `genres` (
    `genreId` INT NOT NULL,
    `genre` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`genreId`),
    INDEX `genreId` (`genreId` ASC),
    INDEX `genre` (`genre` ASC)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;

CREATE TABLE `publishers` (
	`publisherId`	int NOT NULL,
    `name`			varchar(40) NOT NULL,
	`phoneNo`		bigint NULL,
	`address`		varchar(100) NULL,
    PRIMARY KEY (`publisherId`),
    INDEX `publisherId` (`publisherId` ASC), 
    INDEX `name` (`name` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `books` (
	`ISBN`		    varchar(20) NOT NULL,
    `title`			varchar(150) NOT NULL,
	`pageCount`		int NOT NULL,
	`publisherId`	int NOT NULL,
    PRIMARY KEY (`ISBN`),
    FOREIGN KEY (publisherId) REFERENCES publishers(publisherId),
    INDEX `ISBN` (`ISBN` ASC), 
    INDEX `title` (`title` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customers` (
	`customerId`	int NOT NULL,
    `firstName`		varchar(20) NOT NULL,
    `lastName`		varchar(20) NOT NULL,
	`phoneNo`		bigint NULL,
    PRIMARY KEY (`customerId`),
    INDEX `customerId` (`customerId` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `authors` (
	`authorId`		int NOT NULL,
    `firstName`		varchar(20) NOT NULL,
	`lastName`		varchar(20) NOT NULL,
	`phoneNo`		bigint NULL,
    PRIMARY KEY (`authorId`),
    INDEX `authorId` (`authorId` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `editors` (
	`editorId`		int NOT NULL,
    `name`			varchar(20) NOT NULL,
	`address`		varchar(100) NULL,
    `phoneNo`		bigint NULL,
    PRIMARY KEY (`editorId`),
    INDEX `editorId` (`editorId` ASC), 
    INDEX `name` (`name` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `orders` (
	`orderNo`		int NOT NULL,
    `dateOfOrder`	DATE NULL,
    `noItems`       int NOT NULL,
    PRIMARY KEY (`orderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bookGenre` (
	`ISBN`		    varchar(20) NOT NULL,
    `genreId`		int NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES books(ISBN),
    FOREIGN KEY (genreId) REFERENCES genres(genreId)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bookOrder` (
	`ISBN`		    varchar(20) NOT NULL,
    `orderNo`		int NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES books(ISBN),
    FOREIGN KEY (orderNo) REFERENCES orders(orderNo)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customerOrders` (
	`customerId`    int NOT NULL,
    `orderNo`		int NOT NULL,
    FOREIGN KEY (customerId) REFERENCES customers(customerId),
    FOREIGN KEY (orderNo) REFERENCES orders(orderNo)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bookEditor` (
	`ISBN`		    varchar(20) NOT NULL,
	`editorId`		int NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES books(ISBN),
    FOREIGN KEY (editorId) REFERENCES editors(editorId)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bookAuthor` (
	`ISBN`		    varchar(20) NOT NULL,
	`authorId`	    int NOT NULL,
    `royalties`	    float DEFAULT 0.15,
    FOREIGN KEY (ISBN) REFERENCES books(ISBN),
    FOREIGN KEY (authorId) REFERENCES authors(authorId)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

