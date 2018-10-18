GO
USE TEConstruye
GO

/*
	Testing Procedures
*/

/*
	All the insert in the Database
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