USE [Alok_Kushwaha]

/* 
KEYS
	* Keys play an important role in the relational database.
	* It is used to uniquely identify any record or row of data from the table.
	  It is also used to establish and identify relationships between tables.

	KEY
		* Parimary Key
		* Condidate Key
		* Super Key
		* Foreign Key
		* Alternate Key
		* Composite Key
		* Artificial Key

		* PRIMARY KEY
			
			* One table have a one Primary Key.
			* Primary Key is not null.
			* The column should have same data type in both table.
			* Primary key does not contain dublicate values.*/

			CREATE TABLE EmployeeDepartment
			(
			Dep_ID int PRIMARY KEY IDENTITY(500,1),

			Dep_Name varchar(50),

			)
		/*
		FOREIGN KEY
			* Foreign keys are the column of the table used to point to the 
				primary key of another table
			* Every employee works in a specific department in a company,
			  and employee and department are two different entities. 
			  So we can't store the department's information in the employee table. 
			  That's why we link these two tables through the primary key of one table
			* Foreign key column accepted null values.									 */

			CREATE TABLE SaftyEngineer
			(
			SEID int IDENTITY,

			SEName varchar(50),

			SEPhone varchar(13),

			SEEmail varchar (50),

			SEAddress varchar(100),

			SESalary int,

			SSEDesig varchar(50),

			SEDepr_ID int FOREIGN KEY REFERENCES EmployeeDepartment(Dep_ID)

			)
