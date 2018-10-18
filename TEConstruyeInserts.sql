GO
USE TEConstruye
GO

INSERT INTO ROLE_ (ID, Name_) VALUES 
(1,	'Ingeriero'),
(2,	'Administrador'),
(3,	'Maestro de Obras'),
(4,	'Operario'),
(5,	'Peón');

INSERT INTO MATERIAL (Name_, Price, Code) VALUES 
('Materiales de oficina', 20000, 8975425),
('Tablas',	5000,	1110232),
('Reglas',	2000,	5243122),
('Clavos',	10000,	2598463),
('Varilla',	1800,	3658781),
('Alambre de amarra',	10000,	9415174),
('Tubo para corriente',	2000,	4856872),
('Tubo para agua',	1300,	6987531),
('Tubo sanitarios',	4000,	7895600),
('Formaletas',	5000,	3320056),
('Perlin',	6000,	8980216),
('Tornillos', 	15000,	2316540),
('Cin',	15000,	1265448),
('Varilla de soldadura',	15000,	8754566),
('Furrin',	2000,	2184615),
('Producto listo de repello',	16000,	4835215),
('Concreto',	8000,	2658416),
('Ceramica',	12000,	5265465),
('Bondex',	3600,	7454941),
('Caja break',	100000,	9956984),
('Tubos Conduit', 	3000,	6867465),
('Conectores',	200,	2168431),
('Breaks',	40000,	6598453),
('Cables',	26500,	5874764),
('Toma corriente',	1600,	8945644),
('Apagadores',	1400,	5448664),
('Lámparas',	6000,	8976545),
('Ducha', 	15000,	6502004),
('Bisagras',	2000,	1235489),
('Llavines',	20000,	2151513),
('Vidrio',	80000,	5453545),
('Estructura de aluminio',	80000,	5484132),
('Madera',	400000,	6525425),
('Granito',	800000,	7878785),
('Tape',	2000,	9953541),
('Pintura', 	20000,	2354586),
('Diluyente', 	7000,	3365544),
('Brochas',	4000,	4548654),
('Madera para las escaleras',	100000,	8877985); 

INSERT INTO CLIENT (Fname,	Sname,	Lname,	Email,	Password_,	Phone,	ID) VALUES 
('Jennifer',	'Schmidt',	'Yates',	'jenSchmidt@gmail.com',	'j3NsChY4t3s',	80122325,	1),
('Niko',	'Vasquez',	'Moody',	'nikoVas@gmail.com',	'n1K0V4s',	83212850,	2);

INSERT INTO STAGE (Name_,	Description_,	ID) VALUES 
('Trabajo Preliminar',	'El trazado inicial',	1),
('Cimientos',	'Zanja con concreto',	2),
('Paredes',	'Formación de la estructura',	3),
('Concreto Reforzado',	'Muros de concreto chorreado',	4),
('Techos',	'Techo de la construcción',	5),
('Cielos',	'Separación del techo con la casa',	6),
('Repello',	'Afinación de paredes',	7),
('Entrepisos',	'Chorrea del piso',	8),
('Pisos',	'Piso de la casa',	9),
('Enchapes',	'Arreglo de pared',	10),
('Instalación Pluvial', 'Instalación de tuberías',	11),
('Instalación Sanitaria',	'Instalación de tubos para desagüe',	12),
('Instalación Eléctrica',	'Electricidad para la casa',	13),
('Puertas',	'Instalación de puertas',	14),
('Cerrajería',	'Llavines de la casa',	15),
('Ventanas',	'Ventanas de la casa',	16),
('Closets',	'Los roperos de la casa',	17),
('Mueble de Cocina',	'La cocina de la casa',	18),
('Pintura',	'Pintura de la casa',	19),
('Escaleras',	'Las escaleras de la casa',	20),
('Terminado',	'Terminación del proyecto',	21);

INSERT INTO EMPLOYEE (Fname,	Sname,	Lname,	Code,	Email,	Specialty,	Hourly_pay,	Password_,	Phone,	ID,	IDRole) VALUES
('Richard',	'Johnson',	'Clark',	1935264,	'riJoHnC@teconstruye.com',	'Civil',	3500,	'R1cH4rD',	89855076,	1,	1),
('Jorge',	'Warner',	'Spears',	2165121,	'joWarner@teconstruye.com',	'Trabajador',	1500,	'j0rg3w4rN3r',	85216302,	2,	5),
('Alice',	'Flores',	'Lopez',	1283456,	'alFloLz@teconstruye.com',	'Eléctrico',	3000,	'A1ic3L0z',	89523666,	3,	1),
('Becky',	'Santos',	'Baxter',	8151312,	'beckSant@teconstruye.com',	'Trabajador',	1500,	'b3cKyS4nt',	87565152,	4,	5),
('Keith',	'Miller',	'Wilson', 2054123,	'keMiWi@teconstruye.com',	'Construcción',	3500,	'K31hTm1W1',	89023698,	5,	1),
('Alejandro',	'Sears',	'Gaines',	5788988,	'aleSears@teconstruye.com',	'Trabajador',	1500,	'4l3S34rs',	81230044,	6,	5),
('Maria',	'Smith',	'Roman',	2539205,	'maSmTro@teconstruye.com',	'Construcción',	2500,	'm4R14sTh',	89756534,	7,	4),
('Kelly',	'McDonald',	'Cefalu',	1230545,	'kelMcCef@teconstruye.com',	'Director',	3000,	'k31LyMc',	85862153,	8, 3),
('Eugene',	'Lee',	'Chang',	9654201,	'euLeEcG@teconstruye.com',	'Enchapado',	2500,	'EuG3n13L33',	82465789,	9,	4),
('Wesly',	'Lowe',	'Ayala',	6555454,	'wesLowe@teconstruye.com',	'Trabajador',	1500,	'w3s1yL0w3',	87956541,	10,	5),
('Karen',	'Reyes',	'Rivas',	7520135,	'kaReRs@teconstruye.com',	'Eléctrico',	3000,	'K4r3nR3y',	87596950,	11,	1),
('Diana',	'Soto',	'Cortez',	8999985,	'dianSot@teconstruye.com',	'Trabajador',	1500,	'd14n4S0t0',	82412351,	12,	5),
('Ned',	'Ferrer',	'Lozano',	2054235,	'neFrLo@teconstruye.com',	'Armadura',	2500,	'n3dF3rL0',	86212058,	13,	4),
('Mark',	'Romero',	'Lloyd',	2222251,	'maRomLd@teconstruye.com',	'Trabajador',	1500,	'm4rKr0M3r0',	82372899,	14,	5),
('Ariel',	'Garcia',	'Perez',	2301156,	'arGaRpZ@teconstruye.com',	'Concreto',	2500,	'4R13Lg4',	88865455,	15,	4),
('Sophie',	'Frost',	'Klein',	3553122,	'soFrost@teconstruye.com',	'Trabajador',	1500,	's0pH13Fr0st',	89345620,	16,	5),
('Zack',	'Scott',	'Baker',	8745454,	'zaStBr@teconstruye.com',	'Fontanero',	2500,	'z4CkSc0t7',	89313820,	17,	4),
('Francisco',	'Wiley', 	'Guerra',	2515312,	'fraWiley@teconstruye.com',	'Director',	3000,	'Fr4nW1L3y',	80321534,	18,	3),
('Teresa',	'Long',	'Foster',	2138704,	'teLgFr@teconstruye.com',	'Soldador',	2500,	't3r3S4L0nG',	86655298,	19,	4),
('Sandra',	'Jones',	'Anderson',	3356542,	'saJones@teconstruye.com',	'Trabajador',	1500,	's4nDr4g0',	89799888,	20,	5),
('Gerald',	'Gomez',	'Cruz',	822161,	'geGzCz@teconstruye.com',	'Albañil',	2500,	'g3R41dg0',	84446562,	21,	4),
('Leonardo',	'Harris',	'Hernandez',	5453435,	'LeoHarris@teconstruye.com',	'Trabajador',	1500,	'L30h4rR1s',	82515655,	22,	5),
('Yendry',	'Castillo',	'Weaver',	1546546,	'yeCoWr@teconstruye.com',	'Evanista',	2500,	'Y3ndYC4',	83222121,	23,	4),
('William',	'Turner',	'Morgan',	8852211,	'willTurner@teconstruye.com',	'Trabajador',	1500,	'w1LlTun3r',	85336565,	24,	5),
('Tim',	'Steward',	'Cooper',	5202252,	'timSteward@teconstruye.com',	'Printor',	2500,	't1mSt3w4rD',	89999898,	25,	4),
('Matt',	'Darwin',	'Rodriguez',	4646513,	'maDarwin@teconstruye.com',	'Trabajador',	1500,	'M4ttd4rW1n',	84446656,	26,	2);

INSERT INTO PROJECT (Location_,	Total_Price,	IDClient,	ID, Name_) VALUES
('Cartago',	2567800,	1,	1, 'Construcción casa'),
('San Jose',	3897235,	2,	2,'Construcción edificio');

INSERT INTO PURCHASE (Price,	Amount,	Date_,	Description_,	IDProject,	IDStage,	ID, Location_) VALUES
(560000,	1,'20170714',	'Compra de materiales',	1,	4,	1, 'EPA'),
(450000,	1,'20180218',	'Compra de materiales',	2,	6,	2,'El Lagar'),
(658000,	1,'20180210',	'Compra de materiales',	1,	16,	3, 'El Colono'),
(985000,	1,'20170701',	'Compra de materiales',	2,	12,	4,'EPA'),
(681200,	1,'20170715',	'Compra de materiales',	1,	19,	5,'El Lagar'),
(879300,	1,'20170812',	'Compra de materiales',	2,	13,	6, 'El Colono'),
(251860,	1,'20180513',	'Compra de materiales',	1,	5,	7,'EPA'),
(325680,	1,'20170908',	'Compra de materiales',	2,	3,	8,'El Lagar'),
(189670,	1,'20171118',	'Compra de materiales',	1,	10,	9,'El Colono'),
(789520,	1,'20171027',	'Compra de materiales',	2,	7,	10,'Ferromax'),
(925810,	1,'20170909',	'Compra de materiales',	1,	21,	11,'Las Gravilias'),
(235860,	1,'20170610',	'Compra de materiales',	2,	8,	12,'EPA');


INSERT INTO STAGES_PER_PROJECT (End_Date,	Start_Date_,	IDProject,	IDStage) VALUES
('20170707','20170107',	1,	1),
('20170210','20180204',	2,	1),
('20170714','20170708',	1,	2),
('20180217','20180211',	2,	2),
('20170721','20170715',	1,	3),
('20170224','20180218',	2,	3),
('20170728','20170722',	1,	4),
('20170303','20180225',	2,	4),
('20170804','20170729',	1,	5),
('20170310','20180304',	2,	5),
('20170811','20170805',	1,	6),
('20180317','20180311',	2,	6),
('20170818','20170812',	1,	7),
('20180324','20180318',	2,	7),
('20170825','20170819',	1,	8),
('20180331','20180325',	2,	8),
('20170901','20170826',	1,	9),
('20180407','20180401',	2,	9),
('20170908','20170902',	1,	10),
('20180414','20180408',	2,	10),
('20170915','20170909',	1,	11),
('20180421','20170415',	2,	11),
('20170922','20170916',	1,	12),
('20180428','20180422',	2,	12),
('20170929','20170923',	1,	13),
('20180505','20180429',	2,	13),
('20171006','20170930',	1,	14),
('20180512','20180605',	2,	14),
('20171013','20170710',	1,	15),
('20180519','20170513',	2,	15),
('20171020','20171014',	1,	16),
('20180526','20180520',	2,	16),
('20171027','20171021',	1,	17),
('20180602','20170527',	2,	17),
('20171103','20171028',	1,	18),
('20180609','20180603',	2,	18),
('20171110','20171104',	1,	19),
('20180616','20180610',	2,	19),
('20171117','20171111',	1,	20),
('20180623','20180617',	2,	20),
('20171124','20171118',	1,	21),
('20180630','20180624',	2,	21);

INSERT INTO WORKS_ON (Hours_,	Day_,	IDEmployee,	IDProject, DateName_) VALUES
(12,	'20170701',	1,	1, 'Saturday'),
(12,	'20171118',	8,	1, datename(dw,'20171118')),
(12,	'20170715',	2,	1, datename(dw,'20170715')),
(12,	'20170923',	3,	1, datename(dw,'20170923')),
(12,	'20170708',	4,	1, datename(dw,'20170708')),
(12,	'20170923',	6,	1, datename(dw,'20170923')),
(12,	'20171021',	7,	1, datename(dw,'20171021')),
(12,	'20170902',	9,	1, datename(dw,'20170902')),
(12,	'20171007',	10,	1, datename(dw,'20171007')),
(12,	'20170826',	12,	1, datename(dw,'20170826')),
(12,	'20170715',	13,	1, datename(dw,'20170715')),
(12,	'20170812',	15,	1, datename(dw,'20170812')),
(12,	'20171104',	17,	1, datename(dw,'20171104')),
(12,	'20170826',	19,	1, datename(dw,'20170826')),
(12,	'20171021',	21,	1, datename(dw,'20171021')),
(12,	'20170729',	23,	1, datename(dw,'20170729')),
(12,	'20170819',	25,	1, datename(dw,'20170819')),
(12,	'20170204',	14,	2, datename(dw,'20170204')),
(12,	'20170211',	16,	2, datename(dw,'20170211')),
(12,	'20170218',	20,	2, datename(dw,'20170218')),
(12,	'20180225',	22,	2, datename(dw,'20180225')),
(12,	'20180311',	24,	2, datename(dw,'20180311')),
(12,	'20180325',	5,	2, datename(dw,'20180325')),
(12,	'20180401',	18,	2, datename(dw,'20180401')),
(12,	'20180520',	11,	2, datename(dw,'20180520')),
(12,	'20180624',	9,	2, datename(dw,'20180624')),
(12,	'20180617',	13,	2, datename(dw,'20180617')),
(12,	'20180306',	15,	2, datename(dw,'20180306')),
(12,	'20180804',	17,	2, datename(dw,'20180804')),
(12,	'20180318',	19,	2, datename(dw,'20180318')),
(12,	'20180104',	21,	2, datename(dw,'20180104')),
(12,	'20180318',	23,	2, datename(dw,'20180318')),
(12,	'20180605',	25,	2, datename(dw,'20180605'));



INSERT INTO MANAGES (IDProject,	IDEmployee) VALUES 
(1,	1),
(2,	5); 


INSERT INTO ROLE_PER_EMPLOYEE (IDEmployee,	IDRole) VALUES 
(1,	1),
(2,	5),
(3,	1),
(4,	5),
(5,	1),
(6,	5),
(7,	4),
(8,	3),
(9,	4),
(10,5),
(11,1),
(12,5),
(13,4),
(14,5),
(15,4),
(16,5),
(17,4),
(18,3),
(19,4),
(20,5),
(21,4),
(22,5),
(23,4),
(24,5),
(25,4),
(26,5);

INSERT INTO MATERIAL_PER_STAGE (IDStage,	CodeMaterial,	Quantity,	Price_aprox) VALUES
(1,	8975425,	1,	20000),
(2,	1110232,	28,	140000),
(2,	5243122,	15,	30000),
(2,	2598463,	10,	100000),
(2,	3658781,	32,	57600),
(2,	9415174,	1,	10000),
(3,	5243122,	20,	40000),
(3,	3658781,	24,	43200),
(3,	4856872,	14,	28000),
(3,	6987531,	3,	3900),
(3,	7895600,	4,	16000),
(4,	3658781,	30,	54000),
(4,	9415174,	1,	10000),
(4,	3320056,	20,	100000),
(5,	8980216,	20,	120000),
(5,	2316540,	1,	15000),
(5,	1265448,	30,	450000),
(5,	8754566,	1,	15000),
(6,	2184615,	50,	100000),
(6,	2316540,	1,	15000),
(7,	4835215,	15,	240000),
(8,	2658416,	50,	400000),
(9,	5265465,	135,	1620000),
(10,	7454941,	20,	72000),
(11,	6987531,	3,	3900),
(12,	6987531,	3,	3900),
(13,	9956984,	1,	100000),
(13,	6867465,	20,	60000),
(13,	2168431,	30,	6000),
(13,	6598453,	20,	800000),
(13,	5874764,	9,	238500),
(13,	8945644,	10,	16000),
(13,	5448664,	15,	21000),
(13,	8976545,	15,	90000),
(13,	6502004,	2,	30000),
(14,	1235489,	12,	24000),
(14,	2151513,	4,	80000),
(15,	1235489,	12,	24000),
(15,	2151513,	4,	80000),
(16,	5453545,	5,	400000),
(16,	5484132,	5,	400000),
(17,	6525425,	9,	3600000),
(17,	1235489,	12,	24000),
(18,	7878785,	1,	800000),
(19,	4548654,	2,	8000),
(19,	3365544,	6,	42000),
(19,	2354586,	10,	200000),
(19,	9953541,	3,	6000),
(20,	8877985,	1,	100000),
(21,	8975425,	1,	20000);

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
--DROP DATABASE TEConstruye
