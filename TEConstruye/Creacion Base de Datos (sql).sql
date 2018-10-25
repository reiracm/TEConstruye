CREATE DATABASE TEConstruye
GO
USE TEConstruye


/** EMPLOYEE'S TABLE **/
CREATE TABLE EMPLOYEE( 
Fname							VARCHAR (30)		 NOT NULL,
Sname							VARCHAR (30)		 NOT NULL,
Lname							VARCHAR (30)		 NOT NULL,
Code							INT				 	 NOT NULL,
Email							VARCHAR (30)		 NOT NULL, 
specialty						VARCHAR (30)		 NOT NULL,
Hourly_pay						INT,
Password_						VARCHAR (30)		 NOT NULL,
Phone							INT					 NOT NULL,
ID								INT					 NOT NULL,
IDRole							INT					 NOT NULL,

UNIQUE (Phone),
UNIQUE (ID),
UNIQUE (Email),
UNIQUE (Code),
PRIMARY KEY (ID)
);


/** CLIENT'S TABLE **/
CREATE TABLE CLIENT(
Fname							VARCHAR (30)		 NOT NULL,
Sname							VARCHAR (30)		 NOT NULL,
Lname							VARCHAR (30)		 NOT NULL,
Email							VARCHAR (30)		 NOT NULL,
Password_						VARCHAR (30)		 NOT NULL,
Phone							INT		 NOT NULL,
ID								INT					 NOT NULL,
UNIQUE (Phone),
UNIQUE (ID),
UNIQUE (Email),
PRIMARY KEY (ID)
);

/** PROJECT'S TABLE **/
CREATE TABLE PROJECT( 
Location_						VARCHAR (100)		 NOT NULL,
Total_Price						INT				 	 NOT NULL,
IDClient						INT					 NOT NULL,
ID								INT					 NOT NULL,
Name_							VARCHAR(30)			 NOT NULL,
UNIQUE (ID),
PRIMARY KEY (ID)
);

/** PURCHASE'S TABLE **/
CREATE TABLE PURCHASE(
Price							INT					 NOT NULL,
Amount							INT					 NOT NULL,
Date_							DATE,
Description_					VARCHAR (150)		 NOT NULL,
IDProject						INT					 NOT NULL,
IDStage							INT					 NOT NULL,
ID								INT					 NOT NULL,
Location_						VARCHAR(30)			 NOT NULL,
UNIQUE (ID),
PRIMARY KEY (ID)
);

/** STAGE'S TABLE **/
CREATE TABLE STAGE(
Name_							VARCHAR (30)		 NOT NULL,
Description_					VARCHAR (150),
ID								INT					 NOT NULL,
UNIQUE (ID),
PRIMARY KEY (ID) 
);

/** MATERIAL'S TABLE **/
CREATE TABLE MATERIAL(
Name_							VARCHAR (30)		 NOT NULL,
Price							INT					 NOT NULL,
Code							INT					 NOT NULL,
PRIMARY KEY (Code)
);

/** STAGES PER PROJECT TABLE **/
CREATE TABLE STAGES_PER_PROJECT( 
End_Date						DATE				 NOT NULL,
Start_Date_						DATE				 NOT NULL,
IDProject						INT					 NOT NULL,
IDStage							INT				 	 NOT NULL,
ID							INT					 NOT NULL,
PRIMARY KEY (ID),
);

/** ROLE'S TABLE **/
CREATE TABLE ROLE_(
ID								INT					 NOT NULL,
Name_							VARCHAR (30)		 NOT NULL,
UNIQUE (ID),
PRIMARY KEY (ID)
);

/** EMPLOYEES WHO WORK ON PROJECTS TABLE **/
CREATE TABLE WORKS_ON(
Hours_							INT					 NOT NULL,
Day_							DATE				 NOT NULL,
IDEmployee						INT					 NOT NULL,
IDProject						INT					 NOT NULL,
DateName_						VARCHAR (30)		 NOT NULL,
ID							INT					 NOT NULL,
PRIMARY KEY (ID),
);

/** WHO MANAGES EACH PROJECT TABLE **/
CREATE TABLE MANAGES(
IDProject						INT					 NOT NULL,
IDEmployee						INT					 NOT NULL,
ID							INT					 NOT NULL,
PRIMARY KEY (ID),
);

/** ROLES PER EMPLOYEE TABLE **/
CREATE TABLE ROLE_PER_EMPLOYEE( 
IDEmployee						INT					 NOT NULL,
IDRole							INT					 NOT NULL,
ID							INT					 NOT NULL,
PRIMARY KEY (ID),
);

/** MATERIALS PER STAGE TABLE **/
CREATE TABLE MATERIAL_PER_STAGE( 
IDStage							INT					 NOT NULL, 
CodeMaterial					INT					 NOT NULL,
Quantity						INT					 NOT NULL,
Price_aprox						INT					 NOT NULL,
ID							INT					 NOT NULL,
PRIMARY KEY (ID),
);

/*
	ALTER TABLES
*/

ALTER TABLE PROJECT ADD FOREIGN KEY (IDClient) REFERENCES CLIENT(ID);

ALTER TABLE PURCHASE ADD FOREIGN KEY (IDProject) REFERENCES PROJECT(ID);

ALTER TABLE PURCHASE ADD FOREIGN KEY (IDStage) REFERENCES STAGE(ID);

ALTER TABLE STAGES_PER_PROJECT ADD FOREIGN KEY (IDProject) REFERENCES PROJECT(ID);

ALTER TABLE STAGES_PER_PROJECT ADD FOREIGN KEY (IDStage) REFERENCES STAGE(ID);

ALTER TABLE WORKS_ON ADD FOREIGN KEY (IDProject) REFERENCES PROJECT(ID);

ALTER TABLE WORKS_ON ADD FOREIGN KEY (IDEmployee) REFERENCES EMPLOYEE(ID);

ALTER TABLE MANAGES ADD FOREIGN KEY (IDProject) REFERENCES PROJECT(ID);

ALTER TABLE MANAGES ADD FOREIGN KEY (IDEmployee) REFERENCES EMPLOYEE(ID);

ALTER TABLE ROLE_PER_EMPLOYEE ADD FOREIGN KEY (IDEmployee) REFERENCES EMPLOYEE(ID);

ALTER TABLE ROLE_PER_EMPLOYEE ADD FOREIGN KEY (IDRole) REFERENCES ROLE_(ID);

ALTER TABLE MATERIAL_PER_STAGE ADD FOREIGN KEY (IDStage) REFERENCES STAGE(ID);

ALTER TABLE MATERIAL_PER_STAGE ADD FOREIGN KEY (CodeMaterial) REFERENCES MATERIAL(Code);


/*
	Gets of all the DataBase 
*/

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Employee's table information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_employees_table
AS
SELECT *
FROM EMPLOYEE
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Client's table information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_clients_table
AS
SELECT *
FROM CLIENT
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Project's table information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_projects_table
AS
SELECT *
FROM PROJECT
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Purchase's table information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_purchases_table
AS
SELECT *
FROM PURCHASE
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Stage's table information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_stages_table
AS
SELECT *
FROM STAGE
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Material's table information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_materials_table
AS
SELECT *
FROM MATERIAL
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Stages per project information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_stages_per_project_table
AS
SELECT *
FROM STAGES_PER_PROJECT
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Role's table information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_roles_table
AS
SELECT *
FROM ROLE_
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows which employees work on each project
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_works_on_table
AS
SELECT *
FROM WORKS_ON
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Manager's table information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_manages_table
AS
SELECT *
FROM MANAGES
GO;

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Roles per employee information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_roles_per_employee_table
AS
SELECT *
FROM ROLE_PER_EMPLOYEE
GO

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Materials per stage information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_materials_per_stage_table
AS
SELECT *
FROM MATERIAL_PER_STAGE
GO

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Each employee and each role information
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_employees_and_roles 
AS
SELECT EMPLOYEE.ID, EMPLOYEE.Fname, EMPLOYEE.Sname, EMPLOYEE.Lname, ROLE_.Name_
FROM EMPLOYEE
	INNER JOIN ROLE_ ON  EMPLOYEE.IDRole = ROLE_.ID
ORDER BY EMPLOYEE.IDRole
GO


/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Materials and costs per project, per stage
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_materials_and_costs_per_project_per_stage @Project_num INT
AS
SELECT STAGE.Name_ AS Stage_Name_ , STAGES_PER_PROJECT.IDStage, MATERIAL.Name_ AS Material_Name, MATERIAL_PER_STAGE.CodeMaterial, MATERIAL_PER_STAGE.Quantity, PURCHASE.Price
FROM STAGES_PER_PROJECT
	INNER JOIN MATERIAL_PER_STAGE ON STAGES_PER_PROJECT.IDStage = MATERIAL_PER_STAGE.IDStage
	INNER JOIN PURCHASE ON STAGES_PER_PROJECT.IDStage = PURCHASE.IDStage
	INNER JOIN MATERIAL ON MATERIAL_PER_STAGE.CodeMaterial = MATERIAL.Code
	INNER JOIN STAGE ON STAGES_PER_PROJECT.IDStage = STAGE.ID
WHERE STAGES_PER_PROJECT.IDProject=@Project_num
ORDER BY STAGES_PER_PROJECT.IDProject
GO

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Shows Employees who work on Project
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_employee_Information_per_project @Project_Num INT
AS
SELECT EMPLOYEE.ID, EMPLOYEE.Fname , EMPLOYEE.SName, EMPLOYEE.Lname
FROM EMPLOYEE, WORKS_ON
WHERE WORKS_ON.IDProject = @Project_Num
GO

/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Salaries per employee
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_salary_employee_1 @ID INT, @Project INT
AS
SELECT DISTINCT EMPLOYEE.Fname AS First_Name, EMPLOYEE.Sname AS Second_Name, EMPLOYEE.Lname AS Last_Name, EMPLOYEE.Hourly_pay, WORKS_ON.Hours_, STAGE.Name_ AS Stage_Name, STAGES_PER_PROJECT.Start_Date_,STAGES_PER_PROJECT.End_Date, WORKS_ON.DateName_
FROM EMPLOYEE
	INNER JOIN WORKS_ON ON EMPLOYEE.ID = WORKS_ON.IDEmployee
	INNER JOIN STAGES_PER_PROJECT ON STAGES_PER_PROJECT.IDProject = WORKS_ON.IDProject
	INNER JOIN STAGE ON STAGES_PER_PROJECT.IDStage= STAGE.ID
WHERE EMPLOYEE.ID = @ID AND WORKS_ON.IDProject = @Project AND (WORKS_ON.Day_ BETWEEN STAGES_PER_PROJECT.Start_Date_ AND STAGES_PER_PROJECT.End_Date) 
GO
 
/*
 --@AUTHOR Yenira Chacón
 --@CREATE DATE 14/10/2018
 --DESCRIPTION: Ticket per project
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_shopping @Project_num INT
AS
SELECT PURCHASE.ID, PURCHASE.Date_, PURCHASE.Amount, PURCHASE.Price
FROM PURCHASE
WHERE PURCHASE.IDProject= @Project_num
GO

/*
	Inserts of all the DataBase 
*/

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Insertion in the Table Employee
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewEmployee

@IdNewEmployeeName VARCHAR (30),

@IdNewEmployeeFName VARCHAR (30),

@IdNewEmployeeLName VARCHAR (30),

@IdNewEmployeeCode INT,

@IdNewEmployeeEmail VARCHAR (30),

@IdNewEmployeeSpecialty VARCHAR (30),

@IdNewEmployeeHourly_pay INT,

@IdNewEmployeePassword VARCHAR (30),

@IdNewEmployeeRole INT,

@IdNewEmployeePhone INT

AS
BEGIN TRY
	
	-- Verify that the EmployeePhone exists in the PHONES table
	If EXISTS(
		SELECT EMPLOYEE.Phone
		FROM EMPLOYEE
		WHERE @IdNewEmployeePhone = EMPLOYEE.Phone
	)
	BEGIN
		Print 'Record exist'
	END

	Else
		BEGIN

			--	Verify that the EmployeeEmail exists in the Employee table
			If EXISTS(
				SELECT EMPLOYEE.Email
				FROM EMPLOYEE
				WHERE @IdNewEmployeeEmail = EMPLOYEE.Email
			)

			BEGIN
				Print 'Record exist: ' +  @IdNewEmployeeEmail
			END

			ELSE
				BEGIN

					--	Verify that the EmployeeCode exists in the Employee table
					If EXISTS(
						SELECT EMPLOYEE.Code
						FROM EMPLOYEE
						WHERE @IdNewEmployeeCode = EMPLOYEE.Code
					)

					BEGIN
						Print 'Record exist: ' +  (CAST (@IdNewEmployeeCode AS varchar))
					END

					ELSE
						BEGIN

							-- Verifies if the role exists in the Role table
							If EXISTS(
								SELECT ROLE_.ID
								FROM ROLE_
								WHERE @IdNewEmployeeRole = ROLE_.ID
							)

							BEGIN
								
								--	The next ID of the Employee is obtained
								DECLARE @CountEmployeeID varchar (30)
								DECLARE @CountEmployeeIDInt int
								SELECT @CountEmployeeID = count(*) from EMPLOYEE
								SELECT @CountEmployeeIDInt = (CAST (@CountEmployeeID AS int) + 1)

								--	The new data is inserted in the Employee table
								INSERT INTO EMPLOYEE (Fname,	Sname,	Lname,	Code,	Email,	Specialty,	
								Hourly_pay,	Password_,	Phone,	ID,	IDRole) VALUES
								(@IdNewEmployeeName, @IdNewEmployeeFName, @IdNewEmployeeLName, @IdNewEmployeeCode,
								@IdNewEmployeeEmail, @IdNewEmployeeSpecialty, @IdNewEmployeeHourly_pay, 
								@IdNewEmployeePassword, @IdNewEmployeePhone, @CountEmployeeIDInt, @IdNewEmployeeRole)

								--	It prints what was put in the Employee Table
								Print ''
								Print 'The new record was inserted in the table Employee: Name: ' + @IdNewEmployeeName +
								' FName: ' + @IdNewEmployeeFName + ' LName: ' + @IdNewEmployeeLName + 
								' Code: ' + (CAST (@IdNewEmployeeCode AS varchar)) + ' Email: ' + @IdNewEmployeeEmail +
								' Specialty: ' + @IdNewEmployeeSpecialty + ' Hourly_pay: ' + 
								(CAST (@IdNewEmployeeHourly_pay AS varchar)) + ' Password: ' + @IdNewEmployeePassword + 
								' Phone: ' + (CAST (@IdNewEmployeePhone AS varchar)) + ' ID: ' + 
								(CAST (@CountEmployeeIDInt AS varchar)) + ' IDRole' + (CAST (@IdNewEmployeeRole AS varchar))
							END

							ELSE
								BEGIN
									Print 'Record: ' +  (CAST (@IdNewEmployeeRole AS varchar)) + ' do not exist - Insert'
									Print ''
								END

						END

				END

		END
END TRY

BEGIN CATCH
	Print 'Please insert the correct param'
END CATCH

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Insert in the Client table
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewClient
@ClientNewName VARCHAR (30),
@ClientNewFName VARCHAR (30),
@ClientNewLName VARCHAR (30),
@ClientNewEmail VARCHAR (30),
@ClientNewPassword VARCHAR (30),
@ClientNewPhone int

AS
BEGIN
	
	--	It is verified if the phone already exists in the Phones table
	IF EXISTS(
		SELECT CLIENT.Phone
		FROM CLIENT
		WHERE @ClientNewPhone = CLIENT.Phone
	)

	BEGIN
		Print 'Record exist'
	END

	ELSE
		BEGIN

			--	It is found which is the next ID of the Client
			DECLARE @CountClientID varchar (30)
			DECLARE @CountClientIDInt int
			SELECT @CountClientID = count(*) from CLIENT
			SELECT @CountClientIDInt = (CAST (@CountClientID AS int) + 1)

			--	The new client is inserted in the CLIENT table
			INSERT INTO CLIENT (Fname,	Sname,	Lname,	Email,	Password_,	Phone,	ID) VALUES 
			(@ClientNewName, @ClientNewFName, @ClientNewLName, @ClientNewEmail, 
			@ClientNewPassword, @ClientNewPhone, @CountClientIDInt)

			--	Print what was obtained
			Print ''
			Print 'The new record was inserted in the table Client: Name: ' + @ClientNewName +
			' FName: ' + @ClientNewFName + ' LName: ' + @ClientNewLName + 
			' Email: ' + @ClientNewEmail + ' Password: ' + @ClientNewPassword + 
			' Phone: ' + (CAST (@ClientNewPhone AS varchar)) + ' ID: ' + 
			(CAST (@CountClientIDInt AS varchar))

			
		END
END 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Insert in the Project table
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewProject

@ProjectNewLocation VARCHAR (100),
@ProjectNewTotal_Price INT,
@ProjectIDClient INT,
@ProjectNewName VARCHAR (30)

AS
BEGIN
	
	-- It is verified if the client ID exists in the Client table
	IF EXISTS(
		SELECT CLIENT.ID 
		FROM CLIENT 
		WHERE @ProjectIDClient = CLIENT.ID 
	)

	BEGIN

	--	The new Project ID is removed
	DECLARE @CountProjectID varchar (30)
	DECLARE @CountProjectIDInt int
	SELECT @CountProjectID = count(*) from PROJECT
	SELECT @CountProjectIDInt = (CAST (@CountProjectID AS int) + 1)

	--	The new Project is inserted in the PROJECT table
	INSERT INTO PROJECT (Location_,	Total_Price,	IDClient,	ID, Name_) VALUES
	(@ProjectNewLocation, @ProjectNewTotal_Price, @ProjectIDClient, @CountProjectIDInt, @ProjectNewName);


	--	Print what was obtained
	Print ''
	Print 'The new record was inserted in the table Project: Location: ' + @ProjectNewLocation +
	' Total_Price ' + (CAST (@ProjectNewTotal_Price AS varchar)) + ' IDClient ' + (CAST (@ProjectIDClient AS varchar)) + 
	' Name: ' + @ProjectNewName
	END

	ELSE
		BEGIN
			Print 'Record: ' + @ProjectIDClient + ' do not exist - Please Insert Client'
			
		END
END 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Insert in the Purchase table
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewPurchase

@PurchaseNewPrice INT,
@PurchaseNewAmount INT,
@PurchaseNewDate DATE,
@PurchaseNewDescription VARCHAR (150),
@PurchaseNewIDProject INT,
@PurchaseNewIDStage INT,
@PurchaseNewLocation VARCHAR(30)

AS
BEGIN

	--	It is verified that the Project ID exists
	IF EXISTS(
		SELECT PROJECT.ID 
		FROM PROJECT
		WHERE @PurchaseNewIDProject = PROJECT.ID 
	)

	BEGIN

	--	You get the new ID of the purchase
	DECLARE @CountPurchaseID varchar (30)
	DECLARE @CountPurchaseIDInt int
	SELECT @CountPurchaseID = count(*) from PURCHASE
	SELECT @CountPurchaseIDInt = (CAST (@CountPurchaseID AS int) + 1)

		--	It is verified if the ID of the stage exists
		IF EXISTS(
			SELECT STAGE.ID 
			FROM STAGE
			WHERE @PurchaseNewIDStage = STAGE.ID 
		)

		BEGIN 

			--	The purchase is inserted in the PURCHASE table
			INSERT INTO PURCHASE (Price,	Amount,	Date_,	Description_,	IDProject,	IDStage,	ID, Location_) VALUES
			(@PurchaseNewPrice, @PurchaseNewAmount, @PurchaseNewDate, @PurchaseNewDescription, @PurchaseNewIDProject,
			@PurchaseNewIDStage, @CountPurchaseIDInt, @PurchaseNewLocation)

			--	Print what was obtained
			Print ''
			Print 'The new record was inserted in the table PURCHASE: Price: ' + (CAST (@PurchaseNewPrice AS varchar)) +
			' Amount: ' + (CAST (@PurchaseNewAmount AS varchar)) + ' Date: ' + (CAST (@PurchaseNewDate AS varchar)) + 
			' Description: ' + @PurchaseNewDescription + ' IDProject: ' + (CAST (@PurchaseNewIDProject AS varchar)) + 
			' IDStage: ' + (CAST (@PurchaseNewIDStage AS varchar) + ' Location: ' + @PurchaseNewLocation)

		END;

		ELSE 
			BEGIN
					Print 'Record: ' + (CAST (@PurchaseNewIDStage AS varchar)) + ' do not exist - Please Insert Stage'
			END;

	END;

	ELSE

		BEGIN
			Print 'Record: ' + (CAST (@PurchaseNewIDProject AS varchar)) + ' do not exist - Please Insert Project'
			
		END;
END; 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Insert in the Stage table
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewStage

@StageNewName VARCHAR (30),
@StageNewDescription VARCHAR (150)

AS
BEGIN

	--	Verify that the name of the stage exists in the Stage table
	IF EXISTS(
		SELECT STAGE.Name_ 
		FROM STAGE 
		WHERE @StageNewName = STAGE.Name_ 
	)

	BEGIN
		Print 'Record: ' +  @StageNewName+ ' exist'
	END

	ELSE
		BEGIN

			--	Find out what the next Stage ID is
			DECLARE @CountStageID varchar (30)
			DECLARE @CountStageIDInt int
			SELECT @CountStageID = count(*) from STAGE
			SELECT @CountStageIDInt = (CAST (@CountStageID AS int) + 1)


			INSERT INTO STAGE (Name_,	Description_,	ID) VALUES 
			(@StageNewName, @StageNewDescription, @CountStageIDInt)


			--	Print what was obtained
			Print ''
			Print 'The new record was inserted in the table Stage: Name: ' + @StageNewName +
			' Description: ' + @StageNewDescription + ' ID: ' + (CAST (@CountStageIDInt AS varchar))

		END

END

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Inserted a new material in the table MATERIAL
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewMaterial

@MaterialNewName VARCHAR (30),
@MaterialNewPrice INT,
@MaterialNewCode INT

AS
BEGIN
	
	--	It checks if the name is in the table
	IF EXISTS(
		SELECT MATERIAL.Name_ 
		FROM MATERIAL
		WHERE @MaterialNewName = MATERIAL.Name_ 
	)

	BEGIN
		Print 'Record: ' +  @MaterialNewName + ' exist'
	END

	ELSE
		BEGIN

		--	It is verified if the Code is repeated
		IF EXISTS(
			SELECT MATERIAL.Code 
			FROM MATERIAL
			WHERE @MaterialNewCode = MATERIAL.Code 
		)

		BEGIN
			Print 'Record: ' +  @MaterialNewCode + ' exist'
		END

		ELSE
			BEGIN

				--	The new material is inserted in the MATERIAL table
				INSERT INTO MATERIAL (Name_, Price, Code) VALUES 
				(@MaterialNewName, @MaterialNewPrice, @MaterialNewCode)

				--	Print what was obtained
				Print ''
				Print 'The new record was inserted in the table MATERIAL: Name: ' + @MaterialNewName +
				' Price: ' + (CAST (@MaterialNewPrice AS VARCHAR)) + ' Code: ' + 
				(CAST (@MaterialNewCode AS VARCHAR))

			END
			
		END
END 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Inserted a new stage of a project in the table STAGES_PER_PROJECT
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewStages_Per_Project

@Stages_Per_ProjectNewEnd_Date DATE,
@Stages_Per_ProjectNewStart_Date DATE,
@Stages_Per_ProjectNewIDProject INT,
@Stages_Per_ProjectNewIDStage INT

AS
BEGIN
	
	-- It checks if the IDProject exists in the PROJECT table
	IF EXISTS(
		SELECT PROJECT.ID
		FROM PROJECT
		WHERE @Stages_Per_ProjectNewIDProject = PROJECT.ID 
	)

	BEGIN
		
		--	It is verified if the IDStage exists in the STAGE table
		IF EXISTS(
			SELECT STAGE.ID
			FROM STAGE
			WHERE @Stages_Per_ProjectNewIDStage = STAGE.ID
		)

		BEGIN

			--	Find out what the next Stage_Per_Project ID is
			DECLARE @CountStage_Per_ProjectID varchar (30)
			DECLARE @CountStage_Per_ProjectIDInt int
			SELECT @CountStage_Per_ProjectID = count(*) from STAGES_PER_PROJECT
			SELECT @CountStage_Per_ProjectIDInt = (CAST (@CountStage_Per_ProjectID AS int) + 1)
			
			--	A new stage of a project is inserted in the table STAGES_PER_PROJECT
			INSERT INTO STAGES_PER_PROJECT (End_Date,	Start_Date_,	IDProject,	IDStage, ID) VALUES
			(@Stages_Per_ProjectNewEnd_Date, @Stages_Per_ProjectNewStart_Date, @Stages_Per_ProjectNewIDProject,
			@Stages_Per_ProjectNewIDStage, @CountStage_Per_ProjectIDInt)

			--	What was saved is printed
			Print ''
			Print 'The new record was inserted in the table STAGES_PER_PROJECT: End_Date: ' + 
			(CAST (@Stages_Per_ProjectNewEnd_Date AS VARCHAR)) + ' Start_Date: ' + 
			(CAST (@Stages_Per_ProjectNewStart_Date AS VARCHAR)) + ' IDProject: ' + 
			(CAST (@Stages_Per_ProjectNewIDProject AS VARCHAR)) + ' IDStage: ' + 
			(CAST (@Stages_Per_ProjectNewIDStage AS VARCHAR)) + ' ID: ' + 
			(CAST (@CountStage_Per_ProjectIDInt AS VARCHAR))

		END

		ELSE
			BEGIN
				Print 'Record: ' +  @Stages_Per_ProjectNewIDStage + ' do not exist - Please insert new Stage'
			END

	END

	ELSE
		BEGIN
			Print 'Record: ' +  @Stages_Per_ProjectNewIDProject + ' do not exist - Please insert new Project'
		END
END 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Insert a new role in the table ROLE_
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewRole
 
@RoleNewName VARCHAR (30)

AS
BEGIN
	
	--	It tells me if the name of the Role exists in the Role table
	IF EXISTS (
		SELECT ROLE_.Name_
		FROM ROLE_
		WHERE @RoleNewName = ROLE_.Name_
	)

	BEGIN
		Print 'Record: ' + @RoleNewName + ' exist'
	END

	ELSE
		BEGIN

			--	The following ID of the ROLE_ is found
			DECLARE @CountRoleID varchar (30)
			DECLARE @CountRoleIDInt int
			SELECT @CountRoleID = count(*) from ROLE_
			SELECT @CountRoleIDInt = (CAST (@CountRoleID AS int) + 1)

			--	The new role is inserted in the table ROLE_
			INSERT INTO ROLE_ (ID, Name_) VALUES
			(@CountRoleIDInt, @RoleNewName)

			--	The new role saved in the table ROLE_ is printed
			Print ''
			Print 'The new record was inserted in the table ROLE: ID: ' + (CAST (@CountRoleIDInt AS varchar)) + 
			' Name: ' + @RoleNewName
			
		END
END 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Insert a new datum in the WORKS_ON table
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewWorks_On

@Works_OnNewHours INT,
@Works_OnNewDay DATE,
@Works_OnNewIDEmployee INT,
@Works_OnNewIDProject INT

AS
BEGIN

	--	It is verified if the IDEmployee exists in the EMPLOYEE table
	IF EXISTS (
		SELECT EMPLOYEE.ID
		FROM EMPLOYEE
		WHERE @Works_OnNewIDEmployee = EMPLOYEE.ID
	)

	BEGIN

		--	It checks if the IDProject exists in the PROJECT table
		IF EXISTS (
			SELECT PROJECT.ID
			FROM PROJECT
			WHERE @Works_OnNewIDProject = PROJECT.ID
		)

		BEGIN

			--	Find out what the next WORKS_ON ID is
			DECLARE @CountWorks_OnID varchar (30)
			DECLARE @CountWorks_OnIDInt int
			SELECT @CountWorks_OnID = count(*) from WORKS_ON
			SELECT @CountWorks_OnIDInt = (CAST (@CountWorks_OnID AS int) + 1)
			
			--	The new data is inserted in the table WORKS_ON
			INSERT INTO WORKS_ON (Hours_,	Day_,	IDEmployee,	IDProject, DateName_ ,ID) VALUES
			(@Works_OnNewHours, @Works_OnNewDay, @Works_OnNewIDEmployee, @Works_OnNewIDProject, 
			datename(dw,@Works_OnNewDay), @CountWorks_OnIDInt)

			--	What is saved in the WORKS_ON table is printed
			Print ''
			Print 'The new record was inserted in the table WORKS_ON: Hours: ' + (CAST (@Works_OnNewHours AS varchar)) +
			' Day: ' + (CAST (@Works_OnNewDay AS varchar)) + ' IDEmployee: ' + (CAST (@Works_OnNewIDEmployee AS varchar)) +
			' IDProject: ' + (CAST (@Works_OnNewIDProject AS varchar)) + ' DateName: ' + datename(dw,@Works_OnNewDay) +
			' ID: ' + (CAST (@CountWorks_OnIDInt AS varchar))

		END

		ELSE
			BEGIN
				Print 'Record: ' + (CAST (@Works_OnNewIDProject AS varchar(30))) + ' do not exist'
			END

	END

	ELSE
		BEGIN
			Print 'Record: ' + (CAST (@Works_OnNewIDEmployee AS varchar(30))) + ' do not exist'
		END

END 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Insert a new datum in the MANAGES table
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewManages

@ManagesNewIDProject INT,
@ManagesNewIDEmployee INT

AS
BEGIN

	--	It is verified if the IDEmployee exists in the EMPLOYEE table
	IF EXISTS (
		SELECT EMPLOYEE.ID
		FROM EMPLOYEE
		WHERE @ManagesNewIDEmployee = EMPLOYEE.ID
	)

	BEGIN

		--	It checks if the IDProject exists in the PROJECT table
		IF EXISTS (
			SELECT PROJECT.ID
			FROM PROJECT
			WHERE @ManagesNewIDProject  = PROJECT.ID
		)

		BEGIN
			
			--	Find out what the next Manages ID is
			DECLARE @CountManagesID varchar (30)
			DECLARE @CountManagesIDInt int
			SELECT @CountManagesID = count(*) from MANAGES
			SELECT @CountManagesIDInt = (CAST (@CountManagesID AS int) + 1)

			--	The new data is inserted in the MANAGES table
			INSERT INTO MANAGES (IDProject,	IDEmployee, ID) VALUES 
			(@ManagesNewIDProject, @ManagesNewIDEmployee, @CountManagesIDInt)

			--	What was saved in the MANAGES table is printed
			Print ''
			Print 'The new record was inserted in the table MANAGES: IDProject: ' + 
			(CAST (@ManagesNewIDProject AS varchar)) + ' IDEmployee: ' + 
			(CAST (@ManagesNewIDEmployee AS varchar)) + ' ID: ' + 
			(CAST (@CountManagesIDInt AS varchar))

		END

		ELSE
			BEGIN
				Print 'Record: ' + (CAST (@ManagesNewIDProject  AS varchar(30))) + ' do not exist'
			END

	END

	ELSE
		BEGIN
			Print 'Record: ' + (CAST (@ManagesNewIDEmployee AS varchar(30))) + ' do not exist'
		END

END 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Inserted a new data in the table ROLE_PER_EMPLOYEE
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewRole_Per_Employee
 
@Role_Per_EmployeeNewIDEmployee INT,
@Role_Per_EmployeeNewIDRole INT

AS
BEGIN
	
	--	It is verified if the IDEmployee exists in the EMPLOYEE table
	IF EXISTS(
		SELECT EMPLOYEE.ID
		FROM EMPLOYEE
		WHERE @Role_Per_EmployeeNewIDEmployee = EMPLOYEE.ID
	)

	BEGIN 

		--	It is verified if the IDRole exists in the table ROLE_
		IF EXISTS(
			SELECT ROLE_.ID
			FROM ROLE_
			WHERE @Role_Per_EmployeeNewIDRole = ROLE_.ID
		)

		BEGIN

			--	Find out what the next Role_Per_Employee ID is
			DECLARE @CountRole_Per_EmployeeID varchar (30)
			DECLARE @CountRole_Per_EmployeeIDInt int
			SELECT @CountRole_Per_EmployeeID = count(*) from ROLE_PER_EMPLOYEE
			SELECT @CountRole_Per_EmployeeIDInt = (CAST (@CountRole_Per_EmployeeID AS int) + 1)
			
			--	The new data is inserted in the table ROLE_PER_EMPLOYEE
			INSERT INTO ROLE_PER_EMPLOYEE (IDEmployee,	IDRole, ID) VALUES 
			(@Role_Per_EmployeeNewIDEmployee, @Role_Per_EmployeeNewIDRole, @CountRole_Per_EmployeeIDInt)

			--	What is saved in the table is printed ROLE_PER_EMPLOYEE
			Print ''
			Print 'The new record was inserted in the table ROLE_PER_EMPLOYEE: IDEmployee: ' + 
			(CAST (@Role_Per_EmployeeNewIDEmployee AS varchar)) + ' IDRole: ' + 
			(CAST (@Role_Per_EmployeeNewIDRole AS varchar)) + ' ID: ' + 
			(CAST (@CountRole_Per_EmployeeIDInt AS varchar))

		END

		ELSE
			BEGIN
				Print 'Record: ' + (CAST (@Role_Per_EmployeeNewIDRole  AS varchar(30))) + 
				' do not exist'
			END

	END

	ELSE
		BEGIN
			Print 'Record: ' + (CAST (@Role_Per_EmployeeNewIDEmployee  AS varchar(30))) + 
			' do not exist'
		END
END 

/*
 --@AUTHOR Dayanna Quesada
 --@CREATE DATE 15/10/2018
 --DESCRIPTION: Inserted data in the table MATERIAL_PER_STAGE
*/

GO
USE TEConstruye
GO

CREATE PROCEDURE usp_InsertNewMaterial_Per_Stage

@Material_Per_StageNewIDStage INT,
@Material_Per_StageNewCodeMaterial INT,
@Material_Per_StageNewQuantity INT

AS
BEGIN

	--	It is verified if the IDStage exists in the STAGE table
	IF EXISTS (
		SELECT STAGE.ID
		FROM STAGE
		WHERE @Material_Per_StageNewIDStage = STAGE.ID
	)

	BEGIN
		
		--	It is verified if the CodeMaterial exists in the MATERIAL table
		IF EXISTS (
			SELECT MATERIAL.Code 
			FROM MATERIAL
			WHERE @Material_Per_StageNewCodeMaterial = MATERIAL.Code 
		)

		BEGIN

			--	Find out what the next Role_Per_Employee ID is
			DECLARE @CountMaterial_Per_StageID varchar (30)
			DECLARE @CountMaterial_Per_StageIDInt int
			SELECT @CountMaterial_Per_StageID = count(*) from MATERIAL_PER_STAGE 
			SELECT @CountMaterial_Per_StageIDInt = (CAST (@CountMaterial_Per_StageID AS int) + 1)

			--	The price of the material is selected
			DECLARE @CountMaterialPriceInt int
			Select @CountMaterialPriceInt = MATERIAL.Price 
			FROM MATERIAL, MATERIAL_PER_STAGE 
			WHERE @Material_Per_StageNewCodeMaterial = MATERIAL.Code

			Print ''
			Print 'This is the price obtained: ' + (CAST (@CountMaterialPriceInt  AS varchar))
			Print ''

			DECLARE @CountMaterialPrice_aprox int
			Select @CountMaterialPrice_aprox = @CountMaterialPriceInt * 
			@Material_Per_StageNewQuantity

			Print ''
			Print 'This is the approximate price obtained: ' + 
			(CAST (@CountMaterialPrice_aprox  AS varchar))
			Print ''


			--	The data is inserted in the table MATERIAL_PER_STAGE
			INSERT INTO MATERIAL_PER_STAGE (IDStage,	CodeMaterial,	Quantity,	Price_aprox, ID) VALUES
			(@Material_Per_StageNewIDStage, @Material_Per_StageNewCodeMaterial, 
			@Material_Per_StageNewQuantity, @CountMaterialPrice_aprox, @CountMaterial_Per_StageIDInt);

			--	What is saved in the MATERIAL_PER_STAGE table is printed
			Print ''
			Print 'The new record was inserted in the table MATERIAL_PER_STAGE: IDStage: ' + 
			(CAST (@Material_Per_StageNewIDStage AS varchar)) +
			' CodeMaterial: ' + (CAST (@Material_Per_StageNewCodeMaterial AS varchar)) + 
			' Quantity: ' + (CAST (@Material_Per_StageNewQuantity AS varchar)) +
			' Price_aprox: ' + (CAST (@CountMaterialPrice_aprox AS varchar)) + 
			' ID: ' + (CAST (@CountMaterial_Per_StageIDInt AS varchar))

		END

		ELSE
			BEGIN
				Print 'Record: ' + (CAST (@Material_Per_StageNewCodeMaterial  AS varchar(30))) + 
				' do not exist'
			END

	END

	ELSE
		BEGIN
			Print 'Record: ' + (CAST (@Material_Per_StageNewIDStage  AS varchar(30))) + 
				' do not exist'
		END
END

CREATE TRIGGER _change_salary
ON EMPLOYEE
AFTER UPDATE
AS
BEGIN
DECLARE @actual_salary INT
DECLARE @new_salary INT
IF @new_salary<1000
RAISERROR('El salario de un empleado no puede ser menor al salario mínimo',16,1);
ROLLBACK TRANSACTION;
RETURN;
END;

CREATE TRIGGER _purchase_validation
ON PURCHASE
AFTER UPDATE
AS
BEGIN
DECLARE @actual_purchase INT
DECLARE @cost INT
IF @cost<0
RAISERROR('La compra debe tener un costo mayor o igual a 0',16,1);
ROLLBACK TRANSACTION;
RETURN;
END;
