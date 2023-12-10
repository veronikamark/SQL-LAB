CREATE DATABASE Cosmetology;
USE Cosmetology;

CREATE TABLE `Doctor` (
    `DoctorID` INT NOT NULL,
    `FirstName` varchar(30) NOT NULL,
    `LastName` varchar(30) NOT NULL,
    `Email` varchar(30) NOT NULL,
    `PhoneNumber` integer(12) NOT NULL,
    `Specialization` varchar(30) NOT NULL,
    `DepartmentID` INT, 
    PRIMARY KEY (`DoctorID`)
);

CREATE TABLE `Department` (
    `DepartmentID` INT NOT NULL,
    `Name` varchar(30) NOT NULL,
    `City` varchar(30) NOT NULL DEFAULT 'Lviv',
    `Address` varchar(40) NOT NULL,
    `PhoneNumber` INT(12) NOT NULL,
    PRIMARY KEY (`DepartmentID`)
);

CREATE TABLE `Patient` (
    `PatientID` INT NOT NULL AUTO_INCREMENT,
    `FirstName` varchar(30) NOT NULL,
    `LastName` varchar(30) NOT NULL,
    `Gender` varchar(1) NOT NULL,
    `BirthDate` DATE NOT NULL,
    `PhoneNumber` INT(12) NOT NULL,
    `Email` varchar(50) NOT NULL,
    PRIMARY KEY (`PatientID`)
);

CREATE TABLE `Visit` (
    `VisitID` INT NOT NULL,
    `VisitDate` date NOT NULL,
    `VisitTime` integer(12) NOT NULL,
    `VisitStatus` varchar(15) NOT NULL,
    `DoctorID` INT,
    `TreatmentID` INT,
    `PatientID` INT,
    PRIMARY KEY (`VisitID`)
);

CREATE TABLE `Treatment` (
    `TreatmentID` INT NOT NULL AUTO_INCREMENT,
    `Name` varchar(40) NOT NULL,
    `Description` varchar(150) NOT NULL,
    `Duration` integer(12) NOT NULL,
    `Price` float NOT NULL,
    PRIMARY KEY (`TreatmentID`)
);

ALTER TABLE `Doctor` ADD CONSTRAINT `Doctor_fk0` FOREIGN KEY (`DepartmentID`) REFERENCES `Department`(`DepartmentID`);
ALTER TABLE `Visit` ADD CONSTRAINT `Visit_fk0` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor`(`DoctorID`);
ALTER TABLE `Visit` ADD CONSTRAINT `Visit_fk1` FOREIGN KEY (`TreatmentID`) REFERENCES `Treatment`(`TreatmentID`);
ALTER TABLE `Visit` ADD CONSTRAINT `Visit_fk2` FOREIGN KEY (`PatientID`) REFERENCES `Patient`(`PatientID`);