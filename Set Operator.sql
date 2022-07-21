/*
SET OPERATOR
	* To combined two or more than two select statement.
	* Column order and data type must be same. 

	Set Operater
		* UNION
		* UNION ALL
		* INTERSECT
		* EXCEPT

		UNION	
			* Upper table heading name showing
			* Union is merging data of two table. */

			SELECT * FROM [dbo].[Employee]
			UNION
			SELECT * FROM [dbo].[Students]

		/*UNION	
			* Upper table heading name showing
			* Union all is merging two table in order.   */

			SELECT * FROM [dbo].[Employee]
			UNION ALL
			SELECT * FROM [dbo].[Students]


		/*INTERSECT	
			* Upper table heading name showing
			* INTERSECT is showing which value is common in both table.   */

			SELECT * FROM [dbo].[Students] 
			INTERSECT 
			SELECT * FROM [dbo].[Employee]
			
		/*EXCEPT	
			* Upper table heading name showing
			* EXCEPT is showing all unique data in both table.  
			* EXCEPT is working LEFT TO RIGHT */

			SELECT * FROM [dbo].[Students] 
			EXCEPT 
			SELECT * FROM [dbo].[Employee]
			