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
		
			Print 'Record: ' + (CAST (@IdNewEmployeePhone AS varchar)) + ' do not exist - Insert'

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

					Print 'Record: ' +  @IdNewEmployeeEmail + ' do not exist - Insert'
					Print 'enter verify Email'

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
							Print 'Record: ' +  (CAST (@IdNewEmployeeCode AS varchar)) + ' do not exist - Insert'
							Print 'Enter verify code'

							-- Verifies if the role exists in the Role table
							If EXISTS(
								SELECT ROLE_.ID
								FROM ROLE_
								WHERE @IdNewEmployeeRole = ROLE_.ID
							)

							BEGIN
								Print 'Record exist: ' +  (CAST (@IdNewEmployeeRole AS varchar)) 
								Print 'Enter Insert'
								
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
			
			--	A new stage of a project is inserted in the table STAGES_PER_PROJECT
			INSERT INTO STAGES_PER_PROJECT (End_Date,	Start_Date_,	IDProject,	IDStage) VALUES
			(@Stages_Per_ProjectNewEnd_Date, @Stages_Per_ProjectNewStart_Date, @Stages_Per_ProjectNewIDProject,
			@Stages_Per_ProjectNewIDStage)

			--	What was saved is printed
			Print ''
			Print 'The new record was inserted in the table STAGES_PER_PROJECT: End_Date: ' + 
			(CAST (@Stages_Per_ProjectNewEnd_Date AS VARCHAR)) + ' Start_Date: ' + 
			(CAST (@Stages_Per_ProjectNewStart_Date AS VARCHAR)) + ' IDProject: ' + 
			(CAST (@Stages_Per_ProjectNewIDProject AS VARCHAR)) + ' IDStage: ' + 
			(CAST (@Stages_Per_ProjectNewIDStage AS VARCHAR))

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
			
			--	The new data is inserted in the table WORKS_ON
			INSERT INTO WORKS_ON (Hours_,	Day_,	IDEmployee,	IDProject) VALUES
			(@Works_OnNewHours, @Works_OnNewDay, @Works_OnNewIDEmployee, @Works_OnNewIDProject)

			--	What is saved in the WORKS_ON table is printed
			Print ''
			Print 'The new record was inserted in the table WORKS_ON: Hours: ' + (CAST (@Works_OnNewHours AS varchar)) +
			' Day: ' + (CAST (@Works_OnNewDay AS varchar)) + ' IDEmployee: ' + (CAST (@Works_OnNewIDEmployee AS varchar)) +
			' IDProject: ' + (CAST (@Works_OnNewIDProject AS varchar))

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
			
			--	The new data is inserted in the MANAGES table
			INSERT INTO MANAGES (IDProject,	IDEmployee) VALUES 
			(@ManagesNewIDProject, @ManagesNewIDEmployee)

			--	What was saved in the MANAGES table is printed
			Print ''
			Print 'The new record was inserted in the table MANAGES: IDProject: ' + 
			(CAST (@ManagesNewIDProject AS varchar)) + ' IDEmployee: ' + 
			(CAST (@ManagesNewIDEmployee AS varchar)) 

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
			
			--	The new data is inserted in the table ROLE_PER_EMPLOYEE
			INSERT INTO ROLE_PER_EMPLOYEE (IDEmployee,	IDRole) VALUES 
			(@Role_Per_EmployeeNewIDEmployee, @Role_Per_EmployeeNewIDRole)

			--	What is saved in the table is printed ROLE_PER_EMPLOYEE
			Print ''
			Print 'The new record was inserted in the table ROLE_PER_EMPLOYEE: IDEmployee: ' + 
			(CAST (@Role_Per_EmployeeNewIDEmployee AS varchar)) + ' IDRole: ' + 
			(CAST (@Role_Per_EmployeeNewIDRole AS varchar)) 

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
			INSERT INTO MATERIAL_PER_STAGE (IDStage,	CodeMaterial,	Quantity,	Price_aprox) VALUES
			(@Material_Per_StageNewIDStage, @Material_Per_StageNewCodeMaterial, 
			@Material_Per_StageNewQuantity, @CountMaterialPrice_aprox);

			--	What is saved in the MATERIAL_PER_STAGE table is printed
			Print ''
			Print 'The new record was inserted in the table MATERIAL_PER_STAGE: IDStage: ' + 
			(CAST (@Material_Per_StageNewIDStage AS varchar)) +
			' CodeMaterial: ' + (CAST (@Material_Per_StageNewCodeMaterial AS varchar)) + 
			' Quantity: ' + (CAST (@Material_Per_StageNewQuantity AS varchar)) +
			' Price_aprox: ' + (CAST (@CountMaterialPrice_aprox AS varchar))

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
SELECT STAGES_PER_PROJECT.IDStage, MATERIAL_PER_STAGE.CodeMaterial, MATERIAL_PER_STAGE.Quantity, PURCHASE.Price
FROM STAGES_PER_PROJECT
	INNER JOIN MATERIAL_PER_STAGE ON STAGES_PER_PROJECT.IDStage = MATERIAL_PER_STAGE.IDStage
	INNER JOIN PURCHASE ON STAGES_PER_PROJECT.IDStage = PURCHASE.IDStage
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
SELECT  EMPLOYEE.ID , EMPLOYEE.Fname, EMPLOYEE.Sname, EMPLOYEE.Lname, EMPLOYEE.Hourly_pay, WORKS_ON.Hours_
FROM EMPLOYEE
	INNER JOIN WORKS_ON ON EMPLOYEE.ID = WORKS_ON.IDEmployee
WHERE EMPLOYEE.ID = @ID AND WORKS_ON.IDProject = @Project
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
	Testing Procedures Gets
*/

EXECUTE usp_employees_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_clients_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_projects_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_purchases_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_stages_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_materials_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_stages_per_project_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_roles_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_works_on_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_manages_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_roles_per_employee_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_materials_per_stage_table;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_employees_and_roles;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_materials_and_costs_per_project_per_stage @Project_num=1;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_employee_Information_per_project @Project_Num=2;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_salary_employee_1 @ID=8,@Project=1;

--------------------------------------------------------------------------------------------------------------------------

EXECUTE usp_shopping @Project_num=2;

--------------------------------------------------------------------------------------------------------------------------

/*
	Testing Procedures Inserts
*/

--Show me which is the largest ID in the table
SELECT MAX(EMPLOYEE.ID) from EMPLOYEE

--Insert a data in the Employee table
EXECUTE usp_InsertNewEmployee 'Prueba', 'Test', 'LName', 123456, 
'test@prueba.com', 'Civil', 2, '123', 1, 123456

--Show me which is the largest ID in the table
SELECT MAX(EMPLOYEE.ID) from EMPLOYEE

--------------------------------------------------------------------------------------------------------------------------


--Show me which is the largest ID in the table
SELECT MAX(CLIENT.ID) from CLIENT

--Insert a data in the Client table
EXECUTE usp_InsertNewClient 'Prueba', 'Test', 'LName', 'test@prueba.com', 123, 666

--Show me which is the largest ID in the table
SELECT MAX(CLIENT.ID) from CLIENT

--------------------------------------------------------------------------------------------------------------------------

--	Show me which is the largest ID in the table
SELECT MAX(PROJECT.ID) from PROJECT

--	Insert a data in the Project table
EXECUTE usp_InsertNewProject 'TEST', 123, 1, 'Prueba'

--	Show me which is the largest ID in the table
SELECT MAX(PROJECT.ID) from PROJECT

--------------------------------------------------------------------------------------------------------------------------

--	Show me which is the largest ID in the table
SELECT MAX(PURCHASE.ID) from PURCHASE

--	Insert a data in the Purchase table
EXECUTE usp_InsertNewPurchase 123, 2, '20170814', 'Esto es una prueba', 1, 1, 'YOLO'

--	Show me which is the largest ID in the table
SELECT MAX(PURCHASE.ID) from PURCHASE

--------------------------------------------------------------------------------------------------------------------------

--	Show me which is the largest ID in the table
SELECT MAX(STAGE.ID) from STAGE

--	Insert a data in the Stage table
EXECUTE usp_InsertNewStage 'Test', 'Esto es una prueba'

--	Show me which is the largest ID in the table
SELECT MAX(STAGE.ID) from STAGE

--------------------------------------------------------------------------------------------------------------------------

--	It shows me how many data there are in the material table
SELECT COUNT (*) FROM MATERIAL

--	Insert a data in the Material table
EXECUTE usp_InsertNewMaterial 'Test', 123, 666

--	It shows me how many data there are in the material table
SELECT COUNT (*) FROM MATERIAL

--------------------------------------------------------------------------------------------------------------------------

--	It shows me how many data there is in the Stages_Per_Project table
SELECT COUNT (*) FROM STAGES_PER_PROJECT

--	Insert a data in the table Stages_Per_Project
EXECUTE usp_InsertNewStages_Per_Project '20170707', '20170107', 2, 2

--	It shows me how many data there is in the Stages_Per_Project table
SELECT COUNT (*) FROM STAGES_PER_PROJECT

--------------------------------------------------------------------------------------------------------------------------

--	Show me which is the largest ID in the table
SELECT MAX(ROLE_.ID) from ROLE_

--	Inserted a piece of information in the Phones table
EXECUTE usp_InsertNewRole 'TEST'

--	Show me which is the largest ID in the table
SELECT MAX(ROLE_.ID) from ROLE_

--------------------------------------------------------------------------------------------------------------------------

--	It shows me how many data there is in the Works_On table
SELECT COUNT (*) FROM WORKS_ON

--	Inserted a data in the Works_On table
EXECUTE usp_InsertNewWorks_On 6, '20170701', 1, 2

--	It shows me how many data there is in the Works_On table
SELECT COUNT (*) FROM WORKS_ON

--------------------------------------------------------------------------------------------------------------------------

--	It shows me how much data there is in the Manages table
SELECT COUNT (*) FROM MANAGES

--	Inserted a data in the Manages table
EXECUTE usp_InsertNewManages 2, 23

--	It shows me how much data there is in the Manages table
SELECT COUNT (*) FROM MANAGES

--------------------------------------------------------------------------------------------------------------------------

--	It shows me how many data there is in the table Role_Per_Employee
SELECT COUNT (*) FROM ROLE_PER_EMPLOYEE

--	Inserted a data in the table Role_Per_Employee
EXECUTE usp_InsertNewRole_Per_Employee 23, 2

--	It shows me how many data there is in the table Role_Per_Employee
SELECT COUNT (*) FROM ROLE_PER_EMPLOYEE

--------------------------------------------------------------------------------------------------------------------------

--	It shows me how much data there is in the Material_Per_Stage table
SELECT COUNT (*) FROM MATERIAL_PER_STAGE

--	Inserted a data in the table Material_Per_Stage
EXECUTE usp_InsertNewMaterial_Per_Stage 7, 8975425, 12

--	It shows me how much data there is in the Material_Per_Stage table
SELECT COUNT (*) FROM MATERIAL_PER_STAGE

--------------------------------------------------------------------------------------------------------------------------

/*
	All Drops of Procedures
*/

--DROP PROCEDURE usp_InsertNewEmployee
--DROP PROCEDURE usp_InsertNewClient
--DROP PROCEDURE usp_InsertNewProject
--DROP PROCEDURE usp_InsertNewPurchase
--DROP PROCEDURE usp_InsertNewStage
--DROP PROCEDURE usp_InsertNewMaterial
--DROP PROCEDURE usp_InsertNewStages_Per_Project
--DROP PROCEDURE usp_InsertNewRole
--DROP PROCEDURE usp_InsertNewWorks_On
--DROP PROCEDURE usp_InsertNewManages
--DROP PROCEDURE usp_InsertNewRole_Per_Employee
--DROP PROCEDURE usp_InsertNewMaterial_Per_Stage
--DROP DATABASE TEConstruye
--DROP PROCEDURE usp_employees_table;
--DROP PROCEDURE usp_clients_table;
--DROP PROCEDURE usp_projects_table;
--DROP PROCEDURE usp_purchases_table;
--DROP PROCEDURE usp_stages_table;
--DROP PROCEDURE usp_materials_table;
--DROP PROCEDURE usp_stages_per_project_table;
--DROP PROCEDURE usp_roles_table;
--DROP PROCEDURE usp_works_on_table;
--DROP PROCEDURE usp_manages_table;
--DROP PROCEDURE usp_roles_per_employee_table;
--DROP PROCEDURE usp_materials_per_stage_table;
--DROP PROCEDURE usp_employees_and_roles;
--DROP PROCEDURE usp_materials_and_costs_per_project_per_stage @Project_num=1;
--DROP PROCEDURE usp_employee_Information_per_project @Project_Num=2;
--DROP PROCEDURE usp_salary_employee_1 @ID=8,@Project=1;
--DROP PROCEDURE usp_shopping @Project_num=2;