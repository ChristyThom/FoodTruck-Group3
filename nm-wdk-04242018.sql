/*
nm-wdk-04242018.sql

Copy/Paste ptential SQL calls here

#Joins Books and Categories to see all books and the categories which they belong:
SELECT BookTitle, Category 
FROM sp18_Books INNER JOIN sp18_Categories ON 
sp18_Books.CategoryID = sp18_Categories.CategoryID 
ORDER BY Category asc

#Shows all book categories alphabetically (basis for a categories page)
SELECT DISTINCT Category, CategoryID from sp18_Categories ORDER BY Category asc


#Shows all books from the PHP category:
SELECT BookTitle, sp18_Books.Description, sp18_Books.BookID
FROM sp18_Books INNER JOIN sp18_Categories ON 
sp18_Books.CategoryID = sp18_Categories.CategoryID 
WHERE sp18_Categories.CategoryID = 2


#Shows details from one book (basis for a view page):
SELECT BookTitle, Description
FROM sp18_Books 
WHERE BookID = 8




*/

-- Adminer 4.6.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `sp18_Admin`;
CREATE TABLE `sp18_Admin` (
  `AdminID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LastName` varchar(50) DEFAULT '',
  `FirstName` varchar(50) DEFAULT '',
  `Email` varchar(120) DEFAULT '',
  `Privilege` enum('admin','superadmin','developer') DEFAULT 'admin',
  `AdminPW` varchar(255) DEFAULT NULL,
  `NumLogins` int(11) DEFAULT '0',
  `DateAdded` datetime DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sp18_Admin` (`AdminID`, `LastName`, `FirstName`, `Email`, `Privilege`, `AdminPW`, `NumLogins`, `DateAdded`, `LastLogin`) VALUES
(1,	'Sprockets',	'Spacely',	'developer@example.com',	'developer',	'92429d82a41e930486c6de5ebda9602d55c39986',	0,	'2018-04-17 13:34:47',	'2018-04-17 13:34:47');

DROP TABLE IF EXISTS `sp18_Books`;
CREATE TABLE `sp18_Books` (
  `BookID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BookTitle` varchar(120) DEFAULT NULL,
  `Authors` varchar(120) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT '0',
  `ISBN` varchar(30) DEFAULT NULL,
  `Edition` varchar(20) DEFAULT NULL,
  `Description` text,
  `Rating` int(11) DEFAULT NULL,
  `Price` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sp18_Books` (`BookID`, `BookTitle`, `Authors`, `CategoryID`, `ISBN`, `Edition`, `Description`, `Rating`, `Price`) VALUES
(1,	'Professional ADO.NET',	'Smith',	1,	'568524456',	'2nd Edition',	'A great .NET book',	8,	23.50),
(2,	'Apache Server Unleashed',	'Jones',	2,	'12345678',	'1st Edition',	'A great PHP book',	7,	29.50),
(3,	'ASP.NET Unleashed',	'Doe',	1,	'345678976',	'1st Edition',	'A great .NET book',	9,	39.95),
(4,	'Introducing .NET',	'Wilson',	1,	'67890567',	'3rd Edition',	'A great .NET book',	8,	24.45),
(5,	'Professional C#',	'Jones',	1,	'568524456',	'1st Edition',	'A great .NET book',	6,	38.45),
(6,	'Beginning C++',	'Jackson',	3,	'12345678',	'1st Edition',	'A great programming book',	10,	41.40),
(7,	'Beginning J++',	'Johnson',	3,	'345678976',	'1st Edition',	'A great programming book',	8,	44.30),
(8,	'Beginning PHP',	'Smith',	2,	'345678976',	'2nd Edition',	'A great PHP book',	7,	55.50),
(9,	'Beginning MySQL',	'McDonald',	2,	'67890567',	'1st Edition',	'A great PHP book',	6,	98.20),
(10,	'Beginning Visual Basic',	'Cox',	3,	'12345678',	'1st Edition',	'A great .NET book',	8,	58.95),
(11,	'Beginning XHTML',	'Jones',	4,	'12345678',	'1st Edition',	'A great HTML book',	5,	39.95),
(12,	'Hacking Exposed',	'Evans',	5,	'12345678',	'2nd Edition',	'A great .NET book',	9,	22.20),
(13,	'Effective Java',	'Franklin',	3,	'568524456',	'1st Edition',	'A great programming book',	8,	91.20),
(14,	'JavaScript Bible',	'Jones',	4,	'12345678',	'1st Edition',	'A great HTML book',	6,	33.55),
(15,	'Beginning PHP4 and XML',	'Doe',	2,	'12345678',	'2nd Edition',	'A great PHP book',	7,	48.50),
(16,	'VBScript Regular Expressions',	'Smith',	3,	'12345678',	'1st Edition',	'A great programming book',	7,	49.50),
(17,	'Programming ASP',	'Johnson',	6,	'67890567',	'4th Edition',	'A great ASP book',	8,	49.50),
(18,	'Programming PHP',	'Doe',	2,	'345678976',	'1st Edition',	'A great PHP book',	9,	49.50),
(19,	'Programming C#',	'Jones',	1,	'568524456',	'1st Edition',	'A great .NET book',	7,	49.50),
(20,	'Programming Java',	'Smith',	3,	'56780765',	'5th Edition',	'A great programming book',	6,	49.50),
(21,	'Introducing XML',	'Evans',	4,	'12345678',	'1st Edition',	'A great HTML book',	8,	33.95);

DROP TABLE IF EXISTS `sp18_Categories`;
CREATE TABLE `sp18_Categories` (
  `CategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(120) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sp18_Categories` (`CategoryID`, `Category`, `Description`) VALUES
(1,	'DotNet',	'Microsoft \'s flagship server technology.'),
(2,	'PHP',	'The world\'s most popular open source technology.'),
(3,	'Programming',	'Books of general programming interest.'),
(4,	'HTML',	'Web page architecture.'),
(5,	'Networking',	'How networks connect us.'),
(6,	'ASP',	'Microsoft \'s classic server technology.');

DROP TABLE IF EXISTS `sp18_questions`;
CREATE TABLE `sp18_questions` (
  `QuestionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SurveyID` int(10) unsigned DEFAULT '0',
  `Question` text,
  `Description` text,
  `DateAdded` datetime DEFAULT NULL,
  `LastUpdated` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`QuestionID`),
  KEY `SurveyID_index` (`SurveyID`),
  CONSTRAINT `sp18_questions_ibfk_1` FOREIGN KEY (`SurveyID`) REFERENCES `sp18_surveys` (`SurveyID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sp18_questions` (`QuestionID`, `SurveyID`, `Question`, `Description`, `DateAdded`, `LastUpdated`) VALUES
(1,	1,	'Do You Like Our Website?',	'We really want to know!',	'2018-04-16 17:04:38',	'2018-04-17 00:04:38'),
(2,	1,	'Do You Like Cookies?',	'We like cookies!',	'2018-04-16 17:04:38',	'2018-04-17 00:04:38'),
(3,	1,	'Favorite Toppings?',	'We like chocolate!',	'2018-04-16 17:04:38',	'2018-04-17 00:04:38');

DROP TABLE IF EXISTS `sp18_questionsnew`;
CREATE TABLE `sp18_questionsnew` (
  `QuestionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SurveyID` int(10) unsigned DEFAULT '0',
  `Question` text,
  `Description` text,
  `DateAdded` datetime DEFAULT NULL,
  `LastUpdated` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`QuestionID`),
  KEY `SurveyID_index` (`SurveyID`),
  CONSTRAINT `sp18_questionsnew_ibfk_1` FOREIGN KEY (`SurveyID`) REFERENCES `sp18_surveys` (`SurveyID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sp18_questionsnew` (`QuestionID`, `SurveyID`, `Question`, `Description`, `DateAdded`, `LastUpdated`) VALUES
(1,	1,	'Do you like PHP?',	'I really want to know!',	'2018-04-16 17:04:38',	'2018-04-17 00:04:38'),
(2,	1,	'Do You WordPress?',	'I like WordPress!',	'2018-04-16 17:04:38',	'2018-04-17 00:04:38'),
(3,	1,	'Favorite Coding Language?',	'I like HTML/CSS!',	'2018-04-16 17:04:38',	'2018-04-17 00:04:38');

DROP TABLE IF EXISTS `sp18_surveys`;
CREATE TABLE `sp18_surveys` (
  `SurveyID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AdminID` int(10) unsigned DEFAULT '0',
  `Title` varchar(255) DEFAULT '',
  `Description` text,
  `DateAdded` datetime DEFAULT NULL,
  `LastUpdated` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SurveyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sp18_surveys` (`SurveyID`, `AdminID`, `Title`, `Description`, `DateAdded`, `LastUpdated`) VALUES
(1,	1,	'Our First Survey',	'Description of Survey',	'2018-04-16 17:04:38',	'2018-04-17 00:04:38');

-- 2018-05-10 17:43:39
