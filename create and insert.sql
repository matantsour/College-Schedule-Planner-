use industrial_eng_degree;
-- SELECT @@global.time_zone;
-- SET @@global.time_zone = '+00:00';

CREATE TABLE Course
(ID		integer PRIMARY KEY,
course_name varchar (150),
credit float,
hr_lec integer,
hr_practice integer,
hr_lab integer,
hr_total integer,
is_preffered integer,
done_status integer
)
engine=InnoDB;

CREATE TABLE Course_Req
(ID		integer PRIMARY KEY,
req1 integer,
req2 integer,
req3 integer,
req4 integer,
req5 integer,
req6 integer,
req7 integer,
req8 integer,
FOREIGN KEY Course_req(ID) REFERENCES Course(ID)
)
engine=InnoDB;

CREATE TABLE Course_Rec_Time
(ID		integer PRIMARY KEY,
rec_year integer,
rec_sem integer,
FOREIGN KEY Course_Rec_Time(ID) REFERENCES Course(ID)
)
engine=InnoDB;

CREATE TABLE Course_Poss_Time
(ID		integer PRIMARY KEY,
sem1 integer,
sem2 integer,
sem3 integer,
FOREIGN KEY Course_Poss_Time(ID) REFERENCES Course(ID)
)
engine=InnoDB;

CREATE TABLE Course_Internship
(ID		integer PRIMARY KEY,
intership_M integer,
intership_A integer,
intership_I integer,
intership_O integer,
intership_DM integer,
FOREIGN KEY Course_Internship(ID) REFERENCES Course(ID)
)
engine=InnoDB;

CREATE TABLE Grade
(ID		integer PRIMARY KEY,
grade integer,
FOREIGN KEY Grade(ID) REFERENCES Course(ID)
)
engine=InnoDB;

INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10206,'Information Theory',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10230,'Cyber- Computational Learning',2.5,2,1,0,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10237,'Analysis Of Social Media',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10246,'Optimization Methods and Distributed Production',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10310,'Internet technologies',2.5,1,0,3,4,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10336,'Engineering Software Applications MATLAB',0.5,0,0,1,1,1,2);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10805,'Algorithm and data structure',2.5,2,2,0,4,1,2);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10806,'Object Oriented Programming and Design',3,2,2,0,4,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (10824,'Introduction toComputer Programming',3,2,2,0,4,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40102,'Databases and Data-Warehouse Systems',3.5,3,1,0,4,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40103,'Introduction to Economics',3,2,2,0,4,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40104,'Methods Engineering',4,3,2,0,5,1,2);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40105,'Statistical Inference',3.5,2,3,0,5,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40106,'Accounting and Costing',2.5,2,1,0,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40107,'Organizational Behavior',2,2,0,0,2,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40108,'Project Management',3,2,0,2,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40109,'Into ro marketing',2,2,0,0,2,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40111,'Introduction to Information Systems',2.5,2,1,0,3,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40112,'Introduction to OperationsResearch',3,2,2,0,4,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40113,'Introduction to Experimental and  Industrial Psychology',2.5,2,1,0,3,1,2);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40114,'computed  production',1,0,0,2,2,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40118,'Simulation',3,2,0,2,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40120,'Stochastic Models',3,2,2,0,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40123,'Optimization Methods',3,2,2,0,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40124,'Facilities Design',2,2,0,0,2,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40125,'Knowledge Management and Intro To Congnitive Engineering',2,2,0,0,2,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40127,'Total Quality',3,2,2,0,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40129,'Engineering Economy',2.5,2,1,0,3,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40130,'Quality Assurance',2.5,2,1,0,3,1,2);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40132,'Operations Management 1',3,2,2,0,4,1,2);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40133,'Operations Management 2',3,2,2,0,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40134,'Introduction to Industry 4.0',3,2,0,2,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40135,'Information Systems Analysis',3.5,2,3,0,5,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40136,'Logistics management and Supply Chains',3,2,2,0,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40137,'ntroduction toIndustrial Engineering',3,2,2,0,4,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40139,'Human-Machine Integrated Systems',2.5,2,0,1,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40204,'Behavioral Economics',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40205,'Business Intelligence',2.5,2,1,0,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40208,'System Dynamics Analysis',3,2,2,0,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40209,'Introduction to Recommendation Systems',2,2,0,0,2,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40211,'Decision Support Systems -basic planning and building',3,3,0,0,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40213,'Risk Management and Insurance',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40214,'Product Data Management',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40215,'Game Theory',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40219,'Organizational Information Systems -ERP',3,2,2,0,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40220,'Human-Computer interface',3,2,0,2,4,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40221,'Quality Engineering',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40222,'CRM',1,2,2,0,4,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40223,'Internet technologies for information systems',2.5,1,0,3,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40225,'Data Mining',2.5,2,1,0,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40229,'Statistical Methods in Data Analysis',2.5,2,1,0,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40231,'Advanced Methods in planning and measuring performance',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40232,'System AnalysisImplementation',2.5,1,0,3,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40235,'Data analysis using R',2.5,2,1,0,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40237,'Human Resource Management',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40238,'Python To Industrial Engineering',2.5,1,0,3,4,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40239,'Intro to Sustainability',2.5,2,1,0,3,0,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40240,'Deep Learning',2.5,2,1,0,3,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40241,'Real-time big data analytics using Python',1,1,0,3,4,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (40401,'Final Project',8,4,8,0,12,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (80898,'Selection Course',2,2,0,0,2,1,0);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (80899,'Selection Course (english)',2,2,0,0,2,1,2);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90901,'Differential and Integral Calculus 1',5,4,2,0,6,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90902,'Differential and Integral Calculus 2',5,4,2,0,6,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90905,'Linear Algebra',5,4,2,0,6,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90911,'Introduction to Probability',3.5,3,1,0,4,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90914,'Ordinary Differential Equations',2.5,2,1,0,3,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90926,'Discrete Mathematics',5,4,2,0,6,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90937,'Physics1',3.5,3,1,0,4,1,1);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90939,'Physics2',3.5,3,1,0,4,1,2);
INSERT INTO course (`ID`,`course_name`,`credit`,`hr_lec`,`hr_practice`,`hr_lab`,`hr_total`,`is_preffered`,`done_status`) VALUES (90947,'Physics Lab',1,0,0,2,2,1,2);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10206,0,0,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10230,0,1,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10237,0,1,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10246,0,1,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10310,0,0,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10336,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10805,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10806,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (10824,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40102,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40103,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40104,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40105,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40106,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40107,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40108,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40109,0,0,0,0,1);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40111,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40112,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40113,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40114,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40118,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40120,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40123,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40124,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40125,0,0,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40127,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40129,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40130,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40132,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40133,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40134,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40135,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40136,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40137,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40139,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40204,0,0,0,0,1);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40205,0,1,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40208,0,0,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40209,0,1,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40211,0,0,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40213,0,0,0,0,1);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40214,0,0,0,1,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40215,0,0,0,0,1);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40219,0,0,1,1,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40220,0,0,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40221,0,0,0,1,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40222,0,0,0,0,1);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40223,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40225,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40229,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40231,0,0,0,1,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40232,0,0,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40235,0,1,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40237,0,0,0,0,1);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40238,0,0,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40239,0,0,0,0,1);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40240,0,1,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40241,0,1,1,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (40401,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (80898,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (80899,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90901,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90902,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90905,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90911,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90914,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90926,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90937,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90939,1,0,0,0,0);
INSERT INTO course_internship (`ID`,`intership_M`,`intership_A`,`intership_I`,`intership_O`,`intership_DM`) VALUES (90947,1,0,0,0,0);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10206,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10230,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10237,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10246,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10310,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10336,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10805,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10806,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (10824,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40102,1,999,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40103,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40104,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40105,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40106,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40107,1,999,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40108,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40109,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40111,1,999,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40112,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40113,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40114,1,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40118,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40120,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40123,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40124,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40125,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40127,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40129,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40130,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40132,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40133,1,999,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40134,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40135,1,999,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40136,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40137,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40139,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40204,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40205,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40208,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40209,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40211,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40213,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40214,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40215,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40219,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40220,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40221,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40222,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40223,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40225,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40229,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40231,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40232,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40235,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40237,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40238,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40239,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40240,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40241,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (40401,1,999,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (80898,1,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (80899,1,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90901,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90902,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90905,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90911,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90914,1,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90926,999,1,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90937,999,1,999);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90939,1,999,1);
INSERT INTO course_poss_time (`ID`,`sem1`,`sem2`,`sem3`) VALUES (90947,1,999,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10206,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10230,3,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10237,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10246,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10310,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10336,2,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10805,2,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10806,2,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (10824,1,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40102,2,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40103,1,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40104,2,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40105,2,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40106,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40107,1,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40108,3,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40109,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40111,1,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40112,2,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40113,2,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40114,1,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40118,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40120,3,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40123,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40124,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40125,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40127,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40129,2,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40130,2,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40132,2,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40133,3,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40134,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40135,3,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40136,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40137,1,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40139,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40204,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40205,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40208,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40209,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40211,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40213,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40214,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40215,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40219,3,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40220,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40221,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40222,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40223,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40225,3,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40229,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40231,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40232,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40235,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40237,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40238,3,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40239,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40240,4,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40241,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (40401,4,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (80898,3,3);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (80899,2,3);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90901,1,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90902,1,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90905,1,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90911,1,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90914,2,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90926,1,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90937,1,2);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90939,2,1);
INSERT INTO course_rec_time (`ID`,`rec_year`,`rec_sem`) VALUES (90947,2,1);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10206,90905,90911,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10230,90905,90902,90911,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10237,10805,90911,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10246,10805,90902,90911,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10310,10824,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10336,90905,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10805,10806,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10806,10824,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (10824,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40102,10824,40111,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40103,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40104,40137,40105,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40105,90911,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40106,40103,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40107,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40108,40137,40105,40129,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40109,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40111,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40112,90905,90911,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40113,40105,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40114,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40118,40105,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40120,90914,90911,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40123,40112,90926,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40124,40132,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40125,40102,90926,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40127,40105,40130,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40129,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40130,40105,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40132,40105,40137,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40133,40132,40112,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40134,10824,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40135,40111,40102,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40136,40132,40112,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40137,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40139,40104,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40204,40113,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40205,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40208,40120,40132,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40209,40135,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40211,40135,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40213,90911,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40214,40135,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40215,90911,90905,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40219,40102,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40220,40102,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40221,40130,40127,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40222,40102,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40223,40135,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40225,40102,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40229,40105,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40231,40103,40132,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40232,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40235,40105,10824,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40237,40113,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40238,40102,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40239,40105,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40240,40135,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40241,40102,40135,40223,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (40401,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (80898,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (80899,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90901,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90902,90901,90905,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90905,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90911,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90914,90905,90902,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90926,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90937,0,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90939,90937,0,0,0,0,0,0,0);
INSERT INTO course_req (`ID`,`req1`,`req2`,`req3`,`req4`,`req5`,`req6`,`req7`,`req8`) VALUES (90947,90937,0,0,0,0,0,0,0);