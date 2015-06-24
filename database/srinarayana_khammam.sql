-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	5.6.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `budget_details`
--

DROP TABLE IF EXISTS `budget_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_details` (
  `budget_id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_name` varchar(64) NOT NULL,
  `budget_cost` int(11) NOT NULL,
  `budget_by` varchar(64) NOT NULL,
  `budget_date` date NOT NULL DEFAULT '2012-01-01',
  `budget_type` varchar(64) DEFAULT NULL,
  `other` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`budget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_details`
--

LOCK TABLES `budget_details` WRITE;
/*!40000 ALTER TABLE `budget_details` DISABLE KEYS */;
INSERT INTO `budget_details` VALUES (1,'total Funds',167000,'School','2015-06-24','Total Fee',''),(2,'Available Limit',100000,'School','2015-06-20','limit',''),(3,'Total Expenses',43000,'school','2015-06-16','Expenses',''),(4,'Total Loans',150000,'School','2015-06-20','Loans',''),(5,'rent-june',30000,'school','2015-06-10','debited',''),(7,'bus',5000,'school','2015-06-04','debited',''),(8,'annual day',60000,'school','2015-03-12','debited',''),(11,'rent-may',30000,'school','2015-05-31','debited',''),(12,'Rent-June',35000,'School','2015-06-16','Debited','Nothing'),(16,'test',2000,'School','2015-06-09','Debited','');
/*!40000 ALTER TABLE `budget_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_results`
--

DROP TABLE IF EXISTS `exam_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_results` (
  `exam_results_id` int(11) NOT NULL AUTO_INCREMENT,
  `roll_num` varchar(64) NOT NULL,
  `student_name` varchar(64) NOT NULL,
  `student_class` varchar(64) DEFAULT NULL,
  `exam_title` varchar(64) NOT NULL,
  `exam_date` date NOT NULL DEFAULT '2012-01-01',
  `telugu_1` int(11) NOT NULL DEFAULT '0',
  `telugu_2` int(11) NOT NULL DEFAULT '0',
  `hindi_1` int(11) NOT NULL DEFAULT '0',
  `hindi_2` int(11) NOT NULL DEFAULT '0',
  `english_1` int(11) NOT NULL DEFAULT '0',
  `english_2` int(11) NOT NULL DEFAULT '0',
  `maths_1` int(11) NOT NULL DEFAULT '0',
  `maths_2` int(11) NOT NULL DEFAULT '0',
  `science_1` int(11) NOT NULL DEFAULT '0',
  `science_2` int(11) NOT NULL DEFAULT '0',
  `social_1` int(11) NOT NULL DEFAULT '0',
  `social_2` int(11) NOT NULL DEFAULT '0',
  `computers` int(11) NOT NULL DEFAULT '0',
  `arts` int(11) NOT NULL DEFAULT '0',
  `others` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  `grade` varchar(64) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`exam_results_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_results`
--

LOCK TABLES `exam_results` WRITE;
/*!40000 ALTER TABLE `exam_results` DISABLE KEYS */;
INSERT INTO `exam_results` VALUES (19,'1007','Rishitha gone','2nd class','Half yearly','2015-06-16',90,0,90,0,90,0,99,0,90,0,99,0,0,0,558,600,'A',2);
/*!40000 ALTER TABLE `exam_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_details`
--

DROP TABLE IF EXISTS `fee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_details` (
  `recipt_no` varchar(10) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `student_name` varchar(64) NOT NULL,
  `student_class` varchar(64) NOT NULL,
  `fee_type` varchar(64) DEFAULT NULL,
  `fee_paid` varchar(64) DEFAULT NULL,
  `fee_pay_date_1` date NOT NULL DEFAULT '2012-01-01',
  PRIMARY KEY (`recipt_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_details`
--

LOCK TABLES `fee_details` WRITE;
/*!40000 ALTER TABLE `fee_details` DISABLE KEYS */;
INSERT INTO `fee_details` VALUES ('1316','SN10001','Shiva Kumar Aavula','SSC','Tution Fee','2000','2015-06-21'),('2421','SN10001','Shiva Kumar Aavula','SSC','Admission Fee','5000','2015-05-26'),('2593','SN9001','madhu ram','9th class','Tution Fee','9000','2015-06-24'),('2948','SN2001','Rishitha gone','2nd class','Tution Fee','5000','2015-06-03'),('3138','SN10001','Shiva Kumar Aavula','SSC','Admission Fee','5000','2015-05-23'),('5954','SN10001','Shiva Kumar Aavula','SSC','Tution Fee','7000','2015-05-24'),('6295','sn7001','venu kumar','7th class','Tution Fee','5000','2015-06-04'),('6424','SN6001','Bharath kumar','6th class','Tution Fee','7000','2015-06-04'),('7219','SN10002','Ramesh Paladugu','SSC','Tution Fee','3000','2015-06-24'),('9166','SN10002','Ramesh Paladugu','SSC','Tution Fee','3000','2015-06-10'),('9639','SN10002','Ramesh Paladugu','SSC','Admission Fee','5000','2015-06-02'),('9985','SNU1001','Sravanthi N','ukg','Tution Fee','8000','2015-06-10');
/*!40000 ALTER TABLE `fee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_headline` varchar(64) NOT NULL,
  `news_description` int(11) NOT NULL,
  `news_date` date NOT NULL DEFAULT '2012-01-01',
  `other` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `roll_num` int(11) NOT NULL AUTO_INCREMENT,
  `admission_num` varchar(64) NOT NULL,
  `student_fisrt_name` varchar(64) NOT NULL,
  `student_last_name` varchar(64) NOT NULL,
  `student_class` varchar(64) DEFAULT NULL,
  `section` varchar(64) DEFAULT NULL,
  `medium` varchar(64) DEFAULT NULL,
  `student_father_name` varchar(64) DEFAULT NULL,
  `student_mother_name` varchar(64) DEFAULT NULL,
  `student_dob` date NOT NULL DEFAULT '2012-01-01',
  `student_caste` varchar(64) DEFAULT NULL,
  `student_religion` varchar(64) DEFAULT NULL,
  `student_phone_num` varchar(64) DEFAULT NULL,
  `student_village` varchar(64) DEFAULT NULL,
  `student_gender` varchar(64) DEFAULT NULL,
  `fees` varchar(64) DEFAULT NULL,
  `student_doj` date NOT NULL DEFAULT '2012-01-01',
  `student_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`roll_num`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1002,'SN10001','Shiva Kumar','Aavula','SSC','B','Telugu','Narasimha Rao','Dhanalakshmi','1989-02-05','BC-D','Hindu','9010936467','Mustafa Nagar','male','12000','2014-06-11',0),(1003,'SN6001','Bharath','kumar','6th class','B','Telugu','Narasimha Rao','Dhanalkshmi','1990-06-01','BC-D','Hindu','9010936467','Khamam','male','5000','2015-05-28',0),(1004,'SN10002','Ramesh','Paladugu','SSC','B','Telugu','Ramesh Father','Ramesh mother','1990-07-17','Bc','Hindu','9010936467','HYD','male','9000','2015-05-27',0),(1005,'SN3001','Sai','Kumar','3rd class','A','English','Srinivas','Laxmi','1989-03-05','BC-D','Hindu','9010936467','HYD','male','12000','2015-05-26',0),(1006,'SN5001','srujana','kurakula','5th class','B','Telugu','Srinivasa Rao','Nagasudha','1991-06-26','OC','Christ','9948556718','NVC','female','3000','2015-05-27',0),(1007,'SN2001','Rishitha','gone','2nd class','A','English','Saidha Rao','Supriya','2005-11-05','BC-D','Hindu','9010936467','hyd','female','9000','2015-05-19',0),(1008,'SN3002','Bhavitha','Gone','3rd class','A','English','Saidha Rao','Supriya','2007-10-04','BC-D','Hindu','9010936467','KMM','female','12000','2015-05-13',0),(1010,'SNU1001','Sravanthi','N','ukg','A','English','Pullarao','siromani','1991-11-12','BC-D','Hindu','9010936467','HYD','female','12000','2015-06-04',0),(1013,'SNU1002','ram','mohan','ukg','A','English','radha krishna','mani','2015-06-09','BC-D','Hindu','9010936467','HYD','male','12000','2015-06-04',0),(1014,'SN10003','Bharath','kumar','SSC','A','English','Narasimha','Dhanalkshmi','2015-06-02','BC-D','Hindu','9010936467','DDD','male','20000','2015-06-04',0),(1015,'SN7001','venu','kumar','7th class','B','English','Saidha Rao','Ramani','1998-10-14','BC-D','Hindu','9010936467','HYD','male','15000','2015-06-04',0),(1016,'SNU1003','Raghu','R','UKG','A','English','Raghu father','raghu mother','1994-10-31','BC-D','Hindu','9010936467','HYD','male','12000','2015-06-04',0),(1017,'SNL1001','Kiran','kumar','LKG','A','English','Srinu','Seetha','2001-07-18','OC','Hindu','7396383747','HYD','male','10000','2015-06-12',0),(1018,'SN8001','Keerthi','V','8th class','A','English','Keerthi Father','Keerthi mother','1991-07-16','OC','Hindu','7396383747','HYD','female','15000','2015-06-22',0),(1019,'SN9001','madhu','ram','9th class','A','English','madhu father','madhu mother','1989-03-04','OC','Hindu','7396383747','HYD','male','18000','2015-06-12',0);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_fisrt_name` varchar(64) NOT NULL,
  `teacher_last_name` varchar(64) NOT NULL,
  `teacher_qualification` varchar(64) DEFAULT NULL,
  `teacher_exp` varchar(64) DEFAULT NULL,
  `teacher_subject` varchar(64) DEFAULT NULL,
  `teacher_dob` date NOT NULL DEFAULT '2012-01-01',
  `teacher_caste` varchar(64) DEFAULT NULL,
  `teacher_phone_num` varchar(64) DEFAULT NULL,
  `teacher_village` varchar(64) DEFAULT NULL,
  `teacher_gender` varchar(64) DEFAULT NULL,
  `teacher_doj` date NOT NULL DEFAULT '2012-01-01',
  `teacher_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9346 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1912,'shiva kumar','Aavula','B.tech(CSE)','5','Computers','1989-02-05','BC-D','9010936467','kHAMMAM','male','2010-06-29',1),(3627,'Ramesh','Paladugu','B.tech(CSE)','5','Computers','1988-05-04','BC-D','9010936467','HYD','male','1988-05-04',1),(7413,'Chakradar','B','Msc','10','Maths','1990-07-16','Bc','9010936467','KMM','male','1990-07-16',1),(7624,'Bharath Kumar','Aavula','BSc','4','Dance Master','1990-06-01','BC-D','8341902010','MustafaNagar,KMM','male','1990-06-01',1),(8431,'sandeep','kumar','Msc','10','chemistry','1990-06-01','BC-D','9666644801','HYD','male','2010-06-15',1),(9113,'Sirisha','Kurakula','Msc ','3','Biology','1988-08-24','BC-D','9010936467','NVC','female','2015-06-23',1),(9345,'Kiran','Rajesh','B.tech','4','Computers','1989-06-28','Bc','9010936467','HYD','male','2015-06-22',1);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_login` varchar(64) NOT NULL,
  `u_first_name` varchar(64) NOT NULL,
  `u_last_name` varchar(64) NOT NULL,
  `u_password` varchar(128) NOT NULL,
  `u_role` varchar(64) NOT NULL,
  `u_email` varchar(64) NOT NULL,
  `u_homePhone` varchar(64) DEFAULT NULL,
  `u_mobilePhone` varchar(64) DEFAULT NULL,
  `u_marital_status` varchar(64) DEFAULT NULL,
  `u_date_of_birth` varchar(64) DEFAULT NULL,
  `u_contact_name` varchar(64) DEFAULT NULL,
  `u_city` varchar(64) DEFAULT NULL,
  `u_state` varchar(64) DEFAULT NULL,
  `u_zip` varchar(64) DEFAULT NULL,
  `u_gender` varchar(64) DEFAULT NULL,
  `u_job_title` varchar(64) DEFAULT NULL,
  `u_subject` varchar(64) DEFAULT NULL,
  `u_temp_pwd` char(1) DEFAULT NULL,
  `u_token` varchar(128) DEFAULT NULL,
  `u_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'sandeep001','sandeep','kumar','saradha@','Admin','sivakumar.06','9010936467',NULL,'msc','29/08/1992','shiva','hyderabad','andhrapradesh',NULL,NULL,'principal',NULL,'Y','',NULL),(4,'chakri002','chakradar','B','saradha@','Admin','','','','','','','','','','','','','','',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-24 18:32:49
