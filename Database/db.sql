/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.14-MariaDB : Database - hrm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hrm` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `hrm`;

/*Table structure for table `acc_coa` */

DROP TABLE IF EXISTS `acc_coa`;

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `acc_coa` */

insert  into `acc_coa`(`HeadCode`,`HeadName`,`PHeadName`,`HeadLevel`,`IsActive`,`IsTransaction`,`IsGL`,`HeadType`,`IsBudget`,`IsDepreciation`,`DepreciationRate`,`CreateBy`,`CreateDate`,`UpdateBy`,`UpdateDate`) values ('502020000007','1-','Account Payable',2,1,1,0,'L',0,0,0.00,'Naeem Malik','2022-01-19 07:36:59','','0000-00-00 00:00:00'),('502020000001','1-TestKhan','Account Payable',2,1,1,0,'L',0,0,0.00,'','2021-12-30 11:31:27','','0000-00-00 00:00:00'),('502020000002','2-MuhammadNaeem','Account Payable',2,1,1,0,'L',0,0,0.00,'Naeem Malik','2022-01-18 17:08:38','','0000-00-00 00:00:00'),('502020000003','3-MuhammadAwais','Account Payable',2,1,1,0,'L',0,0,0.00,'Naeem Malik','2022-01-18 17:18:11','','0000-00-00 00:00:00'),('502020000004','4-TalhaAnjum','Account Payable',2,1,1,0,'L',0,0,0.00,'Naeem Malik','2022-01-18 17:31:07','','0000-00-00 00:00:00'),('502020000005','5-Sara Choudhary','Account Payable',2,1,1,0,'L',0,0,0.00,'Naeem Malik','2022-01-18 17:39:48','','0000-00-00 00:00:00'),('502020000006','6-erumMalik','Account Payable',2,1,1,0,'L',0,0,0.00,'Naeem Malik','2022-01-18 17:45:26','','0000-00-00 00:00:00'),('50202','Account Payable','Current Liabilities',2,1,0,1,'L',0,0,0.00,'admin','2015-10-15 19:50:43','','0000-00-00 00:00:00'),('1','Assets','COA',0,1,0,0,'A',0,0,0.00,'','0000-00-00 00:00:00','','0000-00-00 00:00:00'),('10201','Cash & Cash Equivalent','Current Asset',2,1,0,1,'A',0,0,0.00,'2','2019-11-24 07:55:22','admin','2015-10-15 15:57:55'),('1020102','Cash At Bank','Cash & Cash Equivalent',3,1,0,1,'A',0,0,0.00,'','2019-11-23 10:58:48','admin','2015-10-15 15:32:42'),('1020101','Cash In Hand','Cash & Cash Equivalent',3,1,1,1,'A',0,0,0.00,'2','2018-07-31 12:56:28','admin','2016-05-23 12:05:43'),('102','Current Asset','Assets',1,1,0,0,'A',0,0,0.00,'','0000-00-00 00:00:00','admin','2018-07-07 11:23:00'),('502','Current Liabilities','Liabilities',1,1,0,0,'L',0,0,0.00,'anwarul','2014-08-30 13:18:20','admin','2015-10-15 19:49:21'),('1020301','Employee Receivable','Account Receivable',3,1,0,1,'A',0,0,0.00,'2','2018-10-17 11:13:45','admin','2018-07-07 12:31:42'),('401','Employee Salary','Expence',1,1,0,0,'E',0,0,0.00,'2','2019-11-24 12:15:56','','0000-00-00 00:00:00'),('2','Equity','COA',0,1,0,0,'L',0,0,0.00,'','0000-00-00 00:00:00','','0000-00-00 00:00:00'),('4','Expence','COA',0,1,0,0,'E',0,0,0.00,'2','2019-11-24 05:45:24','','0000-00-00 00:00:00'),('3','Income','COA',0,1,0,0,'I',0,0,0.00,'','0000-00-00 00:00:00','','0000-00-00 00:00:00'),('5','Liabilities','COA',0,1,0,0,'L',0,0,0.00,'admin','2013-07-04 12:32:07','admin','2015-10-15 19:46:54'),('101','Non Current Assets','Assets',1,1,0,0,'A',0,0,0.00,'','0000-00-00 00:00:00','admin','2015-10-15 15:29:11'),('501','Non Current Liabilities','Liabilities',1,1,0,0,'L',0,0,0.00,'anwarul','2014-08-30 13:18:20','admin','2015-10-15 19:49:21');

/*Table structure for table `acc_transaction` */

DROP TABLE IF EXISTS `acc_transaction`;

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `acc_transaction` */

insert  into `acc_transaction`(`ID`,`VNo`,`Vtype`,`VDate`,`COAID`,`Narration`,`Debit`,`Credit`,`StoreID`,`IsPosted`,`CreateBy`,`CreateDate`,`UpdateBy`,`UpdateDate`,`IsAppove`) values (1,'January 2022','Generated Salary','2022-01-19','502020000002','Salary For Employee Id2',0.00,88725.00,0,'1','1','2022-01-19 09:50:52',NULL,NULL,'1'),(2,'February 2022','Generated Salary','2022-01-19','502020000002','Salary For Employee Id2',0.00,88725.00,0,'1','1','2022-01-19 10:05:34',NULL,NULL,'1'),(3,'February 2022','Generated Salary','2022-01-19','502020000003','Salary For Employee Id3',0.00,177451.00,0,'1','1','2022-01-19 10:05:34',NULL,NULL,'1'),(4,'February 2022','Generated Salary','2022-01-19','502020000004','Salary For Employee Id4',0.00,177451.00,0,'1','1','2022-01-19 10:05:34',NULL,NULL,'1'),(5,'February 2022','Generated Salary','2022-01-19','502020000005','Salary For Employee Id5',0.00,177451.00,0,'1','1','2022-01-19 10:05:34',NULL,NULL,'1'),(6,'February 2022','Generated Salary','2022-01-19','502020000006','Salary For Employee Id6',0.00,168350.00,0,'1','1','2022-01-19 10:05:34',NULL,NULL,'1'),(7,'1','Salary','2022-01-19','502020000002','Salary For Employee Id2',88725.00,0.00,0,'1','1','2022-01-19 10:38:39',NULL,NULL,'1'),(8,'1','Salary','2022-01-19','401','salary payment for 2',88725.00,0.00,0,'1','1','2022-01-19 10:38:39',NULL,NULL,'1'),(9,'1','Salary','2022-01-19','1020101','Cash in hand Debit For Employee Id2',0.00,88725.00,0,'1','1','2022-01-19 10:38:39',NULL,NULL,'1'),(10,'March 2022','Generated Salary','2022-02-10','502020000002','Salary For Employee Id2',0.00,86450.00,0,'1','1','2022-02-10 08:27:28',NULL,NULL,'1'),(11,'March 2022','Generated Salary','2022-02-10','502020000003','Salary For Employee Id3',0.00,177451.00,0,'1','1','2022-02-10 08:27:28',NULL,NULL,'1'),(12,'March 2022','Generated Salary','2022-02-10','502020000004','Salary For Employee Id4',0.00,177451.00,0,'1','1','2022-02-10 08:27:28',NULL,NULL,'1'),(13,'March 2022','Generated Salary','2022-02-10','502020000005','Salary For Employee Id5',0.00,122850.00,0,'1','1','2022-02-10 08:27:28',NULL,NULL,'1'),(14,'March 2022','Generated Salary','2022-02-10','502020000006','Salary For Employee Id6',0.00,168350.00,0,'1','1','2022-02-10 08:27:28',NULL,NULL,'1'),(15,'April 2022','Generated Salary','2022-02-10','502020000002','Salary For Employee Id2',0.00,86450.00,0,'1','1','2022-02-10 08:34:23',NULL,NULL,'1'),(16,'April 2022','Generated Salary','2022-02-10','502020000003','Salary For Employee Id3',0.00,177451.00,0,'1','1','2022-02-10 08:34:23',NULL,NULL,'1'),(17,'April 2022','Generated Salary','2022-02-10','502020000004','Salary For Employee Id4',0.00,177451.00,0,'1','1','2022-02-10 08:34:23',NULL,NULL,'1'),(18,'April 2022','Generated Salary','2022-02-10','502020000005','Salary For Employee Id5',0.00,122850.00,0,'1','1','2022-02-10 08:34:23',NULL,NULL,'1'),(19,'April 2022','Generated Salary','2022-02-10','502020000006','Salary For Employee Id6',0.00,168350.00,0,'1','1','2022-02-10 08:34:23',NULL,NULL,'1');

/*Table structure for table `appsetting` */

DROP TABLE IF EXISTS `appsetting`;

CREATE TABLE `appsetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(30) DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `acceptablerange` int(11) DEFAULT NULL,
  `googleapi_authkey` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `appsetting` */

insert  into `appsetting`(`id`,`latitude`,`longitude`,`acceptablerange`,`googleapi_authkey`) values (1,'23.829312399999996','90.42076019999999',20,'Authorization: Key=AAAACc-ZrPQ:APA91bH0tBWMWQOq9l3RBXdZ9O0-g8rUhISTVgRtan_59iOuzbeuSK8bUcbHL9IBJ9B8loKTbNfXgwO1KIi6ZFfXxI0IyHvw0oIO9MOxPeovbQfNlVrye9tfocgtgCtm49Zrd-NM4_VJ');

/*Table structure for table `attendance_history` */

DROP TABLE IF EXISTS `attendance_history`;

CREATE TABLE `attendance_history` (
  `atten_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `id` int(11) NOT NULL DEFAULT 0,
  `state` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`atten_his_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `attendance_history` */

insert  into `attendance_history`(`atten_his_id`,`uid`,`id`,`state`,`time`) values (1,2,0,'1','2022-01-19 09:00:00'),(2,2,0,'1','2022-01-19 18:00:00');

/*Table structure for table `award` */

DROP TABLE IF EXISTS `award`;

CREATE TABLE `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(50) NOT NULL,
  `aw_description` varchar(200) NOT NULL,
  `awr_gift_item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `awarded_by` varchar(30) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `award` */

insert  into `award`(`award_id`,`award_name`,`aw_description`,`awr_gift_item`,`date`,`employee_id`,`awarded_by`) values (1,'Employee of The Month','Employee of The Month','Cadbury Chocolate ','2022-01-19','2','Talha');

/*Table structure for table `bank_information` */

DROP TABLE IF EXISTS `bank_information`;

CREATE TABLE `bank_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(250) NOT NULL,
  `account_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(100) NOT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank_information` */

/*Table structure for table `candidate_basic_info` */

DROP TABLE IF EXISTS `candidate_basic_info`;

CREATE TABLE `candidate_basic_info` (
  `can_id` varchar(20) NOT NULL,
  `first_name` varchar(11) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `alter_phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `present_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parmanent_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `picture` text DEFAULT NULL,
  `ssn` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`can_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `candidate_basic_info` */

insert  into `candidate_basic_info`(`can_id`,`first_name`,`last_name`,`email`,`phone`,`alter_phone`,`present_address`,`parmanent_address`,`picture`,`ssn`,`state`,`city`,`zip`) values ('16425741121911L','Rizwan','Nasir','rizwan@gmail.com','032338383838','','Blue Area','Blue Area',NULL,'','Pakistan','Islamabad',44000);

/*Table structure for table `candidate_education_info` */

DROP TABLE IF EXISTS `candidate_education_info`;

CREATE TABLE `candidate_education_info` (
  `can_edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) NOT NULL,
  `degree_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `university_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cgp` varchar(30) CHARACTER SET latin1 NOT NULL,
  `comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sequencee` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_edu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `candidate_education_info` */

insert  into `candidate_education_info`(`can_edu_id`,`can_id`,`degree_name`,`university_name`,`cgp`,`comments`,`sequencee`) values (1,'16425741121911L','BS Computer Science','UET Peshawar','2.54','4 Years degree program',NULL);

/*Table structure for table `candidate_interview` */

DROP TABLE IF EXISTS `candidate_interview`;

CREATE TABLE `candidate_interview` (
  `can_int_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interviewer_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `written_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mcq_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_marks` varchar(30) NOT NULL,
  `recommandation` varchar(50) CHARACTER SET latin1 NOT NULL,
  `selection` varchar(50) CHARACTER SET latin1 NOT NULL,
  `details` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_int_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `candidate_interview` */

insert  into `candidate_interview`(`can_int_id`,`can_id`,`job_adv_id`,`interview_date`,`interviewer_id`,`interview_marks`,`written_total_marks`,`mcq_total_marks`,`total_marks`,`recommandation`,`selection`,`details`) values (1,'16425741121911L','8','2022-01-19','talha','5','5','5','15','Hired','ok','Good Candidate ');

/*Table structure for table `candidate_selection` */

DROP TABLE IF EXISTS `candidate_selection`;

CREATE TABLE `candidate_selection` (
  `can_sel_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `selection_terms` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`can_sel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `candidate_selection` */

insert  into `candidate_selection`(`can_sel_id`,`can_id`,`employee_id`,`pos_id`,`selection_terms`) values (1,'16425741121911L','1','8','Monthly basis hired');

/*Table structure for table `candidate_shortlist` */

DROP TABLE IF EXISTS `candidate_shortlist`;

CREATE TABLE `candidate_shortlist` (
  `can_short_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` int(11) NOT NULL,
  `date_of_shortlist` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_short_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `candidate_shortlist` */

insert  into `candidate_shortlist`(`can_short_id`,`can_id`,`job_adv_id`,`date_of_shortlist`,`interview_date`) values (1,'16425741121911L',8,'2022-01-19','2022-01-19');

/*Table structure for table `candidate_workexperience` */

DROP TABLE IF EXISTS `candidate_workexperience`;

CREATE TABLE `candidate_workexperience` (
  `can_workexp_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `company_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `duties` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supervisor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sequencee` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`can_workexp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `candidate_workexperience` */

insert  into `candidate_workexperience`(`can_workexp_id`,`can_id`,`company_name`,`working_period`,`duties`,`supervisor`,`sequencee`) values (1,'16425741121911L','Code Informatics','5','Coding and Management','Sakandar','');

/*Table structure for table `custom_table` */

DROP TABLE IF EXISTS `custom_table`;

CREATE TABLE `custom_table` (
  `custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field` varchar(100) NOT NULL,
  `custom_data_type` int(11) NOT NULL,
  `custom_data` text NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  PRIMARY KEY (`custom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `custom_table` */

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`dept_id`,`department_name`,`parent_id`) values (2,'Support Team',8),(3,'Technology',0),(4,'Business',0),(5,'Administration',0),(6,'Human Resource',0),(7,'DevOps',3),(8,'CEO Office',0),(9,'Support and Services',3),(10,'Quality Assurance',3),(11,'Development',3),(12,'Finance',0),(13,'Project Management',3);

/*Table structure for table `deviceinfo` */

DROP TABLE IF EXISTS `deviceinfo`;

CREATE TABLE `deviceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `deviceinfo` */

insert  into `deviceinfo`(`id`,`device_ip`) values (1,'192.168.1.201');

/*Table structure for table `duty_type` */

DROP TABLE IF EXISTS `duty_type`;

CREATE TABLE `duty_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `duty_type` */

insert  into `duty_type`(`id`,`type_name`) values (1,'Full Time'),(2,'Part Time'),(3,'Contructual'),(4,'Other');

/*Table structure for table `emp_attendance` */

DROP TABLE IF EXISTS `emp_attendance`;

CREATE TABLE `emp_attendance` (
  `att_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sign_in` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `sign_out` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `staytime` time DEFAULT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `emp_attendance` */

/*Table structure for table `employee_benifit` */

DROP TABLE IF EXISTS `employee_benifit`;

CREATE TABLE `employee_benifit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bnf_cl_code` varchar(100) NOT NULL,
  `bnf_cl_code_des` varchar(250) NOT NULL,
  `bnff_acural_date` date NOT NULL,
  `bnf_status` tinyint(4) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `employee_benifit` */

insert  into `employee_benifit`(`id`,`bnf_cl_code`,`bnf_cl_code_des`,`bnff_acural_date`,`bnf_status`,`employee_id`) values (16,'Mobile Connection','Mobile Connection','2022-01-18',1,'6'),(17,'Internet Connection','Internet Connection','2022-01-18',1,'6'),(18,'Health - OPD','Health - OPD','2022-01-18',1,'6'),(19,'Mobile Connection','Mobile Connection','2022-01-18',1,'5'),(20,'Internet Connection','Internet Connection','2022-01-18',1,'5'),(21,'Health - OPD','Health - OPD','2022-01-18',1,'5'),(25,'Mobile Connection','Mobile Connection','2022-01-18',1,'4'),(26,'Internet Connection','Internet Connection','2022-01-18',1,'4'),(27,'Health - OPD','Health - OPD','2022-01-18',1,'4'),(28,'Mobile Connection','Mobile Connection','2022-01-18',1,'3'),(29,'Internet Connection','Internet Connection','2022-01-18',1,'3'),(30,'Health - OPD','Health - OPD','2022-01-18',1,'3'),(31,'Mobile Connection','Mobile Connection','2022-01-18',1,'2'),(32,'Internet Connection','Internet Connection','2022-01-18',1,'2'),(33,'Health - OPD','Health - OPD','2022-01-18',1,'2');

/*Table structure for table `employee_equipment` */

DROP TABLE IF EXISTS `employee_equipment`;

CREATE TABLE `employee_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `damarage_desc` text NOT NULL,
  `return_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `employee_equipment` */

/*Table structure for table `employee_history` */

DROP TABLE IF EXISTS `employee_history`;

CREATE TABLE `employee_history` (
  `emp_his_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `pos_id` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alter_phone` varchar(30) NOT NULL,
  `present_address` varchar(100) DEFAULT NULL,
  `parmanent_address` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `degree_name` varchar(30) DEFAULT NULL,
  `university_name` varchar(50) DEFAULT NULL,
  `cgp` varchar(30) DEFAULT NULL,
  `passing_year` varchar(30) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `working_period` varchar(30) DEFAULT NULL,
  `duties` varchar(30) DEFAULT NULL,
  `supervisor` varchar(30) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `is_admin` int(2) NOT NULL DEFAULT 0,
  `dept_id` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `maiden_name` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `citizenship` int(11) NOT NULL,
  `duty_type` int(11) NOT NULL,
  `hire_date` date DEFAULT NULL,
  `original_hire_date` date DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `termination_reason` text NOT NULL,
  `voluntary_termination` int(11) NOT NULL,
  `rehire_date` date DEFAULT NULL,
  `rate_type` int(11) NOT NULL,
  `rate` float NOT NULL,
  `pay_frequency` int(11) NOT NULL,
  `pay_frequency_txt` varchar(50) NOT NULL,
  `hourly_rate2` float NOT NULL,
  `hourly_rate3` float NOT NULL,
  `home_department` varchar(100) NOT NULL,
  `department_text` varchar(100) NOT NULL,
  `class_code` varchar(50) NOT NULL,
  `class_code_desc` varchar(100) NOT NULL,
  `class_acc_date` date DEFAULT NULL,
  `class_status` tinyint(4) NOT NULL,
  `is_super_visor` int(11) DEFAULT NULL,
  `super_visor_id` varchar(30) DEFAULT NULL,
  `supervisor_report` text NOT NULL,
  `dob` date NOT NULL,
  `gender` int(11) NOT NULL,
  `marital_status` int(11) NOT NULL,
  `ethnic_group` varchar(100) NOT NULL,
  `eeo_class_gp` varchar(100) NOT NULL,
  `ssn` varchar(50) NOT NULL,
  `work_in_state` int(11) NOT NULL,
  `live_in_state` int(11) NOT NULL,
  `home_email` varchar(50) NOT NULL,
  `business_email` varchar(50) NOT NULL,
  `home_phone` varchar(30) NOT NULL,
  `business_phone` varchar(30) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `emerg_contct` varchar(30) NOT NULL,
  `emrg_h_phone` varchar(30) NOT NULL,
  `emrg_w_phone` varchar(30) NOT NULL,
  `emgr_contct_relation` varchar(50) NOT NULL,
  `alt_em_contct` varchar(30) NOT NULL,
  `alt_emg_h_phone` varchar(30) NOT NULL,
  `alt_emg_w_phone` varchar(30) NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`emp_his_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `employee_history` */

insert  into `employee_history`(`emp_his_id`,`employee_id`,`pos_id`,`first_name`,`middle_name`,`last_name`,`email`,`phone`,`alter_phone`,`present_address`,`parmanent_address`,`picture`,`degree_name`,`university_name`,`cgp`,`passing_year`,`company_name`,`working_period`,`duties`,`supervisor`,`signature`,`is_admin`,`dept_id`,`division_id`,`maiden_name`,`state`,`city`,`zip`,`citizenship`,`duty_type`,`hire_date`,`original_hire_date`,`termination_date`,`termination_reason`,`voluntary_termination`,`rehire_date`,`rate_type`,`rate`,`pay_frequency`,`pay_frequency_txt`,`hourly_rate2`,`hourly_rate3`,`home_department`,`department_text`,`class_code`,`class_code_desc`,`class_acc_date`,`class_status`,`is_super_visor`,`super_visor_id`,`supervisor_report`,`dob`,`gender`,`marital_status`,`ethnic_group`,`eeo_class_gp`,`ssn`,`work_in_state`,`live_in_state`,`home_email`,`business_email`,`home_phone`,`business_phone`,`cell_phone`,`emerg_contct`,`emrg_h_phone`,`emrg_w_phone`,`emgr_contct_relation`,`alt_em_contct`,`alt_emg_h_phone`,`alt_emg_w_phone`,`password`) values (2,2,'8','Muhammad','','Naeem','softnaeem@gmail.com','03348295371','',NULL,NULL,'./application/modules/employee/assets/images/2022-01-18/151.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,11,0,'','Pakistan','Islamabad',44000,1,1,'2015-01-15','2015-01-15','1970-01-01','',0,'1970-01-01',2,45500,4,'',0,0,'','','','','1970-01-01',1,1,'4','','1993-04-03',1,2,'Asian','Responsibilities and primary duties','16101-5869301-7',1,1,'softnaeem@gmail.com','softnaeem@gmail.com','03348295371','03348295371','03348295371','03335465228','03335465228','03335465228','Brother','03335465228','03335465228','03335465228','e10adc3949ba59abbe56e057f20f883e'),(3,3,'8','Muhammad','','Awais','awais@diginctechnologies.com','923366684578','',NULL,NULL,'./application/modules/employee/assets/images/2022-01-18/13.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,11,0,'','Pakistan','kamalia',0,1,1,'2019-02-25','2019-02-25','1970-01-01','',0,'1970-01-01',2,91000,4,'',0,0,'','','','','1970-01-01',1,1,'4','','1991-01-06',1,1,'Asian','Responsibilities and primary duties','33302-1726686-5',1,1,'muhammad.awais@diginctechnologies.com','muhammad.awais@diginctechnologies.com','923366684578','923366684578','923366684578','923366684578','923366684578','923366684578','Brother','923366684578','923366684578','923366684578','e10adc3949ba59abbe56e057f20f883e'),(4,4,'10','Talha','','Anjum','talha.anjum@diginctechnologies.c','03348295371','',NULL,NULL,'./application/modules/employee/assets/images/2022-01-18/12.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,13,0,'','Pakistan','Islamabad',44000,1,1,'2019-01-03','2019-01-03','1970-01-01','',0,'1970-01-01',2,91000,4,'',0,0,'','','','','1970-01-01',1,1,'self','','1992-01-04',1,1,'Asian','Responsibilities and primary duties','61101-6070180-7',1,1,'talha.anjum@diginctechnologies.com','talha.anjum@diginctechnologies.com','923455880112','923455880112','923455880112','923455880112','923455880112','923455880112','Brother','923455880112','923455880112','923455880112','e10adc3949ba59abbe56e057f20f883e'),(5,5,'6','Sara ','','Choudhary','sara.ch@diginctechnologies.com','923215852222','',NULL,NULL,'./application/modules/employee/assets/images/2022-01-18/11.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,10,0,'','Pakistan','Islamabad',44000,1,1,'2014-12-27','2014-12-27','1970-01-01','',0,'1970-01-01',2,91000,4,'',0,0,'','','','','1970-01-01',1,1,'4','','1990-12-28',2,1,'Asian','Responsibilities and primary duties','61101-5937467-4',1,1,'sara.ch@diginctechnologies.com','sara.ch@diginctechnologies.com','03348232322','03348232322','03348232322','03348232322','03348232322','03348232322','Brother','03348232322','03348232322','03348232322','e10adc3949ba59abbe56e057f20f883e'),(6,6,'3','erum','','Malik','erum.arif@diginctechnologies.com','03341313125','',NULL,NULL,'./application/modules/employee/assets/images/2022-01-18/1.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,11,0,'','Pakistan','Islamabad',44000,1,1,'2014-01-03','2014-01-03','1970-01-01','',0,'1970-01-01',2,91000,4,'',0,0,'','','','','1970-01-01',1,1,'4','','1992-12-27',2,1,'Asian','Responsibilities and primary duties','61101-522327467-4',1,1,'erum.arif@diginctechnologies.com','erum.arif@diginctechnologies.com','033482234132','033482234132','033482234132','033482234132','033482234132','033482234132','Brother','033482234132','033482234132','033482234132','e10adc3949ba59abbe56e057f20f883e');

/*Table structure for table `employee_performance` */

DROP TABLE IF EXISTS `employee_performance`;

CREATE TABLE `employee_performance` (
  `emp_per_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `number_of_star` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_per_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `employee_performance` */

insert  into `employee_performance`(`emp_per_id`,`employee_id`,`note`,`date`,`note_by`,`number_of_star`,`status`,`updated_by`) values (1,'2','Awesome','2022-01-18','Naeem Malik',5,'Great','');

/*Table structure for table `employee_position` */

DROP TABLE IF EXISTS `employee_position`;

CREATE TABLE `employee_position` (
  `emp_pos_id` int(10) unsigned NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `first_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `position_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `position_details` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee_position` */

/*Table structure for table `employee_sal_pay_type` */

DROP TABLE IF EXISTS `employee_sal_pay_type`;

CREATE TABLE `employee_sal_pay_type` (
  `emp_sal_pay_type_id` int(11) unsigned NOT NULL,
  `payment_period` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee_sal_pay_type` */

/*Table structure for table `employee_salary_payment` */

DROP TABLE IF EXISTS `employee_salary_payment`;

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_name` varchar(100) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`emp_sal_pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `employee_salary_payment` */

insert  into `employee_salary_payment`(`emp_sal_pay_id`,`employee_id`,`total_salary`,`total_working_minutes`,`working_period`,`payment_due`,`payment_date`,`salary_name`,`payment_type`,`bank_name`,`paid_by`) values (1,'2','88725','9.00','1','paid','2022-01-19','January 2022',1,'','Naeem Malik'),(2,'2','88725','0.00','0','','','February 2022',NULL,NULL,''),(3,'3','177451','0.00','0','','','February 2022',NULL,NULL,''),(4,'4','177451','0.00','0','','','February 2022',NULL,NULL,''),(5,'5','177451','0.00','0','','','February 2022',NULL,NULL,''),(6,'6','168350','0.00','0','','','February 2022',NULL,NULL,''),(7,'2','86450','0.00','0','','','March 2022',NULL,NULL,''),(8,'3','177451','0.00','0','','','March 2022',NULL,NULL,''),(9,'4','177451','0.00','0','','','March 2022',NULL,NULL,''),(10,'5','122850','0.00','0','','','March 2022',NULL,NULL,''),(11,'6','168350','0.00','0','','','March 2022',NULL,NULL,''),(12,'2','86450','0.00','0','','','April 2022',NULL,NULL,''),(13,'3','177451','0.00','0','','','April 2022',NULL,NULL,''),(14,'4','177451','0.00','0','','','April 2022',NULL,NULL,''),(15,'5','122850','0.00','0','','','April 2022',NULL,NULL,''),(16,'6','168350','0.00','0','','','April 2022',NULL,NULL,'');

/*Table structure for table `employee_salary_setup` */

DROP TABLE IF EXISTS `employee_salary_setup`;

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `employee_salary_setup` */

insert  into `employee_salary_setup`(`e_s_s_id`,`employee_id`,`sal_type`,`salary_type_id`,`amount`,`create_date`,`update_date`,`update_id`,`gross_salary`) values (1,'2','2','1','30','2022-01-18',NULL,'',86450),(2,'2','2','2','70','2022-01-18',NULL,'',86450),(3,'2','2','4','5','2022-01-18',NULL,'',86450),(4,'2','2','3','5','2022-01-18',NULL,'',86450),(5,'2','2','5','','2022-01-18',NULL,'',88725),(6,'3','2','1','15','2022-01-19',NULL,'',177451),(7,'3','2','2','35','2022-01-19',NULL,'',177451),(8,'3','2','4','50','2022-01-19',NULL,'',177451),(9,'3','2','3','5','2022-01-19',NULL,'',177451),(10,'3','2','5','0','2022-01-19',NULL,'',177451),(11,'4','2','1','15','2022-01-19',NULL,'',177451),(12,'4','2','2','35','2022-01-19',NULL,'',177451),(13,'4','2','4','50','2022-01-19',NULL,'',177451),(14,'4','2','3','5','2022-01-19',NULL,'',177451),(15,'4','2','5','0','2022-01-19',NULL,'',177451),(16,'5','2','1','15','2022-01-19',NULL,'',122850),(17,'5','2','2','35','2022-01-19',NULL,'',122850),(18,'5','2','4','10','2022-01-19',NULL,'',122850),(19,'5','2','3','5','2022-01-19',NULL,'',122850),(20,'5','2','5','0','2022-01-19',NULL,'',177451),(21,'6','2','1','15','2022-01-19',NULL,'',168350),(22,'6','2','2','35','2022-01-19',NULL,'',168350),(23,'6','2','4','50','2022-01-19',NULL,'',168350),(24,'6','2','3','5','2022-01-19',NULL,'',168350),(25,'6','2','5','10','2022-01-19',NULL,'',168350);

/*Table structure for table `equipment` */

DROP TABLE IF EXISTS `equipment`;

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(100) NOT NULL,
  `type_id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `serial_no` varchar(50) NOT NULL,
  `is_assign` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `equipment` */

insert  into `equipment`(`equipment_id`,`equipment_name`,`type_id`,`model`,`serial_no`,`is_assign`) values (1,'Laptop',1,'A12','345',0),(2,'Keyboard',1,'A11','346',0);

/*Table structure for table `equipment_type` */

DROP TABLE IF EXISTS `equipment_type`;

CREATE TABLE `equipment_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `equipment_type` */

insert  into `equipment_type`(`type_id`,`type_name`) values (1,'System'),(2,'Purchased'),(3,'Official');

/*Table structure for table `expense_information` */

DROP TABLE IF EXISTS `expense_information`;

CREATE TABLE `expense_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `expense_information` */

/*Table structure for table `gender` */

DROP TABLE IF EXISTS `gender`;

CREATE TABLE `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `gender` */

insert  into `gender`(`id`,`gender_name`) values (1,'Male'),(2,'Female'),(3,'Other');

/*Table structure for table `grand_loan` */

DROP TABLE IF EXISTS `grand_loan`;

CREATE TABLE `grand_loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `permission_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_details` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interest_rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment_period` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_of_approve` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `grand_loan` */

/*Table structure for table `income_area` */

DROP TABLE IF EXISTS `income_area`;

CREATE TABLE `income_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `income_field` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `income_area` */

/*Table structure for table `job_advertisement` */

DROP TABLE IF EXISTS `job_advertisement`;

CREATE TABLE `job_advertisement` (
  `job_adv_id` int(10) unsigned NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_circular_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `circular_dadeline` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_file` tinytext CHARACTER SET latin1 NOT NULL,
  `adv_details` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job_advertisement` */

/*Table structure for table `language` */

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=907 DEFAULT CHARSET=utf8;

/*Data for the table `language` */

insert  into `language`(`id`,`phrase`,`english`) values (2,'login','Login'),(3,'email','Email Address'),(4,'password','Password'),(5,'reset','Reset'),(6,'dashboard','Dashboard'),(7,'home','Home'),(8,'profile','Profile'),(9,'profile_setting','Profile Setting'),(10,'firstname','First Name'),(11,'lastname','Last Name'),(12,'about','About'),(13,'preview','Preview'),(14,'image','Image'),(15,'save','Save'),(16,'upload_successfully','Upload Successfully!'),(17,'user_added_successfully','User Added Successfully!'),(18,'please_try_again','Please Try Again...'),(19,'inbox_message','Inbox Messages'),(20,'sent_message','Sent Message'),(21,'message_details','Message Details'),(22,'new_message','New Message'),(23,'receiver_name','Receiver Name'),(24,'sender_name','Sender Name'),(25,'subject','Subject'),(26,'message','Message'),(27,'message_sent','Message Sent!'),(28,'ip_address','IP Address'),(29,'last_login','Last Login'),(30,'last_logout','Last Logout'),(31,'status','Status'),(32,'delete_successfully','Delete Successfully!'),(33,'send','Send'),(34,'date','Date'),(35,'action','Action'),(36,'sl_no','SL No.'),(37,'are_you_sure','Are You Sure ? '),(38,'application_setting','Application Setting'),(39,'application_title','Application Title'),(40,'address','Address'),(41,'phone','Phone'),(42,'favicon','Favicon'),(43,'logo','Logo'),(44,'language','Language'),(45,'left_to_right','Left To Right'),(46,'right_to_left','Right To Left'),(47,'footer_text','Footer Text'),(48,'site_align','Application Alignment'),(49,'welcome_back','Welcome Back!'),(50,'please_contact_with_admin','Please Contact With Admin'),(51,'incorrect_email_or_password','Incorrect Email/Password'),(52,'select_option','Select Option'),(53,'ftp_setting','Data Synchronize [FTP Setting]'),(54,'hostname','Host Name'),(55,'username','User Name'),(56,'ftp_port','FTP Port'),(57,'ftp_debug','FTP Debug'),(58,'project_root','Project Root'),(59,'update_successfully','Update Successfully'),(60,'save_successfully','Save Successfully!'),(61,'delete_successfully','Delete Successfully!'),(62,'internet_connection','Internet Connection'),(63,'ok','Ok'),(64,'not_available','Not Available'),(65,'available','Available'),(66,'outgoing_file','Outgoing File'),(67,'incoming_file','Incoming File'),(68,'data_synchronize','Data Synchronize'),(69,'unable_to_upload_file_please_check_configuration','Unable to upload file! please check configuration'),(70,'please_configure_synchronizer_settings','Please configure synchronizer settings'),(71,'download_successfully','Download Successfully'),(72,'unable_to_download_file_please_check_configuration','Unable to download file! please check configuration'),(73,'data_import_first','Data Import First'),(74,'data_import_successfully','Data Import Successfully!'),(75,'unable_to_import_data_please_check_config_or_sql_file','Unable to import data! please check configuration / SQL file.'),(76,'download_data_from_server','Download Data from Server'),(77,'data_import_to_database','Data Import To Database'),(79,'data_upload_to_server','Data Upload to Server'),(80,'please_wait','Please Wait...'),(81,'ooops_something_went_wrong',' Ooops something went wrong...'),(82,'module_permission_list','Module Permission List'),(83,'user_permission','User Permission'),(84,'add_module_permission','Add Module Permission'),(85,'module_permission_added_successfully','Module Permission Added Successfully!'),(86,'update_module_permission','Update Module Permission'),(87,'download','Download'),(88,'module_name','Module Name'),(89,'create','Create'),(90,'read','Read'),(91,'update','Update'),(92,'delete','Delete'),(93,'module_list','Module List'),(94,'add_module','Add Module'),(95,'directory','Module Direcotory'),(96,'description','Description'),(97,'image_upload_successfully','Image Upload Successfully!'),(98,'module_added_successfully','Module Added Successfully'),(99,'inactive','Inactive'),(100,'active','Active'),(101,'user_list','User List'),(102,'see_all_message','See All Messages'),(103,'setting','Setting'),(104,'logout','Logout'),(105,'admin','Admin'),(106,'add_user','Add User'),(107,'user','User'),(108,'module','Module'),(109,'new','New'),(110,'inbox','Inbox'),(111,'sent','Sent'),(112,'synchronize','Synchronize'),(113,'data_synchronizer','Data Synchronizer'),(114,'module_permission','Module Permission'),(115,'backup_now','Backup Now!'),(116,'restore_now','Restore Now!'),(117,'backup_and_restore','Backup and Download'),(118,'captcha','Captcha Word'),(119,'database_backup','Database Backup'),(120,'restore_successfully','Restore Successfully'),(121,'backup_successfully','Backup Successfully'),(122,'filename','File Name'),(123,'file_information','File Information'),(124,'size','size'),(125,'backup_date','Backup Date'),(126,'overwrite','Overwrite'),(127,'invalid_file','Invalid File!'),(128,'invalid_module','Invalid Module'),(129,'remove_successfully','Remove Successfully!'),(130,'install','Install'),(131,'uninstall','Uninstall'),(132,'tables_are_not_available_in_database','Tables are not available in database.sql'),(133,'no_tables_are_registered_in_config','No tables are registerd in config.php'),(134,'enquiry','Enquiry'),(135,'read_unread','Read/Unread'),(136,'enquiry_information','Enquiry Information'),(137,'user_agent','User Agent'),(138,'checked_by','Checked By'),(139,'new_enquiry','New Enquiry'),(140,'crud','Crud'),(141,'view','View'),(142,'name','Name'),(143,'add','Address'),(144,'ph','Phone'),(145,'cid','SL No'),(146,'view_atn','AttendanceView'),(147,'mang','Employemanagement'),(148,'designation','Position'),(149,'test','Test'),(150,'sl','SL'),(151,'bdtask','BDTASK'),(152,'practice','Practice'),(153,'branch_name','Branch Name'),(154,'chairman_name','Chairman'),(155,'b_photo','Photo'),(156,'b_address','Address'),(157,'position','Position'),(158,'advertisement','Advertisement'),(159,'position_name','Position'),(160,'position_details','Details'),(161,'circularprocess','Recruitment'),(162,'pos_id','Position'),(163,'adv_circular_date','Publish Date'),(164,'circular_dadeline','Dadeline'),(165,'adv_file','Documents'),(166,'adv_details','Details'),(167,'attendance','Attendance'),(168,'employee','Employee'),(169,'emp_id','Employee Name'),(170,'sign_in','Sign In'),(171,'sign_out','Sign Out'),(172,'staytime','Stay Time'),(173,'abc','1'),(174,'first_name','First Name'),(175,'last_name','Last Name'),(176,'alter_phone','Alternative Phone'),(177,'present_address','Present Address'),(178,'parmanent_address','Permanent Address'),(179,'candidateinfo','Candidate Info'),(180,'add_advertisement','Add Advertisement'),(181,'advertisement_list','Manage Advertisement '),(182,'candidate_basic_info','Candidate Information'),(183,'can_basicinfo_list','Manage Candidate'),(184,'add_canbasic_info','Add New Candidate'),(185,'candidate_education_info','Candidate Educational Info'),(186,'can_educationinfo_list','Candidate Edu Info list'),(187,'add_edu_info','Add Educational Info'),(188,'can_id','Candidate Id'),(189,'degree_name','Obtained Degree'),(190,'university_name','University'),(191,'cgp','CGPA'),(192,'comments','Comments'),(193,'signature','Signature'),(194,'candidate_workexperience','Candidate Work Experience'),(195,'can_workexperience_list','Work Experience list'),(196,'add_can_experience','Add Work Experience'),(197,'company_name','Company Name'),(198,'working_period','Working Period'),(199,'duties','Duties'),(200,'supervisor','Supervisor'),(201,'candidate_workexpe','Candidate Work Experience'),(202,'candidate_shortlist','Candidate Shortlist'),(203,'shortlist_view','Manage Shortlist'),(204,'add_shortlist','Add Shortlist'),(205,'date_of_shortlist','Shortlist Date'),(206,'interview_date','Interview Date'),(207,'submit','Submit'),(208,'candidate_id','Your ID'),(209,'job_adv_id','Job Position'),(210,'sequence','Sequence'),(211,'candidate_interview','Interview'),(212,'interview_list','Interview list'),(213,'add_interview','Interview'),(214,'interviewer_id','Interviewer'),(215,'interview_marks','Viva Marks'),(216,'written_total_marks','Written Total Marks'),(217,'mcq_total_marks','MCQ Total Marks'),(218,'recommandation','Recommandation'),(219,'selection','Selection'),(220,'details','Details'),(221,'candidate_selection','Candidate Selection'),(222,'selection_list','Selection List'),(223,'add_selection','Add Selection'),(224,'employee_id','Employee Id'),(225,'position_id','1'),(226,'selection_terms','Selection Terms'),(227,'total_marks','Total Marks'),(228,'photo','Picture'),(229,'your_id','Your ID'),(230,'change_image','Change Photo'),(231,'picture','Photograph'),(232,'ad','Add'),(233,'write_y_p_info','Write Your Persoanal Information'),(234,'emp_position','Employee Position'),(235,'add_pos','Add Position'),(236,'list_pos','List of Position'),(237,'emp_salary_stup','Employee Salary SetUp'),(238,'add_salary_stup','Add Salary Setup'),(239,'list_salarystup','List of Salary Setup'),(240,'emp_sal_name','Salary Name'),(241,'emp_sal_type','Salary Type'),(242,'emp_performance','Employee Performance'),(243,'add_performance','Add Performance'),(244,'list_performance','List of Performance'),(245,'note','Note'),(246,'note_by','Note By'),(247,'number_of_star','Number of Star'),(248,'updated_by','Updated By'),(249,'emp_sal_payment','Manage Employee Salary'),(250,'add_payment','Add Payment'),(251,'list_payment','List of payment'),(252,'total_salary','Total Salary'),(253,'total_working_minutes','Working Hour'),(254,'payment_due','Payment Type'),(255,'payment_date','Date'),(256,'paid_by','Paid By'),(257,'view_employee_payment','Employee Payment List'),(258,'sal_payment_type','Salary Payment Type'),(259,'add_payment_type','Add Payment Type'),(260,'list_payment_type','List of Payment Type'),(261,'payment_period','Payment Period'),(262,'payment_type','Payment Type'),(263,'time','Punch Time'),(264,'shift','Shift'),(265,'location','Location'),(266,'logtype','Log Type'),(267,'branch','Location'),(268,'student','Students'),(269,'csv','CSV'),(270,'save_successfull','Your Data Save Successfully'),(271,'successfully_updated','Your Data Successfully Updated'),(272,'atn_form','Attendance Form'),(273,'atn_report','Attendance Reports'),(274,'end_date','To'),(275,'start_date','From'),(276,'done','Done'),(277,'employee_id_se','Write Employee Id or name here '),(278,'attendance_repor','Attendance Report'),(279,'e_time','End Time'),(280,'s_time','Start Time'),(281,'atn_datewiserer','Date Wise Report'),(282,'atn_report_id','Date And Id base Report'),(283,'atn_report_time','Date And Time report'),(284,'payroll','Payroll'),(285,'loan','Loan'),(286,'loan_grand','Grant Loan'),(287,'add_loan','Add Loan'),(288,'loan_list','List of Loan'),(289,'loan_details','Loan Details'),(290,'amount','Amount'),(291,'interest_rate','Interest Percentage'),(292,'installment_period','Installment Period'),(293,'repayment_amount','Repayment Total'),(294,'date_of_approve','Approve Date'),(295,'repayment_start_date','Repayment From'),(296,'permission_by','Permitted By'),(297,'grand','Grant'),(298,'installment','Installment'),(299,'loan_status','status'),(300,'installment_period_m','Installment Period in Month'),(301,'successfully_inserted','Your loan Successfully Granted'),(302,'loan_installment','Loan Installment'),(303,'add_installment','Add Installment'),(304,'installment_list','List of Installment'),(305,'loan_id','Loan No'),(306,'installment_amount','Installment Amount'),(307,'payment','Payment'),(308,'received_by','Receiver'),(309,'installment_no','Install No'),(310,'notes','Notes'),(311,'paid','Paid'),(312,'loan_report','Loan Report'),(313,'e_r_id','Enter Your Employee ID'),(314,'leave','Leave'),(315,'add_leave','Add Leave'),(316,'list_leave','List of Leave'),(317,'dayname','Weekly Leave Day'),(318,'holiday','Holiday'),(319,'list_holiday','List of Holidays'),(320,'no_of_days','Number of Days'),(321,'holiday_name','Holiday Name'),(322,'set','SET'),(323,'tax','Tax'),(324,'tax_setup','Tax Setup'),(325,'add_tax_setup','Add Tax Setup'),(326,'list_tax_setup','List of Tax setup'),(327,'tax_collection','Tax collection'),(328,'start_amount','Start Amount'),(329,'end_amount','End Amount'),(330,'rate','Tax Rate'),(331,'date_start','Date Start'),(332,'amount_tax','Tax Amount'),(333,'collection_by','Collection By'),(334,'date_end','Date End'),(335,'income_net_period','Income  Net period'),(336,'default_amount','Default Amount'),(337,'add_sal_type','Add Salary Type'),(338,'list_sal_type','Salary Type List'),(339,'salary_type_setup','Salary Type Setup'),(340,'salary_setup','Salary SetUp'),(341,'add_sal_setup','Add Salary Setup'),(342,'list_sal_setup','Salary Setup List'),(343,'salary_type_id','Salary Type'),(344,'salary_generate','Salary Generate'),(345,'add_sal_generate','Generate Now'),(346,'list_sal_generate','Generated Salary List'),(347,'gdate','Generate Date'),(348,'start_dates','Start Date'),(349,'generate','Generate '),(350,'successfully_saved_saletup',' Set up Successfull'),(351,'s_date','Start Date'),(352,'e_date','End Date'),(353,'salary_payable','Payable Salary'),(354,'tax_manager','Tax'),(355,'generate_by','Generate By'),(356,'successfully_paid','Successfully Paid'),(357,'direct_empl',' Employee'),(358,'add_emp_info','Add New Employee'),(359,'new_empl_pos','Add New Employee Position'),(360,'manage','Manage Position'),(361,'ad_advertisement','ADD POSITION'),(362,'moduless','Modules'),(363,'next','Next'),(364,'finish','Finish'),(365,'request','Request'),(366,'successfully_saved','Your Data Successfully Saved'),(367,'sal_type','Salary Type'),(368,'sal_name','Salary Name'),(369,'leave_application','Leave Application'),(370,'apply_strt_date','Application Start Date'),(371,'apply_end_date','Application End date'),(372,'leave_aprv_strt_date','Approve Start Date'),(373,'leave_aprv_end_date','Approved End Date'),(374,'num_aprv_day','Aproved Day'),(375,'reason','Reason'),(376,'approve_date','Approved Date'),(377,'leave_type','Leave Type'),(378,'apply_hard_copy','Application Hard Copy'),(379,'approved_by','Approved By'),(380,'notice','Notice Board'),(381,'noticeboard','Notice Board'),(382,'notice_descriptiion','Description'),(383,'notice_date','Notice Date'),(384,'notice_type','Notice Type'),(385,'notice_by','Notice By'),(386,'notice_attachment','Attachment'),(387,'account_name','Account Name'),(388,'account_type','Account Type'),(389,'account_id','Account Name'),(390,'transaction_description','Description'),(391,'payment_id','Payment'),(392,'create_by_id','Created By'),(393,'account','Account'),(394,'account_add','Add Account'),(395,'account_transaction','Transaction'),(396,'award','Award'),(397,'new_award','New Award'),(398,'award_name','Award Name'),(399,'aw_description','Award Description'),(400,'awr_gift_item','Gift Item'),(401,'awarded_by','Award By'),(402,'employee_name','Employee Name'),(403,'employee_list','Atn List'),(404,'department','Department'),(405,'department_name','Department Name '),(406,'clockout','ClockOut'),(407,'se_account_id','Select Account Name'),(408,'division','Division'),(409,'add_division','Add Division'),(410,'update_division','Update Division'),(411,'division_name','Division Name'),(412,'division_list','Manage Division '),(413,'designation_list','Position List'),(414,'manage_designation','Manage Position'),(415,'add_designation','Add Positionn'),(416,'select_division','Select Division'),(417,'select_designation','Select Position'),(418,'asset','Asset'),(419,'asset_type','Asset Type'),(420,'add_type','Add Type'),(421,'type_list','Type List'),(422,'type_name','Type Name'),(423,'select_type','Select Type'),(424,'equipment_name','Equipment Name'),(425,'model','Model'),(426,'serial_no','Serial No'),(427,'equipment','Equipment'),(428,'add_equipment','Add Equipment'),(429,'equipment_list','Equipment List'),(430,'type','Type'),(431,'equipment_maping','Equipment Mapping'),(432,'add_maping','Add Mapping'),(433,'maping_list','Mapping List'),(434,'update_equipment','Update Equipment'),(435,'select_employee','Select Employee'),(436,'select_equipment','Select Equipment'),(437,'basic_info','Basic Info'),(438,'middle_name','Middle Name'),(439,'state','Country'),(440,'city','City'),(441,'zip_code','Zip Code'),(442,'maiden_name','Maiden Name'),(443,'add_employee','Add Employee'),(444,'manage_employee','Manage Employee'),(445,'employee_update_form','Employee Update Form'),(446,'what_you_search','What You Search'),(447,'search','Search'),(448,'duty_type','Duty Type'),(449,'hire_date','Hire Date'),(450,'original_h_date','Original Hire Date'),(451,'voluntary_termination','Voluntary Termination'),(452,'termination_reason','Termination Reason'),(453,'termination_date','Termination Date'),(454,'re_hire_date','Re Hire Date'),(455,'rate_type','Rate Type'),(456,'pay_frequency','Pay Frequency'),(457,'pay_frequency_txt','Pay Frequency Text'),(458,'hourly_rate2','Hourly rate2'),(459,'hourly_rate3','Hourly Rate3'),(460,'home_department','Home Department'),(461,'department_text','Department Text'),(462,'benifit_class_code','Benefit Class code'),(463,'benifit_desc','Benefit Description'),(464,'benifit_acc_date','Benefit Accrual Date'),(465,'benifit_sta','Benefit Status'),(466,'super_visor_name','Supervisor Name'),(467,'is_super_visor','Is Supervisor'),(468,'supervisor_report','Supervisor Report'),(469,'dob','Date of Birth'),(470,'gender','Gender'),(471,'marital_stats','Marital Status'),(472,'ethnic_group','Ethnic Group'),(473,'eeo_class_gp','EEO Class'),(474,'ssn','SSN'),(475,'work_in_state','Work in State'),(476,'live_in_state','Live in State'),(477,'home_email','Home Email'),(478,'business_email','Business Email'),(479,'home_phone','Home Phone'),(480,'business_phone','Business Phone'),(481,'cell_phone','Cell Phone'),(482,'emerg_contct','Emergency Contact'),(483,'emerg_home_phone','Emergency Home Phone'),(484,'emrg_w_phone','Emergency Work Phone'),(485,'emer_con_rela','Emergency Contact Relation'),(486,'alt_em_contct','Alter Emergency Contact'),(487,'alt_emg_h_phone','Alt Emergency Home Phone'),(488,'alt_emg_w_phone','Alt Emergency  Work Phone'),(489,'reports','Reports'),(490,'employee_reports','Employee Reports'),(491,'demographic_report','Demographic Report'),(492,'posting_report','Positional Report'),(493,'custom_report','Custom Report'),(494,'benifit_report','Benefit Report'),(495,'demographic_info','Demographical Information'),(496,'positional_info','Positional Information'),(497,'assets_info','Assets Information'),(498,'custom_field','Custom Field'),(499,'custom_value','Custom Data'),(500,'adhoc_report','Adhoc Report'),(501,'asset_assignment','Asset Assignment'),(502,'assign_asset','Assign Assets'),(503,'assign_list','Assign List'),(504,'update_assign','Update Assign'),(505,'citizenship','Citizenship'),(506,'class_sta','Class status'),(507,'class_acc_date','Class Accrual date'),(508,'class_descript','Class Description'),(509,'class_code','Class Code'),(510,'return_asset','Return Assets'),(511,'dept_id','Department ID'),(512,'parent_id','Parent ID'),(513,'equipment_id','Equipment ID'),(514,'issue_date','Issue Date'),(515,'damarage_desc','Damarage Description'),(516,'return_date','Return Date'),(517,'is_assign','Is Assign'),(518,'emp_his_id','Employee History ID'),(519,'damarage_descript','Damage Description'),(520,'return','Return'),(521,'return_successfull','Return Successfull'),(522,'return_list','Return List'),(523,'custom_data','Custom Data'),(524,'passing_year','Passing Year'),(525,'is_admin','Is Admin'),(526,'zip','Zip Code'),(527,'original_hire_date','Original Hire Date'),(528,'rehire_date','Rehire Date'),(529,'class_code_desc','Class Code Description'),(530,'class_status','Class Status'),(531,'super_visor_id','Supervisor ID'),(532,'marital_status','Marital Status'),(533,'emrg_h_phone','Emergency Home Phone'),(534,'emgr_contct_relation','Emergency Contact Relation'),(535,'id','ID'),(536,'type_id','Equipment Type'),(537,'custom_id','Custom ID'),(538,'custom_data_type','Custom Data Type'),(539,'role_permission','Role Permission'),(540,'permission_setup','Permission Setup'),(541,'add_role','Add Role'),(542,'role_list','Role List'),(543,'user_access_role','User Access Role'),(544,'menu_item_list','Menu Item List'),(545,'ins_menu_for_application','Ins Menu  For Application'),(546,'menu_title','Menu Title'),(547,'page_url','Page Url'),(548,'parent_menu','Parent Menu'),(549,'role','Role'),(550,'role_name','Role Name'),(551,'single_checkin','Single Check In'),(552,'bulk_checkin','Bulk Check In'),(553,'manage_attendance','Manage Attendance'),(554,'attendance_list','Attendance List'),(555,'checkin','Check In'),(556,'checkout','Check Out'),(557,'stay','Stay'),(558,'attendance_report','Attendance Report'),(559,'work_hour','Work Hour'),(560,'cancel','Cancel'),(561,'confirm_clock','Confirm Checkout'),(562,'add_attendance','Add Attendance'),(563,'upload_csv','Upload CSV'),(564,'import_attendance','Import Attendance'),(565,'manage_account','Manage Account'),(566,'add_account','Add Account'),(567,'add_new_account','Add New Account'),(568,'account_details','Account Details'),(569,'manage_transaction','Manage Transaction'),(570,'add_expence','Add Experience'),(571,'add_income','Add Income'),(572,'return_now','Return Now !!'),(573,'manage_award','Manage Award'),(574,'add_new_award','Add New Award'),(575,'personal_information','Personal Information'),(576,'educational_information','Educational Information'),(577,'past_experience','Past Experience'),(578,'basic_information','Basic Information'),(579,'result','Result'),(580,'institute_name','Institute Name'),(581,'education','Education'),(582,'manage_shortlist','Manage Short List'),(583,'manage_interview','Manage Interview'),(584,'manage_selection','Manage Selection'),(585,'add_new_dept','Add New Department'),(586,'manage_dept','Manage Department'),(587,'successfully_checkout','Checkout Successful !'),(588,'grant_loan','Grant Loan'),(589,'successfully_installed','Successfully Installed'),(590,'total_loan','Total Loan'),(591,'total_amount','Total Amount'),(592,'filter','Filter'),(593,'weekly_holiday','Weekly Holiday'),(594,'manage_application','Manage Application'),(595,'add_application','Add Application'),(596,'manage_holiday','Manage Holiday'),(597,'add_more_holiday','Add More Holiday'),(598,'manage_weekly_holiday','Manage Weekly Holiday'),(599,'add_weekly_holiday','Add Weekly Holiday'),(600,'manage_granted_loan','Manage Granted Loan'),(601,'manage_installment','Manage Installment'),(602,'add_new_notice','Add New Notice'),(603,'manage_notice','Manage Notice'),(604,'salary_type','Salary Benefits'),(605,'manage_salary_generate','Manage Salary Generate'),(606,'generate_now','Generate Now'),(607,'add_salary_setup','Add Salary Setup'),(608,'manage_salary_setup','Manage Salary Setup'),(609,'add_salary_type','Add Salary Benefits'),(610,'manage_salary_type','Manage Salary Benefits'),(611,'manage_tax_setup','Manage Tax Setup'),(612,'setup_tax','Setup Tax'),(613,'add_more','Add More'),(614,'tax_rate','Tax Rate'),(615,'no','No'),(616,'setup','Setup'),(617,'biographicalinfo','Bio-Graphical Information'),(618,'positional_information','Positional Information'),(620,'benifits','Benefits'),(621,'s_rate','Basic Salary/Rate'),(622,'others_leave_application','Leave Application'),(623,'add_leave_type','Add Leave Type'),(624,'others_leave','Others Leave'),(625,'number_of_leave_days','Number of Leave Days'),(626,'app_date','Application Date'),(627,'apply_day','Apply Day'),(628,'time_zone','Time Zone '),(629,'accounts','Accounts'),(630,'c_o_a','Chart of Account'),(631,'debit_voucher','Debit Voucher'),(632,'credit_voucher','Credit Voucher'),(633,'contra_voucher','Contra Voucher'),(634,'journal_voucher','Journal Voucher'),(635,'voucher_approval','Voucher Approval'),(636,'account_report','Account Report'),(637,'voucher_report','Voucher Report'),(638,'cash_book','Cash Book'),(639,'bank_book','Bank Book'),(640,'general_ledger','General Ledger'),(641,'trial_balance','Trial Balance'),(642,'profit_loss','Profit Loss'),(643,'cash_flow','Cash Flow'),(644,'coa_print','Coa Print'),(645,'grant','Grant'),(646,'confirm','Confirm'),(647,'pay_now','Pay Now ??'),(648,'find','Find'),(649,'gl_head','GL Head'),(650,'acc_code','Account Code'),(651,'from_date','From Date'),(652,'to_date','To Date'),(653,'bank_book_voucher','Bank Book Voucher'),(654,'bank_book_report_of','Bank Book Report Of'),(655,'on','On'),(656,'to','To'),(657,'opening_balance','Opening Balance'),(658,'balance','Balance'),(659,'credit','Credit'),(660,'debit','Debit'),(661,'head_of_account','Head Of Account'),(662,'voucher_type','Voucher Type'),(663,'voucher_no','Voucher No'),(664,'transaction_date','Transaction Date'),(665,'cash_book_voucher','Cash Book Voucher'),(666,'cash_book_report_on','Cash Book Report On'),(667,'particulars','Particulars'),(668,'amount_in_dollar','Amount In Dollar'),(669,'opening_cash_and_equivalent','Opening Cash && Equivalent'),(670,'cash_flow_statement','Cash Flow Statement'),(671,'code','Code'),(672,'remark','Remark'),(673,'debit_account_head','Debit Account Head'),(674,'cash_in_hand','Cash In Hand'),(675,'credit_account_head','Credit Account Head'),(676,'transaction_head','Transaction Head'),(677,'with_details','With Details'),(678,'no_report','No Of Report'),(679,'total','Total'),(680,'current_balance','Current Balance'),(681,'pre_balance','Pre Balance'),(682,'trial_balance_with_opening_as_on','Trial Balance With Opening '),(683,'as_on','As On'),(684,'chairman','Chairman'),(685,'prepared_by','Prepared By'),(686,'statement_of_comprehensive_income','Statement Of Comprehensive Income'),(687,'from','From'),(688,'total_expenses','Total Expenses'),(689,'total_income','Total Income'),(690,'authorized_signature','Authorize Signature'),(691,'account_official','Account Official'),(692,'approved','Approved'),(693,'update_credit_voucher','Update Credit Voucher'),(694,'benefits','Benefit'),(695,'class','Class'),(696,'biographical_info','Biographical Info'),(697,'additional_address','Additional Address'),(698,'custom','Custom'),(699,'can_name','Candidate Name'),(700,'select','Select'),(701,'benefit_type','Benefit Type'),(702,'salary_benefits_type','Benefits Type'),(703,'addition','Addition'),(704,'basic','Basic'),(705,'deduction','Deduction'),(706,'gross_salary','Gross Salary'),(707,'total_loan_amount','Total Loan Amount'),(708,'loan_no','Loan No'),(709,'loan_issue_id','Loan Issue Id'),(710,'repayment','Repayment'),(711,'candidate_name','Candidate name'),(712,'employee_performance','Employee Performance'),(713,'check_in','Check In'),(714,'check_out','Check Out'),(715,'datewise_report','Date Wise Report'),(716,'employee_wise_report','Employee Wise Report'),(717,'date_in_time_report','Date & In Time Report'),(718,'report_view','Report View'),(719,'notice_form','Notice Form'),(720,'atn_log','Load Device Data'),(721,'atn_log_datewise','Attendance Log'),(722,'device_connection','Device Connection'),(723,'user_name','User Name'),(724,'in_time','In Time'),(725,'out_time','Out Time'),(726,'worked_hours','Worked Hours'),(727,'wasteg_hour','Wastage Hours'),(728,'net_hour','Net Hours'),(729,'device_information','Device Information'),(730,'plz_generate_an_ip','Please Generate an Ip'),(731,'device_name','Device Name'),(732,'device_ip','Device Ip'),(733,'device_user','Device User'),(734,'n_b_spendtime','N.B : You Spent'),(735,'hours_out_of_workinghour','Hours out of Working hours'),(736,'total_employee','Total Employee'),(737,'present_employee','Present Employee'),(738,'today_worked_hour','Today\'s Worked Hours'),(739,'todays_transaction','Today\'s Transaction'),(740,'device_model','Device Model'),(741,'download_sample_file','Download Sample File'),(742,'salar_month','Salary Month'),(743,'bank','Bank'),(744,'add_bank','Add Bank'),(745,'bank_list','Bank List'),(746,'update_bank','Update Bank'),(747,'bank_name','Bank Name'),(748,'account_number','Account Number'),(749,'cash_adjustment','Cash Adjustment'),(750,'adjustment_type','Adjustment Type'),(751,'bank_adjustment','Bank Adjustment'),(752,'expense','Expense'),(753,'expense_item','Expense Item'),(754,'expense_statement','Expense Statement'),(755,'expense_name','Expense Name'),(756,'add_expense','Add Expense'),(757,'print','Print'),(758,'income','Income'),(759,'income_field','Income Field'),(760,'update_income','Update Income'),(761,'income_statement','Income Statement'),(762,'attendence','Attendance'),(763,'working_day','Working Day'),(764,'salary_month','Salary Month'),(765,'salary_slip','Salary Slip'),(766,'head_code','Head Code'),(767,'particular','Particulars'),(768,'parent_type','Parent Type'),(769,'expense_sheet','Expense Sheet'),(770,'head_name','Head Name'),(771,'income_sheet','Income Sheet'),(772,'recruitment',' Recruitment'),(773,'ref_number','Reference Number'),(774,'employee_signature','Employee Signature'),(775,'name_of_bank','Name Of Bank'),(776,'net_salary','Net Salary'),(777,'in_word','In Word'),(778,'total_deduction','Total Deduction'),(779,'total_addition','Total Addition'),(780,'basic_salary','Basic Salary'),(781,'earnings','Earnings'),(782,'salary_date','Salary Date'),(783,'money_receipt','Money Receipt'),(784,'balance_adjustment','Balance Adjustment'),(785,'parent_head','Parent Head'),(786,'child_head','Child Head'),(787,'due_amount','Due Amount'),(788,'loan_payment','Loan Payment'),(789,'todays_notice','Today\'s Notice'),(790,'attend_employee','Attend Employee'),(791,'department_wise','Department Wise'),(792,'income_expense','Income Expense'),(793,'todays_leave','Today\'s Leave'),(794,'leave_day','Leave Day'),(795,'leave_finish','Leave Finish'),(796,'loan_amount','Loan Amount'),(797,'leave_employee','Leave Employee'),(798,'absent_employee','Absent Employee'),(799,'worked_hour','Worked Hours'),(800,'new_password','New Password'),(801,'latitude','Latitude'),(802,'longitude','Longitude'),(803,'acceptablerange','Acceptable Range'),(804,'googleapi_authkey','Google Api Auth Key'),(805,'approve','Approve'),(806,'decline','Decline'),(807,'attendance_history','Attendance History'),(808,'give_attendance','Give Attendance'),(809,'ledger_history','Ledger History'),(810,'request_leave','Request Leave'),(811,'my_profile','My Profile'),(812,'salary_statement','Salary Statement'),(813,'notices','Notice'),(814,'working_hour','Working Hour'),(815,'qr_attendance','QR Attendance'),(816,'leave_remaining','Leave Remaining'),(817,'total_attendance','Total Attendance'),(818,'day_absent','Day Absent'),(819,'day_present','Day Present'),(820,'previous','Previous'),(821,'network_alert','Check Network Connection'),(822,'select_date','Select Date'),(823,'attendance_log','Attendance Log'),(824,'in','In'),(825,'out','Out'),(826,'load_more','Load More'),(827,'data_not_found','Data Not Found'),(828,'worked','Worked'),(829,'wastage','Wastage'),(830,'punch_time','Punch Time'),(831,'loading','Loading ...'),(832,'wrong_info_alert','Some Information Was Wrong There'),(833,'from_to_date_alrt','From And To Date Field Are Require'),(834,'qr_scan','QR Scan'),(835,'stop_scan','Stop Scan'),(836,'scan_again','Scan Again'),(837,'confirm_attendance','Confirm Attendance'),(838,'scan_alert','Your Scan Qr Was Wrong!! Please Scan Again'),(839,'attn_success_mgs','Attendance Successfully Saved'),(840,'you_r_not_in_office','You Are Not In The Office Location'),(841,'out_of_range','Out Of Range'),(842,'request_for_leave','Request For Leave'),(843,'leave_reason','Leave Reason'),(844,'write_reason','Write Reason'),(845,'send_request','Send Request'),(846,'leave_his_status','Leave History Status'),(847,'total_tax','Total Tax'),(848,'employment_date','Employment Date'),(849,'notice_details','Notice Details'),(850,'no_notice_to_show','No Notice to Show'),(851,'welcome_msg','Welcome To HRM'),(852,'enter_your_email','Enter Your Email'),(853,'enter_your_password','Enter Your Password'),(854,'cannot_remember_pass','Can not Remember Password'),(855,'forgot_password','Forgot Password'),(856,'email_pass_cannot_empt','Email or password can not be empty'),(857,'email_format_was_not_right','Email format was not Right!'),(858,'email_or_pass_not_matched','Email or password not matched!'),(859,'reset_your_password','Reset Your Password'),(860,'your_remember_password','You Remember Password'),(861,'back_to_login','Back to Login'),(862,'email_fild_can_not_empty','Email Field can not be empty'),(863,'email_not_found','Email Not Found'),(864,'successfully_send_email','Successfully Send Email!'),(865,'email_is_not_valid','Email Is Not Valid'),(866,'sorry_email_not_sent','Sorry Email Not Sent'),(867,'day_leave','Day Leave'),(868,'search_work_details','Search Work Details'),(869,'times','Time'),(870,'request_not_send','Request Not Send'),(871,'leave_request_success','Your Leave Request SuccessFul'),(872,'all_field_are_required','All Field Are Required'),(873,'plz_select_data_properly','Please select date properly'),(874,'pending','Pending'),(875,'unpaid','Unpaid'),(876,'salary_details','Salary Details'),(877,'worked_days','Worked Days'),(878,'monthly_attendance','Monthly Attendance'),(879,'year','Year'),(880,'month','Month'),(881,'missing_attendance','Missing Attendance'),(882,'daily_presents','Daily Presents'),(883,'all','All'),(884,'daily_absent','Daily Absent'),(885,'monthly_presents','Monthly Presents'),(886,'monthly_absent','Monthly Absent'),(887,'leave_report','Leave Report'),(888,'employee_on_leave','Employee On Leave'),(889,'leave_balance','Leave Balance'),(890,'without_weekend','Without Weekend'),(891,'new_recruited_employee','New Recruited'),(892,'todays_present','Today\'s Presents'),(893,'todays_absent','Today\'s Absents'),(894,'male','Male'),(895,'female','Female'),(896,'latest_notice','Latest Notice'),(897,'attendance_last_30days','Attendance (Last 30 Days)'),(898,'recruited_current_year','Recruited (Current Year)'),(899,'absent_15days','Absent (Last 15 Days)'),(900,'loanreceive','Loan Received'),(901,'current_year','Current Year'),(902,'awarded','Awarded'),(903,'loanpayment','Loan Payment'),(904,'login_info','Login Info'),(905,'user_email','User Email'),(906,'mobile_app_setting','Mobile App Setting(Addons)');

/*Table structure for table `leave_apply` */

DROP TABLE IF EXISTS `leave_apply`;

CREATE TABLE `leave_apply` (
  `leave_appl_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `leave_type_id` int(2) NOT NULL,
  `apply_strt_date` date DEFAULT NULL,
  `apply_end_date` date DEFAULT NULL,
  `apply_day` int(11) NOT NULL,
  `leave_aprv_strt_date` date DEFAULT NULL,
  `leave_aprv_end_date` date DEFAULT NULL,
  `num_aprv_day` varchar(15) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `apply_hard_copy` text DEFAULT NULL,
  `apply_date` date DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `approved_by` varchar(30) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`leave_appl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `leave_apply` */

insert  into `leave_apply`(`leave_appl_id`,`employee_id`,`leave_type_id`,`apply_strt_date`,`apply_end_date`,`apply_day`,`leave_aprv_strt_date`,`leave_aprv_end_date`,`num_aprv_day`,`reason`,`apply_hard_copy`,`apply_date`,`approve_date`,`approved_by`,`leave_type`,`status`) values (1,'2',1,'2022-01-19','2022-01-19',1,'2022-01-19','2022-01-19','1','Sick',NULL,'2022-01-18','2022-01-18','4','',0),(2,'2',1,'2022-01-20','2022-01-20',1,'2022-01-20','2022-01-20','1','Sick and Casual ',NULL,'2022-01-18','2022-01-18','4','',0);

/*Table structure for table `leave_type` */

DROP TABLE IF EXISTS `leave_type`;

CREATE TABLE `leave_type` (
  `leave_type_id` int(2) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(50) NOT NULL,
  `leave_days` int(2) NOT NULL,
  PRIMARY KEY (`leave_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `leave_type` */

insert  into `leave_type`(`leave_type_id`,`leave_type`,`leave_days`) values (1,'Sick',5),(2,'Casual',10);

/*Table structure for table `loan_installment` */

DROP TABLE IF EXISTS `loan_installment`;

CREATE TABLE `loan_installment` (
  `loan_inst_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `loan_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `installment_amount` varchar(20) CHARACTER SET latin1 NOT NULL,
  `payment` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `received_by` varchar(20) CHARACTER SET latin1 NOT NULL,
  `installment_no` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '1',
  `notes` varchar(80) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`loan_inst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `loan_installment` */

/*Table structure for table `marital_info` */

DROP TABLE IF EXISTS `marital_info`;

CREATE TABLE `marital_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marital_sta` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `marital_info` */

insert  into `marital_info`(`id`,`marital_sta`) values (1,'Single'),(2,'Married'),(3,'Divorced'),(4,'Widowed'),(5,'Other');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

/*Table structure for table `module` */

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `module` */

insert  into `module`(`id`,`name`,`description`,`image`,`directory`,`status`) values (39,'attendance Details ','Simple attendance processing System','application/modules/attendance/assets/images/thumbnail.jpg','attendance',1),(40,'Employee circulation processing System','Simple circulation processing System','application/modules/circularprocess/assets/images/thumbnail.jpg','circularprocess',1),(41,'Employee Details ','Simple hrm processing System','application/modules/employee/assets/images/thumbnail.jpg','employee',1),(42,'Leave Details ','Simple leave processing System','application/modules/leave/assets/images/thumbnail.jpg','leave',1),(43,'Loan Details ','Simple loan processing System','application/modules/loan/assets/images/thumbnail.jpg','loan',1),(44,'TAX Details ','Simple tax processing System','application/modules/tax/assets/images/thumbnail.jpg','tax',1),(46,'Payroll Details ','Simple payroll processing System','application/modules/payroll/assets/images/thumbnail.jpg','payroll',1),(48,'Account','Account information','application/modules/account/assets/images/thumbnail.jpg','account',1),(49,'Notice Details ','Simple Notice','application/modules/noticeboard/assets/images/thumbnail.jpg','noticeboard',1),(50,'Award Details ','Simple Award','application/modules/award/assets/images/thumbnail.jpg','award',1),(52,'asset Details ','Simple asset','application/modules/asset/assets/images/thumbnail.jpg','asset',1);

/*Table structure for table `module_permission` */

DROP TABLE IF EXISTS `module_permission`;

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`fk_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `module_permission` */

/*Table structure for table `notice_board` */

DROP TABLE IF EXISTS `notice_board`;

CREATE TABLE `notice_board` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_descriptiion` text NOT NULL,
  `notice_date` date NOT NULL,
  `notice_type` varchar(50) NOT NULL,
  `notice_by` varchar(50) NOT NULL,
  `notice_attachment` text DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `notice_board` */

insert  into `notice_board`(`notice_id`,`notice_descriptiion`,`notice_date`,`notice_type`,`notice_by`,`notice_attachment`) values (1,'Pakistan Day','2022-03-23','Pakistan Day','Talha',NULL);

/*Table structure for table `pay_frequency` */

DROP TABLE IF EXISTS `pay_frequency`;

CREATE TABLE `pay_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pay_frequency` */

insert  into `pay_frequency`(`id`,`frequency_name`) values (1,'Weekly'),(2,'Biweekly'),(3,'Annual'),(4,'Monthly');

/*Table structure for table `payroll_holiday` */

DROP TABLE IF EXISTS `payroll_holiday`;

CREATE TABLE `payroll_holiday` (
  `payrl_holi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `no_of_days` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`payrl_holi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `payroll_holiday` */

insert  into `payroll_holiday`(`payrl_holi_id`,`holiday_name`,`start_date`,`end_date`,`no_of_days`,`created_by`,`updated_by`) values (1,'Pakistan Day','2022-03-23','2022-03-23','1','',''),(2,'Independence Day','2022-08-14','2022-08-14','1','','');

/*Table structure for table `payroll_tax_collection` */

DROP TABLE IF EXISTS `payroll_tax_collection`;

CREATE TABLE `payroll_tax_collection` (
  `tax_coll_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_start` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount_tax` varchar(30) CHARACTER SET latin1 NOT NULL,
  `collection_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_end` varchar(30) CHARACTER SET latin1 NOT NULL,
  `income_net_period` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_coll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payroll_tax_collection` */

/*Table structure for table `payroll_tax_setup` */

DROP TABLE IF EXISTS `payroll_tax_setup`;

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `payroll_tax_setup` */

insert  into `payroll_tax_setup`(`tax_setup_id`,`start_amount`,`end_amount`,`rate`,`status`) values (1,'0','600,000','0',''),(2,'600,000 ','1,200,000','5',''),(3,'1,200,000','1,800,000','10',''),(4,'1,800,000','2,500,000 ','15',''),(5,'2,500,000 ','3,500,000 ','17.50',''),(6,'3,500,000 ','5,000,000 ','20',''),(7,'5,000,000 ','8,000,000 ','22.50',''),(8,'8,000,000 ','12,000,000 ','25',''),(9,'12,000,000 ','30,000,000 ','27.50',''),(10,'30,000,000','50,000,000 ','30',''),(11,'50,000,000 ','75,000,000 ','32.50',''),(12,'','','','');

/*Table structure for table `position` */

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position_details` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `position` */

insert  into `position`(`pos_id`,`position_name`,`position_details`) values (2,'DevOps Engineer','DevOps Engineer'),(3,'Android Developer','Android Developer'),(4,'Jr SQA Analyst','Jr SQA Analyst'),(5,'SQA Engineer','SQA Engineer'),(6,'Senior SQA Engineer','Senior SQA Engineer'),(7,'Data Analyst/Reports','Data Analyst/Reports'),(8,'Software Engineer/Frontend Developer','Software Engineer/Frontend Developer'),(9,'Sr Java Developer','Sr Java Developer'),(10,'Project Manager','Project Manager');

/*Table structure for table `rate_type` */

DROP TABLE IF EXISTS `rate_type`;

CREATE TABLE `rate_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rate_type` */

/*Table structure for table `salary_setup_header` */

DROP TABLE IF EXISTS `salary_setup_header`;

CREATE TABLE `salary_setup_header` (
  `s_s_h_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`s_s_h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `salary_setup_header` */

insert  into `salary_setup_header`(`s_s_h_id`,`employee_id`,`salary_payable`,`absent_deduct`,`tax_manager`,`status`) values (1,'34',NULL,'0','0',''),(2,'34',NULL,'0','0',''),(3,'34',NULL,'0','0',''),(4,'1',NULL,'0','0',''),(5,'34',NULL,'0','0',''),(6,'34',NULL,'0','0',''),(7,'34',NULL,'0','0',''),(8,'34',NULL,'0','0',''),(9,'2',NULL,'0','0',''),(10,'3',NULL,'0','1',''),(11,'4',NULL,'0','1',''),(12,'5',NULL,'0','0',''),(13,'6',NULL,'0','0','');

/*Table structure for table `salary_sheet_generate` */

DROP TABLE IF EXISTS `salary_sheet_generate`;

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gdate` varchar(20) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `salary_sheet_generate` */

insert  into `salary_sheet_generate`(`ssg_id`,`name`,`gdate`,`start_date`,`end_date`,`generate_by`) values (1,'March 2020','2020-03-18','2020-3-1','2020-3-31',''),(2,'January 2020','2020-03-23','2020-1-1','2020-1-31',''),(3,'February 2020','2020-03-23','2020-2-1','2020-2-29',''),(6,'August 2020','2020-03-23','2020-8-1','2020-8-31',''),(7,'January 2022','2022-01-19','2022-1-1','2022-1-31','Naeem Malik'),(8,'February 2022','2022-01-19','2022-2-1','2022-2-28','Naeem Malik'),(9,'March 2022','2022-02-10','2022-3-1','2022-3-31','Naeem Malik'),(10,'April 2022','2022-02-10','2022-4-1','2022-4-30','Naeem Malik');

/*Table structure for table `salary_type` */

DROP TABLE IF EXISTS `salary_type`;

CREATE TABLE `salary_type` (
  `salary_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `emp_sal_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `default_amount` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `salary_type` */

insert  into `salary_type`(`salary_type_id`,`sal_name`,`emp_sal_type`,`default_amount`,`status`) values (1,'Utilities','1','',''),(2,'House Rent','1','',''),(3,'PF','0','','');

/*Table structure for table `sec_menu_item` */

DROP TABLE IF EXISTS `sec_menu_item`;

CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sec_menu_item` */

insert  into `sec_menu_item`(`menu_id`,`menu_title`,`page_url`,`module`,`parent_menu`,`is_report`,`createby`,`createdate`) values (134,'asset_type','type_form','asset',0,0,2,'2018-10-04 00:00:00'),(137,'equipment','equipment_form','asset',NULL,0,2,'2018-10-04 00:00:00'),(142,'asset_assignment','maping_form','asset',NULL,0,2,'2018-10-04 00:00:00'),(143,'return','','asset',NULL,0,2,'2018-10-04 00:00:00'),(144,'return_asset','asset_return_form','asset',143,0,2,'2018-10-04 00:00:00'),(145,'return_list','return_list','asset',143,0,2,'2018-10-04 00:00:00'),(147,'attendance','','attendance',0,0,2,'2018-10-04 00:00:00'),(148,'atn_form','atnview','attendance',147,0,2,'2018-10-04 00:00:00'),(149,'new_award','award_form','award',0,0,2,'2018-10-04 00:00:00'),(150,'candidate_basic_info','','recruitment',0,0,2,'2018-10-04 00:00:00'),(151,'add_canbasic_info','canInfo_form','recruitment',150,0,2,'2018-10-04 00:00:00'),(152,'can_basicinfo_list','canInfoview','recruitment',150,0,2,'2018-10-04 00:00:00'),(153,'candidate_shortlist','shortlist_form','recruitment',0,0,2,'2018-10-04 00:00:00'),(154,'candidate_interview','interview_form','recruitment',0,0,2,'2018-10-04 00:00:00'),(155,'candidate_selection','selection_form','recruitment',0,0,2,'2018-10-04 00:00:00'),(156,'department','dept_form','department',0,0,2,'2018-10-04 00:00:00'),(157,'division','','department',0,0,2,'2018-10-04 00:00:00'),(158,'add_division','division_form','department',157,0,2,'2018-10-04 00:00:00'),(159,'division_list','division_list','department',157,0,2,'2018-10-04 00:00:00'),(161,'position','position_form','employee',0,0,2,'2018-10-04 00:00:00'),(162,'direct_empl','','employee',0,0,2,'2018-10-04 00:00:00'),(163,'add_employee','employ_form','employee',162,0,2,'2018-10-04 00:00:00'),(164,'manage_employee','employee_view','employee',162,0,2,'2018-10-04 00:00:00'),(165,'emp_performance','emp_performance_form','employee',0,0,2,'2018-10-04 00:00:00'),(167,'weekly_holiday','weeklyform','leave',0,0,2,'2018-10-08 00:00:00'),(168,'holiday','holiday_form','leave',0,0,2,'2018-10-08 00:00:00'),(169,'others_leave_application','','leave',NULL,0,2,'2018-10-08 00:00:00'),(170,'loan_grand','grandloan_form','loan',0,0,2,'2018-10-08 00:00:00'),(171,'loan_installment','installment_form','loan',0,0,2,'2018-10-08 00:00:00'),(172,'loan_report','ln_report','loan',0,0,2,'2018-10-08 00:00:00'),(173,'notice','notice_form','noticeboard',0,0,2,'2018-10-08 00:00:00'),(174,'salary_type_setup','emp_salarysetup_form','payroll',NULL,0,2,'2018-10-08 00:00:00'),(175,'salary_setup','salarysetup_form','payroll',0,0,2,'2018-10-08 00:00:00'),(176,'salary_generate','salary_generate_form','payroll',0,0,2,'2018-10-08 00:00:00'),(177,'employee_reports','','reports',0,0,2,'2018-10-09 00:00:00'),(178,'demographic_report','demographic_list','reports',177,0,2,'2018-10-09 00:00:00'),(179,'posting_report','positional_list','reports',177,0,2,'2018-10-09 00:00:00'),(180,'asset','assets_list','reports',177,0,2,'2018-10-09 00:00:00'),(181,'benifit_report','benifit_list','reports',177,0,2,'2018-10-09 00:00:00'),(182,'custom_report','custom_list','reports',177,0,2,'2018-10-09 00:00:00'),(183,'adhoc_report','adhoc_form','reports',0,0,2,'2018-10-09 00:00:00'),(186,'add_leave_type','leave_type_form','leave',169,0,2,'2018-10-16 00:00:00'),(187,'leave_application','other_leave_application_form','leave',169,0,2,'2018-10-16 00:00:00'),(188,'c_o_a','treeview','accounts',NULL,0,2,'2018-10-18 00:00:00'),(189,'balance_adjustment','balance_adjustment','accounts',0,0,2,'2019-12-14 00:00:00'),(190,'cash_adjustment','cash_adjustment','accounts',0,0,2,'2019-12-14 00:00:00'),(191,'bank_adjustment','bank_adjustment','accounts',0,0,2,'2019-12-14 00:00:00'),(192,'payment_type','payment_type','accounts',0,0,2,'2019-12-14 00:00:00'),(193,'debit_voucher','debit_voucher','accounts',0,0,2,'2018-10-18 00:00:00'),(194,'credit_voucher','credit_voucher','accounts',0,0,2,'2018-10-18 00:00:00'),(195,'contra_voucher','contra_voucher','accounts',0,0,2,'2018-10-18 00:00:00'),(196,'journal_voucher','journal_voucher','accounts',0,0,2,'2018-10-18 00:00:00'),(197,'voucher_approval','voucher_approve','accounts',0,0,2,'2018-10-18 00:00:00'),(198,'account_report','','accounts',0,0,2,'2018-10-18 00:00:00'),(199,'voucher_report','coa','accounts',194,0,2,'2018-10-18 00:00:00'),(200,'cash_book','cash_book','accounts',194,0,2,'2018-10-18 00:00:00'),(201,'bank_book','bank_book','accounts',194,0,2,'2018-10-18 00:00:00'),(202,'general_ledger','general_ledger','accounts',194,0,2,'2018-10-18 00:00:00'),(203,'trial_balance','trial_balance','accounts',194,0,2,'2018-10-18 00:00:00'),(204,'add_bank','add_bank','bank',0,0,2,'2019-12-14 00:00:00'),(205,'bank_list','bank_list','bank',0,0,2,'2019-12-14 00:00:00'),(206,'profit_loss','profit_loss_report','accounts',194,0,2,'2018-10-18 00:00:00'),(207,'cash_flow','cash_flow_report','accounts',194,0,2,'2018-10-18 00:00:00'),(208,'coa_print','coa_print','accounts',194,0,2,'2018-10-18 00:00:00'),(211,'atn_log_datewise','attendance_log_datewise','attendance',147,0,2,'2019-12-14 00:00:00'),(212,'device_connection','device_connect_form','attendance',0,0,2,'2019-12-14 00:00:00'),(213,'expense_item','add_expense','expense',0,0,2,'2019-12-14 00:00:00'),(214,'expense_sheet','expense_sheet','expense',0,0,2,'2019-12-14 00:00:00'),(215,'expense_statement','expense_statement_form','expense',0,0,2,'2019-12-14 00:00:00'),(216,'income_field','add_income','income',0,0,2,'2019-12-14 00:00:00'),(217,'income_sheet','income_sheet','income',0,0,2,'2019-12-14 00:00:00'),(218,'income_statement','income_statement_form','income',0,0,2,'2019-12-14 00:00:00'),(219,'emp_sal_payment','paymentview','payroll',0,0,2,'2019-12-14 00:00:00'),(220,'leave_approval','other_leave_application_form','leave',169,0,1,'2022-01-19 00:00:00');

/*Table structure for table `sec_role_permission` */

DROP TABLE IF EXISTS `sec_role_permission`;

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sec_role_permission` */

insert  into `sec_role_permission`(`id`,`role_id`,`menu_id`,`can_access`,`can_create`,`can_edit`,`can_delete`,`createby`,`createdate`) values (75,1,188,0,0,0,0,1,'2022-01-19 06:50:53'),(76,1,189,0,0,0,0,1,'2022-01-19 06:50:53'),(77,1,190,0,0,0,0,1,'2022-01-19 06:50:53'),(78,1,191,0,0,0,0,1,'2022-01-19 06:50:53'),(79,1,192,0,0,0,0,1,'2022-01-19 06:50:53'),(80,1,193,0,0,0,0,1,'2022-01-19 06:50:53'),(81,1,194,0,0,0,0,1,'2022-01-19 06:50:53'),(82,1,195,0,0,0,0,1,'2022-01-19 06:50:53'),(83,1,196,0,0,0,0,1,'2022-01-19 06:50:53'),(84,1,197,0,0,0,0,1,'2022-01-19 06:50:53'),(85,1,198,0,0,0,0,1,'2022-01-19 06:50:53'),(86,1,199,0,0,0,0,1,'2022-01-19 06:50:53'),(87,1,200,0,0,0,0,1,'2022-01-19 06:50:53'),(88,1,201,0,0,0,0,1,'2022-01-19 06:50:53'),(89,1,202,0,0,0,0,1,'2022-01-19 06:50:53'),(90,1,203,0,0,0,0,1,'2022-01-19 06:50:53'),(91,1,206,0,0,0,0,1,'2022-01-19 06:50:53'),(92,1,207,0,0,0,0,1,'2022-01-19 06:50:53'),(93,1,208,0,0,0,0,1,'2022-01-19 06:50:53'),(94,1,134,0,0,0,0,1,'2022-01-19 06:50:53'),(95,1,137,0,0,0,0,1,'2022-01-19 06:50:53'),(96,1,142,0,0,0,0,1,'2022-01-19 06:50:53'),(97,1,143,0,0,0,0,1,'2022-01-19 06:50:53'),(98,1,144,0,0,0,0,1,'2022-01-19 06:50:53'),(99,1,145,0,0,0,0,1,'2022-01-19 06:50:53'),(100,1,147,0,0,0,0,1,'2022-01-19 06:50:53'),(101,1,148,0,0,0,0,1,'2022-01-19 06:50:53'),(102,1,211,0,0,0,0,1,'2022-01-19 06:50:53'),(103,1,212,0,0,0,0,1,'2022-01-19 06:50:53'),(104,1,149,0,0,0,0,1,'2022-01-19 06:50:53'),(105,1,204,0,0,0,0,1,'2022-01-19 06:50:53'),(106,1,205,0,0,0,0,1,'2022-01-19 06:50:53'),(107,1,156,0,0,0,0,1,'2022-01-19 06:50:53'),(108,1,157,0,0,0,0,1,'2022-01-19 06:50:53'),(109,1,158,0,0,0,0,1,'2022-01-19 06:50:53'),(110,1,159,0,0,0,0,1,'2022-01-19 06:50:53'),(111,1,161,1,1,1,1,1,'2022-01-19 06:50:53'),(112,1,162,1,1,1,1,1,'2022-01-19 06:50:53'),(113,1,163,1,1,1,1,1,'2022-01-19 06:50:53'),(114,1,164,1,1,1,1,1,'2022-01-19 06:50:53'),(115,1,165,1,1,1,1,1,'2022-01-19 06:50:53'),(116,1,213,0,0,0,0,1,'2022-01-19 06:50:53'),(117,1,214,0,0,0,0,1,'2022-01-19 06:50:53'),(118,1,215,0,0,0,0,1,'2022-01-19 06:50:53'),(119,1,216,0,0,0,0,1,'2022-01-19 06:50:53'),(120,1,217,0,0,0,0,1,'2022-01-19 06:50:53'),(121,1,218,0,0,0,0,1,'2022-01-19 06:50:53'),(122,1,167,1,1,1,1,1,'2022-01-19 06:50:53'),(123,1,168,1,1,1,1,1,'2022-01-19 06:50:53'),(124,1,169,1,1,1,1,1,'2022-01-19 06:50:53'),(125,1,186,1,1,1,1,1,'2022-01-19 06:50:53'),(126,1,187,1,1,0,1,1,'2022-01-19 06:50:53'),(127,1,220,0,0,0,0,1,'2022-01-19 06:50:53'),(128,1,170,0,0,0,0,1,'2022-01-19 06:50:53'),(129,1,171,0,0,0,0,1,'2022-01-19 06:50:53'),(130,1,172,0,0,0,0,1,'2022-01-19 06:50:53'),(131,1,173,0,0,0,0,1,'2022-01-19 06:50:53'),(132,1,174,0,0,0,0,1,'2022-01-19 06:50:53'),(133,1,175,0,0,0,0,1,'2022-01-19 06:50:53'),(134,1,176,0,0,0,0,1,'2022-01-19 06:50:53'),(135,1,219,0,0,0,0,1,'2022-01-19 06:50:53'),(136,1,150,0,0,0,0,1,'2022-01-19 06:50:53'),(137,1,151,0,0,0,0,1,'2022-01-19 06:50:53'),(138,1,152,0,0,0,0,1,'2022-01-19 06:50:53'),(139,1,153,0,0,0,0,1,'2022-01-19 06:50:53'),(140,1,154,0,0,0,0,1,'2022-01-19 06:50:53'),(141,1,155,0,0,0,0,1,'2022-01-19 06:50:53'),(142,1,177,0,0,0,0,1,'2022-01-19 06:50:53'),(143,1,178,0,0,0,0,1,'2022-01-19 06:50:53'),(144,1,179,0,0,0,0,1,'2022-01-19 06:50:53'),(145,1,180,0,0,0,0,1,'2022-01-19 06:50:53'),(146,1,181,0,0,0,0,1,'2022-01-19 06:50:53'),(147,1,182,0,0,0,0,1,'2022-01-19 06:50:53'),(148,1,183,0,0,0,0,1,'2022-01-19 06:50:53');

/*Table structure for table `sec_role_tbl` */

DROP TABLE IF EXISTS `sec_role_tbl`;

CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sec_role_tbl` */

insert  into `sec_role_tbl`(`role_id`,`role_name`,`role_description`,`create_by`,`date_time`,`role_status`) values (1,'Employee','All employee get default this role',2,'2020-04-04 11:22:31',1);

/*Table structure for table `sec_user_access_tbl` */

DROP TABLE IF EXISTS `sec_user_access_tbl`;

CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `sec_user_access_tbl` */

insert  into `sec_user_access_tbl`(`role_acc_id`,`fk_role_id`,`fk_user_id`) values (1,1,2),(2,1,3),(3,1,4),(4,1,5),(5,1,6),(6,1,7);

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `setting` */

insert  into `setting`(`id`,`title`,`address`,`email`,`phone`,`logo`,`favicon`,`language`,`timezone`,`site_align`,`footer_text`) values (1,'Diginc Technologies','Blue Area','danish.ahmed@diginctechnologies.com','323232232','assets/img/icons/2022-01-19/Dig.png','assets/img/icons/2022-01-19/Dig1.png','english','Asia/Tashkent','LTR','2022 ©Copyright');

/*Table structure for table `synchronizer_setting` */

DROP TABLE IF EXISTS `synchronizer_setting`;

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `synchronizer_setting` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `token_id` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`firstname`,`lastname`,`about`,`email`,`password`,`password_reset_token`,`image`,`last_login`,`last_logout`,`ip_address`,`status`,`is_admin`,`token_id`) values (1,'Naeem','Malik','I am FrontEnd Developer','naeem@diginctechnologies.com','4297f44b13955235245b2497399d7a93',NULL,'','2022-02-10 12:36:12','2022-01-18 19:01:37','127.0.0.1',1,1,NULL),(2,'Test','Khan',NULL,'tests@gmail.com','9e95f6d797987b7da0fb293a760fe57e',NULL,'',NULL,NULL,NULL,1,0,NULL),(3,'Muhammad','Naeem',NULL,'softnaeem@gmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,'./application/modules/employee/assets/images/2022-01-18/151.jpg',NULL,NULL,NULL,1,0,NULL),(4,'Muhammad','Awais',NULL,'awais@diginctechnologies.com','e10adc3949ba59abbe56e057f20f883e',NULL,'application/modules/employee/assets/images/2022-01-18/13.jpg',NULL,NULL,NULL,1,0,NULL),(5,'Talha','Anjum',NULL,'talha.anjum@diginctechnologies.com','e10adc3949ba59abbe56e057f20f883e',NULL,'./application/modules/employee/assets/images/2022-01-18/151.jpg','2022-01-19 10:40:43','2022-01-18 18:59:12','127.0.0.1',1,0,NULL),(6,'Sara ','Choudhary',NULL,'sara.ch@diginctechnologies.com','e10adc3949ba59abbe56e057f20f883e',NULL,'./application/modules/employee/assets/images/2022-01-18/151.jpg',NULL,NULL,NULL,1,0,NULL),(7,'erum','Malik',NULL,'erum.arif@diginctechnologies.com','e10adc3949ba59abbe56e057f20f883e',NULL,'./application/modules/employee/assets/images/2022-01-18/151.jpg',NULL,NULL,NULL,1,0,NULL);

/*Table structure for table `weekly_holiday` */

DROP TABLE IF EXISTS `weekly_holiday`;

CREATE TABLE `weekly_holiday` (
  `wk_id` int(11) NOT NULL AUTO_INCREMENT,
  `dayname` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`wk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `weekly_holiday` */

insert  into `weekly_holiday`(`wk_id`,`dayname`) values (1,'Satarday,Sunday');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
