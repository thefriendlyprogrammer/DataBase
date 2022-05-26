/*
IDENTITY(Seed, Increment) // SEED = Initial Value
	* Identity work with only numeric value
	* A table contain only one IDENTITY function.

	Default Identity		
		Default Identity does not have Seed or Increment.	*/
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

	-- Identity	with Argument	
		--Identity with Argument have Seed or Increment.
			CREATE TABLE EmployeeDepartment
			(
			Dep_ID int PRIMARY KEY IDENTITY(500,1),

			Dep_Name varchar(50),

			)

	/* If you want to apply identity at any column and you want to change their column value.
		Then you need to use- 

			SET IDENTITY_INSERT <TN> OFF/ON

			OFF - OFF is a default conection of identity.
				  We cannot insert the value into identity column by explicitly.

			ON - We can insert the value into identity column by explicitly.

			* insert into TN <Column Name > Values();