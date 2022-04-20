CREATE DATABASE EMPRAPPDB

GO
USE EMPRAPPDB

GO
CREATE TABLE Department(
	 DepartmentID int IDENTITY(1,1) PRIMARY KEY,
	 DepartmentName varchar(70) NOT NULL,
	 DateCreated DATETIME NOT NULL,
	 CreatedBy varchar(20) NOT NULL
);

GO
SP_HELP Department

GO
INSERT INTO Department(DepartmentName, DateCreated, CreatedBy)
VALUES('NET', GETDATE(), 'Default'), 
	  ('MF', GETDATE(), 'Default'),
	  ('JAVA', GETDATE(), 'Default'),
	  ('APEX', GETDATE(), 'Default')

GO
SELECT * FROM Department

GO
CREATE TABLE AssignmentType (
	 AssignmentTypeID int IDENTITY(1,1) PRIMARY KEY,
	 AssignmentType varchar(70) NOT NULL,
	 DateCreated DATETIME NOT NULL,
	 CreatedBy varchar(20) NOT NULL
);

GO
SP_HELP AssignmentType

GO
INSERT INTO AssignmentType(AssignmentType, DateCreated, CreatedBy)
VALUES('Supervisor', GETDATE(), 'Default'), 
	  ('Team Lead', GETDATE(), 'Default'),
	  ('Developer', GETDATE(), 'Default')

GO
SELECT * FROM AssignmentType

GO
CREATE TABLE SRType (
	 SRTypeID int IDENTITY(1,1) PRIMARY KEY,
	 SRType varchar(70) NOT NULL,
	 DateCreated DATETIME NOT NULL,
	 CreatedBy varchar(20) NOT NULL
);

GO
SP_HELP SRType

GO
INSERT INTO SRType(SRType, DateCreated, CreatedBy)
VALUES('DPR', GETDATE(), 'Default'), 
	  ('PER', GETDATE(), 'Default'),
	  ('MNT', GETDATE(), 'Default'),
	  ('OPS', GETDATE(), 'Default')

GO
SELECT * FROM SRType

GO
CREATE TABLE Developer (
	 DeveloperID int IDENTITY(1,1) PRIMARY KEY,
	 EmployeeID varchar(20) NOT NULL,
	 FirstName varchar(50) NOT NULL,
	 MiddleName varchar(50),
	 LastName varchar(50) NOT NULL,
	 DateHire DATETIME NOT NULL,
	 isActive BIT NOT NULL,
	 MetrobankEmail varchar(50),
	 Homeddress varchar(200),
	 CityProvince varchar(50),
	 ContactNumber varchar(20),
	 DepartmentID INT NOT NULL FOREIGN KEY REFERENCES Department(DepartmentID),
	 SupervisorID INT FOREIGN KEY REFERENCES Developer(DeveloperID),
	 DateCreated DATETIME NOT NULL,
	 CreatedBy varchar(20) NOT NULL,
	 DateModified DATETIME,
	 ModifiedBy varchar(20) 
);

GO
SP_HELP Developer





