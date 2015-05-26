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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_results`
--

LOCK TABLES `exam_results` WRITE;
/*!40000 ALTER TABLE `exam_results` DISABLE KEYS */;
INSERT INTO `exam_results` VALUES (14,'380324','Shiva Kumar Aavula','SSC','Half yearly','2015-05-21',90,0,90,0,99,0,99,0,90,0,99,0,0,0,540,600,'A',2);
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
INSERT INTO `fee_details` VALUES ('1214','SN10001','Shiva Kumar Aavula','SSC','Admission Fee','3000','2015-05-26'),('2421','SN10001','Shiva Kumar Aavula','SSC','Admission Fee','5000','2015-05-26'),('2928','367','Venu Chary ','SSC','Admission Fee','5000','2015-05-20'),('3138','SN10001','Shiva Kumar Aavula','SSC','Admission Fee','5000','2015-05-23'),('5954','SN10001','Shiva Kumar Aavula','SSC','Tution Fee','7000','2015-05-24'),('8111','380324','Shiva Kumar Aavula','SSC','Admission Fee','5000','2015-05-22');
/*!40000 ALTER TABLE `fee_details` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1001,'SNl001','Bharath Kumar','Aavula','lkg','B','English','Narasimha Rao','Dhanalakshmi','1991-06-01','BC-D','Hindu','8341902010','Mustafa Nagar,Khammam','male','9000','2015-05-22',0),(1002,'SN10001','Shiva Kumar','Aavula','SSC','B','Telugu','Narasimha Rao','Dhanalakshmi','1989-03-06','BC-D','Hindu','9010936467','Mustafa Nagar','male','12000','2015-05-22',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1913 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1912,'shiva kumar','Aavula','B.tech(CSE)','5','Computers','1989-02-05','BC-D','9010936467','kHAMMAM','male','1989-02-05',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'sandeep001','sandeep','kumar','saradha@','Admin','sivakumar.06','9010936467',NULL,'msc','29/08/1992','shiva','hyderabad','andhrapradesh',NULL,NULL,'principal',NULL,'Y','',NULL);
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

-- Dump completed on 2015-05-26 19:34:04
