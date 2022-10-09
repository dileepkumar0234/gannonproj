/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - gannon
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gannon` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gannon`;

/*Table structure for table `faculties` */

DROP TABLE IF EXISTS `faculties`;

CREATE TABLE `faculties` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fusername` varchar(200) DEFAULT NULL,
  `femailid` varchar(200) DEFAULT NULL,
  `fpwd` varchar(200) DEFAULT NULL,
  `fdepartment` varchar(120) DEFAULT NULL,
  `fstatus` tinyint(1) DEFAULT 1,
  `fcreatedat` datetime DEFAULT current_timestamp(),
  `fupdatedat` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `faculties` */

insert  into `faculties`(`fid`,`fusername`,`femailid`,`fpwd`,`fdepartment`,`fstatus`,`fcreatedat`,`fupdatedat`) values 
(1,'Dileep','dileep@gmail.com','fcea920f7412b5da7be0cf42b8c93759','Cybersecurity',1,'2022-10-04 16:43:32','2022-10-08 05:50:49');

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `questid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdat` datetime DEFAULT current_timestamp(),
  `updatedat` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`questid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `questions` */

insert  into `questions`(`questid`,`question`,`status`,`createdat`,`updatedat`) values 
(1,'Class Standing',1,'2022-10-09 17:18:04','2022-10-09 17:18:04'),
(2,'Assigned readings',1,'2022-10-09 17:18:09','2022-10-09 17:18:09'),
(3,'Supplementary materials (handouts)',1,'2022-10-09 17:18:15','2022-10-09 17:18:15'),
(4,'Assignments',1,'2022-10-09 17:18:20','2022-10-09 17:18:20'),
(5,'Lectures',1,'2022-10-09 17:18:24','2022-10-09 17:18:24'),
(6,'Discussion',1,'2022-10-09 17:18:29','2022-10-09 17:18:29'),
(7,'GROUP WORK',1,'2022-10-09 17:18:34','2022-10-09 17:18:34'),
(8,'Off-campus/site visits',1,'2022-10-09 17:18:39','2022-10-09 17:18:39'),
(9,'Laboratory/clinical WORK',1,'2022-10-09 17:18:44','2022-10-09 17:18:44'),
(10,'USE of ON-line resources',1,'2022-10-09 17:18:48','2022-10-09 17:18:48'),
(11,'Comments',0,'2022-10-09 17:18:54','2022-10-09 17:18:54'),
(12,'Presentation of material',1,'2022-10-09 17:18:58','2022-10-09 17:18:58'),
(13,'Organization of the course',1,'2022-10-09 17:19:03','2022-10-09 17:19:03'),
(14,'USE of class TIME',1,'2022-10-09 17:19:08','2022-10-09 17:19:08'),
(15,'Enthusiasm FOR the SUBJECT matter',1,'2022-10-09 17:19:09','2022-10-09 17:19:09'),
(16,'Ability TO communicate',1,'2022-10-09 17:19:15','2022-10-09 17:19:15'),
(17,'Clarity of expectations',1,'2022-10-09 17:19:20','2022-10-09 17:19:20'),
(18,'Creative instruction',1,'2022-10-09 17:19:26','2022-10-09 17:19:26'),
(19,'Encouragement of class discussion',1,'2022-10-09 17:19:32','2022-10-09 17:19:32'),
(20,'Response TO student questions/comments',1,'2022-10-09 17:19:37','2022-10-09 17:19:37'),
(21,'Respectful treatment of students',1,'2022-10-09 17:19:46','2022-10-09 17:19:46'),
(22,'Availability outside of class',1,'2022-10-09 17:19:48','2022-10-09 17:19:48'),
(23,'Comments',0,'2022-10-09 17:19:57','2022-10-09 17:19:57'),
(24,'Written assignments/Projects',1,'2022-10-09 17:20:11','2022-10-09 17:20:11'),
(25,'Oral presentations',1,'2022-10-09 17:20:13','2022-10-09 17:20:13'),
(26,'Classroom discussion/participation',1,'2022-10-09 17:20:18','2022-10-09 17:20:18'),
(27,'Homework assignments',1,'2022-10-09 17:20:23','2022-10-09 17:20:23'),
(28,'Exams/quizzes',1,'2022-10-09 17:20:31','2022-10-09 17:20:31'),
(29,'Comments',0,'2022-10-09 17:20:39','2022-10-09 17:20:39'),
(30,'Overall quality of the course.',1,'2022-10-09 17:20:46','2022-10-09 17:20:46'),
(31,'Overall performance of the faculty.',1,'2022-10-09 17:20:55','2022-10-09 17:20:55'),
(32,'The quality of your learning experience.',1,'2022-10-09 17:20:57','2022-10-09 17:20:57'),
(33,'Comments',0,'2022-10-09 17:21:05','2022-10-09 17:21:05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
