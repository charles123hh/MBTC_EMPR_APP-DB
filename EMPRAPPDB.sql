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

