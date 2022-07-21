Use Alok_Kushwaha
/* STORED FUNCTION 

	A function is a block of code which will perform some operation on the given values
	and the must return a value.
	
	Store Procedure
		
		* Table-Valued Function
		* Scalar-Valued Function
								* Aggregate Function
								* System Function

		Scalar-Valued Function	*/
			
			CREATE FUNCTION GetGrossSal (@ID INT)
			RETURNS MONEY
			AS
			BEGIN
			DECLARE @Basic MONEY, @HRA MONEY, @DA MONEY, @PF MONEY, @GROSS MONEY
			SELECT @Basic = ESalary FROM Employee WHERE EID = @ID
			SET @HRA = @Basic * 0.1
			SET @DA = @Basic * 0.2
			SET @PF = @Basic * 0.1
			SET @GROSS = @HRA + @DA + @PF + @Basic
			RETURN @GROSS
			END

		-- EXECUTION OF THE GETGROSSSAL STORED FUNCTION
			
			SELECT [dbo].[GetGrossSal] (3) 

		-- Table-Valued Function
			CREATE FUNCTION GETDATABYDERT (@DEPRT VARCHAR(50))
			RETURNS TABLE
			AS
			RETURN(SELECT * FROM Employee WHERE EDepr = @DEPRT )

		-- Execution of GETDATABYDERT STORED FUNCTION
			
			SELECT * FROM GETDATABYDERT ('Software Tester')