/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 10.4.17-MariaDB : Database - gannon
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gannon` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `gannon`;

/*Table structure for table `course_survey` */

DROP TABLE IF EXISTS `course_survey`;

CREATE TABLE `course_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT 0,
  `ResponseUniqueId` text DEFAULT NULL,
  `UserIP` text DEFAULT NULL,
  `Path` text DEFAULT NULL,
  `LevelName` text DEFAULT NULL,
  `LevelID` text DEFAULT NULL,
  `CourseCode` varchar(255) DEFAULT NULL,
  `CourseTitle` varchar(255) DEFAULT NULL,
  `UniqueID` text DEFAULT NULL,
  `SurveyStart` text DEFAULT NULL,
  `SurveyEnd` text DEFAULT NULL,
  `InstructorName` text DEFAULT NULL,
  `InstructorUsername` text DEFAULT NULL,
  `InstructorEmail` text DEFAULT NULL,
  `InstructorEnrollments` text DEFAULT NULL,
  `TAEnrollments` text DEFAULT NULL,
  `Enrollments` text DEFAULT NULL,
  `Respondents` text DEFAULT NULL,
  `ResponseRate` text DEFAULT NULL,
  `SubmitDate` text DEFAULT NULL,
  `SubmitDevice` text DEFAULT NULL,
  `question_1` varchar(255) DEFAULT NULL,
  `question_2` varchar(255) DEFAULT NULL,
  `question_3` varchar(255) DEFAULT NULL,
  `question_4` varchar(255) DEFAULT NULL,
  `question_5` varchar(255) DEFAULT NULL,
  `question_6` varchar(255) DEFAULT NULL,
  `question_7` varchar(255) DEFAULT NULL,
  `question_8` varchar(255) DEFAULT NULL,
  `question_9` varchar(255) DEFAULT NULL,
  `question_10` varchar(255) DEFAULT NULL,
  `question_11` text DEFAULT NULL,
  `question_12` varchar(255) DEFAULT NULL,
  `question_13` varchar(255) DEFAULT NULL,
  `question_14` varchar(255) DEFAULT NULL,
  `question_15` varchar(255) DEFAULT NULL,
  `question_16` varchar(255) DEFAULT NULL,
  `question_17` varchar(255) DEFAULT NULL,
  `question_18` varchar(255) DEFAULT NULL,
  `question_19` varchar(255) DEFAULT NULL,
  `question_20` varchar(255) DEFAULT NULL,
  `question_21` varchar(255) DEFAULT NULL,
  `question_22` varchar(255) DEFAULT NULL,
  `question_23` text DEFAULT NULL,
  `question_24` varchar(255) DEFAULT NULL,
  `question_25` varchar(255) DEFAULT NULL,
  `question_26` varchar(255) DEFAULT NULL,
  `question_27` varchar(255) DEFAULT NULL,
  `question_28` varchar(255) DEFAULT NULL,
  `question_29` text DEFAULT NULL,
  `question_30` varchar(255) DEFAULT NULL,
  `question_31` varchar(255) DEFAULT NULL,
  `question_32` varchar(255) DEFAULT NULL,
  `question_33` text DEFAULT NULL,
  `displaystate` tinyint(1) DEFAULT 1,
  `createdat` datetime DEFAULT current_timestamp(),
  `updatedat` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `CourseCode` (`CourseCode`),
  KEY `displaystate` (`displaystate`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `course_survey` */

insert  into `course_survey`(`id`,`user_id`,`ResponseUniqueId`,`UserIP`,`Path`,`LevelName`,`LevelID`,`CourseCode`,`CourseTitle`,`UniqueID`,`SurveyStart`,`SurveyEnd`,`InstructorName`,`InstructorUsername`,`InstructorEmail`,`InstructorEnrollments`,`TAEnrollments`,`Enrollments`,`Respondents`,`ResponseRate`,`SubmitDate`,`SubmitDevice`,`question_1`,`question_2`,`question_3`,`question_4`,`question_5`,`question_6`,`question_7`,`question_8`,`question_9`,`question_10`,`question_11`,`question_12`,`question_13`,`question_14`,`question_15`,`question_16`,`question_17`,`question_18`,`question_19`,`question_20`,`question_21`,`question_22`,`question_23`,`question_24`,`question_25`,`question_26`,`question_27`,`question_28`,`question_29`,`question_30`,`question_31`,`question_32`,`question_33`,`displaystate`,`createdat`,`updatedat`) values 
(1,1,'176992137371627772515','174.104.34.27','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21102','21SP Fund Phys 1 Lab 02','21SPPHYS21102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','14','6','42.86','4/23/2021 8:15:25 AM','Desktop Browser','2','5','5','5','5','5','5','5','5','5','','5','5','5','5','5','5','5','5','5','5','5','','5','5','5','5','5','','5','5','5','',1,'2022-10-11 23:16:31','2022-10-11 23:16:31'),
(2,1,'1770021274426750114533','206.180.217.21','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21102','21SP Fund Phys 1 Lab 02','21SPPHYS21102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','14','6','42.86','4/30/2021 12:33:45 PM','Desktop Browser','2','0','0','5','5','4','5','0','5','4','','5','5','5','5','5','5','5','5','5','5','5','','5','5','4','4','0','','5','5','5','',1,'2022-10-11 23:16:31','2022-10-11 23:16:31'),
(3,1,'177006207441597894338','206.180.220.81','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21102','21SP Fund Phys 1 Lab 02','21SPPHYS21102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','14','6','42.86','4/30/2021 10:38:43 AM','Desktop Browser','2','0','4','0','4','5','5','0','5','5','','5','5','5','4','5','4','4','5','5','5','4','','5','5','5','0','0','','5','5','4','',1,'2022-10-11 23:16:31','2022-10-11 23:16:31'),
(4,1,'19293016732337401664','206.180.212.115','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21102','21SP Fund Phys 1 Lab 02','21SPPHYS21102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','14','6','42.86','4/18/2021 5:04:06 PM','Desktop Browser','1','5','5','5','5','5','5','5','5','5','','5','5','5','5','5','5','5','5','5','5','5','','0','5','5','5','5','','5','5','5','',1,'2022-10-11 23:16:31','2022-10-11 23:16:31'),
(5,1,'1929305674066065184230','206.180.215.176','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21102','21SP Fund Phys 1 Lab 02','21SPPHYS21102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','14','6','42.86','4/26/2021 7:30:42 PM','Desktop Browser','1','0','0','4','5','0','4','0','4','0','','5','5','4','4','5','5','3','3','5','5','5','','3','4','3','0','0','','4','5','5','',1,'2022-10-11 23:16:31','2022-10-11 23:16:31'),
(6,1,'1929456073500185191553','206.180.221.73','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21102','21SP Fund Phys 1 Lab 02','21SPPHYS21102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','14','6','42.86','4/20/2021 8:53:15 PM','Desktop Browser','1','0','0','5','0','5','5','0','5','4','','5','5','5','5','5','5','5','5','5','5','5','','5','3','4','0','0','','5','5','5','',1,'2022-10-11 23:16:31','2022-10-11 23:16:31'),
(7,1,'1929402078932956235026','206.180.215.149','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/5/2021 12:26:50 AM','Desktop Browser','2','0','0','5','5','0','5','0','0','0','','5','5','5','5','5','5','5','4','5','5','5','','5','5','0','5','5','','5','5','5','',1,'2022-10-12 06:28:45','2022-10-12 06:28:45'),
(8,1,'192934887944630613442','206.180.212.14','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/8/2021 2:42:04 PM','Desktop Browser','2','0','5','5','5','5','5','5','0','5','','5','5','5','5','5','5','5','5','5','5','5','','5','5','5','5','5','','5','5','5','',1,'2022-10-12 06:28:45','2022-10-12 06:28:45'),
(9,1,'1929352579714371173617','206.180.218.162','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/10/2021 6:17:36 PM','Desktop Browser','2','5','5','5','5','5','5','0','0','5','Even though I do not really like Physics, this class made a lot more sense than Physics 1, and it was a lot more enjoyable as well. He made the course very achievable for different levels to grasp the information.','5','5','5','5','5','5','5','5','5','5','0','Definitely one of the best professors I have had. He made the course interesting when I did not even want to be there.','5','0','5','5','5','','5','5','5','',1,'2022-10-12 06:28:45','2022-10-12 06:28:45'),
(10,1,'1929402078932956235026','206.180.215.149','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/5/2021 12:26:50 AM','Desktop Browser','2','0','0','5','5','0','5','0','0','0','','5','5','5','5','5','5','5','4','5','5','5','','5','5','0','5','5','','5','5','5','',1,'2022-10-12 06:31:51','2022-10-12 06:31:51'),
(11,1,'192934887944630613442','206.180.212.14','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/8/2021 2:42:04 PM','Desktop Browser','2','0','5','5','5','5','5','5','0','5','','5','5','5','5','5','5','5','5','5','5','5','','5','5','5','5','5','','5','5','5','',1,'2022-10-12 06:31:51','2022-10-12 06:31:51'),
(12,1,'1929352579714371173617','206.180.218.162','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/10/2021 6:17:36 PM','Desktop Browser','2','5','5','5','5','5','5','0','0','5','Even though I do not really like Physics, this class made a lot more sense than Physics 1, and it was a lot more enjoyable as well. He made the course very achievable for different levels to grasp the information.','5','5','5','5','5','5','5','5','5','5','0','Definitely one of the best professors I have had. He made the course interesting when I did not even want to be there.','5','0','5','5','5','','5','5','5','',1,'2022-10-12 06:31:52','2022-10-12 06:31:52'),
(13,1,'1769812274175408153035','206.180.217.81','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/27/2021 4:35:30 PM','Desktop Browser','2','0','5','5','5','5','5','0','0','0','','5','5','5','5','5','5','5','5','5','5','5','','0','0','5','5','5','','5','5','5','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(14,1,'1769922273492265182511','206.180.217.240','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/20/2021 7:11:25 PM','Desktop Browser','2','0','5','5','5','5','5','0','0','0','','5','5','5','5','4','5','5','5','5','5','5','','0','0','5','5','5','','5','5','5','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(15,1,'1769930474198810205235','172.58.121.114','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/27/2021 9:35:52 PM','Desktop Browser','3','5','5','5','5','4','4','0','0','4','','5','4','5','5','5','5','5','5','5','4','4','','4','5','4','5','4','','4','4','4','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(16,1,'1770014474340199103819','206.180.221.226','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/29/2021 11:19:38 AM','Desktop Browser','2','0','5','4','5','4','5','0','0','0','Incorporating more handout practice problems would be better than completing mechanics assignments online. This would create more discussion and clarity in class on previous concepts and allow students to spend more time studying the practice problems.','5','4','5','5','4','4','4','4','4','4','4','Dr. Conklin should try to incorporate class group work during his lectures on practice problems after demonstrating how to solve them first. Then go over them with the class, because doing the practice problems as students is more effective to get an understanding then trying to understand from just a demonstration.','0','0','4','4','4','Homework assignments should reflect the concepts that are gonna be on the test. This includes multiple choice questions and concepts of word problems done in class, and would be more effectively understood if done on worksheet paper that can be turned in on blackboard and reviewed in class with class discussion.','3','4','4','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(17,1,'177001237443273812743','206.180.215.242','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/30/2021 1:43:07 PM','Desktop Browser','2','0','3','4','4','5','5','0','5','4','Professor Conklin at times at some boring days during class but that comes with every classroom. Unlike other professors I liked how he would bring in small things so during the lecture he had something fun to show us in class to keep us engaged. I personally understood the material a lot better when I can see an actual example infront of me showing how it works then working that problem out on paper.','4','5','4','4','4','4','4','3','4','5','5','Overall I feel Professor Conklin did a wonderful job, however I felt that the kahoots felt quite redundant very quickly into the semester, and sometimes we went over in class and didnt have enough time to do the recitation unless you stayed after which i didnt like.','0','0','4','5','4','the mastering physics was a good tool to use to get extra help. If I could give one suggestion it would be to give a more structured form of practice problems, for instance, what if you made a simple packet that had hand selected problems from you and instead of putting them just in your powerpoint to copy down, you put them all in a booklet and have students buy the book for like 10 dollars in the bookstore. That way every problem we will ever work on in class will be in one location with the questions typed nicely above so all the information is right there for us.','3','4','3','I did enjoy this class but I felt it went to fast at some points and I had a hard time catching up after that happened.',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(18,1,'1770147873809764221822','70.62.26.178','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/23/2021 11:22:18 PM','Desktop Browser','3','0','5','3','5','3','4','3','0','5','Took this class wanting to leant more about the universe. It brought light to many things. I recommend doing the recitations and coming to every class. Get in a group that is willing to learn.','5','5','5','5','5','5','5','5','5','5','5','','5','0','5','5','5','','4','4','4','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(19,1,'192937597412267684927','64.83.145.248','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/27/2021 9:27:49 AM','Desktop Browser','0','4','4','4','4','4','4','0','0','4','','4','4','4','4','4','4','4','4','4','4','4','','0','0','4','4','4','','3','5','4','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(20,1,'1929406574432502124839','184.56.65.190','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/30/2021 1:39:48 PM','Desktop Browser','1','4','4','4','3','3','5','0','0','2','','5','4','4','5','5','5','5','4','5','5','0','','4','4','4','5','3','','3','4','3','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(21,1,'192940927364513612441','206.180.220.184','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/22/2021 1:01:44 PM','Desktop Browser','1','0','0','5','5','5','5','0','0','5','','5','5','5','5','5','5','4','4','5','5','5','','0','0','4','5','5','','4','4','4','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(22,1,'1929464373260420235022','24.165.146.149','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/19/2021 12:22:50 AM','iOS Browser','1','4','4','4','5','5','4','0','0','0','','3','5','5','5','5','5','4','4','5','5','5','','0','0','3','5','4','In need of more clarity on what exactly to study for mid terms and finals.','4','5','2','',1,'2022-10-12 06:32:28','2022-10-12 06:32:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `faculties` */

insert  into `faculties`(`fid`,`fusername`,`femailid`,`fpwd`,`fdepartment`,`fstatus`,`fcreatedat`,`fupdatedat`) values 
(1,'Dileep','dileep@gmail.com','e10adc3949ba59abbe56e057f20f883e','Cybersecurity',1,'2022-10-04 16:43:32','2022-10-16 12:36:22'),
(4,'Dileep','dileepkumarkonda@gmail.com','e10adc3949ba59abbe56e057f20f883e','English',1,'2022-10-09 22:35:29','2022-10-09 22:35:29');

/*Table structure for table `faculty_courses` */

DROP TABLE IF EXISTS `faculty_courses`;

CREATE TABLE `faculty_courses` (
  `fcid` int(11) NOT NULL AUTO_INCREMENT,
  `fuserid` int(11) DEFAULT 0,
  `coursecode` varchar(200) DEFAULT NULL,
  `acdemicyear` varchar(80) DEFAULT NULL,
  `acdemic2year` varchar(25) DEFAULT NULL,
  `semester` varchar(80) DEFAULT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdat` datetime DEFAULT current_timestamp(),
  `updatedat` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`fcid`),
  KEY `fuserid` (`fuserid`),
  KEY `coursecode` (`coursecode`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `faculty_courses` */

insert  into `faculty_courses`(`fcid`,`fuserid`,`coursecode`,`acdemicyear`,`acdemic2year`,`semester`,`subject`,`status`,`createdat`,`updatedat`) values 
(1,1,'21SPPHYS21102','2021','21','SP','PHYS21102',1,'2022-10-11 23:16:31','2022-10-11 23:16:31'),
(2,1,'21FAPHYS21299','2021','21','FA','PHYS21299',1,'2022-10-12 06:28:45','2022-10-12 06:28:45'),
(3,1,'22SPPHYS10102','2022','22','SP','PHYS10102',1,'2022-10-12 06:32:28','2022-10-12 06:32:28'),
(4,1,'16SPPHYS21102','2016','16','SP','PHYS21102',1,'2022-10-16 12:56:13','2022-10-16 12:56:13'),
(5,1,'16FAPHYS21299','2016','16','FA','PHYS21299',1,'2022-10-16 12:56:15','2022-10-16 12:56:15'),
(6,1,'17SPPHYS21102','2017','17','SP','PHYS21102',1,'2022-10-16 12:57:11','2022-10-16 12:57:11'),
(7,1,'17FAPHYS21299','2017','17','FA','PHYS21299',1,'2022-10-16 12:57:14','2022-10-16 12:57:14'),
(8,1,'18SPPHYS21102','2018','18','SP','PHYS21102',1,'2022-10-16 12:58:05','2022-10-16 12:58:05'),
(9,1,'18FAPHYS21299','2018','18','FA','PHYS21299',1,'2022-10-16 12:58:09','2022-10-16 12:58:09'),
(10,1,'19SPPHYS21102','2019','19','SP','PHYS21102',1,'2022-10-16 12:58:25','2022-10-16 12:58:25'),
(11,1,'19FAPHYS21299','2019','19','FA','PHYS21299',1,'2022-10-16 12:58:30','2022-10-16 12:58:30'),
(12,1,'20SPPHYS21102','2020','20','SP','PHYS21102',1,'2022-10-16 12:59:25','2022-10-16 12:59:25'),
(13,1,'20FAPHYS21299','2020','20','FA','PHYS21299',1,'2022-10-16 12:59:27','2022-10-16 12:59:27'),
(14,1,'16FAPHYS21298','2016','16','FA','PHYS21298',1,'2022-10-16 17:21:36','2022-10-16 17:21:36'),
(15,1,'19SPPHYS21103','2019','19','SP','PHYS21103',1,'2022-10-16 17:22:06','2022-10-16 17:22:06');

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `questid` int(11) NOT NULL AUTO_INCREMENT,
  `quest_title` varchar(50) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdat` datetime DEFAULT current_timestamp(),
  `updatedat` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`questid`),
  KEY `quest_title` (`quest_title`,`question`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `questions` */

insert  into `questions`(`questid`,`quest_title`,`question`,`status`,`createdat`,`updatedat`) values 
(1,'question_1','Class Standing',1,'2022-10-09 17:18:04','2022-10-09 17:18:04'),
(2,'question_2','Assigned readings',1,'2022-10-09 17:18:09','2022-10-09 17:18:09'),
(3,'question_3','Supplementary materials (handouts)',1,'2022-10-09 17:18:15','2022-10-09 17:18:15'),
(4,'question_4','Assignments',1,'2022-10-09 17:18:20','2022-10-09 17:18:20'),
(5,'question_5','Lectures',1,'2022-10-09 17:18:24','2022-10-09 17:18:24'),
(6,'question_6','Discussion',1,'2022-10-09 17:18:29','2022-10-09 17:18:29'),
(7,'question_7','GROUP WORK',1,'2022-10-09 17:18:34','2022-10-09 17:18:34'),
(8,'question_8','Off-campus/site visits',1,'2022-10-09 17:18:39','2022-10-09 17:18:39'),
(9,'question_9','Laboratory/clinical WORK',1,'2022-10-09 17:18:44','2022-10-09 17:18:44'),
(10,'question_10','USE of ON-line resources',1,'2022-10-09 17:18:48','2022-10-09 17:18:48'),
(11,'question_11','Comments',0,'2022-10-09 17:18:54','2022-10-09 17:18:54'),
(12,'question_12','Presentation of material',1,'2022-10-09 17:18:58','2022-10-09 17:18:58'),
(13,'question_13','Organization of the course',1,'2022-10-09 17:19:03','2022-10-09 17:19:03'),
(14,'question_14','USE of class TIME',1,'2022-10-09 17:19:08','2022-10-09 17:19:08'),
(15,'question_15','Enthusiasm FOR the SUBJECT matter',1,'2022-10-09 17:19:09','2022-10-09 17:19:09'),
(16,'question_16','Ability TO communicate',1,'2022-10-09 17:19:15','2022-10-09 17:19:15'),
(17,'question_17','Clarity of expectations',1,'2022-10-09 17:19:20','2022-10-09 17:19:20'),
(18,'question_18','Creative instruction',1,'2022-10-09 17:19:26','2022-10-09 17:19:26'),
(19,'question_19','Encouragement of class discussion',1,'2022-10-09 17:19:32','2022-10-09 17:19:32'),
(20,'question_20','Response TO student questions/comments',1,'2022-10-09 17:19:37','2022-10-09 17:19:37'),
(21,'question_21','Respectful treatment of students',1,'2022-10-09 17:19:46','2022-10-09 17:19:46'),
(22,'question_22','Availability outside of class',1,'2022-10-09 17:19:48','2022-10-09 17:19:48'),
(23,'question_23','Comments',0,'2022-10-09 17:19:57','2022-10-09 17:19:57'),
(24,'question_24','Written assignments/Projects',1,'2022-10-09 17:20:11','2022-10-09 17:20:11'),
(25,'question_25','Oral presentations',1,'2022-10-09 17:20:13','2022-10-09 17:20:13'),
(26,'question_26','Classroom discussion/participation',1,'2022-10-09 17:20:18','2022-10-09 17:20:18'),
(27,'question_27','Homework assignments',1,'2022-10-09 17:20:23','2022-10-09 17:20:23'),
(28,'question_28','Exams/quizzes',1,'2022-10-09 17:20:31','2022-10-09 17:20:31'),
(29,'question_29','Comments',0,'2022-10-09 17:20:39','2022-10-09 17:20:39'),
(30,'question_30','Overall quality of the course.',1,'2022-10-09 17:20:46','2022-10-09 17:20:46'),
(31,'question_31','Overall performance of the faculty.',1,'2022-10-09 17:20:55','2022-10-09 17:20:55'),
(32,'question_32','The quality of your learning experience.',1,'2022-10-09 17:20:57','2022-10-09 17:20:57'),
(33,'question_33','Comments',0,'2022-10-09 17:21:05','2022-10-09 17:21:05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
