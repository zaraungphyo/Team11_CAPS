CREATE SCHEMA `caps_team11` ;
CREATE TABLE `caps_team11`.`role` (
  `ROLEID` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `ROLE_DESCRIPTION` VARCHAR(200) NULL,
  PRIMARY KEY (`ROLEID`));

CREATE TABLE `caps_team11`.`user` (
  `USERID` INT NOT NULL,
  `FIRST_MID_NAME` VARCHAR(45) NOT NULL,
  `LAST_NAME` VARCHAR(45) NOT NULL,
  `ROLEID` INT NOT NULL,
  `DATE_JOINED` DATE NULL,
  `EMAIL` VARCHAR(45) NULL,
  `PASSWORD` VARCHAR(45) NOT NULL,
  `STATUS` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`USERID`),
   CONSTRAINT FK_ROLEID FOREIGN KEY (ROLEID)
    REFERENCES `caps_team11`.`role`(ROLEID)
  );
CREATE TABLE `caps_team11`.`course` (
  `COURSEID` INT NOT NULL,
  `COURSE_NAME` VARCHAR(100) NOT NULL,
  `COURSE_DESCRIPTION` VARCHAR(1000) NULL DEFAULT NULL,
  `CLASS_SIZE` INT NOT NULL,
  `NUMBER_REGISTERED` INT NOT NULL,
  `CREDIT` INT NOT NULL,
  `START_DATE` DATE NOT NULL,
  `END_DATE` DATE NOT NULL,
  `WEEKDAY` VARCHAR(45) NOT NULL,
  `START_TIME` TIME NOT NULL,
  `END_TIME` TIME NOT NULL,
  `EXAM_TIMIE` DATETIME NOT NULL,
  `ASSIGNED_LECTURERID` INT NOT NULL,
  PRIMARY KEY (`COURSEID`) ,
   CONSTRAINT FK_ASSIGNED_LECTURERID FOREIGN KEY (ASSIGNED_LECTURERID)
    REFERENCES `caps_team11`.`user`(USERID)
  );



CREATE TABLE `caps_team11`.`student_enrollment` (
  `STUDENT_ENROLL_ID` INT NOT NULL,
  `COURSEID` INT NOT NULL,
  `STUDENTID` INT NOT NULL,
  `DATE_REGISTERED` DATE NOT NULL,
  `STATUS_ENROLL` VARCHAR(45) NOT NULL,
  `SCORE` INT(11) DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ENROLL_ID`)  ,
   CONSTRAINT FK_COURSEID FOREIGN KEY (COURSEID)
    REFERENCES `caps_team11`.`course`(COURSEID)
     ,
   CONSTRAINT FK_STUDENTID FOREIGN KEY (STUDENTID)
    REFERENCES `caps_team11`.`user`(USERID)
  );

INSERT INTO `caps_team11`.`role` (`ROLEID`, `NAME`, `ROLE_DESCRIPTION`) VALUES ('1', 'Administrator', 'Manage Students, Manage Lecturers, Manage Courses, Manage Enrolment, Maintain User Roles,Change Password ');
INSERT INTO `caps_team11`.`role` (`ROLEID`, `NAME`, `ROLE_DESCRIPTION`) VALUES ('2', 'Lecturer', 'View Courses Taught, View Course Enrolment, Manage Course Student Grades, View Student Performance, Change Password');
INSERT INTO `caps_team11`.`role` (`ROLEID`, `NAME`, `ROLE_DESCRIPTION`) VALUES ('3', 'Student', 'View Grades and GPA, View Full Course List and Course Details, View Courses Enrolled, Enrol for a Course, Cancel Course, Vie Profile, Change Password');

INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('1101', 'Introduction to Business Analytics', 'This module provides students with an introduction to the fundamental concepts and tools needed to understand the emerging role of business analytics in business and non-profit organizations. The module aims to demonstrate to students how to apply basic business analytics tools in a spreadsheet environment, and how to communicate with analytics professionals to effectively use and interpret analytic models and results for making better and more well-informed business decisions.', '20', '0', '4', '2019-01-13', '2019-05-31', 'MON', '10:00:00', '12:00:00', '2019-06-05 09:00:00');

INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('2101', 'IT-driven Business Decision', 'This module provides a general introduction to using various IT-driven tools, software and techniques for decision making support. The module will start off by describing the decision-making process in businesses today. It will proceed to cover methods such as prediction and classification methods, markov chain monte carlo, simulation, forecasting time series, and neural network among others. Examples will also be drawn from various industry domains and applications.', '20', '0', '4', '2019-01-13', '2019-05-31', 'TUE', '09:00:00', '11:00:00', '2019-06-06 09:00:00');
INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('2102', 'Data Management and Visualisation', 'This module aims to provide students with practical knowledge and understanding of basic issues and techniques in data management and warehousing with relational database management systems, as well as data visualisation principles, techniques and tools. The module covers data management concepts, conceptual and logical design, database management, data warehousing concepts, data warehousing design, relational database management systems and tools, data visualisation and dashboard design concepts, visual perception and design principles, visualisation techniques and tools for temporal and spatial data, proportions and relationships, multivariate and complex data, etc.', '10', '0', '6', '2019-01-13', '2019-05-31', 'WED', '09:00:00', '11:30:00', '2019-06-06 14:00:00');
INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('3101', 'Business Analytics Capstone Project', 'In this module, students are required to complete a real-world business analytics project based on principles taught in previous modules. This project can be viewed as a large-scale practical module. Emphasis will be placed on understanding the objectives of the analytics exercise, applying appropriate analytic methods and techniques, evaluating database designs, modeling strategies and implementation, and monitoring analytics performances. Students will sharpen communication skills through close team interactions, consultations, and formal presentations. Students will also develop a comprehensive understanding of the issues of business analytics such as data privacy and security, legal issues and responsibilities, business/technical communication of the results of data analytics.', '10', '0', '6', '2019-01-13', '2019-05-31', 'THUR', '09:00:00', '11:30:00', '2019-06-05 14:00:00');
INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('3102', 'Computational Methods for Business Analytics', 'Computers are becoming readily accessible, and its use in business analytics is growing more prevalent. This module will introduce students to computational methods, algorithms and techniques used in business fields such as finance, marketing and economics to address complex analytics problems. The course will cover topics and algorithms in areas such as optimization methods, numerical analysis, simulations, monte-carlo methods, graph and flow methods, and computational complexity issues to address business analytics related problems. Students will get the opportunity to learn about these computational methods and issues through hands-on practice assignments, case analysis discussions, and course projects.', '20', '0', '4', '2019-01-13', '2019-05-31', 'FRI', '10:00:00', '12:00:00', '2019-06-05 14:00:00');
INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('3103', 'Application Systems Development for Business Analytics', 'This module aims to train students to be conversant in the technologies, approaches, principles and issues in designing IT applications systems for business analytics. Major topics include: rapid web frameworks, scripting languages, database design, web and mobile interfaces, tracking and analysis of customers, payment services / verification, implementing security, designing and deploying web and mobile services, and operational considerations and technical tradeoffs.', '20', '0', '4', '2019-01-13', '2019-05-31', 'MON', '14:00:00', '16:00:00', '2019-06-07 09:00:00');

INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('4013', 'Analytics for Capital Market Trading and Investment', 'This module offers a broad coverage of quantitative trading and financial portfolio optimization, which consists of trading strategies based on quantitative analysis. It will also aim to identify trading opportunities, practices, optimal execution and placements of trading on current technological platforms. Regulations and risk management of quantitative trading will also be emphasized.', '20', '0', '8', '2019-01-13', '2019-05-31', 'TUE', '09:00:00', '12:00:00', '2019-06-07 09:00:00');
INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('4101', 'B.Sc. (Business Analytics) Dissertation', ' The objective of this module is to enable students to work on an individual business analytics research project spanning two semesters, with approximately 400 hours of work. Students learn how to apply concepts and skills acquired from all prior modules taken and also to think of innovative ways of solving business analytics problems, and learn to work in a research and real-world business analytics environment. The project seeks to demonstrate the student’s work ethic, initiative, determination, and ability to think independently. On completion of the project, the student has to submit a dissertation which describes the project work and summarizes the findings, as well as to give an oral presentation before a panel of examiners.', '20', '0', '4', '2019-01-13', '2019-05-31', 'WED', '09:00:00', '11:00:00', '2019-06-07 14:00:00');
INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('4211', 'Data-Driven Marketing', 'In today’s environment, marketing or business analysts require tools and techniques to both quantify the strategic value of marketing initiatives, and to maximize marketing campaign performance. This module aims to teach students concepts, methods and tools to demonstrate the return on investment (ROI) of marketing activities and to leverage on data and marketing analytics to make better and more informed marketing decisions. The course topics covered include marketing performance management, marketing metrics, data management, market response and diffusion models, market and customer segmentation models, analytic marketing and value driven segmentation, digital media marketing analytics, etc. Students will have access to real marketing and customer data sources, and will conduct hands-on marketing analysis using data mining and statistical analysis tools.', '20', '0', '6', '2019-01-13', '2019-05-31', 'TUE', '14:00:00', '16:30:00', '2019-06-07 14:00:00');
INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('4222', 'Programming Methodology', ' This module introduces the fundamental concepts of problem solving by computing and programming using an imperative programming language. It is the first and foremost introductory course to computing. Topics covered include computational thinking and computational problem solving, designing and specifying an algorithm, basic problem formulation and problem solving approaches, program development, coding, testing and debugging, fundamental programming constructs (variables, types, expressions, assignments, functions, control structures, etc.), fundamental data structures (arrays, strings, composite data types), basic sorting, and recursion.', '20', '0', '4', '2019-01-13', '2019-05-31', 'THUR', '14:00:00', '16:00:00', '2019-06-08 09:00:00');
INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('1231', 'Discrete Structures', 'This module introduces mathematical tools required in the study of computer science. Topics include: (1) Logic and proof techniques: propositions, conditionals, quantifications. (2) Relations and Functions: Equivalence relations and partitions. Partially ordered sets. Well-Ordering Principle. Function equality. Boolean/identity/inverse functions. Bijection. (3) Mathematical formulation of data models (linear model, trees, graphs). (4) Counting and Combinatoric: Pigeonhole Principle. Inclusion-Exclusion Principle. Number of relations on a set, number of injections from one finite set to another, Diagonalisation proof: An infinite countable set has an uncountable power set; Algorithmic proof: An infinite set has a countably infinite subset. Subsets of countable sets are countable.', '40', '0', '4', '2019-01-13', '2019-05-31', 'FRI', '10:00:00', '12:00:00', '2019-06-08 14:00:00');


INSERT INTO `caps_team11`.`course` (`COURSEID`, `COURSE_NAME`, `COURSE_DESCRIPTION`, `CLASS_SIZE`, `NUMBER_REGISTERED`, `CREDIT`, `START_DATE`, `END_DATE`, `WEEKDAY`, `START_TIME`, `END_TIME`, `EXAM_TIMIE`) VALUES ('2030', 'Programming Methodology II', 'This module is a follow up to CS1010. It explores two modern programming paradigms, object-oriented programming and functional programming. Through a series of integrated assignments, students will learn to develop medium-scale software programs in the order of thousands of lines of code and tens of classes using objectoriented design principles and advanced programming constructs available in the two paradigms. Topics include objects and classes, composition, association, inheritance, interface, polymorphism, abstract classes, dynamic binding, lambda expression, effect-free programming, first class functions, closures, continuations, monad, etc.', '20', '0', '4', '2019-01-13', '2019-05-31', 'FRI', '14:00:00', '16:00:00', '2019-06-08 09:00:00');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-05 09:00:00' WHERE (`COURSEID` = '1101');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-08 14:00:00' WHERE (`COURSEID` = '1231');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-06 09:00:00' WHERE (`COURSEID` = '2101');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-06 14:00:00' WHERE (`COURSEID` = '2102');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-05 14:00:00' WHERE (`COURSEID` = '3101');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-05 14:00:00' WHERE (`COURSEID` = '3102');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-07 09:00:00' WHERE (`COURSEID` = '3103');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-07 09:00:00' WHERE (`COURSEID` = '4013');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-07 14:00:00' WHERE (`COURSEID` = '4101');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-07 14:00:00' WHERE (`COURSEID` = '4211');
UPDATE `caps_team11`.`course` SET `START_DATE` = '2019-01-13', `END_DATE` = '2019-05-31', `EXAM_TIMIE` = '2019-06-08 09:00:00' WHERE (`COURSEID` = '4222');


INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('70', 'Cheryl ', 'Tan', '2', '2017-08-15', 'Cheryl @gmail.com', 'password70', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('71', 'Kelvin ', ' Koh', '2', '2013-02-01', 'Kelvin @gmail.com', 'password71', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('72', 'Wei Wei', 'Tan', '2', '2012-05-03', 'wei2@gmail.com', 'password72', 'active');

INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('73', 'Steven ', 'Teo', '2', '2012-05-01', 'Steven@gmail.com', 'password73', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('74', 'Ang Kim ', 'Beng', '2', '2000-12-05', 'kimmy@gmail.com', 'password74', 'inactive');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('75', 'Cheryl', ' Song', '2', '2012-02-01', 'CherylSong@gmail.com', 'password75', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('76', 'Steven', ' Ou', '2', '2015-08-08', 'Steven@gmail.com', 'password76', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('77', 'Richard ', 'Kwan', '2', '2003-08-01', 'Richard@gmail.com', 'password77', 'inactive');
UPDATE `caps_team11`.`user` SET `EMAIL` = 'Cheryl@gmail.com' WHERE (`USERID` = '70');
UPDATE `caps_team11`.`user` SET `EMAIL` = 'Kelvin@gmail.com' WHERE (`USERID` = '71');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('78', 'Kok Kah', ' Chee', '2', '2018-02-05', 'KokKah@gmail.com', 'password78', 'active');


INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('1', 'Jade', 'Reginald', '3', '2018-01-04', 'Jade@gmail.com', 'Password1', 'active');


INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('2', 'Devon', 'Romona', '3', '2018-01-04', 'Devon@gmail.com', 'Password2', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('3', 'Eleanora', 'Librada', '3', '2018-01-04', 'Eleanora@gmail.com', 'Password3', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('4', 'Vivan', 'Andree', '3', '2018-01-04', 'Vivan@gmail.com', 'Password4', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('5', 'Lavette', 'Marylyn', '3', '2018-01-04', 'Lavette@gmail.com', 'Password5', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('6', 'Marry', 'Roselyn', '3', '2018-01-04', 'Marry@gmail.com', 'Password6', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('7', 'Ramon', 'Issac', '3', '2018-01-04', 'Ramon@gmail.com', 'Password7', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('8', 'Annabel', 'Dawn', '3', '2018-01-04', 'Annabel@gmail.com', 'Password8', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('9', 'Valarie', 'Orville', '3', '2018-01-04', 'Valarie@gmail.com', 'Password9', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('10', 'Bonnie', 'Lianne', '3', '2018-01-04', 'Bonnie@gmail.com', 'Password10', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('11', 'Seth', 'Magali', '3', '2018-01-04', 'Seth@gmail.com', 'Password11', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('12', 'Joesph', 'Doris', '3', '2018-01-04', 'Joesph@gmail.com', 'Password12', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('13', 'Jocelyn', 'Anjelica', '3', '2018-01-04', 'Jocelyn@gmail.com', 'Password13', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('14', 'Kimberlee', 'Michele', '3', '2018-01-04', 'Kimberlee@gmail.com', 'Password14', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('15', 'Ava', 'Carey', '3', '2018-01-04', 'Ava@gmail.com', 'Password15', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('16', 'Zenobia', 'Clelia', '3', '2018-01-04', 'Zenobia@gmail.com', 'Password16', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('17', 'Velda', 'Willie', '3', '2018-01-04', 'Velda@gmail.com', 'Password17', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('18', 'Greta', 'Brittanie', '3', '2018-01-04', 'Greta@gmail.com', 'Password18', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('19', 'Skye', 'Nick', '3', '2018-01-04', 'Skye@gmail.com', 'Password19', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('20', 'Janae', 'Wesley', '3', '2018-01-04', 'Janae@gmail.com', 'Password20', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('21', 'Winston', 'Raisa', '3', '2018-01-04', 'Winston@gmail.com', 'Password21', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('22', 'Viviana', 'Genevie', '3', '2018-01-04', 'Viviana@gmail.com', 'Password22', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('23', 'Tamie', 'Adria', '3', '2018-01-04', 'Tamie@gmail.com', 'Password23', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('24', 'Ricki', 'Jackeline', '3', '2018-01-04', 'Ricki@gmail.com', 'Password24', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('25', 'Jacinto', 'Danyel', '3', '2018-01-04', 'Jacinto@gmail.com', 'Password25', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('26', 'Rosenda', 'Jasmin', '3', '2018-01-04', 'Rosenda@gmail.com', 'Password26', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('27', 'Kathie', 'Zachariah', '3', '2018-01-04', 'Kathie@gmail.com', 'Password27', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('28', 'Cathryn', 'Ernest', '3', '2018-01-04', 'Cathryn@gmail.com', 'Password28', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('29', 'Christene', 'Loida', '3', '2018-01-04', 'Christene@gmail.com', 'Password29', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('30', 'Ezekiel', 'Justine', '3', '2018-01-04', 'Ezekiel@gmail.com', 'Password30', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('31', 'Sadye', 'Alma', '3', '2018-01-04', 'Sadye@gmail.com', 'Password31', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('32', 'Jamila', 'Eldon', '3', '2018-01-04', 'Jamila@gmail.com', 'Password32', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('33', 'Sabrina', 'Sandra', '3', '2018-01-04', 'Sabrina@gmail.com', 'Password33', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('34', 'Jose', 'Tyron', '3', '2018-01-04', 'Jose@gmail.com', 'Password34', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('35', 'Federico', 'Deneen', '3', '2018-01-04', 'Federico@gmail.com', 'Password35', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('36', 'Daisey', 'Luanna', '3', '2018-01-04', 'Daisey@gmail.com', 'Password36', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('37', 'Michael', 'Olin', '3', '2018-01-04', 'Michael@gmail.com', 'Password37', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('38', 'Birdie', 'Kirk', '3', '2018-01-04', 'Birdie@gmail.com', 'Password38', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('39', 'Mitzi', 'Lenna', '3', '2018-01-04', 'Mitzi@gmail.com', 'Password39', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('40', 'Leda', 'Sterling', '3', '2018-01-04', 'Leda@gmail.com', 'Password40', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('41', 'Graham', 'Azzie', '3', '2018-01-04', 'Graham@gmail.com', 'Password41', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('42', 'Timmy', 'Janet', '3', '2018-01-04', 'Timmy@gmail.com', 'Password42', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('43', 'Carmela', 'Kristel', '3', '2018-01-04', 'Carmela@gmail.com', 'Password43', 'active');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('44', 'Jonathon', 'Tameka', '3', '2018-01-04', 'Jonathon@gmail.com', 'Password44', 'inactive');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('45', 'Jeanette', 'Marylee', '3', '2018-01-04', 'Jeanette@gmail.com', 'Password45', 'inactive');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('46', 'Darcy', 'Dot', '3', '2018-01-04', 'Darcy@gmail.com', 'Password46', 'inactive');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('47', 'Chanell', 'Steve', '3', '2018-01-04', 'Chanell@gmail.com', 'Password47', 'inactive');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('48', 'Reta', 'Beverlee', '3', '2018-01-04', 'Reta@gmail.com', 'Password48', 'inactive');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('49', 'Hellen', 'Peggy', '3', '2018-01-04', 'Hellen@gmail.com', 'Password49', 'inactive');
INSERT INTO `caps_team11`.`user` (`USERID`, `FIRST_MID_NAME`, `LAST_NAME`, `ROLEID`, `DATE_JOINED`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES ('50', 'Tinisha', 'Tobi', '3', '2018-01-04', 'Tinisha@gmail.com', 'Password50', 'inactive');



INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('1', '2101', '1', '2016-12-01', 'sucessful', 56);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('2', '2101', '2', '2016-12-01', 'sucessful', 78);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('3', '2101', '3', '2016-12-01', 'sucessful', 55);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('4', '2102', '1', '2016-12-01', 'sucessful', 67);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('5', '2101', '5', '2016-12-03', 'sucessful', 53);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('6', '2101', '6', '2016-12-03', 'sucessful', 46);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('7', '2101', '7', '2016-12-05', 'sucessful', 78);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('8', '2101', '8', '2016-12-01', 'sucessful', 54);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('9', '2101', '9', '2016-12-01', 'sucessful', 56);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('10', '2101', '10', '2016-12-02', 'sucessful', 61);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('11', '2101', '11', '2016-12-12', 'sucessful', 39);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('12', '2101', '12', '2016-12-13', 'sucessful', 65);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('13', '2101', '13', '2016-12-11', 'sucessful',66);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('14', '2101', '14', '2016-12-11', 'sucessful', 55);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('15', '2101', '15', '2016-12-14', 'sucessful', 45);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('16', '2101', '16', '2016-12-13', 'sucessful', 56);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('17', '2101', '17', '2016-12-13', 'sucessful', 87);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('18', '2101', '18', '2016-12-12', 'sucessful', 46);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('19', '2101', '19', '2016-12-11', 'sucessful', 45);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('20', '2101', '20', '2016-12-01', 'sucessful', 34);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('21', '2101', '21', '2016-12-01', 'sucessful', 54);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('22', '2101', '22', '2016-12-08', 'sucessful', 56);
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`, `SCORE`) VALUES ('23', '2033', '1', '2016-12-09', 'sucessful', 39);



INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`,`SCORE`)
 VALUES ('24', '2101', '4', '2016-12-14', 'unsucessful',67);
 
INSERT INTO `caps_team11`.`student_enrollment` (`STUDENT_ENROLL_ID`, `COURSEID`, `STUDENTID`, `DATE_REGISTERED`, `STATUS_ENROLL`,`SCORE`)
 VALUES ('25', '2101', '25', '2016-12-14', 'unsucessful',46);
