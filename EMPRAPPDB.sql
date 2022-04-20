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




