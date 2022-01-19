CREATE DATABASE  IF NOT EXISTS `team_project_dajpa327` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `team_project_dajpa327`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: team_project_dajpa327
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumni_jobs_employers`
--

DROP TABLE IF EXISTS `alumni_jobs_employers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumni_jobs_employers` (
  `alumni_id` int unsigned NOT NULL,
  `employers_employer_id` int unsigned NOT NULL,
  `title` varchar(45) NOT NULL,
  `department_section` varchar(45) DEFAULT NULL,
  `graduation_year` int NOT NULL,
  `degree` varchar(45) NOT NULL,
  PRIMARY KEY (`alumni_id`),
  KEY `fk_alumni_jobs_employers_employers1_idx` (`employers_employer_id`),
  CONSTRAINT `fk_alumni_jobs_employers_employers1` FOREIGN KEY (`employers_employer_id`) REFERENCES `employers` (`employer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni_jobs_employers`
--

LOCK TABLES `alumni_jobs_employers` WRITE;
/*!40000 ALTER TABLE `alumni_jobs_employers` DISABLE KEYS */;
INSERT INTO `alumni_jobs_employers` VALUES (1,1,'Technology Analyst','',2019,'BSIS'),(2,2,'Technology Engineer Analyst','',2019,'BSIS'),(3,3,'Associate Solutions Consultant','',2019,'BSIS'),(4,4,'Web Design Engineer/Consultant','',2019,'BSIS'),(5,5,'Configuration Manager','',2019,'BSIS'),(6,6,'Marked Data Analyst','',2019,'BSIS'),(7,7,'Developer Academy Associate','',2019,'BSIS'),(8,8,'Big Data Analyst','',2019,'BSIS'),(9,9,'Vice Chairman','',2019,'BSIS'),(10,10,'GPS Analytics Consultant','',2019,'BSIS'),(11,11,'Cyber Threat Management Staff','',2019,'BSIS'),(12,12,'Cyber Security Consultant','',2019,'BSIS'),(13,13,'Senior Associate UX Designer','',2019,'BSIS'),(14,14,'IT Generalist I','',2019,'BSIS'),(15,15,'Business Analyst','',2019,'BSIS'),(16,16,'UX Researcher','',2019,'BSIS'),(17,17,'Cloud Engineer','',2019,'BSIS'),(18,18,'Enterprise Application Consultant','',2019,'BSIS'),(19,19,'Business Transformation Consultant','',2019,'BSIS'),(20,20,'Systems Engineer','',2019,'BSIS'),(21,21,'Junior Associate - Client Operations','',2019,'BSIS'),(22,22,'Program Manager','',2019,'BSIS'),(23,23,'Support Engineer','',2019,'BSIS'),(24,24,'Software Developer','',2019,'BSIS'),(25,25,'Product Designer','',2019,'BSIS'),(26,26,'Software Engineer','',2019,'BSIS'),(27,27,'Data Analyst','',2019,'BSIS'),(28,28,'Software Engineer','',2019,'BSIS'),(29,29,'Personal Trainer','',2019,'BSIS'),(30,30,'Assistant Web Developer','',2019,'BSIS'),(31,31,'Executive Administrative Assistant','',2019,'BSIS'),(32,32,'IT Coordinator','',2019,'BSIS'),(33,33,'Project Analyst','',2019,'BSIS'),(34,34,'Social Media Administrator','',2019,'BSIS'),(35,35,'Associate Software Engineer','',2019,'BSIS');
/*!40000 ALTER TABLE `alumni_jobs_employers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career_services`
--

DROP TABLE IF EXISTS `career_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career_services` (
  `career_id` int unsigned NOT NULL,
  `faculty` varchar(45) NOT NULL,
  `seeking` varchar(45) DEFAULT NULL,
  `program` varchar(45) DEFAULT NULL,
  `graduating` varchar(45) DEFAULT NULL,
  `services_provided` varchar(300) NOT NULL,
  `date` date DEFAULT NULL,
  `format` varchar(45) DEFAULT NULL,
  `visit_summary` varchar(300) DEFAULT NULL,
  `updates` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`career_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_services`
--

LOCK TABLES `career_services` WRITE;
/*!40000 ALTER TABLE `career_services` DISABLE KEYS */;
INSERT INTO `career_services` VALUES (1,'KL','Internship','','Fall 2020','Discussed self-promotion strategies for CS Career Fair and how to integrate project info into resume','2020-02-18','f2f','',''),(2,'KL','Internship','infosci','Fall 2020','Resume review, discussed self-promotion strategies for CS Career Fair','2020-02-18','f2f','',''),(3,'KW','Internship','infosci','Spring 2021','Resume review, disucssed taking portfolio to interviews, and a bit about her phone interview','2020-02-25','f2f','',''),(4,'KL','Internship','infosci','Fall 2020','Resume review, getting an internship-to-hire as an international student','2020-03-02','f2f','',''),(5,'KW','Internship','infosci','Spring 2021','resume reveiw, genning an intership in real estate data analysics. Needed coaching on boosting himsefl and his skills','2020-03-03','f2f','',''),(6,'KW','Internship and part time','MIM','Spring 2021','resume reveiw, needed encouragement to come to iSchool career fair and keep searching for internship. struggling with being an international student and finding internship','2020-03-03','f2f','',''),(7,'KW','Full time','HCI','Spring 2020','resume review, needed encouragement to contact internship company from last summer. is nervious about being an international student and not getting a position','2020-03-03','f2f','',''),(8,'KW','Internship','infosci','Fall 2020','resume review, discussed coming to the career fair tomorrow, has lots of expereince but didn\'t think it counted becuase not data science related','2020-03-03','f2f','',''),(9,'KW','Internship and Full time','InfoSci','Fall 2020','resume review, portfolio discussion','2020-03-10','online','Bullet points lacked benefit. Resume was 2 pages. Education was at end and not listed properly. List of skills, showed him how to move those to practical applications in other parts of resume. Gave encouragement experience is a good starting point.',''),(10,'KL','Internship','InfoSci','Spring 2021','resume review, finding an IT internship - recommended that he start with resume improvements (visit Career Center) then touch base with us again to talk about placement strategies','2020-03-24','online','',''),(15,'KL','Internship','InfoSci','','How to search for internships, resume review','2021-01-21','','Discussed how to show skills gained through course projects & personal projects',''),(16,'KL','Internship or FT','InfoSci','Spring 2021','Where do I start?','2021-01-25','','',''),(17,'KL','Field study','MLIS','Fall 2021','Field study coming up - feels unprepared because she did IPP without really focusing on anything. Just general outreach wondering what to do','2021-01-25','','Shared the Field Study website and told them to talk with Morgan. also, start searching jobs for about 30-60 minutes per week just to start getting a sense of what\'s out there. Britt is interested in art librarianship.',''),(19,'KL','Internship','InfoSci','Spring 2022','Where do I start?','2021-02-01','','Gave a list of sites to search for internships in data analysis and business analysis. Encouraged to work on the resume asap and come back when they have some positions they want to apply for if they want more coaching or resume review',''),(21,'KL','Job','InfoSci','Spring 2021','resume review','2021-02-01','','Looking for data science positions (or data analytics). Resume looks good, his search strategy seems good. Gave a few minor resume pointers and suggested that he keep doing what he\'s doing and check back in 2 weeks if it\'s not looking good',''),(23,'KL','Internship','InfoSci','Fall 2021','resume review & strategy','2021-02-08','','',''),(24,'KL','Job','InfoSci','Spring 2020','Getting job','2021-02-08','','',''),(25,'KL','Internship','InfoSci','Spring 2022','Internship','2021-02-11','','',''),(26,'KL','Job','InfoSci','Spring 2021','What do I talk about at the fair? Resume review','2021-02-11','','',''),(27,'KL','job','InfoSci','Spring 2020','Getting job','2021-02-15','','',''),(28,'KL','Internship','InfoSci','Fall 2021','Preparing for the fair, getting a reference letter','2021-02-15','','',''),(29,'KL','Internship','InfoSci','Fall 2021','Preparing for the fair','2021-02-15','','',''),(30,'KL','Job','InfoSci','Spring 2020','Interview prep','2021-02-22','','Has 3 interviews coming up. We did a mock interview, which I recorded and emailed to him',''),(31,'KL','Job','InfoSci','Spring 2021','Job searching & Resume','2021-02-22','','Graduating in May and no job yet. Has been searching for data analytics but doesn\'t really like coding. We talked about other jobs she might be a better fit for. She enjoys using soft',''),(32,'KL','Job','MLIS','Spring 2019','Unsuccessful job search','2021-02-22','','Has applied to 350 jobs and had 40+ interviews, 3 of which resulted in offers for temporary positions. Has a disability and is a strong self advocate. Will add him to the newsletter and keep an eye out for positions: archivist, music librarian, preservation, accessibility & disability',''),(33,'KL','Job','InfoSci','Spring 2020','Job search follow up','2021-02-22','','Found some positions to apply for. also wondering what kinds of other positions he should search for. Advised him to take Focus2. He will do that and keep searching and check in next week',''),(34,'KL','Job','InfoSci','Spring 2021','Resume check','2021-02-25','','Updated after initial feedback, wanted to see if it\'s better',''),(35,'KL','Internship','InfoSci','Fall 2022','','2021-02-28','','',''),(36,'KL','Job','InfoSci','Spring 2020','Job search follow up','2021-02-28','','',''),(37,'KL','Internship','InfoSci','Spring 2022','','2021-02-28','','',''),(38,'KL','Internship','InfoSci','','','2021-02-28','','',''),(39,'KL','Job','InfoSci','Spring 2021','Negotiating','2021-03-04','','Got an offer from Dell and wanted to ask about how to negotiate salary and relocation expenses',''),(40,'KL','Internship','InfoSci','Spring 2022','Resume help','2021-03-08','','',''),(41,'KL','Job','InfoSci','Spring 2020','Job search follow up','2021-03-08','','',''),(42,'KL','Job','HCIM','Spring 2021','Resume feedback','2021-03-11','','',''),(43,'KL','Job','MLIS','21-Dec','Resume & cover letter','2021-03-11','','',''),(44,'KL','Job','MLIS ','Spring 2021','','2021-03-16','appointment','',''),(45,'KL','Job','MLIS','Spring 2021','','2021-03-18','','',''),(46,'KL','Job','MLIS','21-Dec','Work on cover letter & resume for specific position @ BCPL','2021-03-18','appointment','',''),(47,'KL','Job','MLIS','20-Dec','','2021-03-22','','',''),(48,'KL','Course selection/Internship','MLIS','22-May','Wants to be strategic in course selection, also wondering what kinds of internships are available this coming summer','2021-03-22','','',''),(49,'KL','Finding focus','HCIM','22-May','Having trouble finding focus; taking on too many things','2021-03-25','','',''),(50,'KL','Internship','InfoSci','Fall 2022','Updated his resume after last meeting and wants to check','2021-03-25','','',''),(51,'KL','Internship','InfoSci','Spring 2022','Has an interview at Avasent and wants to know how to do a case interview','2021-03-25','','',''),(52,'KL','Job','HCIM','Spring 2021','International student looking for US work. Not getting any interviews, filled out >60 applications','2021-03-29','','',''),(53,'KL','','MLIS','Spring 2022','Wrong link - meant to go to advising','2021-03-29','','',''),(54,'KL','Internship','InfoSci','Spring 2022','Case interview practice','2021-03-29','appointment','',''),(55,'KL','','HCIM','Spring 2022','Wants to show more user research on resume','2021-04-01','','',''),(56,'KL','','InfoSci','Spring 2021','Has a case interview at Beghou, a life sciences consulting company. We scheduled a practice interview for 4/5','2021-04-01','','',''),(57,'KL','','InfoSci','Spring 2022','Reporting back on his case interview with Avascent','2021-04-01','','',''),(58,'KL','job','InfoSci','Spring 2021','Case interview practice','2021-04-05','appointment','',''),(59,'KL','','MLIS','Summer 2022','Wrong link - meant to go to advising; We decided to talk about careers anyway','2021-04-05','','',''),(60,'KL','','MIM','Fall 2021','','2021-04-05','','',''),(61,'KL','Internship','InfoSci','Spring 2022','Resume review - seeking design internship','2021-04-08','','',''),(62,'KL','','InfoSci','Spring 2021','','2021-04-08','','',''),(63,'KL','','MLS','Spring 2012','Career change. ','2021-04-08','','',''),(64,'KL','','InfoSci','Spring 2022','Graduating next spring but has a light courseload next year -- wants to find part time positions that will help his career. Open to different job types; likes tech, interested in cryptocurrency. Suggested that he try to get a summer internship and then try to get hired part-time from that position.','2021-04-12','','',''),(65,'KL','Job','HCIM','Spring 2021','International student, looking for UX Researcher positions. Looking for advice on finding positions, submitting strong applications. We worked on his resume & cover letter strategy and discussed using LinkedIn to find people for informational interviews','2021-04-12','','',''),(66,'KL','Internship','InfoSci','Spring 2022','Looked at early draft design portfolio, talked about internship options. Referred her to accessible Community bc she\'s really interested in accessibility projects','2021-04-12','','',''),(67,'KL','Job','MLS','Spring 2012','Follow-up - resume review, strategy discussion. Recommended she keep an eye on job boards (ALA, Indeed, USAJobs) but also encouraged her to check with staffing agencies','2021-04-12','','',''),(68,'KL','Job','InfoSci','Spring 2022','Has an offer with Amazon that he doesn\'t love and another follow-up interview. Wants to talk through negotiating','2021-04-14','appointment','',''),(69,'KL','Internship','InfoSci','Spring 2022','Question about following up with a professor who didn\'t email back','2021-04-15','','',''),(70,'KL','','InfoSci','Spring 2020','Finally got a job!!','2021-04-19','','',''),(71,'KL','Job','InfoSci','Spring 2021','Wants to work as a graphic designer but not having much luck with applications so far. Looked at her resume and gave some suggestions; talked about places to search other than linkedin','2021-04-19','','UPDATE 6/1/21 - got hired as a graphic designer at american institutes for research',''),(72,'KL','','MLIS','Fall 2023','Working full time in non-library job while in school part time. Wants to leave publishing job to look for library job','2021-04-19','','',''),(73,'KL','Job','MLS','Spring 2001','Applying for digitazation position @ McKeldin and wanted to talk about how to frame his application and experience in the resume & letter. Working on personal projects to become familiar with DSPace','2021-04-22','','',''),(74,'KL','','HCIM','Spring 2022','Shared updated resume. Works FT in non-UX-research position. Looking to change into something in her field that is more PT','2021-04-22','','',''),(75,'KL','Job','InfoSciSG','Spring 2021','interested in 3 areas: business analytics, data analytics, UX/UI design & research. Wants to look at resumes and talk about strategies.','2021-04-26','','',''),(77,'KL','','MLIS','Spring 2021','Wanted to discuss cover letters for academic library positions. Also did CV review and discussed the cloudiness of resume vs CV in the world of academic libraries. Has applied to 30+ positions and no interviews so far.','2021-05-03','','',''),(78,'KL','Job','InfoSci','Spring 2021','Applying to lots of positions and not having much luck. We discussed adding networking and informational interviews to her job searching and applications routine','2021-05-03','','',''),(79,'KL','Job','InfoSci','Spring 2021','Wanted help with cover letter for position at Google','2021-05-04','appointment','',''),(80,'KL','','HiLS','Spring 2021','Looking for archives job. Wants resume review, cover letter review, and interview prep strategy','2021-05-06','','',''),(81,'KL','','InfoSci','Spring 2022','Doing a paper on career services @ UMD','2021-05-06','','',''),(82,'KL','','MIM','Spring 2021','Has an offer from Company 1 but just had a good tech interview with Company 2. Wants advice on how to communicate with Company 2 to ask for an update, since it\'s her preferred company','2021-05-13','','',''),(83,'RPO','Job','InfoSci','Spring 2021','At Shady Grove, applying to 30 different positions, no interviews yet, wants help tailoring and reviewing cover letters for: business analyst, UX designer/researcher, data analyst positions','2021-05-17','','',''),(85,'KL','Job','InfoSci','Spring 2021','Wanted help polishing a cover letter. We found a couple of ways to tease portions of her resume with aspects of the company and job description','2021-05-20','','',''),(86,'KL','','MLIS','Spring 2021','Mock interview for Archives Technician position @ LoC','2021-05-20','appointment','',''),(87,'KL','Internship','InfoSci','Spring 2022','Starting internship search and wanted advice. We reviewed resume and talked about search strategies','2021-06-01','appointment','',''),(88,'KL','','InfoSci','Spring 2022','','2021-06-10','','',''),(89,'KL','','MLIS','Spring 2020','School library alum - back on the job market after covid. Looking in MoCo and HoCo. Wants interview practice. Will email the next time she gets an interview scheduled and we\'ll do a mock interview','2021-06-10','','','');
/*!40000 ALTER TABLE `career_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employer_job_title`
--

DROP TABLE IF EXISTS `employer_job_title`;
/*!50001 DROP VIEW IF EXISTS `employer_job_title`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employer_job_title` AS SELECT 
 1 AS `Employer Name`,
 1 AS `Industry`,
 1 AS `Offers`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employers`
--

DROP TABLE IF EXISTS `employers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employers` (
  `employer_id` int unsigned NOT NULL,
  `employer_name` varchar(45) DEFAULT NULL,
  `sector_industry` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employers`
--

LOCK TABLES `employers` WRITE;
/*!40000 ALTER TABLE `employers` DISABLE KEYS */;
INSERT INTO `employers` VALUES (1,'CBS Interactive','Entertainment'),(2,'Geico','Insurance'),(3,'Ankura Consulting Group','Consulting'),(4,'Ernst & Young','Consulting'),(5,'Rad Campain','Non-Profit/Web Design'),(6,'Apple','Technology'),(7,'Vivet','Digital Services/Software Development'),(8,'Collins Aerospace/Ratheon','Defense'),(9,'Evidera','Consulting'),(10,'U.S. Green Builting Council','Non-profit/Sustainability'),(11,'Celerity','Consulting'),(12,'University of Maryland Libraries','Higher Education'),(13,'Rapid7','Computer & Network Security'),(14,'Northrop Grumman','Defense'),(15,'ManTech','Defense'),(16,'Conagra Brands','Food Manufacturing'),(17,'AlphaSights','Information Services'),(18,'General Dynamics Information Technology','IT & Services'),(19,'US Department of Energy','Federal Government'),(20,'Conagra Brands','Food Manufacturing'),(21,'Maryland State Board of Elections','State Government'),(22,'Medstar Health','Healthcare'),(23,'Xometru','Manufacturing'),(24,'Activision','Video Games'),(25,'Federal Reserve Board','Federal Government / Banking'),(26,'Enterprise Resource Performance, Inc.','Management Consulting'),(27,'Humane Society of the United States','Nonprofit/Animal Welfare'),(28,'RSM','Audit/Tax/Consulting'),(29,'Enoch Pratt Free Library','Public Library'),(30,'Analog Devices Inc.','Semiconductor Manufacturing'),(31,'Xometry','Manufacturing'),(32,'srcLogic','Software/Technical Consulting'),(33,'Raven Software (Subsidiary of Activision)','Video Games'),(34,'Activision Blizzard','Video Games'),(35,'Unifirst','Industrial Uniforms'),(36,'Nestle Purina','Food Manufacturing'),(39,'Library of Congress','Federal Government/Libraries'),(40,'Capital Impact Partners','Nonprofit/Financial Services'),(41,'Enterprise Resrouce Performance, Inc.','Management Consulting'),(42,'Appian','Computing'),(43,'Polaris Industries','Vehicle Manufacturing'),(44,'Kaplan','Education'),(45,'Adobe','Software'),(46,'WiSC Enterprises','IT Contractor: Federal Government'),(47,'Libraries Without Borders','Nonprofit / Information Services'),(48,'Comscore','Media Analytics'),(49,'NASA','Federal Government / Aerospace'),(50,'Reality AI','Software / Instrumentation'),(51,'Vheda Health','Healthcare Technology'),(53,'Helm Services','Consulting / FInance Tech'),(54,'IBM ','Computer Hardware/IT Services'),(55,'IBM ','Computer Hardware/IT Services'),(56,'Capital One','Financial Services'),(57,'ICF','Management Consulting'),(58,'Nestle Purina','Food Manufacturing'),(59,'Rstudio','Software'),(60,'Spectrum','Telecommunications'),(61,'Spectrum','Telecommunications'),(62,'Office of Naval Intelligence','Libraries / Federal Government'),(63,'ICF','Management Consulting'),(64,'Nestle','Food Manufacturing'),(65,'Library of Congress','Libraries / Federal Government'),(66,'LIbrary of Congress','Libraries / Federal Government'),(67,'U.S. Army Corps of Engineers',''),(68,'ALTA IT Services','Insurance'),(69,'General Dynamics Information Technology','IT Consulting'),(70,'CodeAcademy','Technology Education'),(71,'Booz Allen Hamilton','IT Consulting'),(72,'U.S. Department of Transportation','Federal Government'),(73,'FireEye, Inc.','Cybersecurity'),(74,'LIbrary of Congress','Federal Government'),(75,'Amtrak','Transportation'),(76,'Amtrak','Transportation'),(77,'National Comedy Center','Nonprofit / Cultural Institution'),(78,'Wilmerhale Law Firm','Law'),(79,'Prince George\'s Arts & Humanities Council','Arts / Nonprofit'),(80,'U.S. Department of Transportation','Federal Government'),(81,'Library of Congress','Federal Government'),(82,'George Washington University Libraries','Academic Libraries'),(83,'Hungry Harvest','Food Delivery'),(84,'JP Morgan Chase','Finance'),(85,'Alteryx','Software'),(86,'Zoom','Communications Software'),(87,'SoFi','Personal Finance'),(88,'MathWorks','Software'),(89,'Robinhood','Financial Tech'),(90,'Under Armour','Sports Apparel'),(91,'Google','Information Technology'),(92,'Centura Health','Healthcare Services'),(93,'Easterseals Southern California','Nonporfit / Disability Services'),(94,'Anne Arundel County Public School','Education'),(95,'Persado','Software'),(96,'Catalent','Pharmaceuticals'),(97,'Varsity Tutors','Online Education'),(98,'Maryland Department of Health','State Government'),(99,'Maryland Department of Juvenile Services','State Government'),(100,'Anne Arundel Community College','Higher Education'),(101,'U.S. Census Bureau','Federal Government'),(102,'MathWorks','Software'),(103,'Robinhood','Financial Tech');
/*!40000 ALTER TABLE `employers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `info_sci`
--

DROP TABLE IF EXISTS `info_sci`;
/*!50001 DROP VIEW IF EXISTS `info_sci`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info_sci` AS SELECT 
 1 AS `student_id`,
 1 AS `Name`,
 1 AS `Program`,
 1 AS `Graduation`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `internship`
--

DROP TABLE IF EXISTS `internship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship` (
  `internship_id` int unsigned NOT NULL,
  `internship_status` varchar(45) NOT NULL,
  PRIMARY KEY (`internship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship`
--

LOCK TABLES `internship` WRITE;
/*!40000 ALTER TABLE `internship` DISABLE KEYS */;
INSERT INTO `internship` VALUES (1,'Internship'),(2,'Internship'),(3,'Job'),(4,'Job'),(5,'Job'),(6,'Job'),(7,'Internship'),(8,'Internship'),(9,'Internship'),(10,'Internship'),(11,'Job'),(12,'Job'),(13,'Job'),(14,'Job'),(15,'Internship'),(16,'Internship'),(17,'Internship'),(18,'Internship'),(19,'Job'),(20,'Job'),(21,'Job'),(22,'Job'),(23,'Internship'),(24,'Internship'),(25,'Internship'),(26,'Internship'),(27,'Internship'),(28,'Internship'),(29,'Internship'),(30,'Internship'),(31,'Job'),(32,'Job'),(33,'Job'),(34,'Job'),(35,'Job'),(36,'Job'),(37,'Job'),(38,'Job'),(39,'Internship'),(40,'Internship'),(41,'Internship'),(42,'Internship'),(43,'Internship'),(44,'Job'),(45,'Job'),(46,'Job'),(47,'Job'),(48,'Job'),(49,'Internship'),(50,'Internship'),(51,'Internship'),(52,'Job'),(53,'Job'),(54,'Job'),(55,'Job'),(56,'Job'),(57,'Internship'),(58,'Internship'),(59,'Internship'),(60,'Internship'),(61,'Internship'),(62,'Job'),(63,'Job'),(64,'Job'),(65,'Job'),(66,'Job'),(67,'Job'),(68,'Job'),(69,'Job'),(70,'Job'),(71,'Internship'),(72,'Internship'),(73,'Internship'),(74,'Internship'),(75,'Internship'),(76,'Internship'),(77,'Internship'),(78,'Job'),(79,'Job'),(80,'Job'),(81,'Job'),(82,'Job'),(83,'Job'),(84,'Internship'),(85,'Internship'),(86,'Internship'),(87,'Internship'),(88,'Internship'),(89,'Internship'),(90,'Job'),(91,'Job'),(92,'Job'),(93,'Job'),(94,'Job'),(95,'Job'),(96,'Job'),(97,'Job'),(98,'Job'),(99,'Job'),(100,'Job'),(101,'Job'),(102,'Job'),(103,'Job');
/*!40000 ALTER TABLE `internship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `internship_status`
--

DROP TABLE IF EXISTS `internship_status`;
/*!50001 DROP VIEW IF EXISTS `internship_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `internship_status` AS SELECT 
 1 AS `Student ID`,
 1 AS `Student UID`,
 1 AS `Name`,
 1 AS `internship_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `job_title` varchar(200) NOT NULL,
  `employers_employer_id` int unsigned NOT NULL,
  `internship_job_status` varchar(45) NOT NULL,
  PRIMARY KEY (`job_title`),
  KEY `fk_jobs_employers1_idx` (`employers_employer_id`),
  CONSTRAINT `fk_jobs_employers1` FOREIGN KEY (`employers_employer_id`) REFERENCES `employers` (`employer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES ('2021 Summer Games Internship',71,'Internship'),('Adjuct Faculty - Information Systems Instructor',100,'Job'),('Analytics Intern (IT)',16,'Internship'),('API Developer Intern',76,'Internship'),('Archives & Exhibits Internship',77,'Internship'),('Archives Technician',65,'Job'),('Archivist',6,'Job'),('Associate Data Analyst - Custom Analytics',48,'Job'),('Associate Technical Consultant',32,'Job'),('Baltimore Project Coordinator',47,'Job'),('Business Analytics Intern',1,'Internship'),('Business Intelligence Lead',64,'Job'),('Clinical Data Analyst',22,'Job'),('Contracts & Administration Intern',57,'Internship'),('Corporate Research Library Intern',30,'Internship'),('Customer Experience - Operations',89,'Internship'),('Customer Experience Intern',75,'Internship'),('Customer Operations/Data Management Intern',8,'Internship'),('Cyber Crime Threat Intelligence Internship',73,'Internship'),('Cyber Security Operations Intern',85,'Internship'),('Cybersecurity Consulting Staff',4,'Job'),('Data Analytics Fello',72,'Internship'),('Data Engineer - Cloud Pak for Data',55,'Job'),('Data Science Intern',87,'Internship'),('Data Science/Analytics Intern',15,'Internship'),('Data Scientist, Analytics & Infereence',70,'Job'),('Database Analyst Associate',69,'Job'),('Digital & Information Services Intern',43,'Internship'),('Digital Asset LIbrarian',90,'Job'),('Digital Maryland Intern',29,'Internship'),('Digital Media Specialist',79,'Job'),('Discovery, Data & Technology Associate',3,'Job'),('Document Archivist',96,'Job'),('eCommerce Digital Marketing Analytics Consultant',36,'Job'),('Emerging Talent Chase Data and Analytics Undergraduate Summer\n Intern',84,'Internship'),('Employee Experience Strategist / Human Centered Design',68,'Job'),('Engineering Development Group',102,'Job'),('Front-End Developer',95,'Job'),('Gameplay UI Engineer',33,'Job'),('Health Sciences Business Analytics Intern',58,'Internship'),('Information Architect III',46,'Job'),('Information Security Engineer',35,'Job'),('Information Security Rotation Program',13,'Job'),('Intern',59,'Internship'),('IT Functional Analyst',21,'Job'),('IT Intern',26,'Internship'),('IT Operations Associate',18,'Internship'),('IT Programmer Analyst II',98,'Job'),('IT Specialist (Application Software) (Recent Graduate)',19,'Job'),('IT Specialist (Systems Analyst)',101,'Job'),('Jr. Data Analyst',92,'Job'),('Jr. Software Developer',14,'Job'),('Librarian',81,'Job'),('Librarian - Geography and Maps Division',66,'Job'),('Library Media Specialist',94,'Job'),('Library Services Intern',9,'Internship'),('Market Intelligence & Insights Analyst, Executive Practice',34,'Job'),('MATLAB Live Editor Summer Intern',88,'Internship'),('Metadata Librarian',12,'Job'),('Multiple Librarian Positions',82,'Job'),('Optimization Analyst',44,'Job'),('Portfolio and Impact Analysis Intern',40,'Internship'),('Preservation Digital Technology Internship',39,'Internship'),('Pricing Strategy Analyst',20,'Job'),('Product Admin',45,'Job'),('Product Analyst, Data Science',91,'Job'),('Product Management Intern',86,'Internship'),('Program Support Assistant',74,'Internship'),('Programming Internship - Warrington',24,'Internship'),('Project Assistant',78,'Job'),('Project Coordinator Intern',51,'Internship'),('Project Manager Apprentice',54,'Job'),('Reporting & Analytics Lead',53,'Job'),('Social Media Intern',41,'Internship'),('Social Media Specialist',93,'Job'),('Software Engineer Intern',42,'Internship'),('Student ZTrainee',49,'Internship'),('Summer Associate, Demand Generation',17,'Internship'),('Summer Field Operations Intern - Project Management',60,'Internship'),('Summer Intern',23,'Internship'),('Summer Intern - Technology Governance',25,'Internship'),('Summer Technology Intern',2,'Internship'),('Technical Information Specialist - Library Focus',62,'Job'),('Technical Program Manager',97,'Job'),('Technology Risk Consulting Summer 2022 Intern',28,'Internship'),('TRUE Certification Market Research and Development Intern',10,'Internship'),('UI/UX Designer',56,'Job'),('UI/UX Intern',50,'Internship'),('UI/UX Lead',83,'Job'),('User Experience Intern',7,'Internship'),('User Experience Researcher',103,'Job'),('UX Designer',31,'Job'),('UX Researcher',61,'Internship'),('UX Researcher - Part Time',11,'Job'),('Web Developer / Software Developer',63,'Job'),('Web Developer: Advocating for Social Justice Issues',5,'Job'),('Wildlife Protection Intern',27,'Internship');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `link`
--

DROP TABLE IF EXISTS `link`;
/*!50001 DROP VIEW IF EXISTS `link`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `link` AS SELECT 
 1 AS `Name`,
 1 AS `Year of Graduation`,
 1 AS `Status`,
 1 AS `Services`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `newsletter_data`
--

DROP TABLE IF EXISTS `newsletter_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_data` (
  `newsletter_id` int NOT NULL,
  `employers_employer_id1` int unsigned NOT NULL,
  `internship_internship_id1` int unsigned NOT NULL,
  `date` date NOT NULL,
  `newsletter_job_title` varchar(200) NOT NULL,
  PRIMARY KEY (`newsletter_id`),
  KEY `fk_newsletter_data_employers1_idx1` (`employers_employer_id1`),
  KEY `fk_newsletter_data_internship1_idx1` (`internship_internship_id1`),
  CONSTRAINT `fk_newsletter_data_employers1` FOREIGN KEY (`employers_employer_id1`) REFERENCES `employers` (`employer_id`),
  CONSTRAINT `fk_newsletter_data_internship1` FOREIGN KEY (`internship_internship_id1`) REFERENCES `internship` (`internship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_data`
--

LOCK TABLES `newsletter_data` WRITE;
/*!40000 ALTER TABLE `newsletter_data` DISABLE KEYS */;
INSERT INTO `newsletter_data` VALUES (1,1,1,'2021-01-31','Business Analytics Intern'),(2,2,2,'2021-01-31','Summer Technology Intern'),(3,3,3,'2021-01-31','Discovery, Data & Technology Associate'),(4,4,4,'2021-01-31','Cybersecurity Consulting Staff'),(5,5,5,'2021-01-31','Web Developer: Advocating for Social Justice Issues'),(6,6,6,'2021-01-31','Archivist'),(7,7,7,'2021-02-07','User Experience Intern'),(8,8,8,'2021-02-07','Customer Operations/Data Management Intern'),(9,9,9,'2021-02-07','Library Services Intern'),(10,10,10,'2021-02-07','TRUE Certification Market Research and Development Intern'),(11,11,11,'2021-02-07','UX Researcher - Part Time'),(12,12,12,'2021-02-07','Metadata Librarian'),(13,13,13,'2021-02-07','Information Security Rotation Program'),(14,14,14,'2021-02-07','Jr. Software Developer'),(15,15,15,'2021-02-14','Data Science/Analytics Intern'),(16,16,16,'2021-02-14','Analytics Intern (IT)'),(17,17,17,'2021-02-14','Summer Associate, Demand Generation'),(18,18,18,'2021-02-14','IT Operations Associate'),(19,19,19,'2021-02-14','IT Specialist (Application Software) (Recent Graduate)'),(20,20,20,'2021-02-14','Pricing Strategy Analyst'),(21,21,21,'2021-02-14','IT Functional Analyst'),(22,22,22,'2021-02-14','Clinical Data Analyst'),(23,23,23,'2021-02-21','Summer Intern'),(24,24,24,'2021-02-21','Programming Internship - Warrington'),(25,25,25,'2021-02-21','Summer Intern - Technology Governance'),(26,26,26,'2021-02-21','IT Intern'),(27,27,27,'2021-02-21','Wildlife Protection Intern'),(28,28,28,'2021-02-21','Technology Risk Consulting Summer 2022 Intern'),(29,29,29,'2021-02-21','Digital Maryland Intern'),(30,30,30,'2021-02-21','Corporate Research Library Intern'),(31,31,31,'2021-02-21','UX Designer'),(32,32,32,'2021-02-21','Associate Technical Consultant'),(33,33,33,'2021-02-21','Gameplay UI Engineer'),(34,34,34,'2021-02-21','Market Intelligence & Insights Analyst, Executive Practice'),(35,35,35,'2021-02-21','Information Security Engineer'),(36,36,36,'2021-02-21','eCommerce Digital Marketing Analytics Consultant'),(39,39,39,'2021-02-28','Preservation Digital Technology Internship'),(40,40,40,'2021-02-28','Portfolio and Impact Analysis Intern'),(41,41,41,'2021-02-28','Social Media Intern'),(42,42,42,'2021-02-28','Software Engineer Intern'),(43,43,43,'2021-02-28','Digital & Information Services Intern'),(44,44,44,'2021-02-28','Optimization Analyst'),(45,45,45,'2021-02-28','Product Admin'),(46,46,46,'2021-02-28','Information Architect III'),(47,47,47,'2021-02-28','Baltimore Project Coordinator'),(48,48,48,'2021-02-28','Associate Data Analyst - Custom Analytics'),(49,49,49,'2021-03-07','Student ZTrainee'),(50,50,50,'2021-03-07','UI/UX Intern'),(51,51,51,'2021-03-07','Project Coordinator Intern'),(53,53,53,'2021-03-07','Reporting & Analytics Lead'),(54,54,54,'2021-03-07','Project Manager Apprentice'),(55,55,55,'2021-03-07','Data Engineer - Cloud Pak for Data'),(56,56,56,'2021-03-07','UI/UX Designer'),(57,57,57,'2021-03-21','Contracts & Administration Intern'),(58,58,58,'2021-03-21','Health Sciences Business Analytics Intern'),(59,59,59,'2021-03-21','Intern'),(60,60,60,'2021-03-21','Summer Field Operations Intern - Project Management'),(61,61,61,'2021-03-21','UX Researcher'),(62,62,62,'2021-03-21','Technical Information Specialist - Library Focus'),(63,63,63,'2021-03-21','Web Developer / Software Developer'),(64,64,64,'2021-03-21','Business Intelligence Lead'),(65,65,65,'2021-03-21','Archives Technician'),(66,66,66,'2021-03-21','Librarian - Geography and Maps Division'),(67,67,67,'2021-03-21','Archivist'),(68,68,68,'2021-03-21','Employee Experience Strategist / Human Centered Design'),(69,69,69,'2021-03-21','Database Analyst Associate'),(70,70,70,'2021-03-21','Data Scientist, Analytics & Infereence'),(71,71,71,'2021-03-28','2021 Summer Games Internship'),(72,72,72,'2021-03-28','Data Analytics Fello'),(73,73,73,'2021-03-28','Cyber Crime Threat Intelligence Internship'),(74,74,74,'2021-03-28','Program Support Assistant'),(75,75,75,'2021-03-28','Customer Experience Intern'),(76,76,76,'2021-03-28','API Developer Intern'),(77,77,77,'2021-03-28','Archives & Exhibits Internship'),(78,78,78,'2021-03-28','Project Assistant'),(79,79,79,'2021-03-28','Digital Media Specialist'),(80,80,80,'2021-03-28','Data Analytics Fello'),(81,81,81,'2021-03-28','Librarian'),(82,82,82,'2021-03-28','Multiple Librarian Positions'),(83,83,83,'2021-03-28','UI/UX Lead'),(84,84,84,'2021-04-04','Emerging Talent Chase Data and Analytics Undergraduate Summer\nIntern'),(85,85,85,'2021-04-04','Cyber Security Operations Intern'),(86,86,86,'2021-04-04','Product Management Intern'),(87,87,87,'2021-04-04','Data Science Intern'),(88,88,88,'2021-04-04','MATLAB Live Editor Summer Intern'),(89,89,89,'2021-04-04','Customer Experience - Operations'),(90,90,90,'2021-04-04','Digital Asset LIbrarian'),(91,91,91,'2021-04-04','Product Analyst, Data Science'),(92,92,92,'2021-04-04','Jr. Data Analyst'),(93,93,93,'2021-04-04','Social Media Specialist'),(94,94,94,'2021-04-04','Library Media Specialist'),(95,95,95,'2021-04-04','Front-End Developer'),(96,96,96,'2021-04-04','Document Archivist'),(97,97,97,'2021-04-04','Technical Program Manager'),(98,98,98,'2021-04-04','IT Programmer Analyst II'),(99,99,99,'2021-04-04','IT Programmer Analyst II'),(100,100,100,'2021-04-04','Adjuct Faculty - Information Systems Instructor'),(101,101,101,'2021-04-04','IT Specialist (Systems Analyst)'),(102,102,102,'2021-04-04','Engineering Development Group'),(103,103,103,'2021-04-04','User Experience Researcher');
/*!40000 ALTER TABLE `newsletter_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `popular_sector`
--

DROP TABLE IF EXISTS `popular_sector`;
/*!50001 DROP VIEW IF EXISTS `popular_sector`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `popular_sector` AS SELECT 
 1 AS `Job Title`,
 1 AS `Sector`,
 1 AS `Number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student_data`
--

DROP TABLE IF EXISTS `student_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_data` (
  `student_id` int unsigned NOT NULL,
  `internship_internship_id` int unsigned DEFAULT NULL,
  `career_services_career_id` int unsigned DEFAULT NULL,
  `first_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `graduation_year` varchar(100) DEFAULT NULL,
  `program` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `student_UID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_student_data_career_services1_idx` (`career_services_career_id`),
  KEY `fk_student_data_internship1_idx` (`internship_internship_id`),
  CONSTRAINT `fk_student_data_career_services1` FOREIGN KEY (`career_services_career_id`) REFERENCES `career_services` (`career_id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_data`
--

LOCK TABLES `student_data` WRITE;
/*!40000 ALTER TABLE `student_data` DISABLE KEYS */;
INSERT INTO `student_data` VALUES (1,1,1,'Ziggy','Stardust','Fall 2020','',''),(2,2,2,'David','Bowie','Fall 2020','Infosci',''),(3,3,3,'Mike','Wheeler','Spring 2021','Infosci',''),(4,4,4,'Eleven','Experiment','Fall 2020','Infosci',''),(5,5,5,'Will','Byers','Spring 2021','Infosci',''),(6,6,6,'Jonathan','Byers','Spring 2021','MIM',''),(7,7,7,'Joyce','Byers','Spring 2020','HCI',''),(8,8,8,'Jim','Hopper','Fall 2020','Infosci',''),(9,9,9,'Lucas','Sinclair','Fall 2020','InfoSci',''),(10,10,10,'Dustin','Henderson','Spring 2021','InfoSci',''),(15,15,15,'Max','Mayfield','Spring 2021','InfoSci',''),(16,16,16,'Billy','Hargrove','Fall 2021','MLIS',''),(17,17,17,'Karen','Wheeler','Spring 2022','HCIM',''),(19,19,19,'Carrie','Matthison','Spring 2022','MLIS',''),(21,21,21,'Peter','Quinn','Spring 2001','MLIS alum',''),(23,23,23,'Nicholas','Brody','Spring 2020','InfoSci',''),(24,24,24,'Max','Piotrowski','Spring 2022','InfoSci',''),(25,25,25,'Jessica','Brody','Spring 2021','InfoSci',''),(26,26,26,'Chris','Brody','Spring 2020','InfoSci',''),(27,27,27,'Dana','Brody','Fall 2021','InfoSci',''),(28,28,28,'Mike','Faber','Fall 2021','InfoSci',''),(29,29,29,'David','Estes','Spring 2020','InfoSci',''),(30,30,30,'Virgil','Piotrowski','Spring 2021','InfoSci',''),(31,31,31,'Mira','Berenson','Spring 2019','MLIS',''),(32,32,32,'Abu','Nazir','Spring 2020','InfoSci',''),(33,33,33,'Issa','Nazir','Spring 2021','InfoSci',''),(34,34,34,'Frank','Matthison','Fall 2022','InfoSci',''),(35,35,35,'Maggie','Matthison','Spring 2020','InfoSci',''),(36,36,36,'Frances','Matthison','Spring 2022','InfoSci',''),(37,37,37,'Majid','Javadi','','InfoSci',''),(38,38,38,'Otto','During','Spring 2021','InfoSci',''),(39,39,39,'Martha','Boyd','Spring 2022','InfoSci',''),(40,40,40,'Dennis','Boyd','Spring 2020','InfoSci',''),(41,41,41,'John','Redmond','Spring 2021','HCIM',''),(42,42,42,'Sekou','Bah','Dec-21','MLIS',''),(43,43,43,'Tom','Walker','Spring 2021','MLIS',''),(44,44,44,'Fara','Sherazi','Spring 2021','MLIS',''),(45,45,45,'Danny','Galvez','Dec-21','MLIS',''),(46,46,46,'James','McNulty','Dec-20','MLIS',''),(47,47,47,'Bunk','Moreland','May-22','MLIS',''),(48,48,48,'Cedric','Daniels','May-22','HCIM',''),(49,49,49,'Kima','Greggs','Fall 2022','InfoSci',''),(50,50,50,'Stringer','Bell','Spring 2022','InfoSci',''),(51,51,51,'Omar','Little','Spring 2021','HCIM',''),(52,52,52,'Olivia','Benson','Spring 2022','MLIS',''),(53,53,53,'Elliott','Stabler','Spring 2022','InfoSci',''),(54,54,54,'Jimmy','Buffett','Spring 2022','HCIM',''),(55,55,55,'Amy','Winehouse','Spring 2021','InfoSci',''),(56,56,56,'Georgia','Hardstark','Spring 2022','InfoSci',''),(57,57,57,'Karen','Kilgariff','Spring 2021','InfoSci',''),(58,58,58,'Terry','Crews','Summer 2022','MLIS',''),(59,59,59,'Simon','Cowell','Fall 2021','MIM',''),(60,60,60,'Heidi','Klum','Spring 2022','InfoSci',''),(61,61,61,'Howie','Mandel','Spring 2021','InfoSci',''),(62,62,62,'Mel','B','Spring 2012','MLS',''),(63,63,63,'Tyra','Banks','Spring 2022','InfoSci',''),(64,64,64,'Grace','Vanderwal','Spring 2021','HCIM',''),(65,65,65,'Kodi','Lee','Spring 2022','InfoSci',''),(66,66,66,'Shin','Lim','Spring 2012','MLS',''),(67,67,67,'Elvis','Presley','Spring 2022','InfoSci',''),(68,68,68,'Buddy','Holly','Spring 2022','InfoSci',''),(69,69,69,'Carl','Perkins','Spring 2020','InfoSci',''),(70,70,70,'Patsy','Cline','Spring 2021','InfoSci',''),(71,71,71,'Gene','Vincent','Fall 2023','MLIS',''),(72,72,72,'Bluto','Blutarski','Spring 2001','MLS',''),(73,73,73,'Eric','Stratton','Spring 2022','HCIM',''),(74,74,74,'Robert','Hoover','Spring 2021','InfoSciSG',''),(75,75,75,'Dean','Wormer','Spring 2022','InfoSci',''),(77,77,77,'Kent','Dorfman','Spring 2021','InfoSci',''),(78,78,78,'Doug','Neidermeyer','Spring 2021','InfoSci',''),(79,79,79,'Mandy','Pepperidge','Spring 2021','HiLS',''),(80,80,80,'Babs','Jansen','Spring 2022','InfoSci',''),(81,81,81,'D','Day','Spring 2021','MIM',''),(82,82,82,'Boone','Schoenstein','Spring 2021','InfoSci',''),(83,83,83,'Otis','Day','Spring 2021','HCIM',''),(85,85,85,'Walter','Sobchak','Spring 2021','MLIS',''),(86,86,86,'Donny','Kerabatsos','Spring 2022','InfoSci',''),(87,87,87,'Maude','Lebowski','Spring 2022','InfoSci',''),(88,88,88,'Jesus','Quintana','Spring 2020','MLIS','');
/*!40000 ALTER TABLE `student_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_visted`
--

DROP TABLE IF EXISTS `student_visted`;
/*!50001 DROP VIEW IF EXISTS `student_visted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_visted` AS SELECT 
 1 AS `Student ID`,
 1 AS `Student UID`,
 1 AS `Name`,
 1 AS `Program`,
 1 AS `Service Provided`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `video_games`
--

DROP TABLE IF EXISTS `video_games`;
/*!50001 DROP VIEW IF EXISTS `video_games`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `video_games` AS SELECT 
 1 AS `employer_name`,
 1 AS `sector_industry`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `employer_job_title`
--

/*!50001 DROP VIEW IF EXISTS `employer_job_title`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employer_job_title` AS select `employers`.`employer_name` AS `Employer Name`,`employers`.`sector_industry` AS `Industry`,`jobs`.`internship_job_status` AS `Offers` from (`employers` join `jobs` on((`employers`.`employer_id` = `jobs`.`employers_employer_id`))) order by `employers`.`employer_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_sci`
--

/*!50001 DROP VIEW IF EXISTS `info_sci`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info_sci` AS select `student_data`.`student_id` AS `student_id`,concat(`student_data`.`first_name`,' ',`student_data`.`last_name`) AS `Name`,`student_data`.`program` AS `Program`,`student_data`.`graduation_year` AS `Graduation` from `student_data` where (`student_data`.`program` = 'InfoSci') order by `student_data`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `internship_status`
--

/*!50001 DROP VIEW IF EXISTS `internship_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `internship_status` AS select `s`.`student_id` AS `Student ID`,`s`.`student_UID` AS `Student UID`,concat(`s`.`first_name`,' ',`s`.`last_name`) AS `Name`,`internship`.`internship_status` AS `internship_status` from (`student_data` `s` join `internship` on((`s`.`internship_internship_id` = `internship`.`internship_id`))) where ((`internship`.`internship_status` is not null) and (`internship`.`internship_status` = 'Internship')) group by `internship`.`internship_id` order by `internship`.`internship_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `link`
--

/*!50001 DROP VIEW IF EXISTS `link`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `link` AS select concat(`student_data`.`first_name`,' ',`student_data`.`last_name`) AS `Name`,`student_data`.`graduation_year` AS `Year of Graduation`,`internship`.`internship_status` AS `Status`,`career_services`.`services_provided` AS `Services` from ((`internship` join `student_data` on((`internship`.`internship_id` = `student_data`.`internship_internship_id`))) join `career_services` on((`student_data`.`career_services_career_id` = `career_services`.`career_id`))) where (`career_services`.`services_provided` like 'Resume%') group by `internship`.`internship_id` order by `internship`.`internship_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `popular_sector`
--

/*!50001 DROP VIEW IF EXISTS `popular_sector`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popular_sector` AS select `newsletter_data`.`newsletter_job_title` AS `Job Title`,`employers`.`sector_industry` AS `Sector`,count(`employers`.`sector_industry`) AS `Number` from (`newsletter_data` join `employers` on((`newsletter_data`.`employers_employer_id1` = `employers`.`employer_id`))) group by `newsletter_data`.`newsletter_job_title` having (`Number` > 1) order by `newsletter_data`.`newsletter_job_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_visted`
--

/*!50001 DROP VIEW IF EXISTS `student_visted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_visted` AS select `s`.`student_id` AS `Student ID`,`s`.`student_UID` AS `Student UID`,concat(`s`.`first_name`,' ',`s`.`last_name`) AS `Name`,`s`.`program` AS `Program`,`c`.`services_provided` AS `Service Provided`,`c`.`date` AS `date` from (`student_data` `s` join `career_services` `c` on((`s`.`career_services_career_id` = `c`.`career_id`))) group by `s`.`student_id` order by `s`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `video_games`
--

/*!50001 DROP VIEW IF EXISTS `video_games`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `video_games` AS select `employers`.`employer_name` AS `employer_name`,`employers`.`sector_industry` AS `sector_industry` from `employers` where `employers`.`sector_industry` in (select `employers`.`sector_industry` from `employers` where (`employers`.`sector_industry` = 'video games')) order by `employers`.`sector_industry` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-19 17:42:45
