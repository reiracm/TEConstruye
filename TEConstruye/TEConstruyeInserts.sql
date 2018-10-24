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
(20000,	1,	'20170701',	'Materiales de oficina', 	1,	1,	1, 'Palmares' ),
(140000,	28,	'20170708',	'Tablas',	1,	2,	2, 'Cartago'),
(30000,	15,	'20170708',	'Reglas',	1,	2,	3, 'La Soda'),
(100000,	10,	'20170708',	'Clavos',	1,	2,	4, 'Alajuela'),
(57600,	32,	'20170708',	'Varilla',	1,	2,	5, 'Palmares'),
(10000,	1,	'20170708',	'Alambre de amarra',	1,	2,	6, 'Limón'),
(40000,	20,	'20170715',	'Reglas',	1,	3,	7, 'Puntarenas'),
(43200,	24,	'20170715',	'Varilla',	1,	3,	8, 'Guanacaste'),
(28000,	14,	'20170715',	'Tubo para corriente',	1,	3,	9, 'Cartago'),
(3900,	3,	'20170715',	'Tubo para agua',	1,	3,	10, 'Limón'),
(16000,	4,	'20170715',	'Tubo sanitarios',	1,	3,	11, 'Heredia'),
(54000,	30,	'20170722',	'Varilla',	1,	4,	12, 'Alajuela'),
(10000,	1,	'20170722',	'Alambre de amarra',	1,	4,	13, 'Guanacaste'),
(100000,	20,	'20170722',	'Formaletas',	1,	4,	14, 'Puntarenas'),
(120000,	20,	'20170729',	'Perlin',	1,	5,	15, 'San José'),
(15000,	1,	'20170729',	'Tornillos', 	1,	5,	16, 'Cartago'),
(450000,	30,	'20170729',	'Cin', 	1,	5,	17, 'Limón'),
(15000,	1,	'20170729',	'Varilla de soldadura',	1,	5,	18, 'San José'),
(100000,	50,	'20170805',	'Furrin',	1,	6,	19, 'San José'),
(15000,	1,	'20170805',	'Tornillos', 	1,	6,	20, 'San José'),
(240000,	15,	'20170812',	'Producto listo de repello',	1,	7,	21, 'San José'),
(400000,	50,	'20170819',	'Concreto',	1,	8,	22, 'San José'),
(1620000,	135,	'20170826',	'Ceramica',	1,	9,	23, 'San José'),
(72000,	20,	'20170902',	'Bondex',	1,	10,	24, 'San José'),
(3900,	3,	'20170909',	'Tubo para agua',	1,	11,	25, 'San José'),
(3900,	3,	'20170916',	'Tubo para agua',	1,	12,	26, 'San José'),
(100000,	1,	'20170923',	'Caja break',	1,	13,	27, 'San José'),
(60000,	20,	'20170923',	'Tubos Conduit', 	1,	13,	28, 'San José'),
(6000,	30,	'20170923',	'Conectores',	1,	13,	29, 'San José'),
(800000,	20,	'2017-09-23',	'Breaks',	1,	13,	30, 'San José'),
(238500,	9,	'2017-09-23',	'Cables',	1,	13,	31, 'San José'),
(16000,	10,	'2017-09-23',	'Toma corriente',	1,	13,	32, 'San José'),
(21000,	15,	'2017-09-23',	'Apagadores',	1,	13,	33, 'San José'),
(90000,	15,	'2017-09-23',	'Lámparas',	1,	13,	34, 'San José'),
(30000,	2,	'2017-09-23',	'Ducha', 1,	13,	35, 'San José'),
(24000,	12,	'2017-09-30',	'Bisagras',	1,	14,	36, 'San José'),
(80000,	4,	'2017-09-30',	'Llavines',	1,	14,	37, 'San José'),
(24000,	12,	'2017-10-07',	'Bisagras',	1,	15,	38, 'San José'),
(80000,	4,	'2017-10-07',	'Llavines',	1,	15,	39, 'San José'),
(400000,	5,	'2017-10-14',	'Vidrio',	1,	16,	40, 'San José'),
(400000,	5,	'2017-10-14',	'Estructura de aluminio',	1,	16,	41, 'San José'),
(3600000,	9,	'2017-10-21',	'Madera',	1,	17,	42, 'San José'),
(24000,	12,	'2017-10-21',	'Bisagras',	1,	17,	43, 'San José'),
(800000,	1,	'2017-10-28',	'Granito',	1,	18,	44, 'San José'),
(8000,	2,	'2017-11-04',	'Brochas',	1,	19,	45, 'San José'),
(42000,	6,	'2017-11-04',	'Diluyente', 	1,	19,	46, 'San José'),
(200000,	10,	'2017-11-04',	'Pintura', 	1,	19,	47, 'San José'),
(6000,	3,	'2017-11-04',	'Tape',	1,	19,	48, 'San José'),
(100000,	1,	'2017-11-11',	'Madera para las escaleras',	1,	20,	49, 'San José'),
(20000,	1,	'2017-11-18',	'Materiales de oficina', 	1,	21,	50, 'San José'),
(20000,	1,	'2018-02-04',	'Materiales de oficina', 	2,	1,	51, 'San José'),
(140000,	28,	'2018-02-11',	'Tablas',	2,	2,	52, 'San José'),
(30000,	15,	'2018-02-11',	'Reglas',	2,	2,	53, 'San José'),
(100000,	10,	'2018-02-11',	'Clavos',	2,	2,	54, 'San José'),
(57600,	32,	'2018-02-11',	'Varilla',	2,	2,	55, 'San José'),
(10000,	1,	'2018-02-11',	'Alambre de amarra',	2,	2,	56, 'San José'),
(40000,	20,	'2018-02-18',	'Reglas',	2,	3,	57, 'San José'),
(43200,	24,	'2018-02-18',	'Varilla',	2,	3,	58, 'San José'),
(28000,	14,	'2018-02-18',	'Tubo para corriente',	2,	3,	59, 'San José'),
(3900,	3,	'2018-02-18',	'Tubo para agua',	2,	3,	60, 'San José'),
(16000,	4,	'2018-02-18',	'Tubo sanitarios',	2,	3,	61, 'San José'),
(54000,	30,	'2018-02-25',	'Varilla',	2,	4,	62, 'San José'),
(10000,	1,	'2018-02-25',	'Alambre de amarra',	2,	4,	63, 'San José'),
(100000,	20,	'2018-02-25',	'Formaletas',	2,	4,	64, 'San José'),
(120000,	20,	'2018-03-04',	'Perlin',	2,	5,	65, 'San José'),
(15000,	1,	'2018-03-04',	'Tornillos',	2,	5,	66, 'San José'),
(450000,	30,	'2018-03-04',	'Cin',	2,	5,	67, 'San José'),
(15000,	1,	'2018-03-04',	'Varilla de soldadura',	2,	5,	68, 'San José'),
(100000,	50,	'2018-03-11',	'Furrin',	2,	6,	69, 'San José'),
(15000,	1,	'2018-03-11',	'Tornillos', 	2,	6,	70, 'San José'),
(240000,	15,	'2018-03-18',	'Producto listo de repello',	2,	7,	71, 'San José'),
(400000,	50,	'2018-03-25',	'Concreto',	2,	8,	72, 'San José'),
(1620000,	135,	'2018-04-01',	'Ceramica',	2,	9,	73, 'San José'),
(72000,	20,	'2018-04-08',	'Bondex',	2,	10,	74, 'San José'),
(3900,	3,	'2018-04-15',	'Tubo para agua',	2,	11,	75, 'San José'),
(3900,	3,	'2018-04-22',	'Tubo para agua',	2,	12,	76, 'San José'),
(100000,	1,	'2018-04-29',	'Caja break',	2,	13,	77, 'San José'),
(60000,	20,	'2018-04-29',	'Tubos Conduit', 	2,	13,	78, 'San José'),
(6000,	30,	'2018-04-29',	'Conectores',	2,	13,	79, 'San José'),
(800000,	20,	'2018-04-29',	'Breaks',	2,	13,	80, 'San José'),
(238500,	9,	'2018-04-29',	'Cables',	2,	13,	81, 'San José'),
(16000,	10,	'2018-04-29',	'Toma corriente',	2,	13,	82, 'San José'),
(21000,	15,	'2018-04-29',	'Apagadores',	2,	13,	83, 'San José'),
(90000,	15,	'2018-04-29',	'Lámparas',	2,	13,	84, 'San José'),
(30000,	2,	'2018-04-29',	'Ducha',	2,	13,	85, 'San José'),
(24000,	12,	'2018-05-06',	'Bisagras',	2,	14,	86, 'San José'),
(80000,	4,	'2018-05-06',	'Llavines',	2,	14,	87, 'San José'),
(24000,	12,	'2018-05-13',	'Bisagras',	2,	15,	88, 'San José'),
(80000,	4,	'2018-05-13',	'Llavines',	2,	15,	89, 'San José'),
(400000,	5,	'2018-05-20',	'Vidrio',	2,	16,	90, 'San José'),
(400000,	5,	'2018-05-20',	'Estructura de aluminio',	2,	16,	91, 'San José'),
(3600000,	9,	'2018-05-27',	'Madera',	2,	17,	92, 'San José'),
(24000,	12,	'2018-05-27',	'Bisagras',	2,	17,	93, 'San José'),
(800000,	1,	'2018-06-03',	'Granito',	2,	18,	94, 'San José'),
(8000,	2,	'20180610',	'Brochas',	2,	19,	95, 'San José'),
(42000,	6,	'20180610',	'Diluyente', 	2,	19,	96, 'San José'),
(200000,	10,	'20180610',	'Pintura', 	2,	19,	97, 'San José'),
(6000,	3,	'20180610',	'Tape', 2,	19,	98, 'San José'),
(100000,	1,	'20180617',	'Madera para las escaleras',	2,	20,	99, 'San José'),
(20000,	1,	'20180624',	'Materiales de oficina', 	2,	21,	100, 'San José');


INSERT INTO STAGES_PER_PROJECT (End_Date,	Start_Date_,	IDProject,	IDStage, ID) VALUES
('20170707','20170701',	1,	1, 1),
('20180210','20180204',	2,	1, 2),
('20170714','20170708',	1,	2, 3),
('20180217','20180211',	2,	2, 4),
('20170721','20170715',	1,	3, 5),
('20180224','20180218',	2,	3, 6),
('20170728','20170722',	1,	4, 7),
('20180303','20180225',	2,	4, 8),
('20170804','20170729',	1,	5, 9),
('20180310','20180304',	2,	5, 10),
('20170811','20170805',	1,	6, 11),
('20180317','20180311',	2,	6, 12),
('20170818','20170812',	1,	7, 13),
('20180324','20180318',	2,	7, 14),
('20170825','20170819',	1,	8, 15),
('20180331','20180325',	2,	8, 16),
('20170901','20170826',	1,	9, 17),
('20180407','20180401',	2,	9, 18),
('20170908','20170902',	1,	10, 19),
('20180414','20180408',	2,	10, 20),
('20170915','20170909',	1,	11, 21),
('20180421','20180415',	2,	11, 22),
('20170922','20170916',	1,	12, 23),
('20180428','20180422',	2,	12, 24),
('20170929','20170923',	1,	13, 25),
('20180505','20180429',	2,	13, 26),
('20171006','20170930',	1,	14, 27),
('20180512','20180506',	2,	14, 28),
('20171013','20171007',	1,	15, 29),
('20180519','20180513',	2,	15, 30),
('20171020','20171014',	1,	16, 31),
('20180526','20180520',	2,	16, 32),
('20171027','20171021',	1,	17, 33),
('20180602','20180527',	2,	17, 34),
('20171103','20171028',	1,	18, 35),
('20180609','20180603',	2,	18, 36),
('20171110','20171104',	1,	19, 37),
('20180616','20180610',	2,	19, 38),
('20171117','20171111',	1,	20, 39), 
('20180623','20180617',	2,	20, 40),
('20171124','20171118',	1,	21, 41),
('20180630','20180624',	2,	21, 42);

INSERT INTO WORKS_ON (Hours_,	Day_,	IDEmployee,	IDProject, DateName_, ID) VALUES
(12,	'20170701',	1,	1, datename(dw,'20170701'), 1),
(12,	'20170701',	1,	1,  datename(dw,'20170701'), 2),
(12,	'20170702',	8,	1,  datename(dw,'20170702'), 3),
(12,	'20170703',	1,	1,  datename(dw,'20170703'), 4),
(12,	'20170704',	8,	1,  datename(dw,'20170704'), 5),
(12,	'20170705',	1,	1,  datename(dw,'20170705'), 6),
(12,	'20170706',	8,	1,  datename(dw,'20170706'), 7),
(12,	'20170707',	1,	1,  datename(dw,'20170707'), 8),
(12,	'20170708',	2,	1,  datename(dw,'20170708'), 9),
(12,	'20170709',	8,	1,  datename(dw,'20170709'), 10),
(12,	'20170710',	7,	1,  datename(dw,'20170710'), 11),
(12,	'20170711',	15,	1,  datename(dw,'20170711'), 12),
(12,	'20170712',	2,	1,  datename(dw,'20170712'), 13),
(12,	'20170713',	8,	1,  datename(dw,'20170713'), 14),
(12,	'20170714',	7,	1,  datename(dw,'20170714'), 15),
(12,	'20170715',	4,	1,  datename(dw,'20170715'), 16),
(12,	'20170716',	8,	1,  datename(dw,'20170716'), 17),
(12,	'20170717',	21,	1,  datename(dw,'20170717'), 18),
(12,	'20170718',	4,	1,  datename(dw,'20170718'), 19),
(12,	'20170719',	8,	1,  datename(dw,'20170719'), 20),
(12,	'20170720',	21,	1,  datename(dw,'20170720'), 21),
(12,	'20170721',	8,	1,  datename(dw,'20170721'), 22),
(12,	'20170722',	8,	1,  datename(dw,'20170722'), 23),
(12,	'20170723',	2,	1,  datename(dw,'20170723'), 24),
(12,	'20170724',	7,	1,  datename(dw,'20170724'), 25),
(12,	'20170725',	13,	1,  datename(dw,'20170725'), 26),
(12,	'20170726',	15,	1,  datename(dw,'20170726'), 27),
(12,	'20170727',	21,	1,  datename(dw,'20170727'), 28),
(12,	'20170728',	8,	1,  datename(dw,'20170728'), 29),
(12,	'20170729',	4,	1,  datename(dw,'20170728'), 30),
(12,	'20170730',	8,	1,  datename(dw,'20170730'), 31),
(12,	'20170731',	7,	1,  datename(dw,'20170731'), 32),
(12,	'20170801',	19,	1,  datename(dw,'20170801'), 33),
(12,	'20170802',	23,	1,  datename(dw,'20170802'), 34),
(12,	'20170803',	4,	1,  datename(dw,'20170803'), 35),
(12,	'20170804',	8,	1,  datename(dw,'20170804'), 36),
(12,	'20170805',	2,	1,  datename(dw,'20170805'), 37),
(12,	'20170806',	8,	1,  datename(dw,'20170806'), 38),
(12,	'20170807',	23,	1,  datename(dw,'20170807'), 39),
(12,	'20170808',	2,	1,  datename(dw,'20170808'), 40),
(12,	'20170809',	8,	1,  datename(dw,'20170809'), 41),
(12,	'20170810',	23,	1,  datename(dw,'20170811'), 42),
(12,	'20170811',	8,	1,  datename(dw,'20170812'), 43),
(12,	'20170812',	4,	1,  datename(dw,'20170813'), 44),
(12,	'20170813',	8,	1,  datename(dw,'20170814'), 45),
(12,	'20170814',	15,	1,  datename(dw,'20170815'), 46),
(12,	'20170815',	4,	1,  datename(dw,'20170816'), 47),
(12,	'20170816',	8,	1,  datename(dw,'20170817'), 48),
(12,	'20170817',	15,	1,  datename(dw,'20170818'), 49),
(12,	'20170818',	8,	1,  datename(dw,'20170819'), 50),
(12,	'20170819',	2,	1,  datename(dw,'20170820'), 51),
(12,	'20170820',	8,	1,  datename(dw,'20170821'), 52),
(12,	'20170821',	2,	1,  datename(dw,'20170822'), 53),
(12,	'20170822',	8,	1,  datename(dw,'20170823'), 54),
(12,	'20170823',	2,	1,  datename(dw,'20170824'), 55),
(12,	'20170824',	2,	1,  datename(dw,'20170825'), 56),
(12,	'20170825',	8,	1,  datename(dw,'20170826'), 57),
(12,	'20170826',	4,	1,  datename(dw,'20170827'), 58),
(12,	'20170827',	8,	1,  datename(dw,'20170828'), 59),
(12,	'20170828',	9,	1,  datename(dw,'20170829'), 60),
(12,	'20170829',	4,	1,  datename(dw,'20170820'), 61),
(12,	'20170830',	8,	1,  datename(dw,'20170830'), 62),
(12,	'20170831',	9,	1,  datename(dw,'20170831'), 63),
(12,	'20170901',	8,	1,  datename(dw,'20170901'), 64),
(12,	'20170902',	6,	1,  datename(dw,'20170902'), 65),
(12,	'20170903',	8,	1,  datename(dw,'20170903'), 66),
(12,	'20170904',	9,	1,  datename(dw,'20170904'), 67),
(12,	'20170905',	21,	1,  datename(dw,'20170905'), 68),
(12,	'20170906',	6,	1,  datename(dw,'20170906'), 69),
(12,	'20170907',	8,	1,  datename(dw,'20170907'), 70),
(12,	'20170908',	9,	1,  datename(dw,'20170908'), 71),
(12,	'20170909',	10,	1,  datename(dw,'20170909'), 72),
(12,	'20170910',	8,	1,  datename(dw,'20170910'), 73),
(12,	'20170911',	17,	1,  datename(dw,'20170911'), 74),
(12,	'20170912',	10,	1,  datename(dw,'20170912'), 75),
(12,	'20170913',	8,	1,  datename(dw,'20170913'), 76),
(12,	'20170914',	17,	1,  datename(dw,'20170914'), 77),
(12,	'20170915',	8,	1,  datename(dw,'20170915'), 78),
(12,	'20170916',	6,	1,  datename(dw,'20170916'), 79),
(12,	'20170917',	8,	1,  datename(dw,'20170917'), 80),
(12,	'20170918',	17,	1,  datename(dw,'20170918'), 81),
(12,	'20170919',	6,	1,  datename(dw,'20170919'), 82),
(12,	'20170920',	8,	1,  datename(dw,'20170920'), 83),
(12,	'20170921',	17,	1,  datename(dw,'20170921'), 84),
(12,	'20170922',	8,	1,  datename(dw,'20170922'), 85),
(12,	'20170923',	10,	1,  datename(dw,'20170923'), 86),
(12,	'20170924',	8,	1,  datename(dw,'20170924'), 87),
(12,	'20170925',	3,	1,  datename(dw,'20170925'), 88),
(12,	'20170926',	11,	1,  datename(dw,'20170926'), 89),
(12,	'20170927',	10,	1,  datename(dw,'20170927'), 90),
(12,	'20170928',	8,	1,  datename(dw,'20170928'), 91),
(12,	'20170929',	3,	1,  datename(dw,'20170929'), 92),
(12,	'20170930',	6,	1,  datename(dw,'20170930'), 93),
(12,	'20171001',	8,	1,  datename(dw,'20171001'), 94),
(12,	'20171002',	23,	1,  datename(dw,'20171002'), 95),
(12,	'20171003',	6,	1,  datename(dw,'20171003'), 96),
(12,	'20171004',	8,	1,  datename(dw,'20171004'), 97),
(12,	'20171005',	23,	1,  datename(dw,'20171005'), 98),
(12,	'20171006',	8,	1,  datename(dw,'20171006'), 99),
(12,	'20171007',	10,	1,  datename(dw,'20171007'), 100),
(12,	'20171008',	8,	1,  datename(dw,'20171008'), 101),
(12,	'20171009',	15,	1,  datename(dw,'20171009'), 102),
(12,	'20171010',	23,	1,  datename(dw,'20171010'), 103),
(12,	'20171011',	10,	1,  datename(dw,'20171011'), 104),
(12,	'20171012',	8,	1,  datename(dw,'20171012'), 105),
(12,	'20171013',	15,	1,  datename(dw,'20171013'), 106),
(12,	'20171014',	6,	1,  datename(dw,'20171014'), 107),
(12,	'20171015',	8,	1,  datename(dw,'20171015'), 108),
(12,	'20171016',	23,	1,  datename(dw,'20171016'), 109),
(12,	'20171017',	6,	1,  datename(dw,'20171017'), 110),
(12,	'20171018',	8,	1,  datename(dw,'20171018'), 111),
(12,	'20171019',	23,	1,  datename(dw,'20171019'), 112),
(12,	'20171020',	8,	1,  datename(dw,'20171020'), 113),
(12,	'20171021',	12,	1,  datename(dw,'20171021'), 114),
(12,	'20171022',	8,	1,  datename(dw,'20171022'), 115),
(12,	'20171023',	23,	1,  datename(dw,'20171023'), 116),
(12,	'20171024',	12,	1,  datename(dw,'20171024'), 117),
(12,	'20171025',	8,	1,  datename(dw,'20171025'), 118),
(12,	'20171026',	23,	1,  datename(dw,'20171026'), 119),
(12,	'20171027',	8,	1,  datename(dw,'20171027'), 120),
(12,	'20171028',	12,	1,  datename(dw,'20171028'), 121),
(12,	'20171029',	8,	1,  datename(dw,'20171029'), 122),
(12,	'20171030',	23,	1,  datename(dw,'20171030'), 123),
(12,	'20171031',	12,	1,  datename(dw,'20171031'), 124),
(12,	'20171101',	8,	1,  datename(dw,'20171101'), 125),
(12,	'20171102',	23,	1,  datename(dw,'20171102'), 126),
(12,	'20171103',	8,	1,  datename(dw,'20171103'), 127),
(12,	'20171104',	12,	1,  datename(dw,'20171104'), 128),
(12,	'20171105',	8,	1,  datename(dw,'20171105'), 129),
(12,	'20171106',	25,	1,  datename(dw,'20171106'), 130),
(12,	'20171107',	12,	1,  datename(dw,'20171107'), 131),
(12,	'20171108',	8,	1,  datename(dw,'20171108'), 132),
(12,	'20171109',	25,	1,  datename(dw,'20171119'), 133),
(12,	'20171110',	8,	1,  datename(dw,'20171110'), 134),
(12,	'20171111',	12,	1,  datename(dw,'20171111'), 135),
(12,	'20171112',	8,	1,  datename(dw,'20171112'), 136),
(12,	'20171113',	12,	1,  datename(dw,'20171113'), 137),
(12,	'20171114',	8,	1,  datename(dw,'20171114'), 138),
(12,	'20171115',	12,	1,  datename(dw,'20171115'), 139),
(12,	'20171116',	8,	1,  datename(dw,'20171116'), 140),
(12,	'20171117',	12,	1,  datename(dw,'20171117'), 141),
(12,	'20171118',	8,	1,  datename(dw,'20171118'), 142),
(12,	'20171119',	1,	1,  datename(dw,'20171119'), 143),
(12,	'20171120',	8,	1,  datename(dw,'20171120'), 144),
(12,	'20171121',	1,	1,  datename(dw,'20171121'), 145),
(12,	'20171122',	8,	1,  datename(dw,'20171122'), 146),
(12,	'20171123',	1,	1,  datename(dw,'20171123'), 147),
(12,	'20171124',	1,	1,  datename(dw,'20171124'), 148),
(12,	'20180204',	5,	2,  datename(dw,'20180204'), 149), 
(12,	'20180205',	18,	2,  datename(dw,'20180205'), 150), 
(12,	'20180206',	5,	2,  datename(dw,'20180206'), 151), 
(12,	'20180207',	18,	2,  datename(dw,'20180207'), 152), 
(12,	'20180208',	5,	2,  datename(dw,'20180208'), 153), 
(12,	'20180209',	18,	2,  datename(dw,'20180209'), 154), 
(12,	'20180210',	5,	2,  datename(dw,'20180210'), 155), 
(12,	'20180211',	18,	2,  datename(dw,'20180211'), 156),
(12,	'20180212',	14,	2,  datename(dw,'20180212'), 157),
(12,	'20180213',	7,	2,  datename(dw,'20180213'), 158),
(12,	'20180214',	15,	2,  datename(dw,'20180214'), 159),
(12,	'20180215',	18,	2,  datename(dw,'20180215'), 160),
(12,	'20180216',	14,	2,  datename(dw,'20180216'), 161),
(12,	'20180217',	7,	2,  datename(dw,'20180217'), 162),
(12,	'20180218',	18,	2,  datename(dw,'20180218'), 163),
(12,	'20180219',	16,	2,  datename(dw,'20180219'), 164),
(12,	'20180220',	21,	2,  datename(dw,'20180220'), 165),
(12,	'20180220',	21,	2,  datename(dw,'20180220'), 166),
(12,	'20180221',	18,	2,  datename(dw,'20180221'), 167),
(12,	'20180222',	16,	2,  datename(dw,'20180222'), 168),
(12,	'20180223',	21,	2,  datename(dw,'20180223'), 169),
(12,	'20180224',	18,	2,  datename(dw,'20180224'), 170),
(12,	'20180225',	18,	2,  datename(dw,'20180225'), 171),
(12,	'20180226',	20,	2,  datename(dw,'20180226'), 172),
(12,	'20180227',	7,	2,  datename(dw,'20180227'), 173),
(12,	'20180228',	21,	2,  datename(dw,'20180228'), 174),
(12,	'20180301',	18,	2,  datename(dw,'20180301'), 175),
(12,	'20180302',	20,	2,  datename(dw,'20180302'), 176),
(12,	'20180303',	7,	2,  datename(dw,'20180303'), 177),
(12,	'20180304',	18,	2,  datename(dw,'20180304'), 178),
(12,	'20180305',	22,	2,  datename(dw,'20180305'), 179),
(12,	'20180306',	7,	2,  datename(dw,'20180306'), 180),
(12,	'20180307',	19,	2,  datename(dw,'20180307'), 181),
(12,	'20180308',	23,	2,  datename(dw,'20180308'), 182),
(12,	'20180309',	18,	2,  datename(dw,'20180309'), 183),
(12,	'20180310',	22,	2,  datename(dw,'20180310'), 184),
(12,	'20180311',	18,	2,  datename(dw,'20180311'), 185),
(12,	'20180312',	24,	2,  datename(dw,'20180312'), 186),
(12,	'20180313',	23,	2,  datename(dw,'20180313'), 187),
(12,	'20180314',	18,	2,  datename(dw,'20180314'), 188),
(12,	'20180315',	24,	2,  datename(dw,'20180315'), 189),
(12,	'20180316',	23,	2,  datename(dw,'20180316'), 190),
(12,	'20180317',	18,	2,  datename(dw,'20180317'), 191),
(12,	'20180318',	18,	2,  datename(dw,'20180318'), 192),
(12,	'20180319',	26,	2,  datename(dw,'20180319'), 193),
(12,	'20180320',	15,	2,  datename(dw,'20180320'), 194),
(12,	'20180321',	18,	2,  datename(dw,'20180321'), 195),
(12,	'20180322',	26,	2,  datename(dw,'20180322'), 196),
(12,	'20180323',	15,	2,  datename(dw,'20180323'), 197),
(12,	'20180324',	18,	2,  datename(dw,'20180324'), 198),
(12,	'20180325',	18,	2,  datename(dw,'20180325'), 199),
(12,	'20180326',	14,	2,  datename(dw,'20180326'), 200),
(12,	'20180327',	18,	2,  datename(dw,'20180327'), 201),
(12,	'20180328',	14,	2,  datename(dw,'20180328'), 202),
(12,	'20180329',	18,	2,  datename(dw,'20180329'), 203),
(12,	'20180330',	14,	2,  datename(dw,'20180330'), 204),
(12,	'20180331',	18,	2,  datename(dw,'20180331'), 205),
(12,	'20180401',	18,	2,  datename(dw,'20180401'), 206),
(12,	'20180402',	16,	2,  datename(dw,'20180402'), 207),
(12,	'20180403',	9,	2,  datename(dw,'20180403'), 208),
(12,	'20180404',	18,	2,  datename(dw,'20180404'), 209),
(12,	'20180405',	16,	2,  datename(dw,'20180405'), 210),
(12,	'20180406',	9,	2,  datename(dw,'20180406'), 211),
(12,	'20180407',	18,	2,  datename(dw,'20180407'), 212),
(12,	'20180408',	18,	2,  datename(dw,'20180408'), 213),
(12,	'20180409',	20,	2,  datename(dw,'20180409'), 214),
(12,	'20180410',	9,	2,  datename(dw,'20180410'), 215),
(12,	'20180411',	21,	2,  datename(dw,'20180411'), 216),
(12,	'20180412',	18,	2,  datename(dw,'20180412'), 217),
(12,	'20180413',	20,	2,  datename(dw,'20180413'), 218),
(12,	'20180414',	9,	2,  datename(dw,'20180414'), 219),
(12,	'20180415',	18,	2,  datename(dw,'20180415'), 220),
(12,	'20180416',	22,	2,  datename(dw,'20180416'), 221),
(12,	'20180417',	17,	2,  datename(dw,'20180417'), 222),
(12,	'20180418',	18,	2,  datename(dw,'20180418'), 223),
(12,	'20180419',	22,	2,  datename(dw,'20180419'), 224),
(12,	'20180420',	17,	2,  datename(dw,'20180420'), 225),
(12,	'20180421',	18,	2,  datename(dw,'20180421'), 226),
(12,	'20180422',	18,	2,  datename(dw,'20180422'), 227),
(12,	'20180423',	24,	2,  datename(dw,'20180423'), 228),
(12,	'20180424',	17,	2,  datename(dw,'20180424'), 229),
(12,	'20180425',	18,	2,  datename(dw,'20180425'), 230),
(12,	'20180426',	24,	2,  datename(dw,'20180426'), 231),
(12,	'20180427',	17,	2,  datename(dw,'20180427'), 232),
(12,	'20180428',	18,	2,  datename(dw,'20180428'), 233),
(12,	'20180429',	18,	2,  datename(dw,'20180429'), 234),
(12,	'20180430',	26,	2,  datename(dw,'20180430'), 235),
(12,	'20180501',	3,	2,  datename(dw,'20180501'), 236),
(12,	'20180502',	11,	2,  datename(dw,'20180502'), 237),
(12,	'20180503',	13,	2,  datename(dw,'20180503'), 238),
(12,	'20180504',	18,	2,  datename(dw,'20180504'), 239),
(12,	'20180505',	26,	2,  datename(dw,'20180505'), 240),
(12,	'20180506',	18,	2,  datename(dw,'20180506'), 241),
(12,	'20180507',	14,	2,  datename(dw,'20180507'), 242),
(12,	'20180508',	23,	2,  datename(dw,'20180508'), 243),
(12,	'20180509',	18,	2,  datename(dw,'20180509'), 244),
(12,	'20180510',	14,	2,  datename(dw,'20180510'), 245),
(12,	'20180511',	23,	2,  datename(dw,'20180511'), 246),
(12,	'20180512',	18,	2,  datename(dw,'20180512'), 247),
(12,	'20180513',	18,	2,  datename(dw,'20180513'), 248),
(12,	'20180514',	16,	2,  datename(dw,'20180514'), 249),
(12,	'20180515',	15,	2,  datename(dw,'20180515'), 250),
(12,	'20180516',	23,	2,  datename(dw,'20180516'), 251),
(12,	'20180517',	18,	2,  datename(dw,'20180517'), 252),
(12,	'20180518',	16,	2,  datename(dw,'20180518'), 253),
(12,	'20180519',	15,	2,  datename(dw,'20180519'), 254),
(12,	'20180520',	18,	2,  datename(dw,'20180520'), 255),
(12,	'20180521',	20,	2,  datename(dw,'20180521'), 256),
(12,	'20180522',	23,	2,  datename(dw,'20180522'), 257),
(12,	'20180523',	18,	2,  datename(dw,'20180523'), 258),
(12,	'20180524',	20,	2,  datename(dw,'20180524'), 259),
(12,	'20180525',	23,	2,  datename(dw,'20180525'), 260),
(12,	'20180526',	18,	2,  datename(dw,'20180526'), 261),
(12,	'20180527',	18,	2,  datename(dw,'20180527'), 262),
(12,	'20180528',	22,	2,  datename(dw,'20180528'), 263),
(12,	'20180529',	23,	2,  datename(dw,'20180529'), 264),
(12,	'20180530',	18,	2,  datename(dw,'20180530'), 265),
(12,	'20180531',	22,	2,  datename(dw,'20180531'), 266),
(12,	'20180601',	23,	2,  datename(dw,'20180601'), 267),
(12,	'20180602',	18,	2,  datename(dw,'20180602'), 268),
(12,	'20180603',	18,	2,  datename(dw,'20180603'), 269),
(12,	'20180604',	24,	2,  datename(dw,'20180604'), 270),
(12,	'20180605',	23,	2,  datename(dw,'20180605'), 271),
(12,	'20180606',	18,	2,  datename(dw,'20180606'), 272),
(12,	'20180607',	24,	2,  datename(dw,'20180607'), 273),
(12,	'20180608',	23,	2,  datename(dw,'20180608'), 274),
(12,	'20180609',	18,	2,  datename(dw,'20180609'), 275),
(12,	'20180610',	18,	2,  datename(dw,'20180610'), 276),
(12,	'20180611',	26,	2,  datename(dw,'20180611'), 277),
(12,	'20180612',	25,	2,  datename(dw,'20180612'), 278),
(12,	'20180613',	18,	2,  datename(dw,'20180613'), 279),
(12,	'20180614',	26,	2,  datename(dw,'20180614'), 280),
(12,	'20180615',	25,	2,  datename(dw,'20180615'), 281),
(12,	'20180616',	18,	2,  datename(dw,'20180616'), 282),
(12,	'20180617',	18,	2,  datename(dw,'20180617'), 283),
(12,	'20180618',	14,	2,  datename(dw,'20180618'), 284),
(12,	'20180619',	18,	2,  datename(dw,'20180619'), 285),
(12,	'20180620',	14,	2,  datename(dw,'20180620'), 286),
(12,	'20180621',	18,	2,  datename(dw,'20180621'), 287),
(12,	'20180622',	14,	2,  datename(dw,'20180622'), 288),
(12,	'20180623',	18,	2,  datename(dw,'20180623'), 289),
(12,	'20180624',	18,	2,  datename(dw,'20180624'), 290),
(12,	'20180625',	5,	2,  datename(dw,'20180625'), 291),
(12,	'20180626',	18,	2,  datename(dw,'20180626'), 292),
(12,	'20180627',	5,	2,  datename(dw,'20180627'), 293),
(12,	'20180628',	18,	2,  datename(dw,'20180628'), 294),
(12,	'20180629',	5,	2,  datename(dw,'20180629'), 295),
(12,	'20180630',	5,	2,  datename(dw,'20180630'), 296);


INSERT INTO MANAGES (IDProject,	IDEmployee, ID) VALUES 
(1,	1, 1),
(2,	5, 2); 


INSERT INTO ROLE_PER_EMPLOYEE (IDEmployee,	IDRole, ID) VALUES 
(1,	1, 1),
(2,	5, 2),
(3,	1, 3),
(4,	5, 4),
(5,	1, 5),
(6,	5, 6),
(7,	4, 7),
(8,	3, 8),
(9,	4, 9),
(10,5, 10),
(11,1, 11),
(12,5, 12),
(13,4, 13),
(14,5, 14),
(15,4, 15),
(16,5, 16),
(17,4, 17),
(18,3, 18),
(19,4, 19),
(20,5, 20),
(21,4, 21),
(22,5, 22),
(23,4, 23),
(24,5, 24),
(25,4, 25),
(26,5, 26);

INSERT INTO MATERIAL_PER_STAGE (IDStage,	CodeMaterial,	Quantity,	Price_aprox, ID) VALUES
(1,	8975425,	1,	20000, 1),
(2,	1110232,	28,	140000, 2),
(2,	5243122,	15,	30000, 3),
(2,	2598463,	10,	100000, 4),
(2,	3658781,	32,	57600, 5),
(2,	9415174,	1,	10000, 6),
(3,	5243122,	20,	40000, 7),
(3,	3658781,	24,	43200, 8),
(3,	4856872,	14,	28000, 9),
(3,	6987531,	3,	3900, 10),
(3,	7895600,	4,	16000, 11),
(4,	3658781,	30,	54000, 12),
(4,	9415174,	1,	10000, 13),
(4,	3320056,	20,	100000, 14),
(5,	8980216,	20,	120000, 15),
(5,	2316540,	1,	15000, 16),
(5,	1265448,	30,	450000, 17),
(5,	8754566,	1,	15000, 18),
(6,	2184615,	50,	100000, 19),
(6,	2316540,	1,	15000, 20),
(7,	4835215,	15,	240000, 21),
(8,	2658416,	50,	400000, 22),
(9,	5265465,	135,	1620000, 23),
(10,	7454941,	20,	72000, 24),
(11,	6987531,	3,	3900, 25),
(12,	6987531,	3,	3900, 26),
(13,	9956984,	1,	100000, 27),
(13,	6867465,	20,	60000, 28),
(13,	2168431,	30,	6000, 29),
(13,	6598453,	20,	800000, 30),
(13,	5874764,	9,	238500, 31),
(13,	8945644,	10,	16000, 32),
(13,	5448664,	15,	21000, 33),
(13,	8976545,	15,	90000, 34),
(13,	6502004,	2,	30000, 35),
(14,	1235489,	12,	24000, 36),
(14,	2151513,	4,	80000, 37),
(15,	1235489,	12,	24000, 38),
(15,	2151513,	4,	80000, 39),
(16,	5453545,	5,	400000, 40),
(16,	5484132,	5,	400000, 41),
(17,	6525425,	9,	3600000, 42),
(17,	1235489,	12,	24000, 43),
(18,	7878785,	1,	800000, 44),
(19,	4548654,	2,	8000, 45),
(19,	3365544,	6,	42000, 46),
(19,	2354586,	10,	200000, 47),
(19,	9953541,	3,	6000, 48),
(20,	8877985,	1,	100000, 49),
(21,	8975425,	1,	20000, 50);

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
