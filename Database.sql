CREATE DATABASE  IF NOT EXISTS `daily-work-logger-db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `daily-work-logger-db`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: daily-work-logger-db
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'1470551246566',1,'2016-08-04 04:50:00','2016-08-04 04:55:00','jai ganesh'),(2,'1470552708595',1,'2016-08-02 19:50:00','2016-08-02 19:55:00','test2'),(3,'1470577430972',1,'2016-08-02 19:05:00','2016-08-02 19:10:00','test event 1'),(4,'1470716534523',1,'2016-08-09 20:00:00','2016-08-09 20:05:00','New event');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `messageText` varchar(800) NOT NULL,
  `sentOn` datetime DEFAULT NULL,
  `fromUserId` int(11) DEFAULT NULL,
  `toUserId` int(11) DEFAULT NULL,
  `isRead` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (51,'1 - Hi Simon,\n\nHow are you?\n\nBest regards,\nBalram','2016-08-15 06:01:41',2,1,0),(52,'2 - Hi Simon,\n\nHow are you?\n\nBest regards,\nBalram','2016-08-15 06:01:47',2,1,0),(53,'1 - Hi Balram,\r \r I am good\r \r Regards,\r Simon','2016-08-15 06:06:29',1,2,1),(54,'2- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:31',1,2,1),(55,'3- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:35',1,2,1),(56,'4- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:39',1,2,1),(57,'5- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:42',1,2,1),(58,'6- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:45',1,2,1),(59,'7- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:48',1,2,1),(60,'8- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:50',1,2,1),(61,'9- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:54',1,2,1),(62,'10- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:57',1,2,1),(63,'11- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:16:59',1,2,0),(64,'12- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:01',1,2,0),(65,'13- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:04',1,2,0),(66,'14- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:07',1,2,0),(67,'15- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:10',1,2,0),(68,'16- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:13',1,2,0),(69,'17- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:18',1,2,0),(70,'18- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:21',1,2,0),(71,'19- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:24',1,2,0),(72,'20- Hi Balram\n\nFrom,\nSimon','2016-08-15 06:17:27',1,2,0),(73,'test-1','2016-08-15 06:28:35',2,1,0),(74,'test-2','2016-08-15 06:31:17',2,1,0),(75,'test-3','2016-08-15 06:41:59',2,1,0);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Moderator'),(3,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Simon','Boss',NULL,1,NULL),(2,'Balram','Chavan',NULL,1,NULL),(3,'Guest','user',NULL,3,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'daily-work-logger-db'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_new_event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_event`(event_id varchar(100),
	start_date datetime, end_date datetime, description varchar(200), user_id int)
BEGIN
	INSERT INTO `daily-work-logger-db`.`events`
		(`event_id`,
		`start_date`,
		`end_date`,
		`description`,
        `user_id`)
		VALUES
		(event_id,
        start_date,
        end_date,
        description,
        user_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createNewMessage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createNewMessage`(_messageText VARCHAR(800), _sentOn DATETIME, _fromUserId int,_toUserId int, _isRead boolean)
BEGIN
	INSERT INTO `daily-work-logger-db`.`messages`
		(		`messageText`,
		`sentOn`,
		`fromUserId`,
		`toUserId`,
		`isRead`)
		VALUES
		(_messageText,
		_sentOn,
		_fromUserId,
		_toUserId,
		_isRead);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllReceivedMessages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllReceivedMessages`(userId int)
BEGIN
	SELECT m.Id, m.messageText, uu.UserName 'From', m.sentOn, m.isRead FROM `daily-work-logger-db`.messages m
	left outer join `daily-work-logger-db`.users u
	on m.toUserId = u.Id
	left outer join `daily-work-logger-db`.users uu
	on m.fromUserId = uu.Id
	where u.Id = userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllSentMessages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllSentMessages`(userId int)
BEGIN
	SELECT m.Id, m.messageText, u.UserName 'To', m.sentOn FROM `daily-work-logger-db`.messages m
	left outer join `daily-work-logger-db`.users u
	on m.toUserId = u.Id
	where m.fromUserId = userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setMessageReadStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setMessageReadStatus`(messageId int, isRead boolean)
BEGIN
	UPDATE `daily-work-logger-db`.`messages`
	SET	`isRead` = isRead
	WHERE `Id` = messageId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-15 14:38:32
