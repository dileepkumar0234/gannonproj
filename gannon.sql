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
  `user_id` int(11) DEFAULT NULL,
  `ResponseUniqueId` text DEFAULT NULL,
  `UserIP` text DEFAULT NULL,
  `Path` text DEFAULT NULL,
  `LevelName` text DEFAULT NULL,
  `LevelID` text DEFAULT NULL,
  `CourseCode` varchar(255) DEFAULT NULL,
  `CourseTitle` text DEFAULT NULL,
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
  `question_1` text DEFAULT NULL,
  `question_2` text DEFAULT NULL,
  `question_3` text DEFAULT NULL,
  `question_4` text DEFAULT NULL,
  `question_5` text DEFAULT NULL,
  `question_6` text DEFAULT NULL,
  `question_7` text DEFAULT NULL,
  `question_8` text DEFAULT NULL,
  `question_9` text DEFAULT NULL,
  `question_10` text DEFAULT NULL,
  `question_11` text DEFAULT NULL,
  `question_12` text DEFAULT NULL,
  `question_13` text DEFAULT NULL,
  `question_14` text DEFAULT NULL,
  `question_15` text DEFAULT NULL,
  `question_16` text DEFAULT NULL,
  `question_17` text DEFAULT NULL,
  `question_18` text DEFAULT NULL,
  `question_19` text DEFAULT NULL,
  `question_20` text DEFAULT NULL,
  `question_21` text DEFAULT NULL,
  `question_22` text DEFAULT NULL,
  `question_23` text DEFAULT NULL,
  `question_24` text DEFAULT NULL,
  `question_25` text DEFAULT NULL,
  `question_26` text DEFAULT NULL,
  `question_27` text DEFAULT NULL,
  `question_28` text DEFAULT NULL,
  `question_29` text DEFAULT NULL,
  `question_30` text DEFAULT NULL,
  `question_31` text DEFAULT NULL,
  `question_32` text DEFAULT NULL,
  `question_33` text DEFAULT NULL,
  `displaystate` tinyint(1) DEFAULT 1,
  `createdat` datetime DEFAULT current_timestamp(),
  `updatedat` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `CourseCode` (`CourseCode`),
  KEY `displaystate` (`displaystate`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

/*Data for the table `course_survey` */

insert  into `course_survey`(`id`,`user_id`,`ResponseUniqueId`,`UserIP`,`Path`,`LevelName`,`LevelID`,`CourseCode`,`CourseTitle`,`UniqueID`,`SurveyStart`,`SurveyEnd`,`InstructorName`,`InstructorUsername`,`InstructorEmail`,`InstructorEnrollments`,`TAEnrollments`,`Enrollments`,`Respondents`,`ResponseRate`,`SubmitDate`,`SubmitDevice`,`question_1`,`question_2`,`question_3`,`question_4`,`question_5`,`question_6`,`question_7`,`question_8`,`question_9`,`question_10`,`question_11`,`question_12`,`question_13`,`question_14`,`question_15`,`question_16`,`question_17`,`question_18`,`question_19`,`question_20`,`question_21`,`question_22`,`question_23`,`question_24`,`question_25`,`question_26`,`question_27`,`question_28`,`question_29`,`question_30`,`question_31`,`question_32`,`question_33`,`displaystate`,`createdat`,`updatedat`) values 
(1,4,'1769846178954382115541','76.188.89.100','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/5/2021 12:41:55 PM','Desktop Browser','3','0','5','4','4','4','5','0','0','3','','4','4','4','5','5','4','4','4','5','5','5','','5','0','5','5','5','','4','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(2,4,'1769797278739986172250','206.180.221.98','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/2/2021 6:50:22 PM','Desktop Browser','3','0','0','2','3','3','4','0','0','3','','3','3','3','5','4','3','4','4','4','5','3','','3','0','3','3','2','The exams were very hard, we were given chances to correct them, however we moved through the content so fast we were unable to really soak in all the concepts and having a cumulative exam is not a good choice for us as a class.','3','4','2','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(3,4,'1769843479697303144722','206.180.220.248','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/10/2021 3:22:47 PM','Desktop Browser','2','0','4','4','4','4','5','0','0','4','','4','4','3','5','4','3','4','4','5','5','5','','0','0','4','3','2','Exams were fair. Would have preferred no review days and more exams to better split up the material. I think this would allow students to have a better focus on what is on each exam.','4','4','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(4,4,'1769829979328185155347','173.90.212.34','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/7/2021 4:47:53 PM','Desktop Browser','2','0','4','4','4','4','5','0','0','4','Effective instruction but a little fast paced.','5','5','5','5','5','4','5','5','5','5','0','Overall great professor.','0','0','4','4','4','Good structure to class, but can be a bit much sometimes.','5','5','4','N/A',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(5,4,'176994047965928395116','206.180.220.53','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/10/2021 10:16:51 AM','Desktop Browser','3','0','5','5','4','3','5','0','0','0','','5','5','5','5','5','5','5','5','5','5','5','','0','0','0','5','5','','4','5','4','I think making participation part of the grade, more people will talk in class and interact more. I also think that participation in class helps many people understand more because they are talking about it.',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(6,4,'176987777923626923531','206.180.219.231','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/7/2021 12:31:05 AM','Desktop Browser','3','0','0','3','4','0','3','0','0','0','','5','5','5','5','5','5','5','0','5','5','5','','0','0','4','3','1','','2','4','1','Very good professor. I just feel like this course goes too fast especially for those students who were not  able to take physics in high school. I also feel the the exams did not successful reflect the material that was being covered in class. After doing in class assignments and homework I felt like I understood the material but then when I would do a practice exam or would take the actaul exam I felt like I knew nothing. I also think it would be beneficial if there were more quizzes in this course so the material could be broken up into smaller chapters. I think it would akso be useful to consider taking a higher percentage of the recitation and homework grades or having more graded assignments for those students who do well on the homework and on the recitations but struggle when taking the exams.',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(7,4,'1770036379703698151423','206.180.214.60','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/10/2021 4:23:14 PM','Desktop Browser','3','0','0','2','1','0','2','0','0','0','The recitations did not help at all.  It felt like no one knew what they were doing so we just sat around waiting for the professor to be done with another group to finally help us.   Had to stay even after class was over because we needed help and did not have enough time to complete the problems.','3','4','4','5','5','5','5','0','5','5','5','It felt like class time was rushed.  Planned to teach too much in the 55 minute period so in the last 15-20 minutes everything would be rushed and we had no time to comprehend what was on the board.','0','0','0','4','2','The questions on the exams did not feel like they dealt with any of the problems we did in class.','2','4','2','For someone who has no background on physics, the class felt extremely hard.  It felt rushed and the recitations felt useless.  Would rather be learning in class everyday compared to two days for lecture and one day for recitation.  It would have even been better if recitations were assigned for homework so we could have 3 days of lecture a week instead.',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(8,4,'1770146178889894104932','173.90.215.215','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/4/2021 11:32:49 AM','Desktop Browser','3','0','0','4','4','2','5','0','0','4','Homework and especially recitations were helpful.','4','4','3','5','4','4','5','2','4','5','5','I think Dr. Conklin needs to make people participate more in class. There is a lot of awkward silence and no one willing to answer questions.','4','0','2','5','4','One or two more exams during the semester would be ideal so there is less material on each one and more wiggle room for your final grade if you do not do well on one exam.','4','4','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(9,4,'1770081979684224124531','206.180.213.139','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/10/2021 1:31:45 PM','Desktop Browser','3','0','0','5','5','5','5','0','0','5','','5','5','5','5','5','5','5','5','5','5','5','','0','0','5','5','3','','4','5','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(10,4,'1770200179380577234444','72.23.164.156','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/8/2021 12:44:44 AM','Android Browser','2','0','5','5','5','5','5','0','0','5','','5','5','5','5','5','5','5','5','5','5','0','','0','0','5','5','5','','5','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(11,4,'1916681379713894174111','174.203.98.90','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/10/2021 6:11:41 PM','Desktop Browser','2','5','5','5','5','5','5','0','0','0','The recesitations were the best','5','5','5','5','5','5','5','5','5','5','5','Was excited to teach. Used real life examples to help understanding and was alwasy available out of class','0','0','5','5','5','The hw and group recesitations were very helpful in preparing for tests','5','5','5','Was a great semester in physics. Would want to have him as a professor again becuase ofhow well he taught the material and ran the course.',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(12,4,'19166553792045581984','76.188.88.226','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/6/2021 8:04:08 PM','Desktop Browser','3','5','0','5','5','5','5','0','0','5','','5','5','5','5','5','5','5','5','5','5','5','','5','0','5','5','5','','5','5','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(13,4,'1929296979183587164254','206.180.218.26','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','12/6/2021 5:54:42 PM','Desktop Browser','2','0','4','4','4','0','0','0','0','5','','5','5','5','5','5','5','5','5','5','5','5','','4','0','4','4','4','','4','5','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(14,4,'239408717797575472948','174.203.106.185','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS10503','21FA College Physics 1 03','21FAPHYS10503','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','34','15','44.12','11/29/2021 8:48:29 AM','Desktop Browser','2','5','5','5','4','5','5','5','0','5','','5','5','5','5','5','5','5','5','5','5','5','','5','0','5','5','5','','5','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(15,4,'1929402078932956235026','206.180.215.149','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/5/2021 12:26:50 AM','Desktop Browser','2','0','0','5','5','0','5','0','0','0','','5','5','5','5','5','5','5','4','5','5','5','','5','5','0','5','5','','5','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(16,4,'192934887944630613442','206.180.212.14','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/8/2021 2:42:04 PM','Desktop Browser','2','0','5','5','5','5','5','5','0','5','','5','5','5','5','5','5','5','5','5','5','5','','5','5','5','5','5','','5','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(17,4,'1929352579714371173617','206.180.218.162','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21FAPHYS21299','21FA Honors-Fnd Phys 2:Fd/Thrm(SL) 99','21FAPHYS21299','11/26/2021 11:59:00 PM','12/10/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','9','5','55.56','12/10/2021 6:17:36 PM','Desktop Browser','2','5','5','5','5','5','5','0','0','5','Even though I do not really like Physics, this class made a lot more sense than Physics 1, and it was a lot more enjoyable as well. He made the course very achievable for different levels to grasp the information.','5','5','5','5','5','5','5','5','5','5','0','Definitely one of the best professors I have had. He made the course interesting when I did not even want to be there.','5','0','5','5','5','','5','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(18,4,'1769812274175408153035','206.180.217.81','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/27/2021 4:35:30 PM','Desktop Browser','2','0','5','5','5','5','5','0','0','0','','5','5','5','5','5','5','5','5','5','5','5','','0','0','5','5','5','','5','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(19,4,'1769922273492265182511','206.180.217.240','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/20/2021 7:11:25 PM','Desktop Browser','2','0','5','5','5','5','5','0','0','0','','5','5','5','5','4','5','5','5','5','5','5','','0','0','5','5','5','','5','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(20,4,'1769930474198810205235','172.58.121.114','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/27/2021 9:35:52 PM','Desktop Browser','3','5','5','5','5','4','4','0','0','4','','5','4','5','5','5','5','5','5','5','4','4','','4','5','4','5','4','','4','4','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(21,4,'1770014474340199103819','206.180.221.226','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/29/2021 11:19:38 AM','Desktop Browser','2','0','5','4','5','4','5','0','0','0','Incorporating more handout practice problems would be better than completing mechanics assignments online. This would create more discussion and clarity in class on previous concepts and allow students to spend more time studying the practice problems.','5','4','5','5','4','4','4','4','4','4','4','Dr. Conklin should try to incorporate class group work during his lectures on practice problems after demonstrating how to solve them first. Then go over them with the class, because doing the practice problems as students is more effective to get an understanding then trying to understand from just a demonstration.','0','0','4','4','4','Homework assignments should reflect the concepts that are gonna be on the test. This includes multiple choice questions and concepts of word problems done in class, and would be more effectively understood if done on worksheet paper that can be turned in on blackboard and reviewed in class with class discussion.','3','4','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(22,4,'177001237443273812743','206.180.215.242','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/30/2021 1:43:07 PM','Desktop Browser','2','0','3','4','4','5','5','0','5','4','Professor Conklin at times at some boring days during class but that comes with every classroom. Unlike other professors I liked how he would bring in small things so during the lecture he had something fun to show us in class to keep us engaged. I personally understood the material a lot better when I can see an actual example infront of me showing how it works then working that problem out on paper.','4','5','4','4','4','4','4','3','4','5','5','Overall I feel Professor Conklin did a wonderful job, however I felt that the kahoots felt quite redundant very quickly into the semester, and sometimes we went over in class and didnt have enough time to do the recitation unless you stayed after which i didnt like.','0','0','4','5','4','the mastering physics was a good tool to use to get extra help. If I could give one suggestion it would be to give a more structured form of practice problems, for instance, what if you made a simple packet that had hand selected problems from you and instead of putting them just in your powerpoint to copy down, you put them all in a booklet and have students buy the book for like 10 dollars in the bookstore. That way every problem we will ever work on in class will be in one location with the questions typed nicely above so all the information is right there for us.','3','4','3','I did enjoy this class but I felt it went to fast at some points and I had a hard time catching up after that happened.',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(23,4,'1770147873809764221822','70.62.26.178','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/23/2021 11:22:18 PM','Desktop Browser','3','0','5','3','5','3','4','3','0','5','Took this class wanting to leant more about the universe. It brought light to many things. I recommend doing the recitations and coming to every class. Get in a group that is willing to learn.','5','5','5','5','5','5','5','5','5','5','5','','5','0','5','5','5','','4','4','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(24,4,'192937597412267684927','64.83.145.248','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/27/2021 9:27:49 AM','Desktop Browser','0','4','4','4','4','4','4','0','0','4','','4','4','4','4','4','4','4','4','4','4','4','','0','0','4','4','4','','3','5','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(25,4,'1929406574432502124839','184.56.65.190','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/30/2021 1:39:48 PM','Desktop Browser','1','4','4','4','3','3','5','0','0','2','','5','4','4','5','5','5','5','4','5','5','0','','4','4','4','5','3','','3','4','3','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(26,4,'192940927364513612441','206.180.220.184','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/22/2021 1:01:44 PM','Desktop Browser','1','0','0','5','5','5','5','0','0','5','','5','5','5','5','5','5','4','4','5','5','5','','0','0','4','5','5','','4','4','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(27,4,'1929464373260420235022','24.165.146.149','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS10102','21SP Concepts in Physics 02','21SPPHYS10102','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','18','13','72.22','4/19/2021 12:22:50 AM','iOS Browser','1','4','4','4','5','5','4','0','0','0','','3','5','5','5','5','5','4','4','5','5','5','','0','0','3','5','4','In need of more clarity on what exactly to study for mid terms and finals.','4','5','2','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(28,4,'176985647345957612557','206.180.219.202','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21101','21SP Fund Phys 1 Lab 01','21SPPHYS21101','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','8','7','87.5','4/20/2021 1:57:05 PM','Desktop Browser','2','0','0','0','5','5','5','0','5','5','Interactive, hands-on experience that makes applying the principles of physics in ways that are new and fun. I enjoy this class very much and am able to excel while also learning the applied fundamentals of Physics in the process.','5','5','5','5','5','5','5','5','5','5','5','Conklin was an amazing lab professor. He effectively presented the material in ways that were easy to understand and did not waste time during lectures. He is very reliable when I need help on the experiments and I can tell he cares about my success in this class.','0','0','5','0','0','None','5','5','5','No additional comments. This course was amazing',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(29,4,'1769877474436730134031','206.180.218.228','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21101','21SP Fund Phys 1 Lab 01','21SPPHYS21101','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','8','7','87.5','4/30/2021 2:31:40 PM','Desktop Browser','2','0','4','4','4','0','5','0','5','0','','5','5','5','4','4','4','4','5','5','5','3','','4','3','4','4','0','','4','5','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(30,4,'176999917412965595424','71.64.114.79','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21101','21SP Fund Phys 1 Lab 01','21SPPHYS21101','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','8','7','87.5','4/27/2021 10:24:54 AM','Desktop Browser','2','0','0','5','0','0','5','0','5','0','','5','5','5','5','5','5','5','5','5','5','5','','0','0','0','0','0','','5','5','5','Seeing the concepts we leaned in class applied to a experiment we do ourselves really helped solidify my understanding.',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(31,4,'177008587347477815207','66.211.209.50','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21101','21SP Fund Phys 1 Lab 01','21SPPHYS21101','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','8','7','87.5','4/20/2021 4:07:20 PM','Desktop Browser','3','5','5','5','5','5','5','5','5','5','','5','5','5','5','5','5','5','5','5','5','5','','5','5','5','5','5','','5','5','5','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(32,4,'177005537422938195933','206.180.217.64','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21101','21SP Fund Phys 1 Lab 01','21SPPHYS21101','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','8','7','87.5','4/28/2021 10:33:59 AM','Desktop Browser','2','3','4','4','4','5','5','1','1','4','','5','5','5','5','5','5','5','5','5','5','4','','5','4','5','3','3','','5','5','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(33,4,'192932037441820310581','206.180.214.214','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21101','21SP Fund Phys 1 Lab 01','21SPPHYS21101','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','8','7','87.5','4/30/2021 11:01:58 AM','Desktop Browser','1','0','0','5','5','5','5','0','5','0','','5','5','5','5','5','5','5','5','5','5','5','','0','5','5','0','0','','4','4','4','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45'),
(34,4,'192937317407723220122','206.180.220.184','GannonUniversity.MCHPS.SCI.Physics','Physics','84210','21SPPHYS21101','21SP Fund Phys 1 Lab 01','21SPPHYS21101','4/16/2021 11:59:00 PM','4/30/2021 11:59:00 PM','Nicholas Conklin','conklin003','conklin003@gannon.edu','1','0','8','7','87.5','4/26/2021 9:22:01 PM','Desktop Browser','1','2','2','2','3','3','4','3','3','2','','3','4','4','3','3','3','3','3','3','4','4','','3','3','4','2','2','','3','3','3','',1,'2022-10-10 08:21:45','2022-10-10 08:21:45');

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
(1,'Dileep','dileep@gmail.com','fcea920f7412b5da7be0cf42b8c93759','Cybersecurity',1,'2022-10-04 16:43:32','2022-10-08 05:50:49'),
(4,'Dileep','dileepkumarkonda@gmail.com','e10adc3949ba59abbe56e057f20f883e','English',1,'2022-10-09 22:35:29','2022-10-09 22:35:29');

/*Table structure for table `faculty_courses` */

DROP TABLE IF EXISTS `faculty_courses`;

CREATE TABLE `faculty_courses` (
  `fcid` int(11) NOT NULL AUTO_INCREMENT,
  `fuserid` int(11) DEFAULT 0,
  `coursecode` varchar(200) DEFAULT NULL,
  `acdemicyear` varchar(80) DEFAULT NULL,
  `semester` varchar(80) DEFAULT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdat` datetime DEFAULT current_timestamp(),
  `updatedat` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`fcid`),
  KEY `fuserid` (`fuserid`),
  KEY `coursecode` (`coursecode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `faculty_courses` */

insert  into `faculty_courses`(`fcid`,`fuserid`,`coursecode`,`acdemicyear`,`semester`,`subject`,`status`,`createdat`,`updatedat`) values 
(1,4,'21FAPHYS10503','2021','FA','PHYS10503',1,'2022-10-10 00:32:40','2022-10-10 00:32:40'),
(2,4,'21FAPHYS21299','2021','FA','PHYS21299',1,'2022-10-10 07:56:40','2022-10-10 07:56:40'),
(3,4,'21SPPHYS10102','2021','SP','PHYS10102',1,'2022-10-10 07:57:40','2022-10-10 07:57:40'),
(4,4,'21SPPHYS21101','2021','SP','PHYS21101',1,'2022-10-10 07:58:17','2022-10-10 07:58:17');

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
(1,NULL,'Class Standing',1,'2022-10-09 17:18:04','2022-10-09 17:18:04'),
(2,NULL,'Assigned readings',1,'2022-10-09 17:18:09','2022-10-09 17:18:09'),
(3,NULL,'Supplementary materials (handouts)',1,'2022-10-09 17:18:15','2022-10-09 17:18:15'),
(4,NULL,'Assignments',1,'2022-10-09 17:18:20','2022-10-09 17:18:20'),
(5,NULL,'Lectures',1,'2022-10-09 17:18:24','2022-10-09 17:18:24'),
(6,NULL,'Discussion',1,'2022-10-09 17:18:29','2022-10-09 17:18:29'),
(7,NULL,'GROUP WORK',1,'2022-10-09 17:18:34','2022-10-09 17:18:34'),
(8,NULL,'Off-campus/site visits',1,'2022-10-09 17:18:39','2022-10-09 17:18:39'),
(9,NULL,'Laboratory/clinical WORK',1,'2022-10-09 17:18:44','2022-10-09 17:18:44'),
(10,NULL,'USE of ON-line resources',1,'2022-10-09 17:18:48','2022-10-09 17:18:48'),
(11,NULL,'Comments',0,'2022-10-09 17:18:54','2022-10-09 17:18:54'),
(12,NULL,'Presentation of material',1,'2022-10-09 17:18:58','2022-10-09 17:18:58'),
(13,NULL,'Organization of the course',1,'2022-10-09 17:19:03','2022-10-09 17:19:03'),
(14,NULL,'USE of class TIME',1,'2022-10-09 17:19:08','2022-10-09 17:19:08'),
(15,NULL,'Enthusiasm FOR the SUBJECT matter',1,'2022-10-09 17:19:09','2022-10-09 17:19:09'),
(16,NULL,'Ability TO communicate',1,'2022-10-09 17:19:15','2022-10-09 17:19:15'),
(17,NULL,'Clarity of expectations',1,'2022-10-09 17:19:20','2022-10-09 17:19:20'),
(18,NULL,'Creative instruction',1,'2022-10-09 17:19:26','2022-10-09 17:19:26'),
(19,NULL,'Encouragement of class discussion',1,'2022-10-09 17:19:32','2022-10-09 17:19:32'),
(20,NULL,'Response TO student questions/comments',1,'2022-10-09 17:19:37','2022-10-09 17:19:37'),
(21,NULL,'Respectful treatment of students',1,'2022-10-09 17:19:46','2022-10-09 17:19:46'),
(22,NULL,'Availability outside of class',1,'2022-10-09 17:19:48','2022-10-09 17:19:48'),
(23,NULL,'Comments',0,'2022-10-09 17:19:57','2022-10-09 17:19:57'),
(24,NULL,'Written assignments/Projects',1,'2022-10-09 17:20:11','2022-10-09 17:20:11'),
(25,NULL,'Oral presentations',1,'2022-10-09 17:20:13','2022-10-09 17:20:13'),
(26,NULL,'Classroom discussion/participation',1,'2022-10-09 17:20:18','2022-10-09 17:20:18'),
(27,NULL,'Homework assignments',1,'2022-10-09 17:20:23','2022-10-09 17:20:23'),
(28,NULL,'Exams/quizzes',1,'2022-10-09 17:20:31','2022-10-09 17:20:31'),
(29,NULL,'Comments',0,'2022-10-09 17:20:39','2022-10-09 17:20:39'),
(30,NULL,'Overall quality of the course.',1,'2022-10-09 17:20:46','2022-10-09 17:20:46'),
(31,NULL,'Overall performance of the faculty.',1,'2022-10-09 17:20:55','2022-10-09 17:20:55'),
(32,NULL,'The quality of your learning experience.',1,'2022-10-09 17:20:57','2022-10-09 17:20:57'),
(33,NULL,'Comments',0,'2022-10-09 17:21:05','2022-10-09 17:21:05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
