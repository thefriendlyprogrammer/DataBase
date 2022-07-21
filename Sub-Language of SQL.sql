--Sub-Language of SQL

Use Alok_Kushwaha

	--DATA DEFINITION LANGUAGE(DDL)
		
		--CREATE(DATABASE, TABLE)
		
			CREATE DATABASE Alok_Kushwaha

			CREATE TABLE Students
			(
			SID int,

			SName varchar(50),

			SNumber varchar(13),

			SEmail varchar (50),

			SAddress varchar(100)

			)

			CREATE TABLE Employee
			(
			EID int,

			EName varchar(50),

			EPhone varchar(13),

			EEmail varchar (50),

			EAddress varchar(100),

			ESalary int,

			EDesig varchar(50),

			EDepr varchar(50)

			)
			
			CREATE TABLE Academic
			(
			AID int,

			AName varchar(50),

			APhone varchar(13),

			AEmail varchar (50),

			AAddress varchar(100),

			ADepr varchar(50)

			)

			CREATE TABLE SaftyEngineer
			(
			SEID int PRIMARY KEY IDENTITY,

			SEName varchar(50),

			SEPhone varchar(13),

			SEEmail varchar (50),

			SEAddress varchar(100),

			SESalary money,

			SEDesig varchar(50),

			)

			CREATE TABLE NewStudents (
			StudentNo int,
			
			Name varchar(50),

			Branch varchar(50),

			EmailID varchar(05)

			)

			CREATE TABLE UserInfo(
			
			ID int identity Primary key,
			Name varchar(100),
			EmailID varchar(50),
			Password varchar(50)

			)
			
			CREATE TABLE Developer
			(
			DID INT IDENTITY(1,1) PRIMARY KEY, 
			DNAME VARCHAR(50), 
			DEMAILID VARCHAR(50), 
			DNUMBER VARCHAR(14), 
			DTECHNOLOGY VARCHAR(50), 
			DESIGNATION VARCHAR(50)
			)

			CREATE TABLE AVENGERS
			(
			SrNo INT IDENTITY(1,5) PRIMARY KEY, 
			ANAME VARCHAR(100), 
			AEMAILID VARCHAR(50), 
			APASSWORD VARCHAR(50),
			CODE VARCHAR(10)
			)

			CREATE TABLE AdminUser
			(
			ID INT IDENTITY(1,1) PRIMARY KEY,
			Name VARCHAR(50),
			Email VARCHAR(50),
			Password VARCHAR(50),
			V_Code INT,
			)

			CREATE TABLE Client
			(
			ID int identity(1,1) primary key,
			Name varchar(50),
			Phone varchar(14),
			Email varchar (50),
			Address varchar(100),
			Salary int,
			Designation varchar(50),
			Department varchar(50)
			)

		--DROP
			-- Drop is use to delete a whole database or just a table.
			-- The Drop statment destroys the object like an existing database, table, index or view.

			DROP TABLE Academic

			DROP TABLE AVENGERS

			DROP TABLE Developer

			DROP TABLE Employee

			DROP TABLE NewStudents

			DROP TABLE SaftyEngineer

			DROP TABLE Students

			DROP TABLE UserInfo 

			DROP DATABASE AlokKushwaha

		--ALTER
			-- ALTER TABLE is used to add, delete/drop or modify columns in the existing table
			
			-- ALTER TABLE - ADD
				--ADD is used to add columns into the existing table.
				--To add primary key
				ALTER TABLE Students ADD SDOB VARCHAR(50);
				ALTER TABLE NewStudents ADD Section varchar(10);
				ALTER TABLE NewStudents ADD Primary key(StudentNo);

			-- ALTER TABLE - DROP
				-- DROP COLUMN is used to drop column in a table.

				ALTER TABLE Students DROP COLUMN Student.Pin_Code
				ALTER TABLE Academic DROP COLUMN ADepr

			-- ALTER TABLE - MODIFY
				-- MODIFY KEYWORD NOT SUPPORTED IN SQL SERVER (SUPPORTED IN ORACLE, MYSQL, MARIADB)
				--It is used to modify the existing columns in a table

				ALTER TABLE NewStudents ALTER COLUMN StudentNo int NOT NULL;
				ALTER TABLE Students ALTER COLUMN SAddress VARCHAR(50) 
				ALTER TABLE [dbo].[NewStudents] ALTER COLUMN EmailID VARCHAR(50)
				ALTER TABLE Developer ALTER COLUMN DNUMBER VARCHAR(14)
				
		/*TRUNCATE
			 Use to make table Empty For Reuse

			* TRUNCATE TABLE equivalent to the 
			  DELETE FROM tblname statement (without a WHERE clause).
			* Truncate is ultra-fast and its ideal for deleting data from a temporary table.
			* Truncate preserves the structure of the table for future use, 
			  unlike drop table where the table is deleted with its full structure.
			* Table or Database deletion using DROP statement cannot be rolled back.*/
			
			TRUNCATE TABLE Academic

			TRUNCATE TABLE Employee

			TRUNCATE TABLE Students

		--SP_RENAME
			-- USE TO RENAME TABLE AND TABLE COLUMN
				
				-- USE TO SEE DETAILS OF TABLE
				SP_HELP SaftyEngineer

				--Changing Table name
				SP_RENAME 'Student','Students'

				--Changing Table Column name
				SP_RENAME 'Students.SID','SrNo.'

	--DATA MANUPULATION LANGUAGE(DML)
		
		--INSERT

			INSERT INTO Students VALUES 
			(1, 'Alok Kushwaha', '+917388122129', 'alok.info90@gmail.com', 'Sector - 58, Noida' ),
			(2, 'Abhishek Singh', '+917388122129', 'alok.info90@gmail.com', 'Sector - 58, Noida' ),
			(3,'Navya Gupta', '+917388122129', 'alok.info90@gmail.com', 'Sector - 58, Noida' )

			INSERT INTO Academic (AName, APhone, AEmail, AAddress, ADepr ) VALUES 
			('Alok Kushwaha', '+917388122129', 'alok.edu90@gmail.com', 'Sector - 58, Delhi', 'CSE' ),
			('Abhishek Singh', '+917388122129', 'alok.edu90@gmail.com', 'Sector - 58, Delhi','CIVIL' ),
			('Navya Gupta', '+917388122129', 'alok.edu@gmail.com', 'Sector - 58,Delhi','ME' )

			INSERT INTO Employee VALUES
			(4, 'Alok Kushwaha', '+917388122129', 'alok.info90@gmail.com', 'Noida 58, Noida', 20000,'.Net Trainee','Software Tester'),
			(5, 'Neha Singh', '+917388122129', 'neha.info90@gmail.com', 'Janak Puri West', 25000,'.Net Trainee','Software Tester'),
			(6, 'Abhishek Singh', '+917388122129', 'shitu.info90@gmail.com', 'Greater Noida', 30000,'.Net Trainee','Software Tester')

			INSERT INTO EmployeeDepartment VALUES 
			('IT'),
			('.NET DEVELOPER'),
			('.NET TRAINEE'),
			('ASP.NET'),
			('ADO.NET'),
			('WEB DEVELOPER'),
			('JAVA DEVELOPER'),
			('PYTHON DEVELOPER')

			INSERT INTO SaftyEngineer VALUES 
			('Alok Kushwaha   ', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 59, Noida', 40000, 'Head'),
			('Dheeraj Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 35000, 'Asst.'),
			('Deepak Kushwaha ', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 57, Noida', 30000, 'Manager'),
			('Aditya Kushwaha ', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 56, Noida', 25000, 'Asst. Manager'),
			('Pradeep Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 55, Noida', 20000, 'Field Officer'),
			('Golu Kushwaha   ', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 54, Noida', 15000, 'Feild Exicutive'),
			('Vikash Kushwaha ', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 53, Noida', 10000, 'Feild Exicutive'),
			('Neeraj Kushwaha ', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 52, Noida', 5000, 'Feild Exicutive'),
			('Bipin Kushwaha  ', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 51, Noida', 5000, 'Peon')
			
			INSERT INTO UserInfo values 
			('Alok Kushwaha', 'alok.info90@gmail.com', 'Alok@7388'),
			('Dheeraj Kushwaha', 'dheeraj.info90@gmail.com', 'Dheraj@7388'),
			('Deepak Kushwaha', 'deepak.info90@gmail.com', 'Deepak@7388'),
			('Tarun Rajput', 'tr7674.info90@gmail.com', 'Tarun@7388'),
			('Golu Kushwaha', 'golu.info90@gmail.com', 'Golu@7388')

			INSERT Developer VALUES
			('Alok Kushwaha','ekiy.info90@gmail.com','+91 7388122129','.Net MVC','Trainee'),
			('Arvind Kushwaha','arvind.info90@gmail.com','+91 7788XXXXXX','.Net CORE','Trainee')

			INSERT AVENGERS VALUES 
			('Captain America','captainamerica@gmail.com','CivilWar','2011'),
			('Tony Stark','tonystark@gmail.com','IronMan3','2013'),
			('Thor','thor@gmail.com','Thor:Love&Thunder','2022')

			INSERT AdminUser VALUES
			('Alok Kushwaha','alok.info90@gmail.com','Alok@123',1919)

			INSERT Client VALUES
			('Alok Kushwaha', '+91 7388XXXXXX', 'alok.info90@gmail.com', 'Noida 58, Noida', 20000,'.Net Trainee','Software Engineer'),
			('Neha Singh', '+91 7388XXXXXX', 'neha.info90@gmail.com', 'Janak Puri West', 25000,'.Net Trainee','Software Tester'),
			('Abhishek Singh', '+91 7388XXXXXX', 'shitu.info90@gmail.com', 'Greater Noida', 30000,'.Net Trainee','Software Developer')

		--UPDATE
			UPDATE  Employee SET EID = 2 where EName = 'Neha Singh'
			UPDATE [dbo].[Students] SET SNumber = '2345678901', SEmail = 'navya@gmail.com', SAddress = 'Baliya' WHERE SID=3
			UPDATE Students SET SAddress = 'Noida Sector 58' WHERE SID=1

		--DELETE
			DELETE Academic where AID is null
			DELETE Developer WHERE DID = 4
			DELETE Client WHERE ID = 5
			DELETE AdminUser WHERE ID=3

	--DATA QUERY LANGUAGE()
			
			SELECT * FROM AVENGERS

			SELECT * FROM AdminUser

			SELECT * FROM Client
			
			SELECT * FROM Developer

			SELECT * FROM Students

			SELECT * FROM NewStudents

			SELECT * FROM Academic

			SELECT * FROM EmployeeView

			SELECT * FROM Employee

			SELECT * FROM EmployeeDepartment

			SELECT * FROM SaftyEngineer WHERE SEDepr_ID = 504

			SELECT * FROM UserInfo

	--TRANSACTION CONTROL LANGUAGE

		BEGIN TRANSACTION
		ALTER TABLE [dbo].[Employee] DROP COLUMN ESalary,EDesig,EDepr

		--COMMIT
			--ONES THE OPERATION IS COMMIT THEN WE CONNOT ROLLBACK

			BEGIN TRANSACTION
			COMMIT

		--ROLLBACK
			
			BEGIN TRANSACTION
			ROLLBACK

		--SAVEPOINT

	--DATA CONTROL LANGUAGE

		--GRANT 

		--REVOKE