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

			SELECT * FROM Student INNER JOIN Academic ON Academic.AID =  Student.SID

		--OUTER JOINS

					--LEFT JOINS

						SELECT * FROM Academic LEFT JOIN Student ON Student.SID = Academic.AID

					--RIGHT JOINS

						SELECT * FROM Student RIGHT JOIN  Academic ON Student.SID = Academic.AID

					--FULL OUTER

						SELECT * FROM  Academic FULL JOIN Student  ON Student.SID = Academic.AID

		--CROSS JOINS

			SELECT Student.SID,  Academic.AID FROM Student CROSS JOIN Academic
			
			/*	Cross joins is follow one way comparsion 
				if you want to write revers query result is change only  place (formate ) not results.
			*/

			SELECT Academic.AID, Student.SID FROM Academic CROSS JOIN Student

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
			
