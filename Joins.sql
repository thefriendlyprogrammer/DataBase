USE [Alok_Kushwaha]
/*
Joins
	When we retrive the data from more than one table. 

	ANSI-FORMATE --> Joins (new style formate), WITH "ON" KEYWORD  
		(
			INNER JOINS
			OUTER JOINS
				LEFT OUTER JOINS
				REGHT OUTER JOINS
				FULL OUTER JOINS
			CROSS JOINS
			NATURAL JOINS
		)

		INNER JOINS*/
			--The inner join keyword selects records that have matching values in 
			--	both tables.
			 
				SELECT * FROM Students INNER JOIN Academic ON Academic.AID =  Students.SID

		--OUTER JOINS

					--LEFT JOINS
						--

						SELECT * FROM Academic LEFT JOIN Students ON Students.SID = Academic.AID

					--RIGHT JOINS

						SELECT * FROM Students RIGHT JOIN  Academic ON Students.SID = Academic.AID

					--FULL OUTER

						SELECT * FROM  Academic FULL JOIN Students  ON Students.SID = Academic.AID

		--CROSS JOINS

			SELECT Students.SID,  Academic.AID FROM Students CROSS JOIN Academic
			
			/*	Cross joins is follow one way comparsion 
				if you want to write revers query result is change only  place (formate ) not results.
			*/

			SELECT Academic.AID, Students.SID FROM Academic CROSS JOIN Students

		--Natural JOINS

			--Natural joins are not supported in SQL Server (2019).

	/*
	NON-ANSI-FORMATE --> Joins (Old style formate), WITH "where" KEYWORD  
		(
			EQUI-JOINS
			NON-EQUI JOINS
			SELF JOINS
		) */

		--EQUI JOINS
			