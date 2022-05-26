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
			
		--DROP
			-- Drop is use to delete a whole database or just a table.
			-- The Drop statment destroys the object like an existing database, table, index or view.

			DROP TABLE Students

			DROP TABLE Employee

			DROP TABLE Academic

			DROP TABLE SaftyEngineer

			DROP DATABASE AlokKushwaha

		--ALTER
			-- ALTER TABLE is used to add, delete/drop or modify columns in the existing table
			
			-- ALTER TABLE - ADD
				--ADD is used to add columns into the existing table.
				ALTER TABLE Students ADD SDOB VARCHAR(50);

			-- ALTER TABLE - DROP
				-- DROP COLUMN is used to drop column in a table.

				ALTER TABLE Students DROP COLUMN Student.Pin_Code
				ALTER TABLE Academic DROP COLUMN ADepr

			-- ALTER TABLE - MODIFY
				-- MODIFY KEYWORD NOT SUPPORTED IN SQL SERVER (SUPPORTED IN ORACLE, MYSQL, MARIADB)
				--It is used to modify the existing columns in a table

				ALTER TABLE Students ALTER COLUMN SAddress VARCHAR(50) 

		/*TRUNCATE
			 Empty For Reuse

			* TRUNCATE TABLE equivalent to the 
			  DELETE FROM mytable statement (without a WHERE clause).
			* Truncate is ultra-fast and its ideal for deleting data from a temporary table.
			* Truncate preserves the structure of the table for future use, 
			  unlike drop table where the table is deleted with its full structure.
			* Table or Database deletion using DROP statement cannot be rolled back.*/
			
			TRUNCATE TABLE Academic

			TRUNCATE TABLE Employee

			TRUNCATE TABLE Students

		--SP_RENAME
			-- USE TO RENAME TABLE AND TABLE COLUMN
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
			('Alok Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',505),
			('Dheeraj Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',504),
			('Deepak Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',503),
			('Aditya Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',504),
			('Pradeep Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',503),
			('Golu Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',502),
			('Vikash Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',501),
			('Neeraj Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',502),
			('Bipin Kushwaha', '+91 xxxx', 'xxxxxxxgmail.com', 'Sector 58, Noida', 20000, 'Trainee',501)

		--UPDATE
			UPDATE  Employee SET EID = 2 where EName = 'Neha Singh'
			UPDATE [dbo].[Students] SET SNumber = '2345678901', SEmail = 'navya@gmail.com', SAddress = 'Baliya' WHERE SID=3
			UPDATE Students SET SAddress = 'Noida Sector 58' WHERE SID=1

		--DELETE

	--DATA QUERY LANGUAGE()
			
			SELECT * FROM Students

			SELECT * FROM Academic

			SELECT * FROM EmployeeView

			SELECT * FROM Employee

			SELECT * FROM EmployeeDepartment

			SELECT * FROM SaftyEngineer WHERE SEDepr_ID = 504

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