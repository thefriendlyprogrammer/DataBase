use [Alok_Kushwaha]
/* Store Procedure 
	--> Store Procedure is a block of code that you can save, 
			so the code can be reused over and over again.
	--> Pre-Compiled block of code (First compile of given code only).
	--> Application performance will be increased.
	--> Store Procedure block of code can be reused in any application(.NET / JAVA).

	*--> Function naver used Store Procedure but Store Procedure used Function.


Store Procedure
	* Without Parameter
	* With Parameter
		* Input
		* Output

TO call a Store Procedure or Execution of Store Procedure
	
	EXEC/EXECUTE <Procedure Name>
				or
	EXEC/EXECUTE <Procedure Name> Value(s)


Store Procedure Without Parameter
	**Create a Store Procedure to see Employee table data*/
			CREATE PROCEDURE EmployeeData
			AS
			BEGIN
				SELECT * FROM Employee
			END

	--Execution of Employee Store Procedure

			EXECUTE EmployeeData


/* Strore Procedure With Parameter 
	** IN/INPUT  
		Create Procedure to insert values in employee table 
		Using @ sign to create variables*/

		CREATE PROCEDURE INSERTDATAINEMPLOYEE @EID int, @EName varchar(50), @EPhone varchar(13), @EEmail varchar (50), @EAddress varchar(100), @ESalary int, @EDesig varchar(50), @EDepr varchar(50) 
		AS
		BEGIN
		INSERT INTO Employee VALUES(@EID, @EName, @EPhone, @EEmail, @EAddress, @ESalary, @EDesig, @EDepr )
		END

	--Execution of (INSERTDATAINEMPLOYEE) inserting data in employee
	
		EXECUTE INSERTDATAINEMPLOYEE 1, 'Alok Kushwaha', '+917388122129', 'alok.info90@gmail.com', 'Noida Sector 58', 20000,'.Net Trainee','Software Engineer'
		
/* Strore Procedure With Parameter 
	** OUT/OUTPUT  
		Create Procedure to find PF and PT of Employee in employee table 
		Using @ sign to create variables*/

		CREATE PROCEDURE PFPTINEMPLOYEE @ID int, @PF INT OUT, @PT INT OUT
		AS
		BEGIN
		DECLARE @SAL MONEY
		SELECT @SAL = ESalary FROM Employee where EID = @ID
		SET @PF = @SAL * 0.1
		SET @PT = @SAL * 0.2
		END

		--Execution of PFPTINEMPLOYEE Procedure
		DECLARE @BPF INT, @BPT INT
		EXECUTE PFPTINEMPLOYEE 1, @BPF OUT, @BPT OUT
		PRINT @BPF
		PRINT @BPT

-- Store Procedure Always Return INT Values 