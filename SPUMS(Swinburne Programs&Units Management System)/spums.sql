-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 07:07 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spums`
--

-- --------------------------------------------------------

--
-- Table structure for table `antirequnit`
--

CREATE TABLE `antirequnit` (
  `unitCode` varchar(255) DEFAULT NULL,
  `Anti_Req` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antirequnit`
--

INSERT INTO `antirequnit` (`unitCode`, `Anti_Req`) VALUES
('COS10009', 'NILL'),
('COS10003', 'NILL'),
('SWE40002', ' COS30022 Software Development Project 2'),
('SWE40001', 'COS30021 Software Development Project 1'),
('ICT30005', 'NILL'),
('COS20015', 'NILL'),
('Networks and Switching', 'TNE10002 LAN Principles & TNE20001 IP Technologies'),
('TNE10006', 'TNE10002 LAN Principles OR TNE20001 IP Technologies'),
('COS10011', ' COS10005 Web Development'),
('COS20001', 'NILL'),
('COS20007', 'COS30014 Object-Oriented Programming in C++ OR  COS30016 Programming in Java'),
('COS30008', 'NILL'),
('SWE20001', 'NILL'),
('COS30017', 'NILL'),
('COS30041', 'NILL'),
('COS30043', 'NILL'),
('SWE30010', 'SWE20003 Software Project Practices and Management'),
('TNE20002', 'TNE10002 LAN Principles OR TNE70003 Network Routing Principles'),
('COS30015', 'NILL'),
('TNE30009', 'NILL'),
('INF30020', 'NILL'),
('TNE30012', 'NILL'),
('INF30029', 'NILL'),
('ICT30010', 'NILL'),
('SWE20004', 'NILL'),
('COS20019', 'NILL'),
('SWE30011', 'NILL'),
('SWE30012', 'NILL'),
('COS20016', 'NILL'),
('TNE10005', 'NILL'),
('INF10002', 'NILL'),
('INF10003', 'Completion of a unit that is very similar in content or the content overlaps with another unit.  COS10010 Enterprise Technologies and Architectures'),
('ICT30001', 'SWE30008 Software Team Project'),
('test', 'NILL'),
('ICT10001', 'NILL'),
('COS30020', 'NILL'),
('TNE30018', 'NILL');

-- --------------------------------------------------------

--
-- Table structure for table `coreq`
--

CREATE TABLE `coreq` (
  `unitCode` varchar(255) DEFAULT NULL,
  `Co_Req` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coreq`
--

INSERT INTO `coreq` (`unitCode`, `Co_Req`) VALUES
('COS10009', 'NILL'),
('COS10003', 'NILL'),
('SWE40002', 'NILL'),
('SWE40001', ' SWE20003 Software Project Practices and Management OR SWE30010 Development Project 2 - Design, Planning and Management OR INF30029 Information Technology Project Management OR MME40001 Engineering Management 2'),
('ICT30005', 'NILL'),
('COS20015', 'NILL'),
('Networks and Switching', 'NILL'),
('TNE10006', 'NILL'),
('COS10011', 'COS10009 Introduction to Programming'),
('COS20001', 'NILL'),
('COS20007', 'NILL'),
('COS30008', 'NILL'),
('SWE20001', 'COS20007 Object-Oriented Programming or COS20011 Software Development in Java'),
('COS30017', 'NILL'),
('COS30041', 'NILL'),
('COS30043', 'NILL'),
('SWE30010', 'NILL'),
('TNE20002', 'NILL'),
('COS30015', 'NILL'),
('TNE30009', 'NILL'),
('INF30020', 'NILL'),
('TNE30012', 'NILL'),
('INF30029', 'NILL'),
('ICT30010', 'NILL'),
('SWE20004', 'NILL'),
('COS20019', 'NILL'),
('SWE30011', 'NILL'),
('SWE30012', 'NILL'),
('COS20016', 'NILL'),
('TNE10005', 'NILL'),
('INF10002', 'NILL'),
('INF10003', 'NILL'),
('ICT30001', 'INF30029 Information Technology Project Management or SWE30010 Development Project 2 - Design, Planning and Management or SWE20003 Software Project Practices and Management'),
('test', 'NILL'),
('ICT10001', 'NILL'),
('COS30020', 'NILL'),
('TNE30018', 'NILL');

-- --------------------------------------------------------

--
-- Table structure for table `prerequnit`
--

CREATE TABLE `prerequnit` (
  `unitCode` varchar(255) DEFAULT NULL,
  `Pre_Req` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prerequnit`
--

INSERT INTO `prerequnit` (`unitCode`, `Pre_Req`) VALUES
('COS10009', 'NILL'),
('COS10003', 'NILL'),
('SWE40002', 'SWE40001 Software Engineering Project A'),
('SWE40001', 'COS20007 Object-Oriented Programming OR COS30014 Object-Oriented Programming in C++ OR SWE20004 Technical Software Development'),
('ICT30005', '200 Credit Points'),
('COS20015', 'COS10009 Introduction to Programming'),
('Networks and Switching', 'NILL'),
('TNE10006', 'NILL'),
('COS10011', 'NILL'),
('COS20001', 'NILL'),
('COS20007', 'COS10001 Algorithmic Problem Solving OR COS10009 Introduction to Programming OR INF10016 Introduction to Programming in .NET OR SWE20004 Technical Software Development'),
('COS30008', 'COS20007 Object-Oriented Programming  or COS30016 Programming in Java  or COS20011 Software Development in Java or SWE20004 Technical Software Development'),
('SWE20001', 'SWE20004 Technical Software Development or COS10009 Introduction to Programming'),
('COS30017', 'COS20007 Object-Oriented Programming  or COS20011 Software Development in Java  or COS30014 Object-Oriented Programming in C++ or COS30016 Programming in Java or SWE20004 Technical Software Development'),
('COS30041', 'COS10005 Web Development or COS10011 Creating Web Applications or COS20001 User-Centred Design and either COS20007 Object-Oriented Programming or SWE20004 Technical Software Development  '),
('COS30043', 'COS10005 Web Development OR COS10011 Creating Web Applications and COS20007 Object-Oriented Programming OR SWE20004 Technical Software Development'),
('SWE30010', 'SWE20001 Development Project 1 - Tools and Practices plus either COS20011 Software Development in Java or COS20007 Object-Oriented Programming or SWE20004 Technical Software Development'),
('TNE20002', 'TNE10006 Networks and Switching'),
('COS30015', 'COS20007 Object Oriented Programming OR SWE20004 Technical Software Development  AND one of  COS10011 Creating Web Applications OR COS10005 Web Development AND one of  TNE10005 Network Administration OR TNE10006 Networks and Switching'),
('TNE30009', 'TNE10006 Networks and Switching or COS20012 Data Communications and Security'),
('INF30020', '100 Credit Points And INF10003 Introduction to Business Information Systems Or INF10007 Information Systems Fundamentals Or  SWE20004 Technical Software Development  Or  COS20007 Object-Oriented Programming'),
('TNE30012', 'TNE20001 IP Technologies or TNE20002 Network Routing Principles'),
('INF30029', '100 Credit Points  And  INF10003 Introduction to Business Information Systems Or INF10007 Information Systems Fundamentals Or SWE20004 Technical Software Development Or COS20007 Object-Oriented Programming'),
('ICT30010', 'TNE10006 Networks and Switching or TNE10002 LAN Principles'),
('SWE20004', 'COS10001 Algorithmic Problem Solving or COS10009 Introduction to Programming  or RME10001 Robotics and Mechatronics Project 1 or ENG10004 Digital and Data Systems'),
('COS20019', 'COS10011 Creating Web Applications or COS10005 Web Development and TNE10006 Networks and Switching or COS20016 Operating System Configuration'),
('SWE30011', 'COS30017 Software Development for Mobile Devices   and either COS20007 Object-Oriented Programming or SWE20004 Technical Software Development'),
('SWE30012', 'SWE30011 IoT Programming   and either COS20007 Object-Oriented Programming or SWE20004 Technical Software Development'),
('COS20016', 'NILL'),
('TNE10005', 'NILL'),
('INF10002', 'NILL'),
('INF10003', 'NILL'),
('ICT30001', '187.5 credit points'),
('test', 'NILL'),
('ICT10001', 'NILL'),
('COS30020', 'One of:  COS10005 Web Development or COS10011 Creating Web Applications And COS10009 Introduction to Programming'),
('TNE30018', 'TNE10005 Network Administration');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `pcode` varchar(255) NOT NULL,
  `pname` text,
  `outcome` text,
  `ProgramLeader` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`pcode`, `pname`, `outcome`, `ProgramLeader`) VALUES
('R/418/6/0544 (09/20)', 'Bachelor of Computer Science', 'The Bachelor of Computer Science involves the use of the most up-to-date technology and methods, and includes a major emphasis on software development. The course is oriented towards applications in areas such as defence,  aerospace and medicine, where complex software plays a major role and often of a safety-critical nature; as well as in businesses that require extensive computer support, such as banking and manufacturing.', 'Michael Jefferson'),
('R/481/6/0228 (08/17)', 'Bachelor of Information and Communication Technology', 'The main aim of the course is to provide graduates with the knowledge, skills and attitudes to be an ICT professional with particular skills in a chosen area. Graduates will be prepared for immediate professional employment, or further studies at honours or postgraduate level.', 'Michael Jefferson');

-- --------------------------------------------------------

--
-- Table structure for table `program_units`
--

CREATE TABLE `program_units` (
  `pCode` varchar(255) DEFAULT NULL,
  `unitName` text NOT NULL,
  `unitType` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_units`
--

INSERT INTO `program_units` (`pCode`, `unitName`, `unitType`) VALUES
('R/481/6/0228 (08/17)', 'ICT10001 : Problem Solving with ICT<br>COS10011 : Creating Web Applications<br>INF10003 : Introduction to Business Information Systems<br>INF10002 : Database Analysis and Design<br>COS10009 : Introduction to Programming<br>COS20001 : User-Centred Design<br>TNE10005 : Network Administration<br>COS20016 : Operating System Configuration<br>SWE20001 : Development Project 1 - Tools and Practices<br>COS20007 : Object-Oriented Programming<br>COS30015 : IT Security<br>COS30043 : Interface Design and Development<br>COS30017 : Software Development for Mobile Devices<br>INF30029 : Information Technology Project Management<br>ICT30005 : Professional Issues in IT<br>ICT30001 : Information Technology Project<br>TNE10006 : Networks and Switching<br>TNE20002 : Network Routing Principles', 'Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Elective<br>Elective<br>Core<br>Elective<br>Elective<br>Core<br>Core<br>Core<br>Elective<br>Elective'),
('R/418/6/0544 (09/20)', 'COS10003 : Computer and Logic Essentials<br>COS10009 : Introduction to Programming<br>COS10011 : Creating Web Applications<br>TNE10006 : Networks and Switching<br>COS20015 : Fundamentals of Data Management<br>COS20001 : User-Centred Design<br>COS20007 : Object-Oriented Programming<br>SWE20001 : Development Project 1 - Tools and Practices<br>COS30041 : Creating Secure and Scalable Software<br>COS30043 : Interface Design and Development<br>SWE30010 : Development Project 2 - Design, Planning and Management<br>ICT30005 : Professional Issues in IT<br>SWE40001 : Software Engineering Project A<br>SWE40002 : Software Engineering Project B<br>TNE20002 : Network Routing Principles<br>ICT30010 : eForensic Fundamentals<br>INF30020 : Information Systems Risk and Security<br>INF30029 : Information Technology Project Management<br>TNE30009 : Network Security and Resilience<br>TNE30012 : Secure Remote Access Networks<br>SWE30011 : IoT Programming<br>SWE30012 : IoT Launcher Project<br>COS20019 : Cloud Computing Architecture', 'Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Core<br>Minor<br>Minor<br>Minor<br>Minor<br>Core<br>Core<br>Minor<br>Minor<br>Minor');

-- --------------------------------------------------------

--
-- Table structure for table `staffteach`
--

CREATE TABLE `staffteach` (
  `CodeUnit` varchar(255) DEFAULT NULL,
  `staffName` varchar(255) NOT NULL,
  `staffEmail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffteach`
--

INSERT INTO `staffteach` (`CodeUnit`, `staffName`, `staffEmail`) VALUES
('COS10009', 'Michael Jordan', ''),
('COS10003', 'Michael Jordan', ''),
('SWE40002', 'Michael Jordan', ''),
('SWE40001', 'James Brown', ''),
('ICT30005', 'Michael Jordan', ''),
('COS20015', 'Michael Jordan', ''),
('TNE10006', 'James Brown', ''),
('TNE10006', 'James Brown', ''),
('COS10011', 'Michael Jordan', ''),
('COS20001', 'Michael Jordan', ''),
('COS20007', 'Michael Jordan', ''),
('COS30008', 'James Brown', ''),
('SWE20001', 'Michael Jordan', ''),
('COS30017', 'Michael Jordan', ''),
('COS30041', 'Michael Jordan', ''),
('COS30043', 'Michael Jordan', ''),
('SWE30010', 'Michael Jordan', ''),
('TNE20002', 'Michael Jordan', ''),
('COS30015', 'Michael Jordan', ''),
('TNE30009', 'Michael Jordan', ''),
('INF30020', 'Michael Jordan', ''),
('TNE30012', 'Michael Jordan', ''),
('INF30029', 'Michael Jordan', ''),
('ICT30010', 'James Brown', ''),
('SWE20004', 'Michael Jordan', ''),
('COS20019', 'Michael Jordan', ''),
('SWE30011', 'James Brown', ''),
('SWE30012', 'James Brown', ''),
('COS20016', 'Michael Jordan', ''),
('TNE10005', 'Michael Jordan', ''),
('INF10002', 'James Brown, Michael Jefferson , Michael Jordan', ''),
('INF10003', 'James Brown, Michael Jefferson ', ''),
('ICT30001', 'James Brown, Michael Jefferson , Michael Jordan', ''),
('test', 'James Brown, Michael Jefferson , Michael Jordan', ''),
('ICT10001', 'James Brown, Michael Jordan', ''),
('COS30020', 'Michael Jefferson , Michael Jordan', ''),
('TNE30018', 'Michael Jordan', '');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unitCode` varchar(255) NOT NULL,
  `unitName` varchar(255) NOT NULL,
  `aim` text NOT NULL,
  `LearningOutcome` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unitCode`, `unitName`, `aim`, `LearningOutcome`) VALUES
('COS10003', 'Computer and Logic Essentials', 'This unit is designed to introduce students to fundamental mathematical concepts required in computer science and software development disciplines.\r\n', '1.	Solve problems related to computer science by using discrete mathematical concepts such as sets, relations, functions, logic, and combinatorics.\r\n2.	Demonstrate how data can be represented in digital form. \r\n3.	Apply the principles of Boolean algebra to simple circuits.\r\n4.	Explain the role of probability and statistics in computer science and software development. \r\n5.	Describe how discrete structures such as graphs are used in computer science. \r\n6.	Construct algorithms to solve problems and understand the principles of complexity.'),
('COS10009', 'Introduction to Programming', 'This unit of study aims to introduce students to structured programming and design.\r\n', '1. Apply code reading and debugging techniques to analyse, interpret, and describe the purpose of program code, and locate within this code errors in syntax, logic, style and/or good practice.\r\n2. Describe the principles of structured programming, and relate these to the syntactical elements of the programming language used and the way programs aredeveloped.\r\n3. Construct small programs, using the programming languages covered, that include the use of arrays, functions and procedures, parameter passing with call by value and call by reference, custom data types, and pointers.\r\n4. Use modular and functional decomposition to break problems down functionally, represent the resulting structures diagrammatically, and implement these structures in code as functions and procedures.'),
('COS10011', 'Creating Web Applications', 'This unit introduces the technology of the World Wide Web and concepts of Client-Server computing. Students will develop dynamic, data-driven web sites using a both client and server-side programming languages.\r\n', '1.	Describe the role of networking in the context of web including tools to configure web clients and servers \r\n2.	Demonstrate the use of mark up and presentation languages in creating web pages \r\n3.	Demonstrate the use of server scripting and database access to create data driven webpages \r\n4.	Describe the interaction between components of a web application, and comment on issues related to privacy, security, and commercial and social issues '),
('COS20001', 'User-Centred Design', 'This unit of study aims to introduce students to the concept of usability and the process of User-Centred Design as a method of achieving good usability outcomes in software development.', '1.	Apply an evidence-based approach to software requirements elicitation and specification.\r\n2.	Demonstrate an explicit understanding of software context of use (i.e., users, tasks and system environment) using a variety of models.\r\n3.	Design and build a prototype user interface according to software requirements and usability design principles.\r\n4.	Apply a variety of usability evaluation methods to evaluate and iterate user interface design solutions.\r\n5.	Describe and apply guidelines for professional practice in the ethical treatment of human research participants.\r\n6.	Implement and reflect on strategies for working in small groups. \r\n'),
('COS20007', 'Object-Oriented Programming', 'This unit of study aims to introduce students to structured programming and design.\r\n', '1.	Explain the principles of the object oriented programming paradigm specifically including abstraction, encapsulation, inheritance and polymorphism (K2,K6,A2)\r\n2.	Use an object oriented programming language, and associated class libraries, to develop object oriented programs (K1,K3,S1)\r\n3.	Design, develop, test, and debug programs using object-oriented principles in conjuncture with an integrated development environment (K2,K6,S1,S2,S3)\r\n4.	Construct appropriate diagrams and textual descriptions to communicate the static structure and dynamic behaviour of an object-oriented solution (K6,A2)\r\n5.	Describe and explain the factors that contribute to a good object oriented solution, reflecting on your own experiences and drawing upon accepted good practices. (K6,A2)'),
('COS20015', 'Fundamentals of Data Management', 'This unit introduces students to a range of skills, techniques, technologies and fundamental computer science concepts related to managing data within software systems. Students will learn how to organise data, efficiently search and sort information, as well as apply techniques to optimise these operations. Data management is a critical component in most software systems â€“ knowledge and skills gained in this unit can be applied to a range of different solution domains from enterprise systems to smaller desktop and mobile applications.', '1. Appreciate set theory, ternary logic, and algorithmic complexity in the context of data management \r\n2. Use techniques, tools and methods to sort, search and transform data stored in a variety of data formats \r\n3. Explain the role of data types, data representation, indexing and schemas in managing data, and use methods to validate that data matches an expected schema \r\n4. Use appropriate methods to efficiently store, insert and retrieve data appreciating the underlying trade-offs between different strategies \r\n5. Appreciate issues related to concurrency in data management and describe basic strategies for addressing these issues'),
('COS20016', 'Operating System Configuration', 'Acquire an understanding of operating systems as drivers of computer hardware and platforms for computer software. Acquire the ability to plan and implement operating system configurations for different types of users.', '1.	Describe the components of computing devices and their respective roles in data processing.\r\n2.	Recognise different brands and types of operating systems and their typical usage areas. Ability to install operating systems and software using the command line when required.\r\n3.	Identify groups of users and their software needs, plan and implement operating system and software configurations as standard operating environments for a user group considering basic IT security.\r\n4.	Use â€˜ghostingâ€™ software to store operating system configurations as images and install them to multiple user PCs.\r\n5.	Recognise and resolve user problems with standard operating environments.'),
('COS20019', 'Cloud Computing Architecture', 'Students will use a cloud platform to create well-architected deployments of distributed applications that are secure, scalable, reliable and cost optimised.', '1.	Describe the features and value of Cloud Computing\r\n2.	Create and manage cloud services using a cloud management platform.\r\n3.	Design and implement a cloud-based web site that is reliable, scalable, secure and cost effective.\r\n4.	Compare and contrast architectural solutions for common Web applications. '),
('COS30008', 'Data Structures and Patterns', 'This unit of study aims to study the design, implementation, and application of data structures as a means for algorithmic problem solving. Each problem exhibits specific characteristics with respect to resource requirements, data representation, and software architecture. The study of data structures is primarily concerned with the following questions: How can a given problem be effectively expressed? What are suitable data representations for specifying computational processes? What is the impact of data and its representation with respect to time and space consumption? What are the reoccurring structural artefacts in software and how can we identify them in order to facilitate problem solving?', '1. Apply object oriented design and implementation techniques.\r\n2. Interpret the tradeoffs and issues involved in the design, implementation, and application of various data structures with respect to a given problem\r\n3. Design, implement, and evaluate software solutions using behavioral, creational, and structures software design patterns\r\n4. Explain the purpose and answer questions about data structures and design patterns that illustrate strengths and weaknesses with respect to resource consumption\r\n5. Assess the impact of data structures on algorithms\r\n6. Analyse algorithm designs and perform best-, average-, and worst-case analysis'),
('COS30015', 'IT Security', 'Students who complete this unit of study will understand the nature of security threats to IT systems. Student will be familiar with the tools used by hackers and crackers and be aware of ways of identifying and rectifying security breaches and will understand how to assess the vulnerability of computing systems. \r\n', 'After successfully completing this unit, you will be able to:\r\n1.	Evaluate security of client and server computers. \r\n2.	Plan security audits.\r\n3.	Demonstrate an understanding of the concepts of social engineering and physical security.\r\n4.	Use a variety of security related tools.\r\n5.	Identify attacks and mitigate attacks.\r\n6.	Evaluate authentication and encryption systems.\r\n7.	Research issues in IT Security.'),
('COS30017', 'Software Development for Mobile Devices', 'The aim of unit is for students to understand, select, design, implement and utilise game engine components, and the associated use of data structures and software patterns', '1. Design: Discuss game engine components including architectures of components, selection of components for a particular game specification, the role and purpose of specific game engine components, and the relationship of components with underlying technologies. \r\n2. Implementation: Create games that utilise and demonstrate game engine component functionality, including the implementation of components that encapsulate specific low-level APIs. \r\n3. Maintenance: Explain and illustrate the role of data structures and patterns in game programming, and rationalise the selection of these for the development of a specified game scenario. \r\n4. Performance: Identify performance bottlenecks by using profiling techniques and tools, and applying optimisation strategies to improve performance.'),
('COS30020', 'Web Application Development', 'This unit is designed to introduce a variety of technologies and techniques typically used in development of contemporary web-based systems, and to enable students to achieve a level of fluency in using these in a thoughtful and considered manner. Two web programming techniques will be introduced. The first is to use web-based embedded scripting language (PHP) on a web server (Apache) and a server-side database (MySQL), and the second is to use Ajax to manage asynchronous client-server communication and XML/JSON as data exchange languages.', '1.	Describe, identify and debug issues related to the development of web applications.\r\n2.	Design and develop interactive web applications using embedded server-side scripting language PHP.\r\n3.	Use MySQL for data management and manipulate MySQL with PHP.\r\n4.	Use client-side dynamic scripting language JavaScript and server-side scripting language PHP\r\n5.	Apply design patterns for developing web applications'),
('COS30041', 'Creating Secure and Scalable Software', 'Creating Secure and Scalable Software aims to introduce students to contemporary frameworks for developing software, and strategies, patterns, and frameworks to help address security and scalability issues. ', '1.	Build and deploy secure and scalable application using contemporary frameworks\r\n2.	Explain and apply strategies, patterns and frameworks to address a range of scalability issues\r\n3.	Explain and apply strategies, patterns and frameworks to address a range of security issues\r\n4.	Use contemporary tools to evaluate the scalability of applications\r\n5.	Use contemporary approaches to evaluate the security considerations of applications'),
('COS30043', 'Interface Design and Development', 'Interface Design and Development aims to introduce students to design concepts and development tools and frameworks associated with the creation of dynamic user interfaces suitable for use across a range of platforms and devices. ', '1.	Apply fundamental design concepts and standards to the development of user interfaces\r\n2.	Use contemporary frameworks to create dynamic user interfaces\r\n3.	Design and develop user interfaces optimised for a range of devices and platforms\r\n4.	Evaluate user interfaces with respect to usability and accessibility using appropriate techniques, and propose improvements\r\n'),
('ICT10001', 'Problem Solving with ICT', 'Every day we are faced with problems that require analytical thinking, creativity and resourcefulness to solve. This unit challenges students to explore different approaches to analysing and solving problems in an organisation framework. Students will develop the ability to apply analysis techniques to unfamiliar problems and present their investigation through the use of a wide range of innovative Information Communication Technologies [ICT], including prototyping, cloud-based tools, report writing and presentations. In addition, students are encouraged to reflect upon the learning taking place throughout the unit.', '\r\n1.	Identify and define problems in an organisational context.\r\n \r\n2.	Select and apply various ICT tools and techniques to solve organisational problems.\r\n \r\n3.	Build a solution to address an organisation problem.\r\n \r\n4.	Evaluate the effectiveness and viability of an ICT solution from an organisational value perspective.\r\n \r\n5.	Demonstrate working effectively in a team environment.'),
('ICT30001', 'Information Technology Project', 'This unit is designed as a capstone industry project unit that provides students with professionally focused learning experiences during their final year of study. The unit aims at consolidating and integrating student learning with real world practice and facilitating a successful transition from academic learning environment to work environment. In conjunction with the development of analytical, critical thinking, problem solving, technical, and project management skills, the unit also has a strong emphasis on the development of professional and generic skills such as communication skill, teamwork skill, ability to tackle unfamiliar problems, and ability to work independently.', '1.	Analyse a real world problem in an organisational setting and recommend or develop solutions which are practical and effective utilising appropriate tools, techniques and methods.\r\n2.	Develop critical and constructive arguments to justify proposed advice, recommendations or solutions.\r\n3.	Apply project management methods to appraise, plan, design, manage and execute a small-scale project\r\n4.	Demonstrate intellectual independence as a critical and reflective learner.\r\n5.	Demonstrate professional behaviours through effective leadership, teamwork and communication skills with all project stakeholders'),
('ICT30005', 'Professional Issues in IT', 'Students will learn to identify and understand issues relating to the personal and organisational application of ICT. Students will develop a sense of professional responsibility through exploring professional codes of ethics articulated by professional accrediting bodies. Students will explore a range of social, legal, ethical and business issues that ICT professionals face in their careers.\r\n', '1	Develop and present a resolved project outcome which synthesises an understanding of ethical and socio-technical challenges faced by an ICT professional\r\n \r\n2	Evaluate the role of standards, codes of conduct and legislative/regulatory obligations on the level of professionalism of the ICT industry\r\n \r\n3	Review the roles and responsibilities of ICT professionals in organisations and society from a range of perspectives such as work-life balance, mentoring and life-long learning\r\n \r\n4	Communicate effectively as a professional and function as an effective leader or member of a diverse team'),
('ICT30010', 'eForensic Fundamentals', 'This unit familiarises student with the workings of the various technologies used to undertake and investigate electronic misconduct. It provides an understanding of forensic tool kits and develops the skills to implement their use. Students will be presented with examples of e-forensic artefacts with each of the technologies.', '1. Demonstrate knowledge of operating systems, networks, mobile technologies and internet technologies and related forensic artefacts of each technology.\r\n2. Demonstrate knowledge of the workings of a forensic tool kit.\r\n3. Apply knowledge of the usage of forensic tool kits.\r\n4. Identify incidents of electronic fraud.\r\n5. Identify, locate and develop strategies for the evaluation of data sources for e-forensic investigation.\r\n6. Describe common malware types and their effects.'),
('INF10002', 'Database Analysis and Design', 'Digital data is central to the modern economy. Transactions, managerial decisions, and strategy development rely on data. Databases are the tool used to create, store, organise, and disseminate data. This unit delivers the fundamental principles needed to effectively design and use databases. It seeks to unpack the notion of data, and introduce contemporary tools and techniques for storing, retrieving, exploiting, and visualising data. Emphasis is given to understanding data modelling and design approaches, and the emerging opportunities afforded by big data, social media, data analytics, and unstructured data. Both commercial and open-source database management tools are focused upon.', ' \r\n1.	Define and explain fundamental data and database concepts including tables, relations, keys, queries, transactions, and structured, semi-structured, unstructured data\r\n \r\n2.	Create, store, retrieve, exploit, and visualise data using modern database tools, functions, and techniques\r\n \r\n3.	Understand and apply conventional data modelling techniques to solve practical database design problems\r\n \r\n4.	Explain the impact of big data and modern data analytics tools in the design, use, and management of database systems.'),
('INF10003', 'Introduction to Business Information Systems', 'This unit aims to instil an appreciation of how technology can be used to assist business, without the technology becoming an end in itself. In particular, students will develop an awareness of the importance of information to decision-making and how to provide such information to ensure its usefulness to the decision makers. Students gain a strong foundation of business systems fundamentals and the influence of the Internet on business stakeholders; customers, suppliers, manufacturers, service makers, regulators, managers and employees.\r\n ', '1	Analyse and explain issues that arise with the adoption / acquisition of technology that enable core business processes and support business strategic goals\r\n \r\n2	Use appropriate software tools for the provision of business solutions\r\n \r\n3	Discuss the impact telecommunications (Internet, networks, mobile devices) and social media has on developing business solutions and the subsequent use of Business Intelligence tools to facilitate competitive advantage for organisations\r\n \r\n4	Describe ethical, cultural and security concerns associated with the use of technology within organisations\r\n \r\n5	Independently or collaboratively communicate proficiently in professional practice to a variety of audiences and function as an effective member or leader of a diverse team'),
('INF30020', 'Information Systems Risk and Security', 'Students are introduced to information risk and security management in contemporary enterprise. The unit engages students with the knowledge and techniques applied by organisations to manage risks and provide for information security. This includes the implementation of appropriate information management plans, assurance processes, standards and frameworks. Students will learn about the legal, professional and ethical responsibilities of information risk and security management through real-world case based scenarios and become familiar with approaches to information governance and assurance including the automated tools and approaches that are used by organisations.', '1.	Describe the importance of information security and risks management in achieving organisational goals and objectives\r\n \r\n2	Assess and apply information systems risk and security management standards and frameworks to real-word case based scenarios\r\n \r\n3	Analyse major theories, concepts and methodologies for managing risks and assuring the integrity and security of information assets\r\n \r\n4	Evaluate appropriate governance, assurance and internal control techniques for managing information risks and security\r\n \r\n5	Communicate effectively as a professional and function as an effective leader or member of a diverse team.'),
('INF30029', 'Information Technology Project Management', 'Developing meaningful IT systems within a specified timeframe and budget requires an understanding of many complex organisational and technological factors, encompassing sufficient skills and innovative practices to identify and manage changes, and to co ordinate resources. Students will examine the relationship between Information Technology and its organisational context, and how it can be utilised to attain a strategic competitive advantage in a dynamic changing organisational environment.', '1.	Demonstrate awareness of different management and control frameworks and their impact on the Project Management discipline.\r\n \r\n2.	Demonstrate knowledge of Project Management tools and techniques.\r\n \r\n3.	Apply cognitive skills and ability to identify, analyse, and articulate the importance of team building, project risk, and time cost management.\r\n \r\n4.	Using management software to help plan and manage information technology projects.\r\n \r\n5.	Communicate effectively as a professional and function as an effective leader or member of a diverse team.'),
('SWE20001', 'Development Project 1 - Tools and Practices', 'This unit of study aims to introduce knowledge and techniques for modelling problem and solution\r\ndomains for software systems.\r\n ', '1.	Explain the lifecycle of a software development project, and describe associated objectives of different activities. (S2, S4, A2, A5)\r\n2.	Apply techniques to analyse, document, extend, and test an existing software solution. (K4, K6, S1, S2, A2, A4) \r\n3.	Utilise contemporary software development tools for version control, issue tracking, documenting software designs, and unit testing; and explain their role in a software development project. (K4, K6, S1, A4, A6) \r\n4.	Apply and use tools and techniques to work effectively as a member of a software development team, and reflect upon group work experience. (K6, S4, A2, A5, A6, A7)'),
('SWE20004', 'Technical Software Development', 'This unit of study aims to develop the basic skills, both in understanding the underlying domains and in understanding the fundamentals of the programming process itself, required for programming scientific and engineering applications. This understanding includes what constitutes a â€œgoodâ€ program and what an algorithm is. In particular, this unit is concerned with when to apply a specific solution approach, how to manage program complexity, and how to maintain healthy software solutions for scientific and engineering problems. \r\n', '1.	Apply function decomposition, modularization, and object-oriented software development techniques in order to create maintainable programs. (K1, K3, K6, S1, S2, S3)\r\n2.	Interpret the trade-offs and issues involved in the requirements, design, and implementation with respect to a given problem (K1, K6, S1)\r\n3.	Assess and compare the impact of algorithms on program performance and resource consumption (S2, A2)\r\n4.	Design, implement, evaluate, and apply unit testing and documentation strategies to programs. (K2, K3, S3)\r\n5.	Design and implement a sustainable code base for scientific and engineering problems. (K2, S3, A4)'),
('SWE30010', 'Development Project 2 - Design, Planning and Management', 'This unit of study aims to expose students to the range of project management practices that\r\nare used in contemporary software development projects, so that they learn and understand the major issues that project managers have to handle.', '1.	Apply techniques to define scope, break down tasks, estimate effort, manage risks, and schedule resources in the planning of a software development project (K3,K6,S1,S3,S4,A4,A6)\r\n2.	Select, justify, and use appropriate design patterns, algorithms, data structures, and architectural styles to design a software solution (K3,S1,S3)\r\n3.	Utilise contemporary tools and techniques to document software artefacts, and track and report project progress (K3,K6,S3,S4,A4,A6)\r\n4.	Apply and use contemporary tools and techniques to work effectively as a member of a software development team, and to reflect upon group work experiences (K3,K6,S1,A2,A4,A5,A6,A7)\r\n5.	Review the quality of a software product based on a chosen quality model / framework with justifications (K3,K6,S1,S4)'),
('SWE30011', 'IoT Programming', 'The Internet of Things (IoT) programming unit will teach students the fundamentals of developing an IoT-based solution for Smart Homes, Smart Cities etc., using IoT sensors and devices .\r\nStudents in this course will learn the skills to work with current popular IoT sensor and platforms such as Arduino, Netatmo and will have the opportunity to apply these skills in developing innovative IoT-based system.', '1.	Describe the principles and theoretical concepts in designing and developing Internet of Things systems\r\n2.	Analyse, research and assess different open source and commercial IoT platforms, systems and toolkits\r\n3.	Develop on a variety of open source IoT platforms, devices and software\r\n4.	Develop and integrate mobile applications with IoT systems\r\n5.	Communicate effectively and succinctly through oral presentation and written reports '),
('SWE30012', 'IoT Launcher Project', 'Students will experience a combination of IoT-related technical competencies and â€œsoftâ€ skills and that will allow them to successfully develop IoT -related products and services that are needed by the industry and government. Students will conduct a IoT startup launching exercise from identifying the need for a new IoT product/service, to setting up a team and developing an IoT product, to seeking users/investors for this, to pursing innovation awards and related publicity.', '1.	Apply critical IoT analysis and problem solving\r\n2.	Identify real IoT-related problems and solutions people want.\r\n3.	Achieve high degree of productivity in a small team via agile, high quality practices and team organisation approaches.\r\n4.	Communicate effectively and succinctly through oral presentation and written reports with non-IT experts\r\n5.	Design and develop IoT products/services.'),
('SWE40001', 'Software Engineering Project A', 'Students will consolidate and build on skills and knowledge gained in previous related studies and team work and apply these to a practical application and/or research project. Students will also present results and/or findings in a substantial piece of work.', '1.	Apply professional practice, including active and consistent participation, delivery of technical presentations, reflection, and adherence to ethical codes of conduct as a member of a software development team [K3, K6, A1, A2, A5]\r\n2.	Apply software engineering methods and contemporary software development tools to the scoping, analysis, and design of a software system to meet client needs [K4, K5, S1, S2, S3, A4]\r\n3.	Communicate proficiently with project stakeholders, and function as an effective member or leader of a development team in project scoping, analysis and design activities [S2, S3, A2, A7]\r\n4.	Conduct a critical analysis and evaluation of aspects relevant to a software development project and justify implications for project directions [S4, A5, A6]'),
('SWE40002', 'Software Engineering Project B', 'Students will consolidate and build on skills and knowledge gained in previous related studies and team work and apply these to a practical application and/or research project. Students will also present results and/or findings in a substantial piece of work.\r\n', '1.	Apply professional practice, including active and consistent participation, delivery of technical presentations, adherence to ethical codes of conduct, and reflection on project outcomes as a member of a software development team [K3, K6, A1, A2, A5]\r\n2.	Apply software engineering methods and contemporary software development tools to the design, implementation, verification, and deployment of a software system to meet client needs [K4, K5, S1, S2, S3, A4]\r\n3.	Communicate proficiently with project stakeholders, and function as an effective member or leader of a development team in project development, deployment, and evaluation activities [S2, S3, A2, A7]\r\n4.	Conduct scholarly research on technology and practice associated with industry relevant projects and contemporary software development practice and/or tools [S4, A5, A6]'),
('TNE10005', 'Network Administration', 'To build the understanding and skills required to design, configure and manage a single domain network.\r\n', '1.	Apply the OSI model and the TCP/IP model in networking\r\n2.	Explain IP networking protocol, routing and transition to IPv6\r\n3.	Plan an IP addressing strategy and automated configuration with DHCP\r\n4.	Design, install and maintain secure Windows systems\r\n5.	Perform user and domain resource management\r\n6.	Monitor system quality, plan risk management and disaster recovery strategies\r\n7.	Appraise the knowledge areas of project management and plan responses to project management issues'),
('TNE10006', 'Networks and Switching', 'This unit of study aims to introduce you to the field of data networking and to provide you with the necessary skills to design and successfully deploy a small network.', '1. Use the OSI Model to discuss network design and infrastructure (K3, S3) \r\n2. Design an addressing scheme to subnet a network to given specifications (K2, K3, S3) \r\n3. Describe the processes of LAN switching (K3) \r\n4. Describe why VLANs are used and how they are implemented using switches (K3) \r\n5. Describe how the Spanning Tree Protocol eliminates loops in multi-switched LANs (K3) \r\n6. Construct a simple network of PCs, switches and a router, and troubleshoot problems in those networks (K3, S1, S2, S3) \r\n7. Generate documentation for laboratory work and assignments (A2) '),
('TNE20002', 'Network Routing Principles', 'This Unit of study aims to provide you with a solid foundation in the technologies and functionality of routing within data networks. The Unit will also provide with an introduction to Wide Area Networks (WANs) and the skills to deploy common network services within a WAN infrastructure.', '1.	Describe the process of routing.(K3) \r\n2.	Analyse the operation of and differences between various dynamic routing protocols. (K3, S2, S3)\r\n3. Construct a network with static and dynamic routes. (K3)\r\n4.	Use Access Control Lists as a security technique to control traffic flow across the network. (K2, K3, S1)\r\n5. Describe the various WAN technology options for district-sized networks. (K2, K3) \r\n6.	Describe and implement various layer 2 protocols on WAN links and configure and describe the functionality of NAT and DHCP network services. (K3)\r\n7.	Within a team, design and construct a simulated network with components of LAN and WAN technologies and prepare a technical report and presentation. (K2, K3, S1, S2, S3, A2, A7)\r\n'),
('TNE30009', 'Network Security and Resilience', 'This unit of study aims to introduce you to the issues of security in modern networks.\r\n', '1. Describe the threats to network security and their defences (K3)\r\n\r\n2. Formulate an organisational security policy (S1, S2, A2)\r\n\r\n3. Plan the implementation of a security policy using technologies such as firewalls, VPNs, Intrusion Detection Systems, and authentication systems (S1, S2, A2)\r\n\r\n4. Conduct encryption of simple messages using public key and secret key techniques (K3)\r\n\r\n5. Describe techniques used in dealing with Denial of Service Attacks (K3)\r\n\r\n6. Describe the operation of the major security protocols (K3)\r\n\r\n7. Describe the security issues relating to wireless technologies (K3)'),
('TNE30012', 'Secure Remote Access Networks', 'This unit is designed to teach students to develop an in-depth understanding of network security principles as well as the tools and configurations available. The unit provides a theoretically rich, hands-on introduction to network security, in a logical sequence driven by technologies.\r\n', '1. Secure network device access \r\n2. Implement AAA on network devices \r\n3. Implement secure network management and reporting \r\n4. Mitigate common layer 2 attacks \r\n5. Implement firewall and Intrusion Protection Systems \r\n6. Implement site to site IPSec VPNs \r\n7. Administer effective security policies'),
('TNE30018', 'Enterprise Network Server Administration', 'To establish the skills and understanding required to design and configure a Windows Server based enterprise network. To build the skills required to design, configure and manage a single domain network.', '1.	Assess a secure network access strategy\r\n2.	Configure advanced IP address management using DHCP and DNS\r\n3.	Troubleshoot network access\r\n4.	Appraise Windows Server deployment and migration strategies\r\n5.	Manage Server role requirements\r\n6.	Manage Server and Data Security\r\n7.	Appraise a policy strategy within an Active Directory infrastructure');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `eMail` varchar(256) NOT NULL,
  `full_Name` text NOT NULL,
  `password` text NOT NULL,
  `office_No` text NOT NULL,
  `role` text NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`eMail`, `full_Name`, `password`, `office_No`, `role`, `position`) VALUES
('admin@mail.com', 'Jason Jeffereson', '123', 'G201', 'System Administrator', 'System Administrator'),
('Jambrown@mail.com', 'James Brown', '123', 'A411', 'Teaching Staff', 'Associate Professor'),
('pleader@mail.com', 'Michael Jefferson ', '123', 'E209', 'Program Leader', 'Professor'),
('tstaff@mail.com', 'Michael Jordan', '123', 'G209', 'Teaching Staff', 'Lecturer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antirequnit`
--
ALTER TABLE `antirequnit`
  ADD KEY `unitCode` (`unitCode`);

--
-- Indexes for table `coreq`
--
ALTER TABLE `coreq`
  ADD KEY `unitCode` (`unitCode`);

--
-- Indexes for table `prerequnit`
--
ALTER TABLE `prerequnit`
  ADD KEY `unitCode` (`unitCode`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`pcode`);

--
-- Indexes for table `program_units`
--
ALTER TABLE `program_units`
  ADD KEY `pCode` (`pCode`);

--
-- Indexes for table `staffteach`
--
ALTER TABLE `staffteach`
  ADD KEY `CodeUnit` (`CodeUnit`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unitCode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`eMail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
