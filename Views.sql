/*
VIEWS

	* View is a vertual / logical table for the base table.
	* Will not stored data but select query statment is only stored.

VIEWS

	-- Simple View (Single Table)
	-- Complex View (Multiple Table)

	 Simple View (Single Table)
		
		* It can support all DML Operation.
		* Simple view is also called Updatable View.*/

		CREATE VIEW EmployeeView AS SELECT * FROM Employee

	-- Complex View (Multiple Table)
		
		-- IT SUPPORT 'SELECT' CMD ONLY.(DQL OPERATION)
		-- WE CANNOT PERFORM DML OPERATION

			CREATE VIEW StudentsView AS
			SELECT * FROM Students
			UNION
			SELECT * FROM Academic

			SELECT * FROM StudentsView