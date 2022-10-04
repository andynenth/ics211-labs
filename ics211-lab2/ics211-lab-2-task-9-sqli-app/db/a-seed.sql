-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Current Database: `csrf_collabtive_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `csrf_collabtive_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `csrf_collabtive_db`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL DEFAULT '',
  `ufrom` varchar(255) NOT NULL DEFAULT '',
  `ufrom_id` int(10) NOT NULL DEFAULT '0',
  `userto` varchar(255) NOT NULL DEFAULT '',
  `userto_id` int(10) NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_assigned`
--

DROP TABLE IF EXISTS `company_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `company` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `company` (`company`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_assigned`
--

LOCK TABLES `company_assigned` WRITE;
/*!40000 ALTER TABLE `company_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `project` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  `user` int(10) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `added` varchar(255) NOT NULL DEFAULT '',
  `datei` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `folder` int(10) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `datei` (`datei`),
  KEY `added` (`added`),
  KEY `project` (`project`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_attached`
--

DROP TABLE IF EXISTS `files_attached`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_attached` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` int(10) unsigned NOT NULL DEFAULT '0',
  `message` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `file` (`file`,`message`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_attached`
--

LOCK TABLES `files_attached` WRITE;
/*!40000 ALTER TABLE `files_attached` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_attached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `action` int(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `datum` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `datum` (`datum`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  FULLTEXT KEY `username` (`username`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,0,'','admin','user',1,0,'1313337735'),(2,1,'admin','Users\\\' Account Information','projekt',1,1,'1313337763'),(3,1,'admin','admin','user',6,1,'1313337763'),(4,1,'admin','seed','user',1,0,'1313337777'),(5,1,'admin','bob','user',1,0,'1313337786'),(6,1,'admin','ted','user',1,0,'1313337798'),(7,1,'admin','peter','user',1,0,'1313337808'),(8,1,'admin','alice','user',1,0,'1313337819');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `posted` varchar(255) NOT NULL DEFAULT '',
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `replyto` int(11) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`),
  KEY `user` (`user`),
  KEY `replyto` (`replyto`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `end` (`end`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones_assigned`
--

DROP TABLE IF EXISTS `milestones_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones_assigned`
--

LOCK TABLES `milestones_assigned` WRITE;
/*!40000 ALTER TABLE `milestones_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectfolders`
--

DROP TABLE IF EXISTS `projectfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectfolders` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectfolders`
--

LOCK TABLES `projectfolders` WRITE;
/*!40000 ALTER TABLE `projectfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte`
--

DROP TABLE IF EXISTS `projekte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `budget` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte`
--

LOCK TABLES `projekte` WRITE;
/*!40000 ALTER TABLE `projekte` DISABLE KEYS */;
INSERT INTO `projekte` VALUES (1,'Users\' Account Information','Username:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; admin<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; seed<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; peter<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alice<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ted<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bob<br /><br />Password: same as the username.<br /><br />Note: \'admin\' and \'seed\' are two administrators for this application. When doing the Lab, please leave one of them untouched for safety.','1313337763','0',1,0);
/*!40000 ALTER TABLE `projekte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte_assigned`
--

DROP TABLE IF EXISTS `projekte_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `projekt` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `projekt` (`projekt`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte_assigned`
--

LOCK TABLES `projekte_assigned` WRITE;
/*!40000 ALTER TABLE `projekte_assigned` DISABLE KEYS */;
INSERT INTO `projekte_assigned` VALUES (1,1,1);
/*!40000 ALTER TABLE `projekte_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `projects` text NOT NULL,
  `tasks` text NOT NULL,
  `milestones` text NOT NULL,
  `messages` text NOT NULL,
  `files` text NOT NULL,
  `chat` text NOT NULL,
  `timetracker` text NOT NULL,
  `admin` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:3:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:1;}','a:1:{s:3:\"add\";i:1;}'),(2,'User','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:3:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:0;}','a:1:{s:3:\"add\";i:0;}'),(3,'Client','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:3:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;}','a:1:{s:3:\"add\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:4:\"read\";i:0;}','a:1:{s:3:\"add\";i:0;}');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_assigned`
--

DROP TABLE IF EXISTS `roles_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL,
  `role` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_assigned`
--

LOCK TABLES `roles_assigned` WRITE;
/*!40000 ALTER TABLE `roles_assigned` DISABLE KEYS */;
INSERT INTO `roles_assigned` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,2),(6,6,2);
/*!40000 ALTER TABLE `roles_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `ID` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `subtitle` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `timezone` varchar(60) DEFAULT NULL,
  `dateformat` varchar(50) DEFAULT NULL,
  `template` varchar(255) DEFAULT '',
  `mailnotify` tinyint(1) DEFAULT '1',
  `mailfrom` varchar(255) DEFAULT NULL,
  `mailfromname` varchar(255) DEFAULT NULL,
  `mailmethod` varchar(5) DEFAULT NULL,
  `mailhost` varchar(255) DEFAULT NULL,
  `mailuser` varchar(255) DEFAULT NULL,
  `mailpass` varchar(255) DEFAULT NULL,
  `rssuser` varchar(255) DEFAULT NULL,
  `rsspass` varchar(255) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `name` (`name`),
  KEY `subtitle` (`subtitle`),
  KEY `locale` (`locale`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (0,'Collabtive','Projectmanagement','en','America/New_York','d.m.Y','standard',1,'collabtive@localhost',NULL,'mail',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasklist`
--

DROP TABLE IF EXISTS `tasklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasklist` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(4) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasklist`
--

LOCK TABLES `tasklist` WRITE;
/*!40000 ALTER TABLE `tasklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `liste` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `liste` (`liste`),
  KEY `status` (`status`),
  KEY `end` (`end`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_assigned`
--

DROP TABLE IF EXISTS `tasks_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `task` (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_assigned`
--

LOCK TABLES `tasks_assigned` WRITE;
/*!40000 ALTER TABLE `tasks_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetracker`
--

DROP TABLE IF EXISTS `timetracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetracker` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `started` varchar(255) NOT NULL DEFAULT '',
  `ended` varchar(255) NOT NULL DEFAULT '',
  `hours` float NOT NULL DEFAULT '0',
  `pstatus` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`,`project`,`task`),
  KEY `started` (`started`),
  KEY `ended` (`ended`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetracker`
--

LOCK TABLES `timetracker` WRITE;
/*!40000 ALTER TABLE `timetracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT '',
  `company` varchar(255) DEFAULT '',
  `lastlogin` varchar(255) DEFAULT '',
  `zip` varchar(10) DEFAULT NULL,
  `gender` char(1) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `adress` varchar(255) DEFAULT '',
  `adress2` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `avatar` varchar(255) DEFAULT '',
  `rate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`),
  KEY `pass` (`pass`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','',NULL,NULL,'d033e22ae348aeb5660fc2140aec35850c4da997','0','1381262470',NULL,'','','','','','','','','','0'),(2,'seed','',NULL,NULL,'92713d4709377111cf31f2a71986c411bd6cb5b0','','',NULL,'','','','','','','','en','','0'),(3,'bob','',NULL,NULL,'48181acd22b3edaebc8a447868a7df7ce629920a','','',NULL,'','','','','','','','en','','0'),(4,'ted','',NULL,NULL,'46ab578353b0478abc71fa54796a76c10bbe41a8','','',NULL,'','','','','','','','en','','0'),(5,'peter','',NULL,NULL,'4b8373d016f277527198385ba72fda0feb5da015','','',NULL,'','','','','','','','en','','0'),(6,'alice','',NULL,NULL,'522b276a356bdf39013dfabea2cd43e141ecc9e8','','',NULL,'','','','','','','','en','','0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `csrf_elgg_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `csrf_elgg_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `csrf_elgg_db`;

--
-- Table structure for table `elgg_access_collection_membership`
--

DROP TABLE IF EXISTS `elgg_access_collection_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collections`
--

DROP TABLE IF EXISTS `elgg_access_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_annotations`
--

DROP TABLE IF EXISTS `elgg_annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_api_users`
--

DROP TABLE IF EXISTS `elgg_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_config`
--

DROP TABLE IF EXISTS `elgg_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','s:0:\"\";',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_datalists`
--

DROP TABLE IF EXISTS `elgg_datalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('filestore_run_once','1410863501'),('plugin_run_once','1410863501'),('elgg_widget_run_once','1410863501'),('installed','1410863536'),('path','/var/www/CSRF/elgg/'),('dataroot','/home/seed/elggData/CSRF/'),('default_site','1'),('version','2014012000'),('simplecache_enabled','1'),('system_cache_enabled','1'),('processed_upgrades','a:45:{i:0;s:14:\"2008100701.php\";i:1;s:14:\"2008101303.php\";i:2;s:14:\"2009022701.php\";i:3;s:14:\"2009041701.php\";i:4;s:14:\"2009070101.php\";i:5;s:14:\"2009102801.php\";i:6;s:14:\"2010010501.php\";i:7;s:14:\"2010033101.php\";i:8;s:14:\"2010040201.php\";i:9;s:14:\"2010052601.php\";i:10;s:14:\"2010060101.php\";i:11;s:14:\"2010060401.php\";i:12;s:14:\"2010061501.php\";i:13;s:14:\"2010062301.php\";i:14;s:14:\"2010062302.php\";i:15;s:14:\"2010070301.php\";i:16;s:14:\"2010071001.php\";i:17;s:14:\"2010071002.php\";i:18;s:14:\"2010111501.php\";i:19;s:14:\"2010121601.php\";i:20;s:14:\"2010121602.php\";i:21;s:14:\"2010121701.php\";i:22;s:14:\"2010123101.php\";i:23;s:14:\"2011010101.php\";i:24;s:61:\"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php\";i:25;s:61:\"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php\";i:26;s:60:\"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php\";i:27;s:51:\"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php\";i:28;s:57:\"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php\";i:29;s:61:\"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php\";i:30;s:59:\"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php\";i:31;s:14:\"2011052801.php\";i:32;s:60:\"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php\";i:33;s:62:\"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php\";i:34;s:54:\"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php\";i:35;s:53:\"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php\";i:36;s:50:\"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php\";i:37;s:50:\"2012012100-1.8.3-system_cache-93100e7d55a24a11.php\";i:38;s:59:\"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php\";i:39;s:58:\"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php\";i:40;s:59:\"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php\";i:41;s:62:\"2013051700-1.8.15-add_missing_group_index-52a63a3a3ffaced2.php\";i:42;s:53:\"2013052900-1.8.15-ipv6_in_syslog-f5c2cc0196e9e731.php\";i:43;s:50:\"2013060900-1.8.15-site_secret-404fc165cf9e0ac9.php\";i:44;s:50:\"2014012000-1.8.18-remember_me-9a8a433685cf7be9.php\";}'),('admin_registered','1'),('simplecache_lastupdate_default','1410863612'),('simplecache_lastcached_default','1410863612'),('__site_secret__','zCYBDwZ8Y-m9nCKvNa9vqswdStr38Ptq'),('simplecache_lastupdate_failsafe','0'),('simplecache_lastcached_failsafe','0'),('simplecache_lastupdate_foaf','0'),('simplecache_lastcached_foaf','0'),('simplecache_lastupdate_ical','0'),('simplecache_lastcached_ical','0'),('simplecache_lastupdate_installation','0'),('simplecache_lastcached_installation','0'),('simplecache_lastupdate_json','0'),('simplecache_lastcached_json','0'),('simplecache_lastupdate_opendd','0'),('simplecache_lastcached_opendd','0'),('simplecache_lastupdate_php','0'),('simplecache_lastcached_php','0'),('simplecache_lastupdate_rss','0'),('simplecache_lastcached_rss','0'),('simplecache_lastupdate_xml','0'),('simplecache_lastcached_xml','0');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entities`
--

DROP TABLE IF EXISTS `elgg_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1410863536,1410863536,1410863536,'yes'),(2,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(3,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(4,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(5,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(6,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(7,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(8,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(9,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(10,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(11,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(12,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(13,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(14,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(15,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(16,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(17,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(18,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(19,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(20,'object',2,1,1,1,2,1410863536,1410863536,1410863536,'yes'),(21,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(22,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(23,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(24,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(25,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(26,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(27,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(28,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(29,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(30,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(31,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(32,'object',2,1,1,1,2,1410863537,1410863537,1410863537,'yes'),(33,'user',0,0,1,0,2,1410863592,1410961960,1410863592,'yes'),(34,'object',3,33,1,33,0,1410863592,1410863592,1410863592,'yes'),(35,'object',3,33,1,33,0,1410863592,1410863592,1410863592,'yes'),(36,'object',3,33,1,33,0,1410863592,1410863592,1410863592,'yes'),(37,'object',3,33,1,33,0,1410863592,1410863592,1410863592,'yes'),(38,'object',3,33,1,33,0,1410863592,1410863592,1410863592,'yes'),(39,'user',0,0,1,0,2,1410961773,1410961785,1410961773,'yes'),(40,'user',0,0,1,0,2,1410961820,1410961825,1410961820,'yes'),(41,'user',0,0,1,0,2,1410961859,1410961895,1410961859,'yes'),(42,'user',0,0,1,0,2,1410961927,1410961932,1410961927,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_relationships`
--

DROP TABLE IF EXISTS `elgg_entity_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (1,2,'active_plugin',1,1410863537),(2,3,'active_plugin',1,1410863537),(3,11,'active_plugin',1,1410863537),(4,12,'active_plugin',1,1410863537),(5,13,'active_plugin',1,1410863537),(6,14,'active_plugin',1,1410863537),(7,15,'active_plugin',1,1410863537),(8,16,'active_plugin',1,1410863537),(9,17,'active_plugin',1,1410863537),(10,18,'active_plugin',1,1410863537),(11,19,'active_plugin',1,1410863537),(12,20,'active_plugin',1,1410863537),(13,21,'active_plugin',1,1410863537),(14,22,'active_plugin',1,1410863537),(15,23,'active_plugin',1,1410863537),(16,24,'active_plugin',1,1410863537),(17,25,'active_plugin',1,1410863537),(18,26,'active_plugin',1,1410863537),(19,28,'active_plugin',1,1410863537),(20,29,'active_plugin',1,1410863537),(24,39,'member_of_site',1,1410961773),(22,32,'active_plugin',1,1410863537),(23,33,'member_of_site',1,1410863592),(25,40,'member_of_site',1,1410961820),(26,41,'member_of_site',1,1410961859),(27,42,'member_of_site',1,1410961927);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_subtypes`
--

DROP TABLE IF EXISTS `elgg_entity_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','file','ElggFile'),(2,'object','plugin','ElggPlugin'),(3,'object','widget','ElggWidget'),(4,'object','blog','ElggBlog'),(5,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_geocode_cache`
--

DROP TABLE IF EXISTS `elgg_geocode_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_groups_entity`
--

DROP TABLE IF EXISTS `elgg_groups_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_hmac_cache`
--

DROP TABLE IF EXISTS `elgg_hmac_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metadata`
--

DROP TABLE IF EXISTS `elgg_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (1,1,1,2,'text',0,2,1410863536,'yes'),(2,33,3,4,'text',33,2,1410863592,'yes'),(3,33,5,4,'text',0,2,1410863592,'yes'),(4,33,6,7,'text',0,2,1410863592,'yes'),(5,39,3,4,'text',39,2,1410961773,'yes'),(6,40,3,4,'text',40,2,1410961820,'yes'),(7,41,3,4,'text',41,2,1410961859,'yes'),(8,42,3,4,'text',42,2,1410961927,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metastrings`
--

DROP TABLE IF EXISTS `elgg_metastrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'info@csrfelgg.com'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_objects_entity`
--

DROP TABLE IF EXISTS `elgg_objects_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'blog',''),(3,'bookmarks',''),(4,'categories',''),(5,'custom_index',''),(6,'dashboard',''),(7,'developers',''),(8,'diagnostics',''),(9,'embed',''),(10,'externalpages',''),(11,'file',''),(12,'garbagecollector',''),(13,'groups',''),(14,'htmlawed',''),(15,'invitefriends',''),(16,'likes',''),(17,'logbrowser',''),(18,'logrotate',''),(19,'members',''),(20,'messageboard',''),(21,'messages',''),(22,'notifications',''),(23,'pages',''),(24,'profile',''),(25,'reportedcontent',''),(26,'search',''),(27,'tagcloud',''),(28,'thewire',''),(29,'tinymce',''),(30,'twitter_api',''),(31,'uservalidationbyemail',''),(32,'zaudio',''),(34,'',''),(35,'',''),(36,'',''),(37,'',''),(38,'','');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_private_settings`
--

DROP TABLE IF EXISTS `elgg_private_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','1'),(2,3,'elgg:internal:priority','2'),(3,4,'elgg:internal:priority','3'),(4,5,'elgg:internal:priority','4'),(5,6,'elgg:internal:priority','5'),(6,7,'elgg:internal:priority','6'),(7,8,'elgg:internal:priority','7'),(8,9,'elgg:internal:priority','8'),(9,10,'elgg:internal:priority','9'),(10,11,'elgg:internal:priority','10'),(11,12,'elgg:internal:priority','11'),(12,13,'elgg:internal:priority','12'),(13,14,'elgg:internal:priority','13'),(14,15,'elgg:internal:priority','14'),(15,16,'elgg:internal:priority','15'),(16,17,'elgg:internal:priority','16'),(17,18,'elgg:internal:priority','17'),(18,19,'elgg:internal:priority','18'),(19,20,'elgg:internal:priority','19'),(20,21,'elgg:internal:priority','20'),(21,22,'elgg:internal:priority','21'),(22,23,'elgg:internal:priority','22'),(23,24,'elgg:internal:priority','23'),(24,25,'elgg:internal:priority','24'),(25,26,'elgg:internal:priority','25'),(26,27,'elgg:internal:priority','26'),(27,28,'elgg:internal:priority','27'),(28,29,'elgg:internal:priority','28'),(29,30,'elgg:internal:priority','29'),(30,31,'elgg:internal:priority','30'),(31,32,'elgg:internal:priority','31'),(32,34,'handler','control_panel'),(33,34,'context','admin'),(34,34,'column','1'),(35,34,'order','0'),(36,35,'handler','admin_welcome'),(37,35,'context','admin'),(38,35,'order','10'),(39,35,'column','1'),(40,36,'handler','online_users'),(41,36,'context','admin'),(42,36,'column','2'),(43,36,'order','0'),(44,37,'handler','new_users'),(45,37,'context','admin'),(46,37,'order','10'),(47,37,'column','2'),(48,38,'handler','content_stats'),(49,38,'context','admin'),(50,38,'order','20'),(51,38,'column','2'),(52,36,'num_display','8'),(53,37,'num_display','5'),(54,38,'num_display','8');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_river`
--

DROP TABLE IF EXISTS `elgg_river`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_sites_entity`
--

DROP TABLE IF EXISTS `elgg_sites_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'CSRF Lab Site','','http://www.csrflabelgg.com/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_system_log`
--

DROP TABLE IF EXISTS `elgg_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863536,'127.0.0.1'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410863537,'127.0.0.1'),(32,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(33,2,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(34,3,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(35,4,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(36,5,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(37,6,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(38,7,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(39,8,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(40,9,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(41,10,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(42,11,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(43,12,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(44,13,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(45,14,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(46,15,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(47,16,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(48,17,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(49,18,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(50,19,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(51,20,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410863537,'127.0.0.1'),(52,23,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410863592,'127.0.0.1'),(53,33,'ElggUser','user','','create',0,0,2,'yes',1410863592,'127.0.0.1'),(54,2,'ElggMetadata','metadata','notification:method:email','create',0,33,2,'yes',1410863592,'127.0.0.1'),(55,34,'ElggWidget','object','widget','create',0,33,0,'yes',1410863592,'127.0.0.1'),(56,35,'ElggWidget','object','widget','create',0,33,0,'yes',1410863592,'127.0.0.1'),(57,36,'ElggWidget','object','widget','create',0,33,0,'yes',1410863592,'127.0.0.1'),(58,37,'ElggWidget','object','widget','create',0,33,0,'yes',1410863592,'127.0.0.1'),(59,38,'ElggWidget','object','widget','create',0,33,0,'yes',1410863592,'127.0.0.1'),(60,33,'ElggUser','user','','make_admin',0,0,2,'yes',1410863592,'127.0.0.1'),(61,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1410863592,'127.0.0.1'),(62,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1410863592,'127.0.0.1'),(63,33,'ElggUser','user','','update',33,0,2,'yes',1410863592,'127.0.0.1'),(64,33,'ElggUser','user','','login',33,0,2,'yes',1410863592,'127.0.0.1'),(65,21,'ElggRelationship','relationship','active_plugin','delete',33,0,2,'yes',1410863612,'127.0.0.1'),(66,33,'ElggUser','user','','logout',33,0,2,'yes',1410863915,'127.0.0.1'),(67,33,'ElggUser','user','','update',33,0,2,'yes',1410863915,'127.0.0.1'),(68,24,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410961773,'127.0.0.1'),(69,39,'ElggUser','user','','create',0,0,2,'yes',1410961773,'127.0.0.1'),(70,5,'ElggMetadata','metadata','notification:method:email','create',0,39,2,'yes',1410961773,'127.0.0.1'),(71,39,'ElggUser','user','','update',39,0,2,'yes',1410961773,'127.0.0.1'),(72,39,'ElggUser','user','','login',39,0,2,'yes',1410961773,'127.0.0.1'),(73,39,'ElggUser','user','','logout',39,0,2,'yes',1410961785,'127.0.0.1'),(74,39,'ElggUser','user','','update',39,0,2,'yes',1410961785,'127.0.0.1'),(75,25,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410961820,'127.0.0.1'),(76,40,'ElggUser','user','','create',0,0,2,'yes',1410961820,'127.0.0.1'),(77,6,'ElggMetadata','metadata','notification:method:email','create',0,40,2,'yes',1410961820,'127.0.0.1'),(78,40,'ElggUser','user','','update',40,0,2,'yes',1410961820,'127.0.0.1'),(79,40,'ElggUser','user','','login',40,0,2,'yes',1410961820,'127.0.0.1'),(80,40,'ElggUser','user','','logout',40,0,2,'yes',1410961825,'127.0.0.1'),(81,40,'ElggUser','user','','update',40,0,2,'yes',1410961825,'127.0.0.1'),(82,26,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410961859,'127.0.0.1'),(83,41,'ElggUser','user','','create',0,0,2,'yes',1410961859,'127.0.0.1'),(84,7,'ElggMetadata','metadata','notification:method:email','create',0,41,2,'yes',1410961859,'127.0.0.1'),(85,41,'ElggUser','user','','update',41,0,2,'yes',1410961859,'127.0.0.1'),(86,41,'ElggUser','user','','login',41,0,2,'yes',1410961859,'127.0.0.1'),(87,41,'ElggUser','user','','logout',41,0,2,'yes',1410961895,'127.0.0.1'),(88,41,'ElggUser','user','','update',41,0,2,'yes',1410961895,'127.0.0.1'),(89,27,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410961927,'127.0.0.1'),(90,42,'ElggUser','user','','create',0,0,2,'yes',1410961927,'127.0.0.1'),(91,8,'ElggMetadata','metadata','notification:method:email','create',0,42,2,'yes',1410961927,'127.0.0.1'),(92,42,'ElggUser','user','','update',42,0,2,'yes',1410961927,'127.0.0.1'),(93,42,'ElggUser','user','','login',42,0,2,'yes',1410961927,'127.0.0.1'),(94,42,'ElggUser','user','','logout',42,0,2,'yes',1410961932,'127.0.0.1'),(95,42,'ElggUser','user','','update',42,0,2,'yes',1410961932,'127.0.0.1'),(96,33,'ElggUser','user','','update',33,0,2,'yes',1410961942,'127.0.0.1'),(97,33,'ElggUser','user','','login',33,0,2,'yes',1410961942,'127.0.0.1'),(98,33,'ElggUser','user','','logout',33,0,2,'yes',1410961960,'127.0.0.1'),(99,33,'ElggUser','user','','update',33,0,2,'yes',1410961960,'127.0.0.1');
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_apisessions`
--

DROP TABLE IF EXISTS `elgg_users_apisessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_entity`
--

DROP TABLE IF EXISTS `elgg_users_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (33,'admin','admin','4542d4f3882ac4583ad5cb4ccc6e6da1','7w-2TYJj','admin@csrfelgg.com','en','','no','yes',1410961960,1410961948,1410961942,1410863592),(39,'Alice','alice','8b27b667823c8c267af37c16c4ccd5c6','x6Av9l1h','alice@csrflab.com','en','','no','no',1410961785,1410961774,1410961773,0),(40,'Boby','boby','255fcaec74695aae426911c5449c1c0f','BwoQk-ms','boby@csrflab.com','en','','no','no',1410961825,1410961822,1410961820,0),(41,'Charlie','charlie','0ac7b30110c6122fd67b4d9e8c726c26','IMwFj_cL','charlie@csrflab.com','en','','no','no',1410961895,1410961860,1410961859,0),(42,'Samy','samy','b2898b7483f49f0f496e3623bddeffdd','yj7fXANB','samy@csrflab.com','en','','no','no',1410961932,1410961929,1410961927,0);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_sessions`
--

DROP TABLE IF EXISTS `elgg_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('ot73q1bu8mrc2mja2efg4tdfp3',1410863916,'__elgg_session|s:32:\"b9a35233c7834ff65f287de983505374\";msg|a:0:{}'),('kvsjbord9gtd3k5tgs5uvprtb4',1410961040,'__elgg_session|s:32:\"b113f9f9a574ea163fd80e088ed672a7\";msg|a:0:{}'),('hvui5rqne82pkfvegrm20olmi2',1410961744,'__elgg_session|s:32:\"735889ede94941d07ca40a1305941496\";msg|a:0:{}'),('4gur6lkk4mg7ep70rik75nobp2',1410961788,'__elgg_session|s:32:\"c8098d4e90f4288fb02c7d680da506d7\";msg|a:0:{}'),('i89iod0q9hpaenfm8fft1c53q0',1410961830,'__elgg_session|s:32:\"42f13b804c35cb50dfcbd5e65960003e\";msg|a:0:{}'),('j3p3jbtj7q52t1rqe7ieeagcp2',1410961900,'__elgg_session|s:32:\"d99485cf0c358c74bb5db50fd7bea75e\";msg|a:0:{}'),('bkav6s51qv4upggg3vl2g81tg2',1410961933,'__elgg_session|s:32:\"9eb8b37dfc1d7f39460318e0451fac1a\";msg|a:0:{}'),('gnot89am588mqgnf76k4ppabe6',1410962262,'__elgg_session|s:32:\"20ac8af162c6698d8178a8e6bd57f646\";msg|a:0:{}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mysql`;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `thread_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `query_time` time NOT NULL,
  `lock_time` time NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('%','test','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y'),('%','test\\_%','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y'),('localhost','csrf_elgg_db','csrf_elgg_user','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','xss_elgg_db','xss_elgg_user','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','se_elgg_db','se_elgg_user','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','wt_elgg_db','wt_elgg_user','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','phpmyadmin','phpmyadmin','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','revive_adserver','wtuser','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (1,'Geographic',0,''),(2,'Polygon properties',35,''),(3,'WKT',35,''),(4,'Numeric Functions',39,''),(5,'Plugins',36,''),(6,'MBR',35,''),(7,'Control flow functions',39,''),(8,'Transactions',36,''),(9,'Help Metadata',36,''),(10,'Account Management',36,''),(11,'Point properties',35,''),(12,'Encryption Functions',39,''),(13,'LineString properties',35,''),(14,'Miscellaneous Functions',39,''),(15,'Logical operators',39,''),(16,'Functions and Modifiers for Use with GROUP BY',36,''),(17,'Information Functions',39,''),(18,'Storage Engines',36,''),(19,'Comparison operators',39,''),(20,'Bit Functions',39,''),(21,'Table Maintenance',36,''),(22,'User-Defined Functions',36,''),(23,'Data Types',36,''),(24,'Compound Statements',36,''),(25,'Geometry constructors',35,''),(26,'GeometryCollection properties',1,''),(27,'Administration',36,''),(28,'Data Manipulation',36,''),(29,'Utility',36,''),(30,'Language Structure',36,''),(31,'Geometry relations',35,''),(32,'Date and Time Functions',39,''),(33,'WKB',35,''),(34,'Procedures',36,''),(35,'Geographic Features',36,''),(36,'Contents',0,''),(37,'Geometry properties',35,''),(38,'String Functions',39,''),(39,'Functions',36,''),(40,'Data Definition',36,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (0,'JOIN'),(1,'HOST'),(2,'REPEAT'),(3,'SERIALIZABLE'),(4,'REPLACE'),(5,'AT'),(6,'SCHEDULE'),(7,'RETURNS'),(8,'STARTS'),(9,'MASTER_SSL_CA'),(10,'NCHAR'),(11,'ONLY'),(12,'COLUMNS'),(13,'COMPLETION'),(14,'WORK'),(15,'DATETIME'),(16,'MODE'),(17,'OPEN'),(18,'INTEGER'),(19,'ESCAPE'),(20,'VALUE'),(21,'MASTER_SSL_VERIFY_SERVER_CERT'),(22,'SQL_BIG_RESULT'),(23,'DROP'),(24,'GEOMETRYCOLLECTIONFROMWKB'),(25,'EVENTS'),(26,'MONTH'),(27,'PROFILES'),(28,'DUPLICATE'),(29,'REPLICATION'),(30,'UNLOCK'),(31,'INNODB'),(32,'YEAR_MONTH'),(33,'SUBJECT'),(34,'PREPARE'),(35,'LOCK'),(36,'NDB'),(37,'CHECK'),(38,'FULL'),(39,'INT4'),(40,'BY'),(41,'NO'),(42,'MINUTE'),(43,'PARTITION'),(44,'DATA'),(45,'DAY'),(46,'SHARE'),(47,'REAL'),(48,'SEPARATOR'),(49,'MESSAGE_TEXT'),(50,'MASTER_HEARTBEAT_PERIOD'),(51,'DELETE'),(52,'ON'),(53,'COLUMN_NAME'),(54,'CONNECTION'),(55,'CLOSE'),(56,'X509'),(57,'USE'),(58,'SUBCLASS_ORIGIN'),(59,'WHERE'),(60,'PRIVILEGES'),(61,'SPATIAL'),(62,'EVENT'),(63,'SUPER'),(64,'SQL_BUFFER_RESULT'),(65,'IGNORE'),(66,'SHA2'),(67,'QUICK'),(68,'SIGNED'),(69,'OFFLINE'),(70,'SECURITY'),(71,'AUTOEXTEND_SIZE'),(72,'NDBCLUSTER'),(73,'POLYGONFROMWKB'),(74,'FALSE'),(75,'LEVEL'),(76,'FORCE'),(77,'BINARY'),(78,'TO'),(79,'CHANGE'),(80,'CURRENT_USER'),(81,'HOUR_MINUTE'),(82,'UPDATE'),(83,'PRESERVE'),(84,'TABLE_NAME'),(85,'INTO'),(86,'FEDERATED'),(87,'VARYING'),(88,'MAX_SIZE'),(89,'HOUR_SECOND'),(90,'VARIABLE'),(91,'ROLLBACK'),(92,'PROCEDURE'),(93,'TIMESTAMP'),(94,'IMPORT'),(95,'AGAINST'),(96,'CHECKSUM'),(97,'COUNT'),(98,'LONGBINARY'),(99,'THEN'),(100,'INSERT'),(101,'ENGINES'),(102,'HANDLER'),(103,'PORT'),(104,'DAY_SECOND'),(105,'EXISTS'),(106,'MUTEX'),(107,'HELP_DATE'),(108,'RELEASE'),(109,'BOOLEAN'),(110,'MOD'),(111,'DEFAULT'),(112,'TYPE'),(113,'NO_WRITE_TO_BINLOG'),(114,'OPTIMIZE'),(115,'SQLSTATE'),(116,'RESET'),(117,'CLASS_ORIGIN'),(118,'INSTALL'),(119,'ITERATE'),(120,'DO'),(121,'BIGINT'),(122,'SET'),(123,'ISSUER'),(124,'DATE'),(125,'STATUS'),(126,'FULLTEXT'),(127,'COMMENT'),(128,'MASTER_CONNECT_RETRY'),(129,'INNER'),(130,'RELAYLOG'),(131,'STOP'),(132,'MASTER_LOG_FILE'),(133,'MRG_MYISAM'),(134,'PRECISION'),(135,'REQUIRE'),(136,'TRAILING'),(137,'PARTITIONS'),(138,'LONG'),(139,'OPTION'),(140,'REORGANIZE'),(141,'ELSE'),(142,'DEALLOCATE'),(143,'IO_THREAD'),(144,'CASE'),(145,'CIPHER'),(146,'CONTINUE'),(147,'FROM'),(148,'READ'),(149,'LEFT'),(150,'ELSEIF'),(151,'MINUTE_SECOND'),(152,'COMPACT'),(153,'DEC'),(154,'FOR'),(155,'WARNINGS'),(156,'MIN_ROWS'),(157,'STRING'),(158,'CONDITION'),(159,'ENCLOSED'),(160,'FUNCTION'),(161,'AGGREGATE'),(162,'FIELDS'),(163,'INT3'),(164,'ARCHIVE'),(165,'AVG_ROW_LENGTH'),(166,'ADD'),(167,'KILL'),(168,'FLOAT4'),(169,'TABLESPACE'),(170,'VIEW'),(171,'REPEATABLE'),(172,'INFILE'),(173,'HELP_VERSION'),(174,'ORDER'),(175,'USING'),(176,'CONSTRAINT_CATALOG'),(177,'MIDDLEINT'),(178,'GRANT'),(179,'UNSIGNED'),(180,'DECIMAL'),(181,'GEOMETRYFROMTEXT'),(182,'INDEXES'),(183,'FOREIGN'),(184,'CACHE'),(185,'HOSTS'),(186,'MYSQL_ERRNO'),(187,'COMMIT'),(188,'SCHEMAS'),(189,'LEADING'),(190,'SNAPSHOT'),(191,'CONSTRAINT_NAME'),(192,'DECLARE'),(193,'LOAD'),(194,'SQL_CACHE'),(195,'CONVERT'),(196,'DYNAMIC'),(197,'COLLATE'),(198,'POLYGONFROMTEXT'),(199,'BYTE'),(200,'GLOBAL'),(201,'LINESTRINGFROMWKB'),(202,'WHEN'),(203,'HAVING'),(204,'AS'),(205,'STARTING'),(206,'RELOAD'),(207,'AUTOCOMMIT'),(208,'REVOKE'),(209,'GRANTS'),(210,'OUTER'),(211,'CURSOR_NAME'),(212,'FLOOR'),(213,'EXPLAIN'),(214,'WITH'),(215,'AFTER'),(216,'STD'),(217,'CSV'),(218,'DISABLE'),(219,'UNINSTALL'),(220,'OUTFILE'),(221,'LOW_PRIORITY'),(222,'FILE'),(223,'NODEGROUP'),(224,'SCHEMA'),(225,'SONAME'),(226,'POW'),(227,'DUAL'),(228,'MULTIPOINTFROMWKB'),(229,'INDEX'),(230,'MULTIPOINTFROMTEXT'),(231,'DEFINER'),(232,'MASTER_BIND'),(233,'REMOVE'),(234,'EXTENDED'),(235,'MULTILINESTRINGFROMWKB'),(236,'CROSS'),(237,'CONTRIBUTORS'),(238,'NATIONAL'),(239,'GROUP'),(240,'SHA'),(241,'ONLINE'),(242,'UNDO'),(243,'IGNORE_SERVER_IDS'),(244,'ZEROFILL'),(245,'CLIENT'),(246,'MASTER_PASSWORD'),(247,'OWNER'),(248,'RELAY_LOG_FILE'),(249,'TRUE'),(250,'CHARACTER'),(251,'MASTER_USER'),(252,'SCHEMA_NAME'),(253,'TABLE'),(254,'ENGINE'),(255,'INSERT_METHOD'),(256,'CASCADE'),(257,'RELAY_LOG_POS'),(258,'SQL_CALC_FOUND_ROWS'),(259,'UNION'),(260,'MYISAM'),(261,'LEAVE'),(262,'MODIFY'),(263,'MATCH'),(264,'MASTER_LOG_POS'),(265,'DISTINCTROW'),(266,'DESC'),(267,'TIME'),(268,'NUMERIC'),(269,'EXPANSION'),(270,'CODE'),(271,'CURSOR'),(272,'GEOMETRYCOLLECTIONFROMTEXT'),(273,'CHAIN'),(274,'LOGFILE'),(275,'FLUSH'),(276,'CREATE'),(277,'DESCRIBE'),(278,'EXTENT_SIZE'),(279,'MAX_UPDATES_PER_HOUR'),(280,'INT2'),(281,'PROCESSLIST'),(282,'ENDS'),(283,'LOGS'),(284,'RECOVER'),(285,'DISCARD'),(286,'HEAP'),(287,'SOUNDS'),(288,'BETWEEN'),(289,'MULTILINESTRINGFROMTEXT'),(290,'REPAIR'),(291,'PACK_KEYS'),(292,'FAST'),(293,'VALUES'),(294,'CALL'),(295,'LOOP'),(296,'VARCHARACTER'),(297,'BEFORE'),(298,'TRUNCATE'),(299,'SHOW'),(300,'ALL'),(301,'REDUNDANT'),(302,'USER_RESOURCES'),(303,'PARTIAL'),(304,'BINLOG'),(305,'END'),(306,'SECOND'),(307,'AND'),(308,'FLOAT8'),(309,'PREV'),(310,'HOUR'),(311,'SELECT'),(312,'DATABASES'),(313,'OR'),(314,'IDENTIFIED'),(315,'WRAPPER'),(316,'MASTER_SSL_CIPHER'),(317,'SQL_SLAVE_SKIP_COUNTER'),(318,'BOTH'),(319,'BOOL'),(320,'YEAR'),(321,'MASTER_PORT'),(322,'CONCURRENT'),(323,'HELP'),(324,'UNIQUE'),(325,'TRIGGERS'),(326,'PROCESS'),(327,'OPTIONS'),(328,'RESIGNAL'),(329,'CONSISTENT'),(330,'MASTER_SSL'),(331,'DATE_ADD'),(332,'MAX_CONNECTIONS_PER_HOUR'),(333,'LIKE'),(334,'PLUGIN'),(335,'FETCH'),(336,'IN'),(337,'COLUMN'),(338,'DUMPFILE'),(339,'USAGE'),(340,'EXECUTE'),(341,'MEMORY'),(342,'CEIL'),(343,'QUERY'),(344,'MASTER_HOST'),(345,'LINES'),(346,'SQL_THREAD'),(347,'SERVER'),(348,'MAX_QUERIES_PER_HOUR'),(349,'MASTER_SSL_CERT'),(350,'MULTIPOLYGONFROMWKB'),(351,'TRANSACTION'),(352,'DAY_MINUTE'),(353,'STDDEV'),(354,'DATE_SUB'),(355,'REBUILD'),(356,'GEOMETRYFROMWKB'),(357,'INT1'),(358,'RENAME'),(359,'PARSER'),(360,'RIGHT'),(361,'ALTER'),(362,'MAX_ROWS'),(363,'SOCKET'),(364,'STRAIGHT_JOIN'),(365,'NATURAL'),(366,'VARIABLES'),(367,'ESCAPED'),(368,'SHA1'),(369,'KEY_BLOCK_SIZE'),(370,'PASSWORD'),(371,'OFFSET'),(372,'CHAR'),(373,'NEXT'),(374,'ERRORS'),(375,'SQL_LOG_BIN'),(376,'TEMPORARY'),(377,'COMMITTED'),(378,'SQL_SMALL_RESULT'),(379,'UPGRADE'),(380,'XA'),(381,'BEGIN'),(382,'DELAY_KEY_WRITE'),(383,'PROFILE'),(384,'MEDIUM'),(385,'INTERVAL'),(386,'SSL'),(387,'DAY_HOUR'),(388,'NAME'),(389,'REFERENCES'),(390,'AES_ENCRYPT'),(391,'STORAGE'),(392,'ISOLATION'),(393,'CEILING'),(394,'EVERY'),(395,'INT8'),(396,'AUTHORS'),(397,'RESTRICT'),(398,'UNCOMMITTED'),(399,'LINESTRINGFROMTEXT'),(400,'IS'),(401,'NOT'),(402,'ANALYSE'),(403,'DATAFILE'),(404,'DES_KEY_FILE'),(405,'SIGNAL'),(406,'COMPRESSED'),(407,'START'),(408,'PLUGINS'),(409,'SAVEPOINT'),(410,'IF'),(411,'ROWS'),(412,'PRIMARY'),(413,'PURGE'),(414,'LAST'),(415,'USER'),(416,'EXIT'),(417,'KEYS'),(418,'LIMIT'),(419,'KEY'),(420,'MERGE'),(421,'UNTIL'),(422,'SQL_NO_CACHE'),(423,'DELAYED'),(424,'CONSTRAINT_SCHEMA'),(425,'ANALYZE'),(426,'CONSTRAINT'),(427,'SERIAL'),(428,'ACTION'),(429,'WRITE'),(430,'INITIAL_SIZE'),(431,'SESSION'),(432,'DATABASE'),(433,'NULL'),(434,'POWER'),(435,'USE_FRM'),(436,'TERMINATED'),(437,'SLAVE'),(438,'NVARCHAR'),(439,'ASC'),(440,'RETURN'),(441,'OPTIONALLY'),(442,'ENABLE'),(443,'DIRECTORY'),(444,'MAX_USER_CONNECTIONS'),(445,'WHILE'),(446,'LOCAL'),(447,'DISTINCT'),(448,'AES_DECRYPT'),(449,'MASTER_SSL_KEY'),(450,'NONE'),(451,'TABLES'),(452,'<>'),(453,'RLIKE'),(454,'TRIGGER'),(455,'COLLATION'),(456,'SHUTDOWN'),(457,'HIGH_PRIORITY'),(458,'BTREE'),(459,'FIRST'),(460,'COALESCE'),(461,'WAIT'),(462,'CATALOG_NAME'),(463,'MASTER'),(464,'FIXED'),(465,'MULTIPOLYGONFROMTEXT'),(466,'ROW_FORMAT');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (1,0),(357,0),(475,1),(234,2),(449,3),(3,4),(131,4),(422,4),(90,5),(90,6),(407,6),(98,7),(90,8),(186,9),(431,10),(436,11),(21,12),(348,12),(422,12),(465,12),(470,12),(90,13),(407,13),(147,14),(231,15),(89,16),(357,16),(18,17),(107,17),(135,17),(348,17),(98,18),(502,18),(381,19),(3,20),(105,20),(245,20),(375,20),(461,20),(186,21),(357,22),(9,23),(30,23),(34,23),(88,23),(187,23),(232,23),(239,23),(265,23),(278,23),(302,23),(332,23),(406,23),(416,23),(417,23),(465,23),(480,23),(109,24),(123,25),(171,25),(425,25),(377,26),(83,27),(105,28),(200,29),(36,30),(348,31),(470,31),(377,32),(200,33),(35,34),(239,34),(436,34),(36,35),(357,35),(470,36),(418,37),(465,37),(470,37),(21,38),(296,38),(348,38),(453,38),(470,38),(502,39),(49,40),(78,40),(84,40),(131,40),(200,40),(357,40),(362,40),(422,40),(465,40),(470,40),(470,41),(474,41),(377,42),(465,43),(470,43),(213,44),(422,44),(470,44),(475,44),(377,45),(357,46),(98,47),(316,47),(362,48),(375,49),(461,49),(186,50),(49,51),(470,51),(474,51),(1,52),(90,52),(407,52),(474,52),(375,53),(461,53),(177,54),(470,54),(52,55),(107,55),(200,56),(1,57),(56,57),(195,57),(375,58),(461,58),(49,59),(84,59),(107,59),(194,60),(200,60),(251,60),(211,61),(465,61),(90,62),(302,62),(359,62),(407,62),(200,63),(357,64),(1,65),(84,65),(105,65),(131,65),(357,65),(422,65),(465,65),(67,66),(49,67),(418,67),(468,67),(231,68),(88,69),(211,69),(465,69),(200,70),(195,71),(470,72),(92,73),(484,73),(386,74),(449,75),(1,76),(39,77),(231,77),(271,77),(186,78),(271,78),(462,78),(186,79),(465,79),(90,80),(407,80),(377,81),(84,82),(105,82),(357,82),(474,82),(90,83),(407,83),(375,84),(461,84),(3,85),(105,85),(306,85),(357,85),(470,86),(259,87),(195,88),(377,89),(130,90),(147,91),(436,91),(462,91),(17,92),(190,92),(304,92),(330,92),(348,92),(357,92),(417,92),(441,92),(490,92),(100,93),(189,93),(422,94),(465,94),(89,95),(402,96),(470,96),(70,97),(331,97),(434,97),(287,98),(28,99),(58,99),(86,99),(105,100),(196,100),(303,100),(488,100),(284,101),(348,101),(107,102),(315,102),(475,103),(377,104),(9,105),(30,105),(90,105),(156,105),(187,105),(278,105),(302,105),(348,106),(366,106),(110,107),(147,108),(436,108),(462,108),(24,109),(89,109),(114,110),(175,110),(3,111),(105,111),(156,111),(201,111),(213,111),(245,111),(465,111),(470,111),(465,112),(116,113),(328,113),(468,113),(472,113),(116,114),(465,114),(375,115),(461,115),(38,116),(120,116),(152,116),(266,116),(375,117),(461,117),(420,118),(125,119),(90,120),(126,120),(407,120),(498,120),(222,121),(3,122),(84,122),(105,122),(130,122),(131,122),(147,122),(156,122),(183,122),(213,122),(334,122),(348,122),(357,122),(375,122),(422,122),(461,122),(465,122),(470,122),(474,122),(479,122),(496,122),(200,123),(133,124),(231,124),(264,124),(377,124),(59,125),(138,125),(216,125),(224,125),(330,125),(337,125),(348,125),(366,125),(211,126),(465,126),(470,126),(90,127),(195,127),(211,127),(407,127),(470,127),(186,128),(1,129),(425,130),(53,131),(186,132),(470,133),(316,134),(200,135),(457,136),(257,137),(287,138),(200,139),(251,139),(465,140),(58,141),(86,141),(239,142),(53,143),(326,143),(58,144),(86,144),(200,145),(315,146),(49,147),(123,147),(348,147),(357,147),(425,147),(457,147),(36,148),(107,148),(436,148),(449,148),(1,149),(28,150),(377,151),(470,152),(210,153),(181,154),(315,154),(348,154),(357,154),(421,154),(331,155),(348,155),(470,156),(98,157),(181,158),(422,159),(34,160),(69,160),(98,160),(212,160),(235,160),(304,160),(337,160),(348,160),(394,160),(406,160),(417,160),(98,161),(348,162),(422,162),(254,163),(470,164),(465,165),(470,165),(61,166),(195,166),(465,166),(480,166),(177,167),(169,168),(195,169),(416,169),(465,169),(480,169),(30,170),(160,170),(456,170),(449,171),(131,172),(422,172),(191,173),(49,174),(84,174),(357,174),(362,174),(465,174),(1,175),(49,175),(87,175),(375,176),(461,176),(254,177),(200,178),(251,178),(24,179),(129,179),(169,179),(210,179),(231,179),(316,179),(502,179),(98,180),(157,180),(231,180),(412,181),(348,182),(465,183),(470,183),(474,183),(475,183),(102,184),(152,184),(306,184),(146,185),(348,185),(375,186),(461,186),(147,187),(436,187),(161,188),(348,188),(457,189),(147,190),(436,190),(375,191),(461,191),(181,192),(201,192),(315,192),(421,192),(306,193),(422,193),(357,194),(231,195),(378,195),(470,196),(156,197),(213,197),(470,197),(396,198),(467,199),(130,200),(138,200),(183,200),(350,200),(449,200),(454,201),(58,202),(86,202),(357,203),(1,204),(36,204),(357,204),(422,205),(200,206),(147,207),(251,208),(193,209),(348,209),(1,210),(375,211),(461,211),(222,212),(257,213),(89,214),(200,214),(211,214),(465,214),(470,214),(465,215),(262,216),(422,217),(470,217),(90,218),(407,218),(465,218),(293,219),(357,220),(3,221),(36,221),(49,221),(84,221),(105,221),(131,221),(422,221),(200,222),(195,223),(156,224),(187,224),(213,224),(311,224),(348,224),(98,225),(279,226),(281,227),(466,228),(1,229),(61,229),(88,229),(102,229),(211,229),(306,229),(310,229),(348,229),(465,229),(470,229),(426,230),(90,231),(407,231),(186,232),(465,233),(257,234),(468,234),(274,235),(1,236),(7,237),(348,237),(259,238),(431,238),(48,239),(195,239),(227,239),(232,239),(357,239),(428,240),(88,241),(211,241),(465,241),(315,242),(186,243),(24,244),(129,244),(169,244),(210,244),(316,244),(502,244),(200,245),(186,246),(475,247),(186,248),(386,249),(131,250),(156,250),(213,250),(259,250),(334,250),(348,250),(357,250),(422,250),(431,250),(470,250),(186,251),(375,252),(461,252),(61,253),(111,253),(116,253),(216,253),(278,253),(280,253),(323,253),(348,253),(402,253),(418,253),(465,253),(468,253),(470,253),(472,253),(195,254),(348,254),(366,254),(416,254),(465,254),(470,254),(480,254),(470,255),(30,256),(278,256),(470,256),(474,256),(186,257),(357,258),(307,259),(470,260),(312,261),(465,262),(89,263),(186,264),(357,265),(257,266),(357,266),(362,266),(231,267),(317,267),(376,267),(210,268),(89,269),(69,270),(490,270),(421,271),(248,272),(147,273),(48,274),(195,274),(227,274),(232,274),(152,275),(328,275),(17,276),(22,276),(48,276),(61,276),(78,276),(90,276),(98,276),(156,276),(195,276),(211,276),(212,276),(280,276),(304,276),(311,276),(348,276),(359,276),(394,276),(456,276),(470,276),(475,276),(257,277),(195,278),(200,279),(236,280),(348,281),(453,281),(90,282),(39,283),(271,283),(348,283),(436,284),(465,285),(470,286),(379,287),(148,288),(108,289),(465,290),(468,290),(470,291),(418,292),(3,293),(105,293),(340,294),(345,295),(259,296),(271,297),(323,298),(465,298),(7,299),(10,299),(17,299),(21,299),(25,299),(33,299),(39,299),(59,299),(69,299),(70,299),(83,299),(123,299),(135,299),(138,299),(146,299),(161,299),(171,299),(193,299),(194,299),(216,299),(224,299),(280,299),(284,299),(296,299),(310,299),(311,299),(330,299),(331,299),(334,299),(337,299),(348,299),(350,299),(359,299),(366,299),(394,299),(425,299),(453,299),(489,299),(490,299),(494,299),(38,300),(200,300),(251,300),(307,300),(357,300),(470,301),(328,302),(470,303),(123,304),(351,304),(28,305),(58,305),(86,305),(234,305),(329,305),(345,305),(436,305),(498,305),(377,306),(148,307),(318,307),(316,308),(107,309),(377,310),(3,311),(105,311),(257,311),(303,311),(357,311),(161,312),(348,312),(142,313),(78,314),(131,314),(200,314),(475,315),(186,316),(183,317),(457,318),(24,319),(112,319),(377,320),(186,321),(131,322),(422,322),(119,323),(391,323),(465,324),(25,325),(348,325),(200,326),(374,327),(475,327),(375,328),(147,329),(436,329),(186,330),(377,331),(200,332),(348,333),(379,333),(293,334),(348,334),(420,334),(384,335),(89,336),(123,336),(357,336),(425,336),(465,337),(357,338),(200,339),(87,340),(200,340),(357,341),(398,342),(89,343),(152,343),(177,343),(186,344),(131,345),(422,345),(53,346),(326,346),(9,347),(374,347),(475,347),(200,348),(186,349),(124,350),(147,351),(449,351),(377,352),(408,353),(377,354),(465,355),(145,356),(24,357),(111,358),(223,358),(407,358),(465,358),(211,359),(465,359),(470,359),(1,360),(61,361),(160,361),(200,361),(213,361),(227,361),(235,361),(374,361),(407,361),(441,361),(465,361),(480,361),(465,362),(470,362),(475,363),(1,364),(357,364),(1,365),(348,366),(350,366),(422,367),(428,368),(470,369),(78,370),(200,370),(475,370),(479,370),(357,371),(231,372),(467,372),(107,373),(70,374),(348,374),(496,375),(278,376),(449,377),(357,378),(213,379),(418,379),(436,380),(147,381),(329,381),(436,381),(470,382),(489,383),(418,384),(90,385),(377,385),(200,386),(377,387),(213,388),(200,389),(470,389),(474,389),(445,390),(284,391),(449,392),(450,393),(90,394),(129,395),(10,396),(348,396),(30,397),(278,397),(474,397),(449,398),(57,399),(85,400),(207,400),(369,400),(458,400),(85,401),(90,401),(156,401),(207,401),(314,401),(190,402),(195,403),(480,403),(328,404),(461,405),(470,406),(147,407),(326,407),(436,407),(33,408),(462,409),(9,410),(28,410),(30,410),(90,410),(156,410),(187,410),(278,410),(302,410),(481,410),(131,411),(465,412),(271,413),(107,414),(78,415),(223,415),(332,415),(475,415),(315,416),(310,417),(348,417),(465,417),(49,418),(84,418),(107,418),(123,418),(357,418),(425,418),(61,419),(105,419),(465,419),(470,419),(474,419),(470,420),(234,421),(357,422),(3,423),(105,423),(488,423),(375,424),(461,424),(465,425),(472,425),(465,426),(470,426),(245,427),(470,427),(470,428),(474,428),(36,429),(436,429),(195,430),(480,430),(130,431),(138,431),(350,431),(449,431),(156,432),(187,432),(213,432),(311,432),(348,432),(475,432),(85,433),(369,433),(474,433),(485,434),(468,435),(422,436),(38,437),(53,437),(90,437),(146,437),(224,437),(326,437),(407,437),(259,438),(357,439),(362,439),(493,440),(422,441),(90,442),(407,442),(465,442),(213,443),(470,443),(200,444),(498,445),(36,446),(116,446),(131,446),(328,446),(422,446),(468,446),(472,446),(0,447),(97,447),(290,447),(307,447),(357,447),(362,447),(385,447),(434,447),(499,448),(186,449),(200,450),(36,451),(135,451),(296,451),(348,451),(497,452),(27,453),(22,454),(265,454),(348,454),(348,455),(494,455),(200,456),(105,457),(357,457),(211,458),(107,459),(465,459),(470,459),(465,460),(195,461),(480,461),(375,462),(461,462),(39,463),(59,463),(186,463),(266,463),(271,463),(210,464),(470,464),(202,465),(470,466);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (0,'MIN',16,'Syntax:\nMIN([DISTINCT] expr)\n\nReturns the minimum value of expr. MIN() may take a string argument; in\nsuch cases, it returns the minimum string value. See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the minimum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMIN() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(1,'JOIN',28,'MySQL supports the following JOIN syntaxes for the table_references\npart of SELECT statements and multiple-table DELETE and UPDATE\nstatements:\n\ntable_references:\n    escaped_table_reference [, escaped_table_reference] ...\n\nescaped_table_reference:\n    table_reference\n  | { OJ table_reference }\n\ntable_reference:\n    table_factor\n  | join_table\n\ntable_factor:\n    tbl_name [[AS] alias] [index_hint_list]\n  | table_subquery [AS] alias\n  | ( table_references )\n\njoin_table:\n    table_reference [INNER | CROSS] JOIN table_factor [join_condition]\n  | table_reference STRAIGHT_JOIN table_factor\n  | table_reference STRAIGHT_JOIN table_factor ON conditional_expr\n  | table_reference {LEFT|RIGHT} [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [{LEFT|RIGHT} [OUTER]] JOIN table_factor\n\njoin_condition:\n    ON conditional_expr\n  | USING (column_list)\n\nindex_hint_list:\n    index_hint [, index_hint] ...\n\nindex_hint:\n    USE {INDEX|KEY}\n      [FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])\n  | IGNORE {INDEX|KEY}\n      [FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n  | FORCE {INDEX|KEY}\n      [FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n\nindex_list:\n    index_name [, index_name] ...\n\nA table reference is also known as a join expression.\n\nThe syntax of table_factor is extended in comparison with the SQL\nStandard. The latter accepts only table_reference, not a list of them\ninside a pair of parentheses.\n\nThis is a conservative extension if we consider each comma in a list of\ntable_reference items as equivalent to an inner join. For example:\n\nSELECT * FROM t1 LEFT JOIN (t2, t3, t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nis equivalent to:\n\nSELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nIn MySQL, JOIN, CROSS JOIN, and INNER JOIN are syntactic equivalents\n(they can replace each other). In standard SQL, they are not\nequivalent. INNER JOIN is used with an ON clause, CROSS JOIN is used\notherwise.\n\nIn general, parentheses can be ignored in join expressions containing\nonly inner join operations. MySQL also supports nested joins (see\nhttp://dev.mysql.com/doc/refman/5.5/en/nested-join-optimization.html).\n\nIndex hints can be specified to affect how the MySQL optimizer makes\nuse of indexes. For more information, see\nhttp://dev.mysql.com/doc/refman/5.5/en/index-hints.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/join.html\n\n','SELECT left_tbl.*\n  FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id\n  WHERE right_tbl.id IS NULL;\n','http://dev.mysql.com/doc/refman/5.5/en/join.html'),(2,'HEX',38,'Syntax:\nHEX(str), HEX(N)\n\nFor a string argument str, HEX() returns a hexadecimal string\nrepresentation of str where each character in str is converted to two\nhexadecimal digits. The inverse of this operation is performed by the\nUNHEX() function.\n\nFor a numeric argument N, HEX() returns a hexadecimal string\nrepresentation of the value of N treated as a longlong (BIGINT) number.\nThis is equivalent to CONV(N,10,16). The inverse of this operation is\nperformed by CONV(HEX(N),16,10).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT 0x616263, HEX(\'abc\'), UNHEX(HEX(\'abc\'));\n        -> \'abc\', 616263, \'abc\'\nmysql> SELECT HEX(255), CONV(HEX(255),16,10);\n        -> \'FF\', 255\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(3,'REPLACE',28,'Syntax:\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n\nREPLACE works exactly like INSERT, except that if an old row in the\ntable has the same value as a new row for a PRIMARY KEY or a UNIQUE\nindex, the old row is deleted before the new row is inserted. See [HELP\nINSERT].\n\nREPLACE is a MySQL extension to the SQL standard. It either inserts, or\ndeletes and inserts. For another MySQL extension to standard SQL---that\neither inserts or updates---see\nhttp://dev.mysql.com/doc/refman/5.5/en/insert-on-duplicate.html.\n\nNote that unless the table has a PRIMARY KEY or UNIQUE index, using a\nREPLACE statement makes no sense. It becomes equivalent to INSERT,\nbecause there is no index to be used to determine whether a new row\nduplicates another.\n\nValues for all columns are taken from the values specified in the\nREPLACE statement. Any missing columns are set to their default values,\njust as happens for INSERT. You cannot refer to values from the current\nrow and use them in the new row. If you use an assignment such as SET\ncol_name = col_name + 1, the reference to the column name on the right\nhand side is treated as DEFAULT(col_name), so the assignment is\nequivalent to SET col_name = DEFAULT(col_name) + 1.\n\nTo use REPLACE, you must have both the INSERT and DELETE privileges for\nthe table.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/replace.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/replace.html'),(4,'CONTAINS',31,'Contains(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 completely contains g2. This\ntests the opposite relationship as Within().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(5,'SRID',37,'SRID(g)\n\nReturns an integer indicating the Spatial Reference System ID for the\ngeometry value g.\n\nIn MySQL, the SRID value is just an integer associated with the\ngeometry value. All calculations are done assuming Euclidean (planar)\ngeometry.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SELECT SRID(GeomFromText(\'LineString(1 1,2 2)\',101));\n+-----------------------------------------------+\n| SRID(GeomFromText(\'LineString(1 1,2 2)\',101)) |\n+-----------------------------------------------+\n|                                           101 |\n+-----------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(6,'CURRENT_TIMESTAMP',32,'Syntax:\nCURRENT_TIMESTAMP, CURRENT_TIMESTAMP()\n\nCURRENT_TIMESTAMP and CURRENT_TIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(7,'SHOW CONTRIBUTORS',27,'Syntax:\nSHOW CONTRIBUTORS\n\nThe SHOW CONTRIBUTORS statement displays information about the people\nwho contribute to MySQL source or to causes that we support. For each\ncontributor, it displays Name, Location, and Comment values.\n\nThis statement is deprecated as of MySQL 5.5.29 and is removed in MySQL\n5.6.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-contributors.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-contributors.html'),(8,'VARIANCE',16,'Syntax:\nVARIANCE(expr)\n\nReturns the population standard variance of expr. This is an extension\nto standard SQL. The standard SQL function VAR_POP() can be used\ninstead.\n\nVARIANCE() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(9,'DROP SERVER',40,'Syntax:\nDROP SERVER [ IF EXISTS ] server_name\n\nDrops the server definition for the server named server_name. The\ncorresponding row in the mysql.servers table is deleted. This statement\nrequires the SUPER privilege.\n\nDropping a server for a table does not affect any FEDERATED tables that\nused this connection information when they were created. See [HELP\nCREATE SERVER].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-server.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-server.html'),(10,'SHOW AUTHORS',27,'Syntax:\nSHOW AUTHORS\n\nThe SHOW AUTHORS statement displays information about the people who\nwork on MySQL. For each author, it displays Name, Location, and Comment\nvalues.\n\nThis statement is deprecated as of MySQL 5.5.29 and is removed in MySQL\n5.6.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-authors.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-authors.html'),(11,'VAR_SAMP',16,'Syntax:\nVAR_SAMP(expr)\n\nReturns the sample variance of expr. That is, the denominator is the\nnumber of rows minus one.\n\nVAR_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(12,'CONCAT',38,'Syntax:\nCONCAT(str1,str2,...)\n\nReturns the string that results from concatenating the arguments. May\nhave one or more arguments. If all arguments are nonbinary strings, the\nresult is a nonbinary string. If the arguments include any binary\nstrings, the result is a binary string. A numeric argument is converted\nto its equivalent string form. This is a nonbinary string as of MySQL\n5.5.3. Before 5.5.3, it is a binary string; to to avoid that and\nproduce a nonbinary string, you can use an explicit type cast, as in\nthis example:\n\nSELECT CONCAT(CAST(int_col AS CHAR), char_col);\n\nCONCAT() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT CONCAT(\'My\', \'S\', \'QL\');\n        -> \'MySQL\'\nmysql> SELECT CONCAT(\'My\', NULL, \'QL\');\n        -> NULL\nmysql> SELECT CONCAT(14.3);\n        -> \'14.3\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(13,'GEOMETRY HIERARCHY',35,'Geometry is the base class. It is an abstract class. The instantiable\nsubclasses of Geometry are restricted to zero-, one-, and\ntwo-dimensional geometric objects that exist in two-dimensional\ncoordinate space. All instantiable geometry classes are defined so that\nvalid instances of a geometry class are topologically closed (that is,\nall defined geometries include their boundary).\n\nThe base Geometry class has subclasses for Point, Curve, Surface, and\nGeometryCollection:\n\no Point represents zero-dimensional objects.\n\no Curve represents one-dimensional objects, and has subclass\n  LineString, with sub-subclasses Line and LinearRing.\n\no Surface is designed for two-dimensional objects and has subclass\n  Polygon.\n\no GeometryCollection has specialized zero-, one-, and two-dimensional\n  collection classes named MultiPoint, MultiLineString, and\n  MultiPolygon for modeling geometries corresponding to collections of\n  Points, LineStrings, and Polygons, respectively. MultiCurve and\n  MultiSurface are introduced as abstract superclasses that generalize\n  the collection interfaces to handle Curves and Surfaces.\n\nGeometry, Curve, Surface, MultiCurve, and MultiSurface are defined as\nnoninstantiable classes. They define a common set of methods for their\nsubclasses and are included for extensibility.\n\nPoint, LineString, Polygon, GeometryCollection, MultiPoint,\nMultiLineString, and MultiPolygon are instantiable classes.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/gis-geometry-class-hierarchy.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/gis-geometry-class-hierarchy.html'),(14,'CHAR FUNCTION',38,'Syntax:\nCHAR(N,... [USING charset_name])\n\nCHAR() interprets each argument N as an integer and returns a string\nconsisting of the characters given by the code values of those\nintegers. NULL values are skipped.\nBy default, CHAR() returns a binary string. To produce a string in a\ngiven character set, use the optional USING clause:\n\nmysql> SELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));\n+---------------------+--------------------------------+\n| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |\n+---------------------+--------------------------------+\n| binary              | utf8                           |\n+---------------------+--------------------------------+\n\nIf USING is given and the result string is illegal for the given\ncharacter set, a warning is issued. Also, if strict SQL mode is\nenabled, the result from CHAR() becomes NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT CHAR(77,121,83,81,\'76\');\n        -> \'MySQL\'\nmysql> SELECT CHAR(77,77.3,\'77.3\');\n        -> \'MMM\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(15,'DATETIME',23,'DATETIME\n\nA date and time combination. The supported range is \'1000-01-01\n00:00:00\' to \'9999-12-31 23:59:59\'. MySQL displays DATETIME values in\n\'YYYY-MM-DD HH:MM:SS\' format, but permits assignment of values to\nDATETIME columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html'),(16,'SHOW CREATE TRIGGER',27,'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows a CREATE TRIGGER statement that creates the given\ntrigger.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-create-trigger.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-create-trigger.html'),(17,'SHOW CREATE PROCEDURE',27,'Syntax:\nSHOW CREATE PROCEDURE proc_name\n\nThis statement is a MySQL extension. It returns the exact string that\ncan be used to re-create the named stored procedure. A similar\nstatement, SHOW CREATE FUNCTION, displays information about stored\nfunctions (see [HELP SHOW CREATE FUNCTION]).\n\nBoth statements require that you be the owner of the routine or have\nSELECT access to the mysql.proc table. If you do not have privileges\nfor the routine itself, the value displayed for the Create Procedure or\nCreate Function field will be NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-create-procedure.html\n\n','mysql> SHOW CREATE PROCEDURE test.simpleproc\\G\n*************************** 1. row ***************************\n           Procedure: simpleproc\n            sql_mode:\n    Create Procedure: CREATE PROCEDURE `simpleproc`(OUT param1 INT)\n                      BEGIN\n                      SELECT COUNT(*) INTO param1 FROM t;\n                      END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\nmysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode:\n     Create Function: CREATE FUNCTION `hello`(s CHAR(20))\n                      RETURNS CHAR(50)\n                      RETURN CONCAT(\'Hello, \',s,\'!\')\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n','http://dev.mysql.com/doc/refman/5.5/en/show-create-procedure.html'),(18,'OPEN',24,'Syntax:\nOPEN cursor_name\n\nThis statement opens a previously declared cursor. For an example, see\nhttp://dev.mysql.com/doc/refman/5.5/en/cursors.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/open.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/open.html'),(19,'INTEGER',23,'INTEGER[(M)] [UNSIGNED] [ZEROFILL]\n\nThis type is a synonym for INT.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(20,'LOWER',38,'Syntax:\nLOWER(str)\n\nReturns the string str with all characters changed to lowercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nmysql> SELECT LOWER(\'QUADRATICALLY\');\n        -> \'quadratically\'\n\nLOWER() (and UPPER()) are ineffective when applied to binary strings\n(BINARY, VARBINARY, BLOB). To perform lettercase conversion, convert\nthe string to a nonbinary string:\n\nmysql> SET @str = BINARY \'New York\';\nmysql> SELECT LOWER(@str), LOWER(CONVERT(@str USING latin1));\n+-------------+-----------------------------------+\n| LOWER(@str) | LOWER(CONVERT(@str USING latin1)) |\n+-------------+-----------------------------------+\n| New York    | new york                          |\n+-------------+-----------------------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(21,'SHOW COLUMNS',27,'Syntax:\nSHOW [FULL] COLUMNS {FROM | IN} tbl_name [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. The LIKE clause, if present, indicates which\ncolumn names to match. The WHERE clause can be given to select rows\nusing more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nSHOW COLUMNS displays information only for those columns for which you\nhave some privilege.\n\nmysql> SHOW COLUMNS FROM City;\n+------------+----------+------+-----+---------+----------------+\n| Field      | Type     | Null | Key | Default | Extra          |\n+------------+----------+------+-----+---------+----------------+\n| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name       | char(35) | NO   |     |         |                |\n| Country    | char(3)  | NO   | UNI |         |                |\n| District   | char(20) | YES  | MUL |         |                |\n| Population | int(11)  | NO   |     | 0       |                |\n+------------+----------+------+-----+---------+----------------+\n5 rows in set (0.00 sec)\n\nIf the data types differ from what you expect them to be based on a\nCREATE TABLE statement, note that MySQL sometimes changes data types\nwhen you create or alter a table. The conditions under which this\noccurs are described in\nhttp://dev.mysql.com/doc/refman/5.5/en/silent-column-changes.html.\n\nThe FULL keyword causes the output to include the column collation and\ncomments, as well as the privileges you have for each column.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. In other words, these two statements are equivalent:\n\nmysql> SHOW COLUMNS FROM mytable FROM mydb;\nmysql> SHOW COLUMNS FROM mydb.mytable;\n\nSHOW COLUMNS displays the following values for each table column:\n\nField indicates the column name.\n\nType indicates the column data type.\n\nCollation indicates the collation for nonbinary string columns, or NULL\nfor other columns. This value is displayed only if you use the FULL\nkeyword.\n\nThe Null field contains YES if NULL values can be stored in the column,\nNO if not.\n\nThe Key field indicates whether the column is indexed:\n\no If Key is empty, the column either is not indexed or is indexed only\n  as a secondary column in a multiple-column, nonunique index.\n\no If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n  in a multiple-column PRIMARY KEY.\n\no If Key is UNI, the column is the first column of a UNIQUE index. (A\n  UNIQUE index permits multiple NULL values, but you can tell whether\n  the column permits NULL by checking the Null field.)\n\no If Key is MUL, the column is the first column of a nonunique index in\n  which multiple occurrences of a given value are permitted within the\n  column.\n\nIf more than one of the Key values applies to a given column of a\ntable, Key displays the one with the highest priority, in the order\nPRI, UNI, MUL.\n\nA UNIQUE index may be displayed as PRI if it cannot contain NULL values\nand there is no PRIMARY KEY in the table. A UNIQUE index may display as\nMUL if several columns form a composite UNIQUE index; although the\ncombination of the columns is unique, each column can still hold\nmultiple occurrences of a given value.\n\nThe Default field indicates the default value that is assigned to the\ncolumn. This is NULL if the column has an explicit default of NULL, or\nif the column definition has no DEFAULT clause.\n\nThe Extra field contains any additional information that is available\nabout a given column. The value is nonempty in these cases:\nauto_increment for columns that have the AUTO_INCREMENT attribute; on\nupdate CURRENT_TIMESTAMP for TIMESTAMP columns that have the ON UPDATE\nCURRENT_TIMESTAMP attribute.\n\nPrivileges indicates the privileges you have for the column. This value\nis displayed only if you use the FULL keyword.\n\nComment indicates any comment the column has. This value is displayed\nonly if you use the FULL keyword.\n\nSHOW FIELDS is a synonym for SHOW COLUMNS. You can also list a table\'s\ncolumns with the mysqlshow db_name tbl_name command.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee http://dev.mysql.com/doc/refman/5.5/en/describe.html.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-columns.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-columns.html'),(22,'CREATE TRIGGER',40,'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    TRIGGER trigger_name trigger_time trigger_event\n    ON tbl_name FOR EACH ROW trigger_body\n\nThis statement creates a new trigger. A trigger is a named database\nobject that is associated with a table, and that activates when a\nparticular event occurs for the table. The trigger becomes associated\nwith the table named tbl_name, which must refer to a permanent table.\nYou cannot associate a trigger with a TEMPORARY table or a view.\n\nCREATE TRIGGER requires the TRIGGER privilege for the table associated\nwith the trigger. The statement might also require the SUPER privilege,\ndepending on the DEFINER value, as described later in this section. If\nbinary logging is enabled, CREATE TRIGGER might require the SUPER\nprivilege, as described in\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-programs-logging.html.\n\nThe DEFINER clause determines the security context to be used when\nchecking access privileges at trigger activation time. See later in\nthis section for more information.\n\ntrigger_time is the trigger action time. It can be BEFORE or AFTER to\nindicate that the trigger activates before or after each row to be\nmodified.\n\ntrigger_event indicates the kind of statement that activates the\ntrigger. The trigger_event can be one of the following:\n\no INSERT: The trigger is activated whenever a new row is inserted into\n  the table; for example, through INSERT, LOAD DATA, and REPLACE\n  statements.\n\no UPDATE: The trigger is activated whenever a row is modified; for\n  example, through UPDATE statements.\n\no DELETE: The trigger is activated whenever a row is deleted from the\n  table; for example, through DELETE and REPLACE statements. However,\n  DROP TABLE and TRUNCATE TABLE statements on the table do not activate\n  this trigger, because they do not use DELETE. Dropping a partition\n  does not activate DELETE triggers, either. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-trigger.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-trigger.html'),(23,'MONTH',32,'Syntax:\nMONTH(date)\n\nReturns the month for date, in the range 1 to 12 for January to\nDecember, or 0 for dates such as \'0000-00-00\' or \'2008-00-00\' that have\na zero month part.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT MONTH(\'2008-02-03\');\n        -> 2\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(24,'TINYINT',23,'TINYINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA very small integer. The signed range is -128 to 127. The unsigned\nrange is 0 to 255.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(25,'SHOW TRIGGERS',27,'Syntax:\nSHOW TRIGGERS [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege. The LIKE clause, if present, indicates\nwhich table names to match and causes the statement to display triggers\nfor those tables. The WHERE clause can be given to select rows using\nmore general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nFor the trigger ins_sum as defined in\nhttp://dev.mysql.com/doc/refman/5.5/en/triggers.html, the output of\nthis statement is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: NULL\n            sql_mode:\n             Definer: myname@localhost\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\ncharacter_set_client is the session value of the character_set_client\nsystem variable when the trigger was created. collation_connection is\nthe session value of the collation_connection system variable when the\ntrigger was created. Database Collation is the collation of the\ndatabase with which the trigger is associated.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-triggers.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-triggers.html'),(26,'MASTER_POS_WAIT',14,'Syntax:\nMASTER_POS_WAIT(log_name,log_pos[,timeout])\n\nThis function is useful for control of master/slave synchronization. It\nblocks until the slave has read and applied all updates up to the\nspecified position in the master log. The return value is the number of\nlog events the slave had to wait for to advance to the specified\nposition. The function returns NULL if the slave SQL thread is not\nstarted, the slave\'s master information is not initialized, the\narguments are incorrect, or an error occurs. It returns -1 if the\ntimeout has been exceeded. If the slave SQL thread stops while\nMASTER_POS_WAIT() is waiting, the function returns NULL. If the slave\nis past the specified position, the function returns immediately.\n\nIf a timeout value is specified, MASTER_POS_WAIT() stops waiting when\ntimeout seconds have elapsed. timeout must be greater than 0; a zero or\nnegative timeout means no timeout.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(27,'REGEXP',38,'Syntax:\nexpr REGEXP pat, expr RLIKE pat\n\nPerforms a pattern match of a string expression expr against a pattern\npat. The pattern can be an extended regular expression. The syntax for\nregular expressions is discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/regexp.html. Returns 1 if expr\nmatches pat; otherwise it returns 0. If either expr or pat is NULL, the\nresult is NULL. RLIKE is a synonym for REGEXP, provided for mSQL\ncompatibility.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\n*Note*: Because MySQL uses the C escape syntax in strings (for example,\n\"\\n\" to represent the newline character), you must double any \"\\\" that\nyou use in your REGEXP strings.\n\nREGEXP is not case sensitive, except when used with binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/regexp.html\n\n','mysql> SELECT \'Monty!\' REGEXP \'.*\';\n        -> 1\nmysql> SELECT \'new*\\n*line\' REGEXP \'new\\\\*.\\\\*line\';\n        -> 1\nmysql> SELECT \'a\' REGEXP \'A\', \'a\' REGEXP BINARY \'A\';\n        -> 1  0\nmysql> SELECT \'a\' REGEXP \'^[a-d]\';\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/regexp.html'),(28,'IF STATEMENT',24,'Syntax:\nIF search_condition THEN statement_list\n    [ELSEIF search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND IF\n\nThe IF statement for stored programs implements a basic conditional\nconstruct.\n\n*Note*: There is also an IF() function, which differs from the IF\nstatement described here. See\nhttp://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html. The\nIF statement can have THEN, ELSE, and ELSEIF clauses, and it is\nterminated with END IF.\n\nIf the search_condition evaluates to true, the corresponding THEN or\nELSEIF clause statement_list executes. If no search_condition matches,\nthe ELSE clause statement_list executes.\n\nEach statement_list consists of one or more SQL statements; an empty\nstatement_list is not permitted.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/if.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/if.html'),(29,'^',20,'Syntax:\n^\n\nBitwise XOR:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html\n\n','mysql> SELECT 1 ^ 1;\n        -> 0\nmysql> SELECT 1 ^ 0;\n        -> 1\nmysql> SELECT 11 ^ 3;\n        -> 8\n','http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html'),(30,'DROP VIEW',40,'Syntax:\nDROP VIEW [IF EXISTS]\n    view_name [, view_name] ...\n    [RESTRICT | CASCADE]\n\nDROP VIEW removes one or more views. You must have the DROP privilege\nfor each view. If any of the views named in the argument list do not\nexist, MySQL returns an error indicating by name which nonexisting\nviews it was unable to drop, but it also drops all of the views in the\nlist that do exist.\n\nThe IF EXISTS clause prevents an error from occurring for views that\ndon\'t exist. When this clause is given, a NOTE is generated for each\nnonexistent view. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE, if given, are parsed and ignored.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-view.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-view.html'),(31,'WITHIN',31,'Within(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This\ntests the opposite relationship as Contains().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(32,'WEEK',32,'Syntax:\nWEEK(date[,mode])\n\nThis function returns the week number for date. The two-argument form\nof WEEK() enables you to specify whether the week starts on Sunday or\nMonday and whether the return value should be in the range from 0 to 53\nor from 1 to 53. If the mode argument is omitted, the value of the\ndefault_week_format system variable is used. See\nhttp://dev.mysql.com/doc/refman/5.5/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT WEEK(\'2008-02-20\');\n        -> 7\nmysql> SELECT WEEK(\'2008-02-20\',0);\n        -> 7\nmysql> SELECT WEEK(\'2008-02-20\',1);\n        -> 8\nmysql> SELECT WEEK(\'2008-12-31\',1);\n        -> 53\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(33,'SHOW PLUGINS',27,'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins. Plugin\ninformation is also available in the INFORMATION_SCHEMA.PLUGINS table.\nSee http://dev.mysql.com/doc/refman/5.5/en/plugins-table.html.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-plugins.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-plugins.html'),(34,'DROP FUNCTION UDF',22,'Syntax:\nDROP FUNCTION function_name\n\nThis statement drops the user-defined function (UDF) named\nfunction_name.\n\nTo drop a function, you must have the DELETE privilege for the mysql\ndatabase. This is because DROP FUNCTION removes a row from the\nmysql.func system table that records the function\'s name, type, and\nshared library name.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-function-udf.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-function-udf.html'),(35,'PREPARE',8,'Syntax:\nPREPARE stmt_name FROM preparable_stmt\n\nThe PREPARE statement prepares a SQL statement and assigns it a name,\nstmt_name, by which to refer to the statement later. The prepared\nstatement is executed with EXECUTE and released with DEALLOCATE\nPREPARE. For examples, see\nhttp://dev.mysql.com/doc/refman/5.5/en/sql-syntax-prepared-statements.h\ntml.\n\nStatement names are not case sensitive. preparable_stmt is either a\nstring literal or a user variable that contains the text of the SQL\nstatement. The text must represent a single statement, not multiple\nstatements. Within the statement, ? characters can be used as parameter\nmarkers to indicate where data values are to be bound to the query\nlater when you execute it. The ? characters should not be enclosed\nwithin quotation marks, even if you intend to bind them to string\nvalues. Parameter markers can be used only where data values should\nappear, not for SQL keywords, identifiers, and so forth.\n\nIf a prepared statement with the given name already exists, it is\ndeallocated implicitly before the new statement is prepared. This means\nthat if the new statement contains an error and cannot be prepared, an\nerror is returned and no statement with the given name exists.\n\nThe scope of a prepared statement is the session within which it is\ncreated, which as several implications:\n\no A prepared statement created in one session is not available to other\n  sessions.\n\no When a session ends, whether normally or abnormally, its prepared\n  statements no longer exist. If auto-reconnect is enabled, the client\n  is not notified that the connection was lost. For this reason,\n  clients may wish to disable auto-reconnect. See\n  http://dev.mysql.com/doc/refman/5.5/en/auto-reconnect.html.\n\no A prepared statement created within a stored program continues to\n  exist after the program finishes executing and can be executed\n  outside the program later.\n\no A statement prepared in stored program context cannot refer to stored\n  procedure or function parameters or local variables because they go\n  out of scope when the program ends and would be unavailable were the\n  statement to be executed later outside the program. As a workaround,\n  refer instead to user-defined variables, which also have session\n  scope; see\n  http://dev.mysql.com/doc/refman/5.5/en/user-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/prepare.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/prepare.html'),(36,'LOCK',8,'Syntax:\nLOCK TABLES\n    tbl_name [[AS] alias] lock_type\n    [, tbl_name [[AS] alias] lock_type] ...\n\nlock_type:\n    READ [LOCAL]\n  | [LOW_PRIORITY] WRITE\n\nUNLOCK TABLES\n\nMySQL enables client sessions to acquire table locks explicitly for the\npurpose of cooperating with other sessions for access to tables, or to\nprevent other sessions from modifying tables during periods when a\nsession requires exclusive access to them. A session can acquire or\nrelease locks only for itself. One session cannot acquire locks for\nanother session or release locks held by another session.\n\nLocks may be used to emulate transactions or to get more speed when\nupdating tables. This is explained in more detail later in this\nsection.\n\nLOCK TABLES explicitly acquires table locks for the current client\nsession. Table locks can be acquired for base tables or views. You must\nhave the LOCK TABLES privilege, and the SELECT privilege for each\nobject to be locked.\n\nFor view locking, LOCK TABLES adds all base tables used in the view to\nthe set of tables to be locked and locks them automatically. If you\nlock a table explicitly with LOCK TABLES, any tables used in triggers\nare also locked implicitly, as described in\nhttp://dev.mysql.com/doc/refman/5.5/en/lock-tables-and-triggers.html.\n\nUNLOCK TABLES explicitly releases any table locks held by the current\nsession. LOCK TABLES implicitly releases any table locks held by the\ncurrent session before acquiring new locks.\n\nAnother use for UNLOCK TABLES is to release the global read lock\nacquired with the FLUSH TABLES WITH READ LOCK statement, which enables\nyou to lock all tables in all databases. See [HELP FLUSH]. (This is a\nvery convenient way to get backups if you have a file system such as\nVeritas that can take snapshots in time.)\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/lock-tables.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/lock-tables.html'),(37,'UPDATEXML',38,'Syntax:\nUpdateXML(xml_target, xpath_expr, new_xml)\n\nThis function replaces a single portion of a given fragment of XML\nmarkup xml_target with a new XML fragment new_xml, and then returns the\nchanged XML. The portion of xml_target that is replaced matches an\nXPath expression xpath_expr supplied by the user. In MySQL 5.5, the\nXPath expression can contain at most 127 characters. (This limitation\nis lifted in MySQL 5.6.)\n\nIf no expression matching xpath_expr is found, or if multiple matches\nare found, the function returns the original xml_target XML fragment.\nAll three arguments should be strings.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/xml-functions.html\n\n','mysql> SELECT\n    ->   UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/a\', \'<e>fff</e>\') AS val1,\n    ->   UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/b\', \'<e>fff</e>\') AS val2,\n    ->   UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'//b\', \'<e>fff</e>\') AS val3,\n    ->   UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/a/d\', \'<e>fff</e>\') AS val4,\n    ->   UpdateXML(\'<a><d></d><b>ccc</b><d></d></a>\', \'/a/d\', \'<e>fff</e>\') AS val5\n    -> \\G\n\n*************************** 1. row ***************************\nval1: <e>fff</e>\nval2: <a><b>ccc</b><d></d></a>\nval3: <a><e>fff</e><d></d></a>\nval4: <a><b>ccc</b><e>fff</e></a>\nval5: <a><d></d><b>ccc</b><d></d></a>\n','http://dev.mysql.com/doc/refman/5.5/en/xml-functions.html'),(38,'RESET SLAVE',8,'Syntax:\nRESET SLAVE [ALL]\n\nRESET SLAVE makes the slave forget its replication position in the\nmaster\'s binary log. This statement is meant to be used for a clean\nstart: It deletes the master.info and relay-log.info files, all the\nrelay log files, and starts a new relay log file. To use RESET SLAVE,\nthe slave replication threads must be stopped (use STOP SLAVE if\nnecessary).\n\n*Note*: All relay log files are deleted, even if they have not been\ncompletely executed by the slave SQL thread. (This is a condition\nlikely to exist on a replication slave if you have issued a STOP SLAVE\nstatement or if the slave is highly loaded.)\n\nIn MySQL 5.5 (unlike the case in MySQL 5.1 and earlier), RESET SLAVE\ndoes not change any replication connection parameters such as master\nhost, master port, master user, or master password, which are retained\nin memory. This means that START SLAVE can be issued without requiring\na CHANGE MASTER TO statement following RESET SLAVE.\n\nConnection parameters are reset if the slave mysqld is shut down\nfollowing RESET SLAVE. In MySQL 5.5.16 and later, you can instead use\nRESET SLAVE ALL to reset these connection parameters (Bug #11809016).\n\nIf the slave SQL thread was in the middle of replicating temporary\ntables when it was stopped, and RESET SLAVE is issued, these replicated\ntemporary tables are deleted on the slave.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/reset-slave.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/reset-slave.html'),(39,'SHOW BINARY LOGS',27,'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-binary-logs.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-binary-logs.html'),(40,'POLYGON',25,'Polygon(ls1,ls2,...)\n\nConstructs a Polygon value from a number of LineString or WKB\nLineString arguments. If any argument does not represent a LinearRing\n(that is, not a closed and simple LineString), the return value is\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(41,'MINUTE',32,'Syntax:\nMINUTE(time)\n\nReturns the minute for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT MINUTE(\'2008-02-03 10:05:03\');\n        -> 5\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(42,'DAY',32,'Syntax:\nDAY(date)\n\nDAY() is a synonym for DAYOFMONTH().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(43,'MID',38,'Syntax:\nMID(str,pos,len)\n\nMID(str,pos,len) is a synonym for SUBSTRING(str,pos,len).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(44,'UUID',14,'Syntax:\nUUID()\n\nReturns a Universal Unique Identifier (UUID) generated according to\n\"DCE 1.1: Remote Procedure Call\" (Appendix A) CAE (Common Applications\nEnvironment) Specifications published by The Open Group in October 1997\n(Document Number C706,\nhttp://www.opengroup.org/public/pubs/catalog/c706.htm).\n\nA UUID is designed as a number that is globally unique in space and\ntime. Two calls to UUID() are expected to generate two different\nvalues, even if these calls are performed on two separate computers\nthat are not connected to each other.\n\nA UUID is a 128-bit number represented by a utf8 string of five\nhexadecimal numbers in aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee format:\n\no The first three numbers are generated from a timestamp.\n\no The fourth number preserves temporal uniqueness in case the timestamp\n  value loses monotonicity (for example, due to daylight saving time).\n\no The fifth number is an IEEE 802 node number that provides spatial\n  uniqueness. A random number is substituted if the latter is not\n  available (for example, because the host computer has no Ethernet\n  card, or we do not know how to find the hardware address of an\n  interface on your operating system). In this case, spatial uniqueness\n  cannot be guaranteed. Nevertheless, a collision should have very low\n  probability.\n\n  Currently, the MAC address of an interface is taken into account only\n  on FreeBSD and Linux. On other operating systems, MySQL uses a\n  randomly generated 48-bit number.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','mysql> SELECT UUID();\n        -> \'6ccd780c-baba-1026-9564-0040f4311e29\'\n','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(45,'LINESTRING',25,'LineString(pt1,pt2,...)\n\nConstructs a LineString value from a number of Point or WKB Point\narguments. If the number of arguments is less than two, the return\nvalue is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(46,'SLEEP',14,'Syntax:\nSLEEP(duration)\n\nSleeps (pauses) for the number of seconds given by the duration\nargument, then returns 0. If SLEEP() is interrupted, it returns 1. The\nduration may have a fractional part.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(47,'CONNECTION_ID',17,'Syntax:\nCONNECTION_ID()\n\nReturns the connection ID (thread ID) for the connection. Every\nconnection has an ID that is unique among the set of currently\nconnected clients.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT CONNECTION_ID();\n        -> 23786\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(48,'CREATE LOGFILE GROUP',40,'Syntax:\nCREATE LOGFILE GROUP logfile_group\n    ADD UNDOFILE \'undo_file\'\n    [INITIAL_SIZE [=] initial_size]\n    [UNDO_BUFFER_SIZE [=] undo_buffer_size]\n    [REDO_BUFFER_SIZE [=] redo_buffer_size]\n    [NODEGROUP [=] nodegroup_id]\n    [WAIT]\n    [COMMENT [=] comment_text]\n    ENGINE [=] engine_name\n\nThis statement creates a new log file group named logfile_group having\na single UNDO file named \'undo_file\'. A CREATE LOGFILE GROUP statement\nhas one and only one ADD UNDOFILE clause. For rules covering the naming\nof log file groups, see\nhttp://dev.mysql.com/doc/refman/5.5/en/identifiers.html.\n\n*Note*: All MySQL Cluster Disk Data objects share the same namespace.\nThis means that each Disk Data object must be uniquely named (and not\nmerely each Disk Data object of a given type). For example, you cannot\nhave a tablespace and a log file group with the same name, or a\ntablespace and a data file with the same name.\n\nIn MySQL Cluster NDB 7.2, you can have only one log file group per\nCluster at any given time. (See Bug #16386)\n\nThe optional INITIAL_SIZE parameter sets the UNDO file\'s initial size;\nif not specified, it defaults to 128M (128 megabytes). The optional\nUNDO_BUFFER_SIZE parameter sets the size used by the UNDO buffer for\nthe log file group; The default value for UNDO_BUFFER_SIZE is 8M (eight\nmegabytes); this value cannot exceed the amount of system memory\navailable. Both of these parameters are specified in bytes. You may\noptionally follow either or both of these with a one-letter\nabbreviation for an order of magnitude, similar to those used in\nmy.cnf. Generally, this is one of the letters M (for megabytes) or G\n(for gigabytes).\n\nThe memory used for both INITIAL_SIZE and UNDO_BUFFER_SIZE comes from\nthe global pool whose size is determined by the value of the\nSharedGlobalMemory data node configuration parameter. This includes any\ndefault value implied for these options by the setting of the\nInitialLogFileGroup data node configuration parameter.\n\nThe maximum permitted for UNDO_BUFFER_SIZE is 600M.\n\nOn 32-bit systems, the maximum supported value for INITIAL_SIZE is 4G.\n\nThe minimum permitted value for INITIAL_SIZE is 1M.\n\nThe ENGINE option determines the storage engine to be used by this log\nfile group, with engine_name being the name of the storage engine. In\nMySQL 5.5, this must be NDB (or NDBCLUSTER). If ENGINE is not set,\nMySQL tries to use the engine specified by the default_storage_engine\nserver system variable (formerly storage_engine). In any case, if the\nengine is not specified as NDB or NDBCLUSTER, the CREATE LOGFILE GROUP\nstatement appears to succeed but actually fails to create the log file\ngroup, as shown here:\n\nmysql> CREATE LOGFILE GROUP lg1 \n    ->     ADD UNDOFILE \'undo.dat\' INITIAL_SIZE = 10M;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+-------+------+------------------------------------------------------------------------------------------------+\n| Level | Code | Message                                                                                        |\n+-------+------+------------------------------------------------------------------------------------------------+\n| Error | 1478 | Table storage engine \'InnoDB\' does not support the create option \'TABLESPACE or LOGFILE GROUP\' |\n+-------+------+------------------------------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> DROP LOGFILE GROUP lg1 ENGINE = NDB;              \nERROR 1529 (HY000): Failed to drop LOGFILE GROUP\n\nmysql> CREATE LOGFILE GROUP lg1 \n    ->     ADD UNDOFILE \'undo.dat\' INITIAL_SIZE = 10M\n    ->     ENGINE = NDB;\nQuery OK, 0 rows affected (2.97 sec)\n\nThe fact that the CREATE LOGFILE GROUP statement does not actually\nreturn an error when a non-NDB storage engine is named, but rather\nappears to succeed, is a known issue which we hope to address in a\nfuture release of MySQL Cluster.\n\nREDO_BUFFER_SIZE, NODEGROUP, WAIT, and COMMENT are parsed but ignored,\nand so have no effect in MySQL 5.5. These options are intended for\nfuture expansion.\n\nWhen used with ENGINE [=] NDB, a log file group and associated UNDO log\nfile are created on each Cluster data node. You can verify that the\nUNDO files were created and obtain information about them by querying\nthe INFORMATION_SCHEMA.FILES table. For example:\n\nmysql> SELECT LOGFILE_GROUP_NAME, LOGFILE_GROUP_NUMBER, EXTRA\n    -> FROM INFORMATION_SCHEMA.FILES\n    -> WHERE FILE_NAME = \'undo_10.dat\';\n+--------------------+----------------------+----------------+\n| LOGFILE_GROUP_NAME | LOGFILE_GROUP_NUMBER | EXTRA          |\n+--------------------+----------------------+----------------+\n| lg_3               |                   11 | CLUSTER_NODE=3 |\n| lg_3               |                   11 | CLUSTER_NODE=4 |\n+--------------------+----------------------+----------------+\n2 rows in set (0.06 sec)\n\nCREATE LOGFILE GROUP is useful only with Disk Data storage for MySQL\nCluster. See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-cluster-disk-data.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-logfile-group.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-logfile-group.html'),(49,'DELETE',28,'Syntax:\nSingle-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    tbl_name[.*] [, tbl_name[.*]] ...\n    FROM table_references\n    [WHERE where_condition]\n\nOr:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    FROM tbl_name[.*] [, tbl_name[.*]] ...\n    USING table_references\n    [WHERE where_condition]\n\nFor the single-table syntax, the DELETE statement deletes rows from\ntbl_name and returns a count of the number of deleted rows. This count\ncan be obtained by calling the ROW_COUNT() function (see\nhttp://dev.mysql.com/doc/refman/5.5/en/information-functions.html). The\nWHERE clause, if given, specifies the conditions that identify which\nrows to delete. With no WHERE clause, all rows are deleted. If the\nORDER BY clause is specified, the rows are deleted in the order that is\nspecified. The LIMIT clause places a limit on the number of rows that\ncan be deleted.\n\nFor the multiple-table syntax, DELETE deletes from each tbl_name the\nrows that satisfy the conditions. In this case, ORDER BY and LIMIT\ncannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe deleted. It is specified as described in\nhttp://dev.mysql.com/doc/refman/5.5/en/select.html.\n\nCurrently, you cannot delete from a table and select from the same\ntable in a subquery.\n\nYou need the DELETE privilege on a table to delete rows from it. You\nneed only the SELECT privilege for any columns that are only read, such\nas those named in the WHERE clause.\n\nAs stated, a DELETE statement with no WHERE clause deletes all rows. A\nfaster way to do this, when you do not need to know the number of\ndeleted rows, is to use TRUNCATE TABLE. However, within a transaction\nor if you have a lock on the table, TRUNCATE TABLE cannot be used\nwhereas DELETE can. See [HELP TRUNCATE TABLE], and [HELP LOCK].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/delete.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/delete.html'),(50,'ROUND',4,'Syntax:\nROUND(X), ROUND(X,D)\n\nRounds the argument X to D decimal places. The rounding algorithm\ndepends on the data type of X. D defaults to 0 if not specified. D can\nbe negative to cause D digits left of the decimal point of the value X\nto become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT ROUND(-1.23);\n        -> -1\nmysql> SELECT ROUND(-1.58);\n        -> -2\nmysql> SELECT ROUND(1.58);\n        -> 2\nmysql> SELECT ROUND(1.298, 1);\n        -> 1.3\nmysql> SELECT ROUND(1.298, 0);\n        -> 1\nmysql> SELECT ROUND(23.298, -1);\n        -> 20\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(51,'NULLIF',7,'Syntax:\nNULLIF(expr1,expr2)\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is\nthe same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html\n\n','mysql> SELECT NULLIF(1,1);\n        -> NULL\nmysql> SELECT NULLIF(1,2);\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html'),(52,'CLOSE',24,'Syntax:\nCLOSE cursor_name\n\nThis statement closes a previously opened cursor. For an example, see\nhttp://dev.mysql.com/doc/refman/5.5/en/cursors.html.\n\nAn error occurs if the cursor is not open.\n\nIf not closed explicitly, a cursor is closed at the end of the BEGIN\n... END block in which it was declared.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/close.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/close.html'),(53,'STOP SLAVE',8,'Syntax:\nSTOP SLAVE [thread_types]\n\nthread_types:\n    [thread_type [, thread_type] ... ]\n\nthread_type: IO_THREAD | SQL_THREAD\n\nStops the slave threads. STOP SLAVE requires the SUPER privilege.\nRecommended best practice is to execute STOP SLAVE on the slave before\nstopping the slave server (see\nhttp://dev.mysql.com/doc/refman/5.5/en/server-shutdown.html, for more\ninformation).\n\nWhen using the row-based logging format: You should execute STOP SLAVE\non the slave prior to shutting down the slave server if you are\nreplicating any tables that use a nontransactional storage engine (see\nthe Note later in this section). In MySQL 5.5.9 and later, you can also\nuse STOP SLAVE SQL_THREAD for this purpose.\n\nLike START SLAVE, this statement may be used with the IO_THREAD and\nSQL_THREAD options to name the thread or threads to be stopped.\n\n*Note*: In MySQL 5.5, STOP SLAVE waits until the current replication\nevent group affecting one or more nontransactional tables has finished\nexecuting (if there is any such replication group), or until the user\nissues a KILL QUERY or KILL CONNECTION statement. (Bug #319, Bug\n#38205)\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/stop-slave.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/stop-slave.html'),(54,'TIMEDIFF',32,'Syntax:\nTIMEDIFF(expr1,expr2)\n\nTIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and\nexpr2 are time or date-and-time expressions, but both must be of the\nsame type.\n\nThe result returned by TIMEDIFF() is limited to the range allowed for\nTIME values. Alternatively, you can use either of the functions\nTIMESTAMPDIFF() and UNIX_TIMESTAMP(), both of which return integers.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TIMEDIFF(\'2000:01:01 00:00:00\',\n    ->                 \'2000:01:01 00:00:00.000001\');\n        -> \'-00:00:00.000001\'\nmysql> SELECT TIMEDIFF(\'2008-12-31 23:59:59.000001\',\n    ->                 \'2008-12-30 01:01:01.000002\');\n        -> \'46:58:57.999999\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(55,'REPLACE FUNCTION',38,'Syntax:\nREPLACE(str,from_str,to_str)\n\nReturns the string str with all occurrences of the string from_str\nreplaced by the string to_str. REPLACE() performs a case-sensitive\nmatch when searching for from_str.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT REPLACE(\'www.mysql.com\', \'w\', \'Ww\');\n        -> \'WwWwWw.mysql.com\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(56,'USE',29,'Syntax:\nUSE db_name\n\nThe USE db_name statement tells MySQL to use the db_name database as\nthe default (current) database for subsequent statements. The database\nremains the default until the end of the session or another USE\nstatement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/use.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/use.html'),(57,'LINEFROMTEXT',3,'LineFromText(wkt[,srid]), LineStringFromText(wkt[,srid])\n\nConstructs a LINESTRING value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(58,'CASE OPERATOR',7,'Syntax:\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nThe first version returns the result where value=compare_value. The\nsecond version returns the result for the first condition that is true.\nIf there was no matching result value, the result after ELSE is\nreturned, or NULL if there is no ELSE part.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html\n\n','mysql> SELECT CASE 1 WHEN 1 THEN \'one\'\n    ->     WHEN 2 THEN \'two\' ELSE \'more\' END;\n        -> \'one\'\nmysql> SELECT CASE WHEN 1>0 THEN \'true\' ELSE \'false\' END;\n        -> \'true\'\nmysql> SELECT CASE BINARY \'B\'\n    ->     WHEN \'a\' THEN 1 WHEN \'b\' THEN 2 END;\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html'),(59,'SHOW MASTER STATUS',27,'Syntax:\nSHOW MASTER STATUS\n\nThis statement provides status information about the binary log files\nof the master. It requires either the SUPER or REPLICATION CLIENT\nprivilege.\n\nExample:\n\nmysql> SHOW MASTER STATUS;\n+---------------+----------+--------------+------------------+\n| File          | Position | Binlog_Do_DB | Binlog_Ignore_DB |\n+---------------+----------+--------------+------------------+\n| mysql-bin.003 | 73       | test         | manual,mysql     |\n+---------------+----------+--------------+------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-master-status.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-master-status.html'),(60,'ADDTIME',32,'Syntax:\nADDTIME(expr1,expr2)\n\nADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time\nor datetime expression, and expr2 is a time expression.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT ADDTIME(\'2007-12-31 23:59:59.999999\', \'1 1:1:1.000002\');\n        -> \'2008-01-02 01:01:01.000001\'\nmysql> SELECT ADDTIME(\'01:00:00.999999\', \'02:00:00.999998\');\n        -> \'03:00:01.999997\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(61,'SPATIAL',35,'For MyISAM tables, MySQL can create spatial indexes using syntax\nsimilar to that for creating regular indexes, but extended with the\nSPATIAL keyword. Currently, columns in spatial indexes must be declared\nNOT NULL. The following examples demonstrate how to create spatial\nindexes:\n\no With CREATE TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL, SPATIAL INDEX(g)) ENGINE=MyISAM;\n\no With ALTER TABLE:\n\nALTER TABLE geom ADD SPATIAL INDEX(g);\n\no With CREATE INDEX:\n\nCREATE SPATIAL INDEX sp_index ON geom (g);\n\nFor MyISAM tables, SPATIAL INDEX creates an R-tree index. For storage\nengines that support nonspatial indexing of spatial columns, the engine\ncreates a B-tree index. A B-tree index on spatial values will be useful\nfor exact-value lookups, but not for range scans.\n\nFor more information on indexing spatial columns, see [HELP CREATE\nINDEX].\n\nTo drop spatial indexes, use ALTER TABLE or DROP INDEX:\n\no With ALTER TABLE:\n\nALTER TABLE geom DROP INDEX g;\n\no With DROP INDEX:\n\nDROP INDEX sp_index ON geom;\n\nExample: Suppose that a table geom contains more than 32,000\ngeometries, which are stored in the column g of type GEOMETRY. The\ntable also has an AUTO_INCREMENT column fid for storing object ID\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-indexes.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-indexes.html'),(62,'TO_SECONDS',32,'Syntax:\nTO_SECONDS(expr)\n\nGiven a date or datetime expr, returns a the number of seconds since\nthe year 0. If expr is not a valid date or datetime value, returns\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TO_SECONDS(950501);\n        -> 62966505600\nmysql> SELECT TO_SECONDS(\'2009-11-29\');\n        -> 63426672000\nmysql> SELECT TO_SECONDS(\'2009-11-29 13:43:32\');\n        -> 63426721412\nmysql> SELECT TO_SECONDS( NOW() );\n        -> 63426721458\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(63,'TIMESTAMPDIFF',32,'Syntax:\nTIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)\n\nReturns datetime_expr2 - datetime_expr1, where datetime_expr1 and\ndatetime_expr2 are date or datetime expressions. One expression may be\na date and the other a datetime; a date value is treated as a datetime\nhaving the time part \'00:00:00\' where necessary. The unit for the\nresult (an integer) is given by the unit argument. The legal values for\nunit are the same as those listed in the description of the\nTIMESTAMPADD() function.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TIMESTAMPDIFF(MONTH,\'2003-02-01\',\'2003-05-01\');\n        -> 3\nmysql> SELECT TIMESTAMPDIFF(YEAR,\'2002-05-01\',\'2001-01-01\');\n        -> -1\nmysql> SELECT TIMESTAMPDIFF(MINUTE,\'2003-02-01\',\'2003-05-01 12:05:55\');\n        -> 128885\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(64,'UPPER',38,'Syntax:\nUPPER(str)\n\nReturns the string str with all characters changed to uppercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nmysql> SELECT UPPER(\'Hej\');\n        -> \'HEJ\'\n\nSee the description of LOWER() for information that also applies to\nUPPER(), such as information about how to perform lettercase conversion\nof binary strings (BINARY, VARBINARY, BLOB) for which these functions\nare ineffective.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(65,'FROM_UNIXTIME',32,'Syntax:\nFROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)\n\nReturns a representation of the unix_timestamp argument as a value in\n\'YYYY-MM-DD HH:MM:SS\' or YYYYMMDDHHMMSS.uuuuuu format, depending on\nwhether the function is used in a string or numeric context. The value\nis expressed in the current time zone. unix_timestamp is an internal\ntimestamp value such as is produced by the UNIX_TIMESTAMP() function.\n\nIf format is given, the result is formatted according to the format\nstring, which is used the same way as listed in the entry for the\nDATE_FORMAT() function.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT FROM_UNIXTIME(1196440219);\n        -> \'2007-11-30 10:30:19\'\nmysql> SELECT FROM_UNIXTIME(1196440219) + 0;\n        -> 20071130103019.000000\nmysql> SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(),\n    ->                      \'%Y %D %M %h:%i:%s %x\');\n        -> \'2007 30th November 10:30:59 2007\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(66,'MEDIUMBLOB',23,'MEDIUMBLOB\n\nA BLOB column with a maximum length of 16,777,215 (224 - 1) bytes. Each\nMEDIUMBLOB value is stored using a 3-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(67,'SHA2',12,'Syntax:\nSHA2(str, hash_length)\n\nCalculates the SHA-2 family of hash functions (SHA-224, SHA-256,\nSHA-384, and SHA-512). The first argument is the cleartext string to be\nhashed. The second argument indicates the desired bit length of the\nresult, which must have a value of 224, 256, 384, 512, or 0 (which is\nequivalent to 256). If either argument is NULL or the hash length is\nnot one of the permitted values, the return value is NULL. Otherwise,\nthe function result is a hash value containing the desired number of\nbits. See the notes at the beginning of this section about storing hash\nvalues efficiently.\n\nAs of MySQL 5.5.6, the return value is a nonbinary string in the\nconnection character set. Before 5.5.6, the return value is a binary\nstring; see the notes at the beginning of this section about using the\nvalue as a nonbinary string.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SELECT SHA2(\'abc\', 224);\n        -> \'23097d223405d8228642a477bda255b32aadbce4bda0b3f7e36c9da7\'\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(68,'IFNULL',7,'Syntax:\nIFNULL(expr1,expr2)\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns\nexpr2. IFNULL() returns a numeric or string value, depending on the\ncontext in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html\n\n','mysql> SELECT IFNULL(1,0);\n        -> 1\nmysql> SELECT IFNULL(NULL,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,\'yes\');\n        -> \'yes\'\n','http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html'),(69,'SHOW FUNCTION CODE',27,'Syntax:\nSHOW FUNCTION CODE func_name\n\nThis statement is similar to SHOW PROCEDURE CODE but for stored\nfunctions. See [HELP SHOW PROCEDURE CODE].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-function-code.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-function-code.html'),(70,'SHOW ERRORS',27,'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nThis statement is similar to SHOW WARNINGS, except that it displays\ninformation only for errors, rather than for errors, warnings, and\nnotes.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttp://dev.mysql.com/doc/refman/5.5/en/select.html.\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nSHOW ERRORS and error_count apply only to errors, not warnings or\nnotes. In other respects, they are similar to SHOW WARNINGS and\nwarning_count. In particular, SHOW ERRORS cannot display information\nfor more than max_error_count messages, and error_count can exceed the\nvalue of max_error_count if the number of errors exceeds\nmax_error_count.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-errors.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-errors.html'),(71,'LEAST',19,'Syntax:\nLEAST(value1,value2,...)\n\nWith two or more arguments, returns the smallest (minimum-valued)\nargument. The arguments are compared using the following rules:\n\no If any argument is NULL, the result is NULL. No comparison is needed.\n\no If the return value is used in an INTEGER context or all arguments\n  are integer-valued, they are compared as integers.\n\no If the return value is used in a REAL context or all arguments are\n  real-valued, they are compared as reals.\n\no If the arguments comprise a mix of numbers and strings, they are\n  compared as numbers.\n\no If any argument is a nonbinary (character) string, the arguments are\n  compared as nonbinary strings.\n\no In all other cases, the arguments are compared as binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT LEAST(2,0);\n        -> 0\nmysql> SELECT LEAST(34.0,3.0,5.0,767.0);\n        -> 3.0\nmysql> SELECT LEAST(\'B\',\'A\',\'C\');\n        -> \'A\'\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(72,'=',19,'=\n\nEqual:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 1 = 0;\n        -> 0\nmysql> SELECT \'0\' = 0;\n        -> 1\nmysql> SELECT \'0.0\' = 0;\n        -> 1\nmysql> SELECT \'0.01\' = 0;\n        -> 0\nmysql> SELECT \'.01\' = 0.01;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(73,'REVERSE',38,'Syntax:\nREVERSE(str)\n\nReturns the string str with the order of the characters reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT REVERSE(\'abc\');\n        -> \'cba\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(74,'ISNULL',19,'Syntax:\nISNULL(expr)\n\nIf expr is NULL, ISNULL() returns 1, otherwise it returns 0.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT ISNULL(1+1);\n        -> 0\nmysql> SELECT ISNULL(1/0);\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(75,'BINARY',23,'BINARY(M)\n\nThe BINARY type is similar to the CHAR type, but stores binary byte\nstrings rather than nonbinary character strings. M represents the\ncolumn length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(76,'BLOB DATA TYPE',23,'A BLOB is a binary large object that can hold a variable amount of\ndata. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.\nThese differ only in the maximum length of the values they can hold.\nThe four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These\ncorrespond to the four BLOB types and have the same maximum lengths and\nstorage requirements. See\nhttp://dev.mysql.com/doc/refman/5.5/en/storage-requirements.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/blob.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/blob.html'),(77,'BOUNDARY',37,'Boundary(g)\n\nReturns a geometry that is the closure of the combinatorial boundary of\nthe geometry value g.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(78,'CREATE USER',10,'Syntax:\nCREATE USER user_specification\n    [, user_specification] ...\n\nuser_specification:\n    user\n    [\n        IDENTIFIED BY [PASSWORD] \'password\'\n      | IDENTIFIED WITH auth_plugin [AS \'auth_string\']\n    ]\n\nThe CREATE USER statement creates new MySQL accounts. To use it, you\nmust have the global CREATE USER privilege or the INSERT privilege for\nthe mysql database. For each account, CREATE USER creates a new row in\nthe mysql.user table and assigns the account no privileges. An error\noccurs if the account already exists.\n\nEach account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.5/en/account-names.html. For example:\n\nCREATE USER \'jeffrey\'@\'localhost\' IDENTIFIED BY \'mypass\';\n\nIf you specify only the user name part of the account name, a host name\npart of \'%\' is used.\n\nThe user specification may indicate how the user should authenticate\nwhen connecting to the server:\n\no To enable the user to connect with no password (which is insecure),\n  include no IDENTIFIED BY clause:\n\nCREATE USER \'jeffrey\'@\'localhost\';\n\n  In this case, the account uses built-in authentication and clients\n  must provide no password.\n\no To assign a password, use IDENTIFIED BY with the literal plaintext\n  password value:\n\nCREATE USER \'jeffrey\'@\'localhost\' IDENTIFIED BY \'mypass\';\n\n  The account uses built-in authentication and clients must match the\n  given password.\n\no To avoid specifying the plaintext password if you know its hash value\n  (the value that PASSWORD() would return for the password), specify\n  the hash value preceded by the keyword PASSWORD:\n\nCREATE USER \'jeffrey\'@\'localhost\'\nIDENTIFIED BY PASSWORD \'*90E462C37378CED12064BB3388827D2BA3A9B689\';\n\n  The account uses built-in authentication and clients must match the\n  given password.\n\no To authenticate the account using a specific authentication plugin,\n  use IDENTIFIED WITH, where auth_plugin is the plugin name. It can be\n  an unquoted name or a quoted string literal. \'auth_string\' is an\n  optional quoted string literal to pass to the plugin. The plugin\n  interprets the meaning of the string, so its format is plugin\n  specific. Consult the documentation for a given plugin for\n  information about the authentication string values it accepts.\n\nCREATE USER \'jeffrey\'@\'localhost\'\nIDENTIFIED WITH my_auth_plugin;\n\n  For connections that use this account, the server invokes the named\n  plugin and clients must provide credentials as required for the\n  authentication method that the plugin implements. If the server\n  cannot find the plugin, either at account-creation time or connect\n  time, an error occurs. IDENTIFIED WITH can be used as of MySQL 5.5.7.\n\nThe IDENTIFIED BY and IDENTIFIED WITH clauses are mutually exclusive,\nso at most one of them can be specified for a given user.\n\nFor additional information about setting passwords, see\nhttp://dev.mysql.com/doc/refman/5.5/en/assigning-passwords.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-user.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-user.html'),(79,'POINT',25,'Point(x,y)\n\nConstructs a Point using its coordinates.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(80,'CURRENT_USER',17,'Syntax:\nCURRENT_USER, CURRENT_USER()\n\nReturns the user name and host name combination for the MySQL account\nthat the server used to authenticate the current client. This account\ndetermines your access privileges. The return value is a string in the\nutf8 character set.\n\nThe value of CURRENT_USER() can differ from the value of USER().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT USER();\n        -> \'davida@localhost\'\nmysql> SELECT * FROM mysql.user;\nERROR 1044: Access denied for user \'\'@\'localhost\' to\ndatabase \'mysql\'\nmysql> SELECT CURRENT_USER();\n        -> \'@localhost\'\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(81,'LCASE',38,'Syntax:\nLCASE(str)\n\nLCASE() is a synonym for LOWER().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(82,'<=',19,'Syntax:\n<=\n\nLess than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 0.1 <= 2;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(83,'SHOW PROFILES',27,'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILES statement, together with SHOW PROFILE, displays\nprofiling information that indicates resource usage for statements\nexecuted during the course of the current session. For more\ninformation, see [HELP SHOW PROFILE].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-profiles.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-profiles.html'),(84,'UPDATE',28,'Syntax:\nSingle-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_reference\n    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_references\n    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...\n    [WHERE where_condition]\n\nFor the single-table syntax, the UPDATE statement updates columns of\nexisting rows in the named table with new values. The SET clause\nindicates which columns to modify and the values they should be given.\nEach value can be given as an expression, or the keyword DEFAULT to set\na column explicitly to its default value. The WHERE clause, if given,\nspecifies the conditions that identify which rows to update. With no\nWHERE clause, all rows are updated. If the ORDER BY clause is\nspecified, the rows are updated in the order that is specified. The\nLIMIT clause places a limit on the number of rows that can be updated.\n\nFor the multiple-table syntax, UPDATE updates rows in each table named\nin table_references that satisfy the conditions. In this case, ORDER BY\nand LIMIT cannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe updated. For expression syntax, see\nhttp://dev.mysql.com/doc/refman/5.5/en/expressions.html.\n\ntable_references and where_condition are is specified as described in\nhttp://dev.mysql.com/doc/refman/5.5/en/select.html.\n\nYou need the UPDATE privilege only for columns referenced in an UPDATE\nthat are actually updated. You need only the SELECT privilege for any\ncolumns that are read but not modified.\n\nThe UPDATE statement supports the following modifiers:\n\no With the LOW_PRIORITY keyword, execution of the UPDATE is delayed\n  until no other clients are reading from the table. This affects only\n  storage engines that use only table-level locking (such as MyISAM,\n  MEMORY, and MERGE).\n\no With the IGNORE keyword, the update statement does not abort even if\n  errors occur during the update. Rows for which duplicate-key\n  conflicts occur are not updated. Rows for which columns are updated\n  to values that would cause data conversion errors are updated to the\n  closest valid values instead.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/update.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/update.html'),(85,'IS NOT NULL',19,'Syntax:\nIS NOT NULL\n\nTests whether a value is not NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;\n        -> 1, 1, 0\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(86,'CASE STATEMENT',24,'Syntax:\nCASE case_value\n    WHEN when_value THEN statement_list\n    [WHEN when_value THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nOr:\n\nCASE\n    WHEN search_condition THEN statement_list\n    [WHEN search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nThe CASE statement for stored programs implements a complex conditional\nconstruct.\n\n*Note*: There is also a CASE expression, which differs from the CASE\nstatement described here. See\nhttp://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html. The\nCASE statement cannot have an ELSE NULL clause, and it is terminated\nwith END CASE instead of END.\n\nFor the first syntax, case_value is an expression. This value is\ncompared to the when_value expression in each WHEN clause until one of\nthem is equal. When an equal when_value is found, the corresponding\nTHEN clause statement_list executes. If no when_value is equal, the\nELSE clause statement_list executes, if there is one.\n\nThis syntax cannot be used to test for equality with NULL because NULL\n= NULL is false. See\nhttp://dev.mysql.com/doc/refman/5.5/en/working-with-null.html.\n\nFor the second syntax, each WHEN clause search_condition expression is\nevaluated until one is true, at which point its corresponding THEN\nclause statement_list executes. If no search_condition is equal, the\nELSE clause statement_list executes, if there is one.\n\nIf no when_value or search_condition matches the value tested and the\nCASE statement contains no ELSE clause, a Case not found for CASE\nstatement error results.\n\nEach statement_list consists of one or more SQL statements; an empty\nstatement_list is not permitted.\n\nTo handle situations where no value is matched by any WHEN clause, use\nan ELSE containing an empty BEGIN ... END block, as shown in this\nexample. (The indentation used here in the ELSE clause is for purposes\nof clarity only, and is not otherwise significant.)\n\nDELIMITER |\n\nCREATE PROCEDURE p()\n  BEGIN\n    DECLARE v INT DEFAULT 1;\n\n    CASE v\n      WHEN 2 THEN SELECT v;\n      WHEN 3 THEN SELECT 0;\n      ELSE\n        BEGIN\n        END;\n    END CASE;\n  END;\n  |\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/case.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/case.html'),(87,'EXECUTE STATEMENT',8,'Syntax:\nEXECUTE stmt_name\n    [USING @var_name [, @var_name] ...]\n\nAfter preparing a statement with PREPARE, you execute it with an\nEXECUTE statement that refers to the prepared statement name. If the\nprepared statement contains any parameter markers, you must supply a\nUSING clause that lists user variables containing the values to be\nbound to the parameters. Parameter values can be supplied only by user\nvariables, and the USING clause must name exactly as many variables as\nthe number of parameter markers in the statement.\n\nYou can execute a given prepared statement multiple times, passing\ndifferent variables to it or setting the variables to different values\nbefore each execution.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/execute.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/execute.html'),(88,'DROP INDEX',40,'Syntax:\nDROP [ONLINE|OFFLINE] INDEX index_name ON tbl_name\n\nDROP INDEX drops the index named index_name from the table tbl_name.\nThis statement is mapped to an ALTER TABLE statement to drop the index.\nSee [HELP ALTER TABLE].\n\nTo drop a primary key, the index name is always PRIMARY, which must be\nspecified as a quoted identifier because PRIMARY is a reserved word:\n\nDROP INDEX `PRIMARY` ON t;\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-index.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-index.html'),(89,'MATCH AGAINST',38,'Syntax:\nMATCH (col1,col2,...) AGAINST (expr [search_modifier])\n\nMySQL has support for full-text indexing and searching:\n\no A full-text index in MySQL is an index of type FULLTEXT.\n\no Full-text indexes can be used only with MyISAM tables. (In MySQL 5.6\n  and up, they can also be used with InnoDB tables.) Full-text indexes\n  can be created only for CHAR, VARCHAR, or TEXT columns.\n\no A FULLTEXT index definition can be given in the CREATE TABLE\n  statement when a table is created, or added later using ALTER TABLE\n  or CREATE INDEX.\n\no For large data sets, it is much faster to load your data into a table\n  that has no FULLTEXT index and then create the index after that, than\n  to load data into a table that has an existing FULLTEXT index.\n\nFull-text searching is performed using MATCH() ... AGAINST syntax.\nMATCH() takes a comma-separated list that names the columns to be\nsearched. AGAINST takes a string to search for, and an optional\nmodifier that indicates what type of search to perform. The search\nstring must be a string value that is constant during query evaluation.\nThis rules out, for example, a table column because that can differ for\neach row.\n\nThere are three types of full-text searches:\n\no A natural language search interprets the search string as a phrase in\n  natural human language (a phrase in free text). There are no special\n  operators. The stopword list applies. In addition, words that are\n  present in 50% or more of the rows are considered common and do not\n  match.\n\n  Full-text searches are natural language searches if the IN NATURAL\n  LANGUAGE MODE modifier is given or if no modifier is given. For more\n  information, see\n  http://dev.mysql.com/doc/refman/5.5/en/fulltext-natural-language.html\n  .\n\no A boolean search interprets the search string using the rules of a\n  special query language. The string contains the words to search for.\n  It can also contain operators that specify requirements such that a\n  word must be present or absent in matching rows, or that it should be\n  weighted higher or lower than usual. Common words such as \"some\" or\n  \"then\" are stopwords and do not match if present in the search\n  string. The IN BOOLEAN MODE modifier specifies a boolean search. For\n  more information, see\n  http://dev.mysql.com/doc/refman/5.5/en/fulltext-boolean.html.\n\no A query expansion search is a modification of a natural language\n  search. The search string is used to perform a natural language\n  search. Then words from the most relevant rows returned by the search\n  are added to the search string and the search is done again. The\n  query returns the rows from the second search. The IN NATURAL\n  LANGUAGE MODE WITH QUERY EXPANSION or WITH QUERY EXPANSION modifier\n  specifies a query expansion search. For more information, see\n  http://dev.mysql.com/doc/refman/5.5/en/fulltext-query-expansion.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/fulltext-search.html\n\n','mysql> SELECT id, body, MATCH (title,body) AGAINST\n    -> (\'Security implications of running MySQL as root\'\n    -> IN NATURAL LANGUAGE MODE) AS score\n    -> FROM articles WHERE MATCH (title,body) AGAINST\n    -> (\'Security implications of running MySQL as root\'\n    -> IN NATURAL LANGUAGE MODE);\n+----+-------------------------------------+-----------------+\n| id | body                                | score           |\n+----+-------------------------------------+-----------------+\n|  4 | 1. Never run mysqld as root. 2. ... | 1.5219271183014 |\n|  6 | When configured properly, MySQL ... | 1.3114095926285 |\n+----+-------------------------------------+-----------------+\n2 rows in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.5/en/fulltext-search.html'),(90,'CREATE EVENT',40,'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    EVENT\n    [IF NOT EXISTS]\n    event_name\n    ON SCHEDULE schedule\n    [ON COMPLETION [NOT] PRESERVE]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT \'comment\']\n    DO event_body;\n\nschedule:\n    AT timestamp [+ INTERVAL interval] ...\n  | EVERY interval\n    [STARTS timestamp [+ INTERVAL interval] ...]\n    [ENDS timestamp [+ INTERVAL interval] ...]\n\ninterval:\n    quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |\n              WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |\n              DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}\n\nThis statement creates and schedules a new event. The event will not\nrun unless the Event Scheduler is enabled. For information about\nchecking Event Scheduler status and enabling it if necessary, see\nhttp://dev.mysql.com/doc/refman/5.5/en/events-configuration.html.\n\nCREATE EVENT requires the EVENT privilege for the schema in which the\nevent is to be created. It might also require the SUPER privilege,\ndepending on the DEFINER value, as described later in this section.\n\nThe minimum requirements for a valid CREATE EVENT statement are as\nfollows:\n\no The keywords CREATE EVENT plus an event name, which uniquely\n  identifies the event in a database schema.\n\no An ON SCHEDULE clause, which determines when and how often the event\n  executes.\n\no A DO clause, which contains the SQL statement to be executed by an\n  event.\n\nThis is an example of a minimal CREATE EVENT statement:\n\nCREATE EVENT myevent\n    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n    DO\n      UPDATE myschema.mytable SET mycol = mycol + 1;\n\nThe previous statement creates an event named myevent. This event\nexecutes once---one hour following its creation---by running an SQL\nstatement that increments the value of the myschema.mytable table\'s\nmycol column by 1.\n\nThe event_name must be a valid MySQL identifier with a maximum length\nof 64 characters. Event names are not case sensitive, so you cannot\nhave two events named myevent and MyEvent in the same schema. In\ngeneral, the rules governing event names are the same as those for\nnames of stored routines. See\nhttp://dev.mysql.com/doc/refman/5.5/en/identifiers.html.\n\nAn event is associated with a schema. If no schema is indicated as part\nof event_name, the default (current) schema is assumed. To create an\nevent in a specific schema, qualify the event name with a schema using\nschema_name.event_name syntax.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-event.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-event.html'),(91,'ABS',4,'Syntax:\nABS(X)\n\nReturns the absolute value of X.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT ABS(2);\n        -> 2\nmysql> SELECT ABS(-32);\n        -> 32\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(92,'POLYFROMWKB',33,'PolyFromWKB(wkb[,srid]), PolygonFromWKB(wkb[,srid])\n\nConstructs a POLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(93,'NOT LIKE',38,'Syntax:\nexpr NOT LIKE pat [ESCAPE \'escape_char\']\n\nThis is the same as NOT (expr LIKE pat [ESCAPE \'escape_char\']).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html'),(94,'SPACE',38,'Syntax:\nSPACE(N)\n\nReturns a string consisting of N space characters.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT SPACE(6);\n        -> \'      \'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(95,'MBR DEFINITION',6,'Its MBR (Minimum Bounding Rectangle), or Envelope. This is the bounding\ngeometry, formed by the minimum and maximum (X,Y) coordinates:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/gis-class-geometry.html\n\n','((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n','http://dev.mysql.com/doc/refman/5.5/en/gis-class-geometry.html'),(96,'GEOMETRYCOLLECTION',25,'GeometryCollection(g1,g2,...)\n\nConstructs a GeometryCollection.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(97,'MAX',16,'Syntax:\nMAX([DISTINCT] expr)\n\nReturns the maximum value of expr. MAX() may take a string argument; in\nsuch cases, it returns the maximum string value. See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the maximum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMAX() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(98,'CREATE FUNCTION UDF',22,'Syntax:\nCREATE [AGGREGATE] FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nA user-defined function (UDF) is a way to extend MySQL with a new\nfunction that works like a native (built-in) MySQL function such as\nABS() or CONCAT().\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction\'s return value. DECIMAL is a legal value after RETURNS, but\ncurrently DECIMAL functions return string values and should be written\nlike STRING functions.\n\nshared_library_name is the basename of the shared object file that\ncontains the code that implements the function. The file must be\nlocated in the plugin directory. This directory is given by the value\nof the plugin_dir system variable. For more information, see\nhttp://dev.mysql.com/doc/refman/5.5/en/udf-compiling.html.\n\nTo create a function, you must have the INSERT privilege for the mysql\ndatabase. This is necessary because CREATE FUNCTION adds a row to the\nmysql.func system table that records the function\'s name, type, and\nshared library name. If you do not have this table, you should run the\nmysql_upgrade command to create it. See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-upgrade.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-function-udf.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-function-udf.html'),(99,'*',4,'Syntax:\n*\n\nMultiplication:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html\n\n','mysql> SELECT 3*5;\n        -> 15\nmysql> SELECT 18014398509481984*18014398509481984.0;\n        -> 324518553658426726783156020576256.0\nmysql> SELECT 18014398509481984*18014398509481984;\n        -> out-of-range error\n','http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html'),(100,'TIMESTAMP',23,'TIMESTAMP\n\nA timestamp. The range is \'1970-01-01 00:00:01\' UTC to \'2038-01-19\n03:14:07\' UTC. TIMESTAMP values are stored as the number of seconds\nsince the epoch (\'1970-01-01 00:00:00\' UTC). A TIMESTAMP cannot\nrepresent the value \'1970-01-01 00:00:00\' because that is equivalent to\n0 seconds from the epoch and the value 0 is reserved for representing\n\'0000-00-00 00:00:00\', the \"zero\" TIMESTAMP value.\n\nUnless specified otherwise, the first TIMESTAMP column in a table is\ndefined to be automatically set to the date and time of the most recent\nmodification if not explicitly assigned a value. This makes TIMESTAMP\nuseful for recording the timestamp of an INSERT or UPDATE operation.\nYou can also set any TIMESTAMP column to the current date and time by\nassigning it a NULL value, unless it has been defined with the NULL\nattribute to permit NULL values. The automatic initialization and\nupdating to the current date and time can be specified using DEFAULT\nCURRENT_TIMESTAMP and ON UPDATE CURRENT_TIMESTAMP clauses, as described\nin\nhttp://dev.mysql.com/doc/refman/5.5/en/timestamp-initialization.html.\n\n*Note*: The TIMESTAMP format that was used prior to MySQL 4.1 is not\nsupported in MySQL 5.5; see MySQL 3.23, 4.0, 4.1 Reference Manual for\ninformation regarding the old format.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html'),(101,'DES_DECRYPT',12,'Syntax:\nDES_DECRYPT(crypt_str[,key_str])\n\nDecrypts a string encrypted with DES_ENCRYPT(). If an error occurs,\nthis function returns NULL.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.5/en/ssl-connections.html.\n\nIf no key_str argument is given, DES_DECRYPT() examines the first byte\nof the encrypted string to determine the DES key number that was used\nto encrypt the original string, and then reads the key from the DES key\nfile to decrypt the message. For this to work, the user must have the\nSUPER privilege. The key file can be specified with the --des-key-file\nserver option.\n\nIf you pass this function a key_str argument, that string is used as\nthe key for decrypting the message.\n\nIf the crypt_str argument does not appear to be an encrypted string,\nMySQL returns the given crypt_str.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(102,'CACHE INDEX',27,'Syntax:\nCACHE INDEX\n  tbl_index_list [, tbl_index_list] ...\n  [PARTITION (partition_list | ALL)]\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [[INDEX|KEY] (index_name[, index_name] ...)]\n\npartition_list:\n  partition_name[, partition_name][, ...]\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It is used only for MyISAM tables. After the indexes have been\nassigned, they can be preloaded into the cache if desired with LOAD\nINDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/cache-index.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/cache-index.html'),(103,'ENDPOINT',13,'EndPoint(ls)\n\nReturns the Point that is the endpoint of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(EndPoint(GeomFromText(@ls)));\n+-------------------------------------+\n| AsText(EndPoint(GeomFromText(@ls))) |\n+-------------------------------------+\n| POINT(3 3)                          |\n+-------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(104,'COMPRESS',12,'Syntax:\nCOMPRESS(string_to_compress)\n\nCompresses a string and returns the result as a binary string. This\nfunction requires MySQL to have been compiled with a compression\nlibrary such as zlib. Otherwise, the return value is always NULL. The\ncompressed string can be uncompressed with UNCOMPRESS().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SELECT LENGTH(COMPRESS(REPEAT(\'a\',1000)));\n        -> 21\nmysql> SELECT LENGTH(COMPRESS(\'\'));\n        -> 0\nmysql> SELECT LENGTH(COMPRESS(\'a\'));\n        -> 13\nmysql> SELECT LENGTH(COMPRESS(REPEAT(\'a\',16)));\n        -> 15\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(105,'INSERT',28,'Syntax:\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nINSERT inserts new rows into an existing table. The INSERT ... VALUES\nand INSERT ... SET forms of the statement insert rows based on\nexplicitly specified values. The INSERT ... SELECT form inserts rows\nselected from another table or tables. INSERT ... SELECT is discussed\nfurther in [HELP INSERT SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/insert.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/insert.html'),(106,'COUNT',16,'Syntax:\nCOUNT(expr)\n\nReturns a count of the number of non-NULL values of expr in the rows\nretrieved by a SELECT statement. The result is a BIGINT value.\n\nCOUNT() returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','mysql> SELECT student.student_name,COUNT(*)\n    ->        FROM student,course\n    ->        WHERE student.student_id=course.student_id\n    ->        GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(107,'HANDLER',28,'Syntax:\nHANDLER tbl_name OPEN [ [AS] alias]\n\nHANDLER tbl_name READ index_name { = | <= | >= | < | > } (value1,value2,...)\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ { FIRST | NEXT }\n    [ WHERE where_condition ] [LIMIT ... ]\n\nHANDLER tbl_name CLOSE\n\nThe HANDLER statement provides direct access to table storage engine\ninterfaces. It is available for InnoDB and MyISAM tables.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/handler.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/handler.html'),(108,'MLINEFROMTEXT',3,'MLineFromText(wkt[,srid]), MultiLineStringFromText(wkt[,srid])\n\nConstructs a MULTILINESTRING value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(109,'GEOMCOLLFROMWKB',33,'GeomCollFromWKB(wkb[,srid]), GeometryCollectionFromWKB(wkb[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(110,'HELP_DATE',9,'This help information was generated from the MySQL 5.5 Reference Manual\non: 2013-06-18\n','',''),(111,'RENAME TABLE',40,'Syntax:\nRENAME TABLE tbl_name TO new_tbl_name\n    [, tbl_name2 TO new_tbl_name2] ...\n\nThis statement renames one or more tables.\n\nThe rename operation is done atomically, which means that no other\nsession can access any of the tables while the rename is running. For\nexample, if you have an existing table old_table, you can create\nanother table new_table that has the same structure but is empty, and\nthen replace the existing table with the empty one as follows (assuming\nthat backup_table does not already exist):\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/rename-table.html\n\n','CREATE TABLE new_table (...);\nRENAME TABLE old_table TO backup_table, new_table TO old_table;\n','http://dev.mysql.com/doc/refman/5.5/en/rename-table.html'),(112,'BOOLEAN',23,'BOOL, BOOLEAN\n\nThese types are synonyms for TINYINT(1). A value of zero is considered\nfalse. Nonzero values are considered true:\n\nmysql> SELECT IF(0, \'true\', \'false\');\n+------------------------+\n| IF(0, \'true\', \'false\') |\n+------------------------+\n| false                  |\n+------------------------+\n\nmysql> SELECT IF(1, \'true\', \'false\');\n+------------------------+\n| IF(1, \'true\', \'false\') |\n+------------------------+\n| true                   |\n+------------------------+\n\nmysql> SELECT IF(2, \'true\', \'false\');\n+------------------------+\n| IF(2, \'true\', \'false\') |\n+------------------------+\n| true                   |\n+------------------------+\n\nHowever, the values TRUE and FALSE are merely aliases for 1 and 0,\nrespectively, as shown here:\n\nmysql> SELECT IF(0 = FALSE, \'true\', \'false\');\n+--------------------------------+\n| IF(0 = FALSE, \'true\', \'false\') |\n+--------------------------------+\n| true                           |\n+--------------------------------+\n\nmysql> SELECT IF(1 = TRUE, \'true\', \'false\');\n+-------------------------------+\n| IF(1 = TRUE, \'true\', \'false\') |\n+-------------------------------+\n| true                          |\n+-------------------------------+\n\nmysql> SELECT IF(2 = TRUE, \'true\', \'false\');\n+-------------------------------+\n| IF(2 = TRUE, \'true\', \'false\') |\n+-------------------------------+\n| false                         |\n+-------------------------------+\n\nmysql> SELECT IF(2 = FALSE, \'true\', \'false\');\n+--------------------------------+\n| IF(2 = FALSE, \'true\', \'false\') |\n+--------------------------------+\n| false                          |\n+--------------------------------+\n\nThe last two statements display the results shown because 2 is equal to\nneither 1 nor 0.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(113,'DEFAULT',14,'Syntax:\nDEFAULT(col_name)\n\nReturns the default value for a table column. An error results if the\ncolumn has no default value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','mysql> UPDATE t SET i = DEFAULT(i)+1 WHERE id < 100;\n','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(114,'MOD',4,'Syntax:\nMOD(N,M), N % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT MOD(234, 10);\n        -> 4\nmysql> SELECT 253 % 7;\n        -> 1\nmysql> SELECT MOD(29,9);\n        -> 2\nmysql> SELECT 29 MOD 9;\n        -> 2\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(115,'TINYTEXT',23,'TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 255 (28 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TINYTEXT value is stored using a 1-byte length prefix\nthat indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(116,'OPTIMIZE TABLE',21,'Syntax:\nOPTIMIZE [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n\nReorganizes the physical storage of table data and associated index\ndata, to reduce storage space and improve I/O efficiency when accessing\nthe table. The exact changes made to each table depend on the storage\nengine used by that table.\n\nUse OPTIMIZE TABLE in these cases, depending on the type of table:\n\no After doing substantial insert, update, or delete operations on an\n  InnoDB table that has its own .ibd file because it was created with\n  the innodb_file_per_table option enabled. The table and indexes are\n  reorganized, and disk space can be reclaimed for use by the operating\n  system.\n\no After deleting a large part of a MyISAM or ARCHIVE table, or making\n  many changes to a MyISAM or ARCHIVE table with variable-length rows\n  (tables that have VARCHAR, VARBINARY, BLOB, or TEXT columns). Deleted\n  rows are maintained in a linked list and subsequent INSERT operations\n  reuse old row positions. You can use OPTIMIZE TABLE to reclaim the\n  unused space and to defragment the data file. After extensive changes\n  to a table, this statement may also improve performance of statements\n  that use the table, sometimes significantly.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nOPTIMIZE TABLE is also supported for partitioned tables. For\ninformation about using this statement with partitioned tables and\ntable partitions, see\nhttp://dev.mysql.com/doc/refman/5.5/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/optimize-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/optimize-table.html'),(117,'DECODE',12,'Syntax:\nDECODE(crypt_str,pass_str)\n\nDecrypts the encrypted string crypt_str using pass_str as the password.\ncrypt_str should be a string returned from ENCODE().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(118,'<=>',19,'Syntax:\n<=>\n\nNULL-safe equal. This operator performs an equality comparison like the\n= operator, but returns 1 rather than NULL if both operands are NULL,\nand 0 rather than NULL if one operand is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;\n        -> 1, 1, 0\nmysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;\n        -> 1, NULL, NULL\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(119,'HELP STATEMENT',29,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nmanual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttp://dev.mysql.com/doc/refman/5.5/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not case\nsensitive.\n\nThe search string can contain the the wildcard characters \"%\" and \"_\".\nThese have the same meaning as for pattern-matching operations\nperformed with the LIKE operator. For example, HELP \'rep%\' returns a\nlist of topics that begin with rep.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/help.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/help.html'),(120,'RESET',27,'Syntax:\nRESET reset_option [, reset_option] ...\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nThe RESET statement causes an implicit commit. See\nhttp://dev.mysql.com/doc/refman/5.5/en/implicit-commit.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/reset.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/reset.html'),(121,'GET_LOCK',14,'Syntax:\nGET_LOCK(str,timeout)\n\nTries to obtain a lock with a name given by the string str, using a\ntimeout of timeout seconds. Returns 1 if the lock was obtained\nsuccessfully, 0 if the attempt timed out (for example, because another\nclient has previously locked the name), or NULL if an error occurred\n(such as running out of memory or the thread was killed with mysqladmin\nkill). If you have a lock obtained with GET_LOCK(), it is released when\nyou execute RELEASE_LOCK(), execute a new GET_LOCK(), or your\nconnection terminates (either normally or abnormally). Locks obtained\nwith GET_LOCK() do not interact with transactions. That is, committing\na transaction does not release any such locks obtained during the\ntransaction.\n\nThis function can be used to implement application locks or to simulate\nrecord locks. Names are locked on a server-wide basis. If a name has\nbeen locked by one client, GET_LOCK() blocks any request by another\nclient for a lock with the same name. This enables clients that agree\non a given lock name to use the name to perform cooperative advisory\nlocking. But be aware that it also enables a client that is not among\nthe set of cooperating clients to lock a name, either inadvertently or\ndeliberately, and thus prevent any of the cooperating clients from\nlocking that name. One way to reduce the likelihood of this is to use\nlock names that are database-specific or application-specific. For\nexample, use lock names of the form db_name.str or app_name.str.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','mysql> SELECT GET_LOCK(\'lock1\',10);\n        -> 1\nmysql> SELECT IS_FREE_LOCK(\'lock2\');\n        -> 1\nmysql> SELECT GET_LOCK(\'lock2\',10);\n        -> 1\nmysql> SELECT RELEASE_LOCK(\'lock2\');\n        -> 1\nmysql> SELECT RELEASE_LOCK(\'lock1\');\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(122,'UCASE',38,'Syntax:\nUCASE(str)\n\nUCASE() is a synonym for UPPER().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(123,'SHOW BINLOG EVENTS',27,'Syntax:\nSHOW BINLOG EVENTS\n   [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify \'log_name\',\nthe first binary log is displayed.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-binlog-events.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-binlog-events.html'),(124,'MPOLYFROMWKB',33,'MPolyFromWKB(wkb[,srid]), MultiPolygonFromWKB(wkb[,srid])\n\nConstructs a MULTIPOLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(125,'ITERATE',24,'Syntax:\nITERATE label\n\nITERATE can appear only within LOOP, REPEAT, and WHILE statements.\nITERATE means \"start the loop again.\"\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/iterate.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/iterate.html'),(126,'DO',28,'Syntax:\nDO expr [, expr] ...\n\nDO executes the expressions but does not return any results. In most\nrespects, DO is shorthand for SELECT expr, ..., but has the advantage\nthat it is slightly faster when you do not care about the result.\n\nDO is useful primarily with functions that have side effects, such as\nRELEASE_LOCK().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/do.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/do.html'),(127,'CURTIME',32,'Syntax:\nCURTIME()\n\nReturns the current time as a value in \'HH:MM:SS\' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context. The value is expressed in the current time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT CURTIME();\n        -> \'23:50:26\'\nmysql> SELECT CURTIME() + 0;\n        -> 235026.000000\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(128,'CHAR_LENGTH',38,'Syntax:\nCHAR_LENGTH(str)\n\nReturns the length of the string str, measured in characters. A\nmulti-byte character counts as a single character. This means that for\na string containing five 2-byte characters, LENGTH() returns 10,\nwhereas CHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(129,'BIGINT',23,'BIGINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA large integer. The signed range is -9223372036854775808 to\n9223372036854775807. The unsigned range is 0 to 18446744073709551615.\n\nSERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(130,'SET',27,'Syntax:\nSET variable_assignment [, variable_assignment] ...\n\nvariable_assignment:\n      user_var_name = expr\n    | [GLOBAL | SESSION] system_var_name = expr\n    | [@@global. | @@session. | @@]system_var_name = expr\n\nThe SET statement assigns values to different types of variables that\naffect the operation of the server or your client. Older versions of\nMySQL employed SET OPTION, but this syntax is deprecated in favor of\nSET without OPTION.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/set-statement.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/set-statement.html'),(131,'LOAD XML',28,'Syntax:\nLOAD XML [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE \'file_name\'\n    [REPLACE | IGNORE]\n    INTO TABLE [db_name.]tbl_name\n    [CHARACTER SET charset_name]\n    [ROWS IDENTIFIED BY \'<tagname>\']\n    [IGNORE number {LINES | ROWS}]\n    [(column_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD XML statement reads data from an XML file into a table. The\nfile_name must be given as a literal string. The tagname in the\noptional ROWS IDENTIFIED BY clause must also be given as a literal\nstring, and must be surrounded by angle brackets (< and >).\n\nLOAD XML acts as the complement of running the mysql client in XML\noutput mode (that is, starting the client with the --xml option). To\nwrite data from a table to an XML file, use a command such as the\nfollowing one from the system shell:\n\nshell> mysql --xml -e \'SELECT * FROM mytable\' > file.xml\n\nTo read the file back into a table, use LOAD XML INFILE. By default,\nthe <row> element is considered to be the equivalent of a database\ntable row; this can be changed using the ROWS IDENTIFIED BY clause.\n\nThis statement supports three different XML formats:\n\no Column names as attributes and column values as attribute values:\n\n<row column1=\"value1\" column2=\"value2\" .../>\n\no Column names as tags and column values as the content of these tags:\n\n<row>\n  <column1>value1</column1>\n  <column2>value2</column2>\n</row>\n\no Column names are the name attributes of <field> tags, and values are\n  the contents of these tags:\n\n<row>\n  <field name=\'column1\'>value1</field>\n  <field name=\'column2\'>value2</field>\n</row>\n\n  This is the format used by other MySQL tools, such as mysqldump.\n\nAll 3 formats can be used in the same XML file; the import routine\nautomatically detects the format for each row and interprets it\ncorrectly. Tags are matched based on the tag or attribute name and the\ncolumn name.\n\nThe following clauses work essentially the same way for LOAD XML as\nthey do for LOAD DATA:\n\no LOW_PRIORITY or CONCURRENT\n\no LOCAL\n\no REPLACE or IGNORE\n\no CHARACTER SET\n\no (column_or_user_var,...)\n\no SET\n\nSee [HELP LOAD DATA], for more information about these clauses.\n\nThe IGNORE number LINES or IGNORE number ROWS clause causes the first\nnumber rows in the XML file to be skipped. It is analogous to the LOAD\nDATA statement\'s IGNORE ... LINES clause.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/load-xml.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/load-xml.html'),(132,'CONV',4,'Syntax:\nCONV(N,from_base,to_base)\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base\nto_base. Returns NULL if any argument is NULL. The argument N is\ninterpreted as an integer, but may be specified as an integer or a\nstring. The minimum base is 2 and the maximum base is 36. If to_base is\na negative number, N is regarded as a signed number. Otherwise, N is\ntreated as unsigned. CONV() works with 64-bit precision.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT CONV(\'a\',16,2);\n        -> \'1010\'\nmysql> SELECT CONV(\'6E\',18,8);\n        -> \'172\'\nmysql> SELECT CONV(-17,10,-18);\n        -> \'-H\'\nmysql> SELECT CONV(10+\'10\'+\'10\'+0xa,10,10);\n        -> \'40\'\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(133,'DATE',23,'DATE\n\nA date. The supported range is \'1000-01-01\' to \'9999-12-31\'. MySQL\ndisplays DATE values in \'YYYY-MM-DD\' format, but permits assignment of\nvalues to DATE columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html'),(134,'ASSIGN-VALUE',15,'Syntax:\n:=\n\nAssignment operator. Causes the user variable on the left hand side of\nthe operator to take on the value to its right. The value on the right\nhand side may be a literal value, another variable storing a value, or\nany legal expression that yields a scalar value, including the result\nof a query (provided that this value is a scalar value). You can\nperform multiple assignments in the same SET statement. You can perform\nmultiple assignments in the same statement-\n\nUnlike =, the := operator is never interpreted as a comparison\noperator. This means you can use := in any valid SQL statement (not\njust in SET statements) to assign a value to a variable.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/assignment-operators.html\n\n','mysql> SELECT @var1, @var2;\n        -> NULL, NULL\nmysql> SELECT @var1 := 1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2 := @var1;\n        -> 1, 1\nmysql> SELECT @var1, @var2;\n        -> 1, 1\n\nmysql> SELECT @var1:=COUNT(*) FROM t1;\n        -> 4\nmysql> SELECT @var1;\n        -> 4\n','http://dev.mysql.com/doc/refman/5.5/en/assignment-operators.html'),(135,'SHOW OPEN TABLES',27,'Syntax:\nSHOW OPEN TABLES [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttp://dev.mysql.com/doc/refman/5.5/en/table-cache.html. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database. The LIKE clause, if present, indicates which table\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-open-tables.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-open-tables.html'),(136,'EXTRACT',32,'Syntax:\nEXTRACT(unit FROM date)\n\nThe EXTRACT() function uses the same kinds of unit specifiers as\nDATE_ADD() or DATE_SUB(), but extracts parts from the date rather than\nperforming date arithmetic.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT EXTRACT(YEAR FROM \'2009-07-02\');\n       -> 2009\nmysql> SELECT EXTRACT(YEAR_MONTH FROM \'2009-07-02 01:02:03\');\n       -> 200907\nmysql> SELECT EXTRACT(DAY_MINUTE FROM \'2009-07-02 01:02:03\');\n       -> 20102\nmysql> SELECT EXTRACT(MICROSECOND\n    ->                FROM \'2003-01-02 10:30:00.000123\');\n        -> 123\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(137,'ENCRYPT',12,'Syntax:\nENCRYPT(str[,salt])\n\nEncrypts str using the Unix crypt() system call and returns a binary\nstring. The salt argument must be a string with at least two characters\nor the result will be NULL. If no salt argument is given, a random\nvalue is used.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SELECT ENCRYPT(\'hello\');\n        -> \'VxuFAJXVARROc\'\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(138,'SHOW STATUS',27,'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information. This information also\ncan be obtained using the mysqladmin extended-status command. The LIKE\nclause, if present, indicates which variable names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nWith the GLOBAL modifier, SHOW STATUS displays the status values for\nall connections to MySQL. With SESSION, it displays the status values\nfor the current connection. If no modifier is present, the default is\nSESSION. LOCAL is a synonym for SESSION.\n\nSome status variables have only a global value. For these, you get the\nsame value for both GLOBAL and SESSION. The scope for each status\nvariable is listed at\nhttp://dev.mysql.com/doc/refman/5.5/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-status.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-status.html'),(139,'EXTRACTVALUE',38,'Syntax:\nExtractValue(xml_frag, xpath_expr)\n\nExtractValue() takes two string arguments, a fragment of XML markup\nxml_frag and an XPath expression xpath_expr (also known as a locator);\nit returns the text (CDATA) of the first text node which is a child of\nthe elements or elements matched by the XPath expression. In MySQL 5.5,\nthe XPath expression can contain at most 127 characters. (This\nlimitation is lifted in MySQL 5.6.)\n\nUsing this function is the equivalent of performing a match using the\nxpath_expr after appending /text(). In other words,\nExtractValue(\'<a><b>Sakila</b></a>\', \'/a/b\') and\nExtractValue(\'<a><b>Sakila</b></a>\', \'/a/b/text()\') produce the same\nresult.\n\nIf multiple matches are found, the content of the first child text node\nof each matching element is returned (in the order matched) as a\nsingle, space-delimited string.\n\nIf no matching text node is found for the expression (including the\nimplicit /text())---for whatever reason, as long as xpath_expr is\nvalid, and xml_frag consists of elements which are properly nested and\nclosed---an empty string is returned. No distinction is made between a\nmatch on an empty element and no match at all. This is by design.\n\nIf you need to determine whether no matching element was found in\nxml_frag or such an element was found but contained no child text\nnodes, you should test the result of an expression that uses the XPath\ncount() function. For example, both of these statements return an empty\nstring, as shown here:\n\nmysql> SELECT ExtractValue(\'<a><b/></a>\', \'/a/b\');\n+-------------------------------------+\n| ExtractValue(\'<a><b/></a>\', \'/a/b\') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(\'<a><c/></a>\', \'/a/b\');\n+-------------------------------------+\n| ExtractValue(\'<a><c/></a>\', \'/a/b\') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nHowever, you can determine whether there was actually a matching\nelement using the following:\n\nmysql> SELECT ExtractValue(\'<a><b/></a>\', \'count(/a/b)\');\n+-------------------------------------+\n| ExtractValue(\'<a><b/></a>\', \'count(/a/b)\') |\n+-------------------------------------+\n| 1                                   |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(\'<a><c/></a>\', \'count(/a/b)\');\n+-------------------------------------+\n| ExtractValue(\'<a><c/></a>\', \'count(/a/b)\') |\n+-------------------------------------+\n| 0                                   |\n+-------------------------------------+\n1 row in set (0.01 sec)\n\n*Important*: ExtractValue() returns only CDATA, and does not return any\ntags that might be contained within a matching tag, nor any of their\ncontent (see the result returned as val1 in the following example).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/xml-functions.html\n\n','mysql> SELECT\n    ->   ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/a\') AS val1,\n    ->   ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/a/b\') AS val2,\n    ->   ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'//b\') AS val3,\n    ->   ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/b\') AS val4,\n    ->   ExtractValue(\'<a>ccc<b>ddd</b><b>eee</b></a>\', \'//b\') AS val5;\n\n+------+------+------+------+---------+\n| val1 | val2 | val3 | val4 | val5    |\n+------+------+------+------+---------+\n| ccc  | ddd  | ddd  |      | ddd eee |\n+------+------+------+------+---------+\n','http://dev.mysql.com/doc/refman/5.5/en/xml-functions.html'),(140,'OLD_PASSWORD',12,'Syntax:\nOLD_PASSWORD(str)\n\nOLD_PASSWORD() was added when the implementation of PASSWORD() was\nchanged in MySQL 4.1 to improve security. OLD_PASSWORD() returns the\nvalue of the pre-4.1 implementation of PASSWORD() as a string, and is\nintended to permit you to reset passwords for any pre-4.1 clients that\nneed to connect to your version 5.5 MySQL server without locking them\nout. See http://dev.mysql.com/doc/refman/5.5/en/password-hashing.html.\n\nAs of MySQL 5.5.3, the return value is a nonbinary string in the\nconnection character set. Before 5.5.3, the return value is a binary\nstring.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(141,'FORMAT',38,'Syntax:\nFORMAT(X,D[,locale])\n\nFormats the number X to a format like \'#,###,###.##\', rounded to D\ndecimal places, and returns the result as a string. If D is 0, the\nresult has no decimal point or fractional part.\n\nThe optional third parameter enables a locale to be specified to be\nused for the result number\'s decimal point, thousands separator, and\ngrouping between separators. Permissible locale values are the same as\nthe legal values for the lc_time_names system variable (see\nhttp://dev.mysql.com/doc/refman/5.5/en/locale-support.html). If no\nlocale is specified, the default is \'en_US\'.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT FORMAT(12332.123456, 4);\n        -> \'12,332.1235\'\nmysql> SELECT FORMAT(12332.1,4);\n        -> \'12,332.1000\'\nmysql> SELECT FORMAT(12332.2,0);\n        -> \'12,332\'\nmysql> SELECT FORMAT(12332.2,2,\'de_DE\');\n        -> \'12.332,20\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(142,'||',15,'Syntax:\nOR, ||\n\nLogical OR. When both operands are non-NULL, the result is 1 if any\noperand is nonzero, and 0 otherwise. With a NULL operand, the result is\n1 if the other operand is nonzero, and NULL otherwise. If both operands\nare NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html\n\n','mysql> SELECT 1 || 1;\n        -> 1\nmysql> SELECT 1 || 0;\n        -> 1\nmysql> SELECT 0 || 0;\n        -> 0\nmysql> SELECT 0 || NULL;\n        -> NULL\nmysql> SELECT 1 || NULL;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html'),(143,'BIT_LENGTH',38,'Syntax:\nBIT_LENGTH(str)\n\nReturns the length of the string str in bits.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT BIT_LENGTH(\'text\');\n        -> 32\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(144,'EXTERIORRING',2,'ExteriorRing(poly)\n\nReturns the exterior ring of the Polygon value poly as a LineString.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT AsText(ExteriorRing(GeomFromText(@poly)));\n+-------------------------------------------+\n| AsText(ExteriorRing(GeomFromText(@poly))) |\n+-------------------------------------------+\n| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |\n+-------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(145,'GEOMFROMWKB',33,'GeomFromWKB(wkb[,srid]), GeometryFromWKB(wkb[,srid])\n\nConstructs a geometry value of any type using its WKB representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(146,'SHOW SLAVE HOSTS',27,'Syntax:\nSHOW SLAVE HOSTS\n\nDisplays a list of replication slaves currently registered with the\nmaster. (Before MySQL 5.5.3, only slaves started with the\n--report-host=host_name option are visible in this list.)\n\nThe list is displayed on any server (not just the master server). The\noutput looks like this:\n\nmysql> SHOW SLAVE HOSTS;\n+------------+-----------+------+-----------+\n| Server_id  | Host      | Port | Master_id |\n+------------+-----------+------+-----------+\n|  192168010 | iconnect2 | 3306 | 192168011 |\n| 1921680101 | athena    | 3306 | 192168011 |\n+------------+-----------+------+-----------+\n\no Server_id: The unique server ID of the slave server, as configured in\n  the server\'s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the slave server, as configured in the\n  server\'s option file, or on the command line with\n  --report-host=host_name. Note that this can differ from the machine\n  name as configured in the operating system.\n\no Port: The port the slave server is listening on.\n\n  In MySQL 5.5.23 and later, a zero in this column means that the slave\n  port (--report-port) was not set. Prior to MySQL 5.5.23, 3306 was\n  used as the default in such cases (Bug #13333431).\n\no Master_id: The unique server ID of the master server that the slave\n  server is replicating from.\n\nSome MySQL versions report another variable, Rpl_recovery_rank. This\nvariable was never used, and was removed in MySQL 5.5.3. (Bug #13963)\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-slave-hosts.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-slave-hosts.html'),(147,'START TRANSACTION',8,'Syntax:\nSTART TRANSACTION [WITH CONSISTENT SNAPSHOT]\nBEGIN [WORK]\nCOMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nSET autocommit = {0 | 1}\n\nThese statements provide control over use of transactions:\n\no START TRANSACTION or BEGIN start a new transaction.\n\no COMMIT commits the current transaction, making its changes permanent.\n\no ROLLBACK rolls back the current transaction, canceling its changes.\n\no SET autocommit disables or enables the default autocommit mode for\n  the current session.\n\nBy default, MySQL runs with autocommit mode enabled. This means that as\nsoon as you execute a statement that updates (modifies) a table, MySQL\nstores the update on disk to make it permanent. The change cannot be\nrolled back.\n\nTo disable autocommit mode implicitly for a single series of\nstatements, use the START TRANSACTION statement:\n\nSTART TRANSACTION;\nSELECT @A:=SUM(salary) FROM table1 WHERE type=1;\nUPDATE table2 SET summary=@A WHERE type=1;\nCOMMIT;\n\nWith START TRANSACTION, autocommit remains disabled until you end the\ntransaction with COMMIT or ROLLBACK. The autocommit mode then reverts\nto its previous state.\n\nYou can also begin a transaction like this:\n\nSTART TRANSACTION WITH CONSISTENT SNAPSHOT;\n\nThe WITH CONSISTENT SNAPSHOT option starts a consistent read for\nstorage engines that are capable of it. This applies only to InnoDB.\nThe effect is the same as issuing a START TRANSACTION followed by a\nSELECT from any InnoDB table. See\nhttp://dev.mysql.com/doc/refman/5.5/en/innodb-consistent-read.html. The\nWITH CONSISTENT SNAPSHOT option does not change the current transaction\nisolation level, so it provides a consistent snapshot only if the\ncurrent isolation level is one that permits consistent read (REPEATABLE\nREAD or SERIALIZABLE).\n\n*Important*: Many APIs used for writing MySQL client applications (such\nas JDBC) provide their own methods for starting transactions that can\n(and sometimes should) be used instead of sending a START TRANSACTION\nstatement from the client. See\nhttp://dev.mysql.com/doc/refman/5.5/en/connectors-apis.html, or the\ndocumentation for your API, for more information.\n\nTo disable autocommit mode explicitly, use the following statement:\n\nSET autocommit=0;\n\nAfter disabling autocommit mode by setting the autocommit variable to\nzero, changes to transaction-safe tables (such as those for InnoDB or\nNDBCLUSTER) are not made permanent immediately. You must use COMMIT to\nstore your changes to disk or ROLLBACK to ignore the changes.\n\nautocommit is a session variable and must be set for each session. To\ndisable autocommit mode for each new connection, see the description of\nthe autocommit system variable at\nhttp://dev.mysql.com/doc/refman/5.5/en/server-system-variables.html.\n\nBEGIN and BEGIN WORK are supported as aliases of START TRANSACTION for\ninitiating a transaction. START TRANSACTION is standard SQL syntax and\nis the recommended way to start an ad-hoc transaction.\n\nThe BEGIN statement differs from the use of the BEGIN keyword that\nstarts a BEGIN ... END compound statement. The latter does not begin a\ntransaction. See [HELP BEGIN END].\n\n*Note*: Within all stored programs (stored procedures and functions,\ntriggers, and events), the parser treats BEGIN [WORK] as the beginning\nof a BEGIN ... END block. Begin a transaction in this context with\nSTART TRANSACTION instead.\n\nThe optional WORK keyword is supported for COMMIT and ROLLBACK, as are\nthe CHAIN and RELEASE clauses. CHAIN and RELEASE can be used for\nadditional control over transaction completion. The value of the\ncompletion_type system variable determines the default completion\nbehavior. See\nhttp://dev.mysql.com/doc/refman/5.5/en/server-system-variables.html.\n\nThe AND CHAIN clause causes a new transaction to begin as soon as the\ncurrent one ends, and the new transaction has the same isolation level\nas the just-terminated transaction. The RELEASE clause causes the\nserver to disconnect the current client session after terminating the\ncurrent transaction. Including the NO keyword suppresses CHAIN or\nRELEASE completion, which can be useful if the completion_type system\nvariable is set to cause chaining or release completion by default.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/commit.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/commit.html'),(148,'BETWEEN AND',19,'Syntax:\nexpr BETWEEN min AND max\n\nIf expr is greater than or equal to min and expr is less than or equal\nto max, BETWEEN returns 1, otherwise it returns 0. This is equivalent\nto the expression (min <= expr AND expr <= max) if all the arguments\nare of the same type. Otherwise type conversion takes place according\nto the rules described in\nhttp://dev.mysql.com/doc/refman/5.5/en/type-conversion.html, but\napplied to all the three arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 2 BETWEEN 1 AND 3, 2 BETWEEN 3 and 1;\n        -> 1, 0\nmysql> SELECT 1 BETWEEN 2 AND 3;\n        -> 0\nmysql> SELECT \'b\' BETWEEN \'a\' AND \'c\';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND \'3\';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND \'x-3\';\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(149,'MULTIPOLYGON',25,'MultiPolygon(poly1,poly2,...)\n\nConstructs a MultiPolygon value from a set of Polygon or WKB Polygon\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(150,'TIME_FORMAT',32,'Syntax:\nTIME_FORMAT(time,format)\n\nThis is used like the DATE_FORMAT() function, but the format string may\ncontain format specifiers only for hours, minutes, seconds, and\nmicroseconds. Other specifiers produce a NULL value or 0.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TIME_FORMAT(\'100:00:00\', \'%H %k %h %I %l\');\n        -> \'100 100 04 04 4\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(151,'LEFT',38,'Syntax:\nLEFT(str,len)\n\nReturns the leftmost len characters from the string str, or NULL if any\nargument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT LEFT(\'foobarbar\', 5);\n        -> \'fooba\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(152,'FLUSH QUERY CACHE',27,'You can defragment the query cache to better utilize its memory with\nthe FLUSH QUERY CACHE statement. The statement does not remove any\nqueries from the cache.\n\nThe RESET QUERY CACHE statement removes all query results from the\nquery cache. The FLUSH TABLES statement also does this.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/query-cache-status-and-maintenance.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/query-cache-status-and-maintenance.html'),(153,'SET DATA TYPE',23,'SET(\'value1\',\'value2\',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA set. A string object that can have zero or more values, each of which\nmust be chosen from the list of values \'value1\', \'value2\', ... SET\nvalues are represented internally as integers.\n\nA SET column can have a maximum of 64 distinct members. A table can\nhave no more than 255 unique element list definitions among its ENUM\nand SET columns considered as a group. For more information on this\nlimit, see http://dev.mysql.com/doc/refman/5.5/en/limits-frm-file.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(154,'RAND',4,'Syntax:\nRAND(), RAND(N)\n\nReturns a random floating-point value v in the range 0 <= v < 1.0. If a\nconstant integer argument N is specified, it is used as the seed value,\nwhich produces a repeatable sequence of column values. In the following\nexample, note that the sequences of values produced by RAND(3) is the\nsame both places where it occurs.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> CREATE TABLE t (i INT);\nQuery OK, 0 rows affected (0.42 sec)\n\nmysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT i, RAND() FROM t;\n+------+------------------+\n| i    | RAND()           |\n+------+------------------+\n|    1 | 0.61914388706828 |\n|    2 | 0.93845168309142 |\n|    3 | 0.83482678498591 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND(3) FROM t;\n+------+------------------+\n| i    | RAND(3)          |\n+------+------------------+\n|    1 | 0.90576975597606 |\n|    2 | 0.37307905813035 |\n|    3 | 0.14808605345719 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND() FROM t;\n+------+------------------+\n| i    | RAND()           |\n+------+------------------+\n|    1 | 0.35877890638893 |\n|    2 | 0.28941420772058 |\n|    3 | 0.37073435016976 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND(3) FROM t;\n+------+------------------+\n| i    | RAND(3)          |\n+------+------------------+\n|    1 | 0.90576975597606 |\n|    2 | 0.37307905813035 |\n|    3 | 0.14808605345719 |\n+------+------------------+\n3 rows in set (0.01 sec)\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(155,'RPAD',38,'Syntax:\nRPAD(str,len,padstr)\n\nReturns the string str, right-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT RPAD(\'hi\',5,\'?\');\n        -> \'hi???\'\nmysql> SELECT RPAD(\'hi\',1,\'?\');\n        -> \'h\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(156,'CREATE DATABASE',40,'Syntax:\nCREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n    [create_specification] ...\n\ncreate_specification:\n    [DEFAULT] CHARACTER SET [=] charset_name\n  | [DEFAULT] COLLATE [=] collation_name\n\nCREATE DATABASE creates a database with the given name. To use this\nstatement, you need the CREATE privilege for the database. CREATE\nSCHEMA is a synonym for CREATE DATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-database.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-database.html'),(157,'DEC',23,'DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]\n[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nThese types are synonyms for DECIMAL. The FIXED synonym is available\nfor compatibility with other database systems.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(158,'VAR_POP',16,'Syntax:\nVAR_POP(expr)\n\nReturns the population standard variance of expr. It considers rows as\nthe whole population, not as a sample, so it has the number of rows as\nthe denominator. You can also use VARIANCE(), which is equivalent but\nis not standard SQL.\n\nVAR_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(159,'ELT',38,'Syntax:\nELT(N,str1,str2,str3,...)\n\nELT() returns the Nth element of the list of strings: str1 if N = 1,\nstr2 if N = 2, and so on. Returns NULL if N is less than 1 or greater\nthan the number of arguments. ELT() is the complement of FIELD().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT ELT(1, \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> \'ej\'\nmysql> SELECT ELT(4, \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> \'foo\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(160,'ALTER VIEW',40,'Syntax:\nALTER\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThis statement changes the definition of a view, which must exist. The\nsyntax is similar to that for CREATE VIEW and the effect is the same as\nfor CREATE OR REPLACE VIEW. See [HELP CREATE VIEW]. This statement\nrequires the CREATE VIEW and DROP privileges for the view, and some\nprivilege for each column referred to in the SELECT statement. ALTER\nVIEW is permitted only to the definer or users with the SUPER\nprivilege.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-view.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/alter-view.html'),(161,'SHOW DATABASES',27,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-databases.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-databases.html'),(162,'~',20,'Syntax:\n~\n\nInvert all bits.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html\n\n','mysql> SELECT 5 & ~1;\n        -> 4\n','http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html'),(163,'TEXT',23,'TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 65,535 (216 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TEXT value is stored using a 2-byte length prefix that\nindicates the number of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest TEXT type large enough to hold\nvalues M characters long.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(164,'CONCAT_WS',38,'Syntax:\nCONCAT_WS(separator,str1,str2,...)\n\nCONCAT_WS() stands for Concatenate With Separator and is a special form\nof CONCAT(). The first argument is the separator for the rest of the\narguments. The separator is added between the strings to be\nconcatenated. The separator can be a string, as can the rest of the\narguments. If the separator is NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT CONCAT_WS(\',\',\'First name\',\'Second name\',\'Last Name\');\n        -> \'First name,Second name,Last Name\'\nmysql> SELECT CONCAT_WS(\',\',\'First name\',NULL,\'Last Name\');\n        -> \'First name,Last Name\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(165,'ROW_COUNT',17,'Syntax:\nROW_COUNT()\n\nBefore MySQL 5.5.5, ROW_COUNT() returns the number of rows changed,\ndeleted, or inserted by the last statement if it was an UPDATE, DELETE,\nor INSERT. For other statements, the value may not be meaningful.\n\nAs of MySQL 5.5.5, ROW_COUNT() returns a value as follows:\n\no DDL statements: 0. This applies to statements such as CREATE TABLE or\n  DROP TABLE.\n\no DML statements other than SELECT: The number of affected rows. This\n  applies to statements such as UPDATE, INSERT, or DELETE (as before),\n  but now also to statements such as ALTER TABLE and LOAD DATA INFILE.\n\no SELECT: -1 if the statement returns a result set, or the number of\n  rows \"affected\" if it does not. For example, for SELECT * FROM t1,\n  ROW_COUNT() returns -1. For SELECT * FROM t1 INTO OUTFILE\n  \'file_name\', ROW_COUNT() returns the number of rows written to the\n  file.\n\no SIGNAL statements: 0.\n\nFor UPDATE statements, the affected-rows value by default is the number\nof rows actually changed. If you specify the CLIENT_FOUND_ROWS flag to\nmysql_real_connect() when connecting to mysqld, the affected-rows value\nis the number of rows \"found\"; that is, matched by the WHERE clause.\n\nFor REPLACE statements, the affected-rows value is 2 if the new row\nreplaced an old row, because in this case, one row was inserted after\nthe duplicate was deleted.\n\nFor INSERT ... ON DUPLICATE KEY UPDATE statements, the affected-rows\nvalue is 1 if the row is inserted as a new row and 2 if an existing row\nis updated.\n\nThe ROW_COUNT() value is similar to the value from the\nmysql_affected_rows() C API function and the row count that the mysql\nclient displays following statement execution.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           3 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> DELETE FROM t WHERE i IN(1,2);\nQuery OK, 2 rows affected (0.00 sec)\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           2 |\n+-------------+\n1 row in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(166,'ASIN',4,'Syntax:\nASIN(X)\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT ASIN(0.2);\n        -> 0.20135792079033\nmysql> SELECT ASIN(\'foo\');\n\n+-------------+\n| ASIN(\'foo\') |\n+-------------+\n|           0 |\n+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: \'foo\' |\n+---------+------+-----------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(167,'SIGN',4,'Syntax:\nSIGN(X)\n\nReturns the sign of the argument as -1, 0, or 1, depending on whether X\nis negative, zero, or positive.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT SIGN(-32);\n        -> -1\nmysql> SELECT SIGN(0);\n        -> 0\nmysql> SELECT SIGN(234);\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(168,'SEC_TO_TIME',32,'Syntax:\nSEC_TO_TIME(seconds)\n\nReturns the seconds argument, converted to hours, minutes, and seconds,\nas a TIME value. The range of the result is constrained to that of the\nTIME data type. A warning occurs if the argument corresponds to a value\noutside that range.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT SEC_TO_TIME(2378);\n        -> \'00:39:38\'\nmysql> SELECT SEC_TO_TIME(2378) + 0;\n        -> 3938\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(169,'FLOAT',23,'FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA small (single-precision) floating-point number. Permissible values\nare -3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to\n3.402823466E+38. These are the theoretical limits, based on the IEEE\nstandard. The actual range might be slightly smaller depending on your\nhardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits permitted by the hardware. A single-precision floating-point\nnumber is accurate to approximately 7 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nUsing FLOAT might give you some unexpected problems because all\ncalculations in MySQL are done with double precision. See\nhttp://dev.mysql.com/doc/refman/5.5/en/no-matching-rows.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(170,'LOCATE',38,'Syntax:\nLOCATE(substr,str), LOCATE(substr,str,pos)\n\nThe first syntax returns the position of the first occurrence of\nsubstring substr in string str. The second syntax returns the position\nof the first occurrence of substring substr in string str, starting at\nposition pos. Returns 0 if substr is not in str.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT LOCATE(\'bar\', \'foobarbar\');\n        -> 4\nmysql> SELECT LOCATE(\'xbar\', \'foobar\');\n        -> 0\nmysql> SELECT LOCATE(\'bar\', \'foobarbar\', 5);\n        -> 7\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(171,'SHOW EVENTS',27,'Syntax:\nSHOW EVENTS [{FROM | IN} schema_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement displays information about Event Manager events. It\nrequires the EVENT privilege for the database from which the events are\nto be shown.\n\nIn its simplest form, SHOW EVENTS lists all of the events in the\ncurrent schema:\n\nmysql> SELECT CURRENT_USER(), SCHEMA();\n+----------------+----------+\n| CURRENT_USER() | SCHEMA() |\n+----------------+----------+\n| jon@ghidora    | myschema |\n+----------------+----------+\n1 row in set (0.00 sec)\n\nmysql> SHOW EVENTS\\G\n*************************** 1. row ***************************\n                  Db: myschema\n                Name: e_daily\n             Definer: jon@ghidora\n           Time zone: SYSTEM\n                Type: RECURRING\n          Execute at: NULL\n      Interval value: 10\n      Interval field: SECOND\n              Starts: 2006-02-09 10:41:23\n                Ends: NULL\n              Status: ENABLED\n          Originator: 0\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\nTo see events for a specific schema, use the FROM clause. For example,\nto see events for the test schema, use the following statement:\n\nSHOW EVENTS FROM test;\n\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-events.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-events.html'),(172,'CHARSET',17,'Syntax:\nCHARSET(str)\n\nReturns the character set of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT CHARSET(\'abc\');\n        -> \'latin1\'\nmysql> SELECT CHARSET(CONVERT(\'abc\' USING utf8));\n        -> \'utf8\'\nmysql> SELECT CHARSET(USER());\n        -> \'utf8\'\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(173,'SUBDATE',32,'Syntax:\nSUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, SUBDATE()\nis a synonym for DATE_SUB(). For information on the INTERVAL unit\nargument, see the discussion for DATE_ADD().\n\nmysql> SELECT DATE_SUB(\'2008-01-02\', INTERVAL 31 DAY);\n        -> \'2007-12-02\'\nmysql> SELECT SUBDATE(\'2008-01-02\', INTERVAL 31 DAY);\n        -> \'2007-12-02\'\n\nThe second form enables the use of an integer value for days. In such\ncases, it is interpreted as the number of days to be subtracted from\nthe date or datetime expression expr.\n\nmysql> SELECT SUBDATE(\'2008-01-02 12:00:00\', 31);\n        -> \'2007-12-02 12:00:00\'\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(174,'DAYOFYEAR',32,'Syntax:\nDAYOFYEAR(date)\n\nReturns the day of the year for date, in the range 1 to 366.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT DAYOFYEAR(\'2007-02-03\');\n        -> 34\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(175,'%',4,'Syntax:\nN % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M. For more\ninformation, see the description for the MOD() function in\nhttp://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html'),(176,'LONGTEXT',23,'LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\ncharacters. The effective maximum length is less if the value contains\nmulti-byte characters. The effective maximum length of LONGTEXT columns\nalso depends on the configured maximum packet size in the client/server\nprotocol and available memory. Each LONGTEXT value is stored using a\n4-byte length prefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(177,'KILL',27,'Syntax:\nKILL [CONNECTION | QUERY] thread_id\n\nEach connection to mysqld runs in a separate thread. You can see which\nthreads are running with the SHOW PROCESSLIST statement and kill a\nthread with the KILL thread_id statement.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given thread_id.\n\no KILL QUERY terminates the statement that the connection is currently\n  executing, but leaves the connection itself intact.\n\nIf you have the PROCESS privilege, you can see all threads. If you have\nthe SUPER privilege, you can kill all threads and statements.\nOtherwise, you can see and kill only your own threads and statements.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\n*Note*: You cannot use KILL with the Embedded MySQL Server library\nbecause the embedded server merely runs inside the threads of the host\napplication. It does not create any connection threads of its own.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/kill.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/kill.html'),(178,'DISJOINT',31,'Disjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially disjoint from (does\nnot intersect) g2.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(179,'ASTEXT',3,'AsText(g), AsWKT(g)\n\nConverts a value in internal geometry format to its WKT representation\nand returns the string result.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-to-convert-geometries-between-formats.html\n\n','mysql> SET @g = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(GeomFromText(@g));\n+--------------------------+\n| AsText(GeomFromText(@g)) |\n+--------------------------+\n| LINESTRING(1 1,2 2,3 3)  |\n+--------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/functions-to-convert-geometries-between-formats.html'),(180,'LPAD',38,'Syntax:\nLPAD(str,len,padstr)\n\nReturns the string str, left-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT LPAD(\'hi\',4,\'??\');\n        -> \'??hi\'\nmysql> SELECT LPAD(\'hi\',1,\'??\');\n        -> \'h\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(181,'DECLARE CONDITION',24,'Syntax:\nDECLARE condition_name CONDITION FOR condition_value\n\ncondition_value:\n    mysql_error_code\n  | SQLSTATE [VALUE] sqlstate_value\n\nThe DECLARE ... CONDITION statement declares a named error condition,\nassociating a name with a condition that needs specific handling. The\nname can be referred to in a subsequent DECLARE ... HANDLER statement\n(see [HELP DECLARE HANDLER]).\n\nCondition declarations must appear before cursor or handler\ndeclarations.\n\nThe condition_value for DECLARE ... CONDITION can be a MySQL error code\n(a number) or an SQLSTATE value (a 5-character string literal). You\nshould not use MySQL error code 0 or SQLSTATE values that begin with\n\'00\', because those indicate success rather than an error condition.\nFor a list of MySQL error codes and SQLSTATE values, see\nhttp://dev.mysql.com/doc/refman/5.5/en/error-messages-server.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/declare-condition.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/declare-condition.html'),(182,'OVERLAPS',31,'Overlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially overlaps g2. The term\nspatially overlaps is used if two geometries intersect and their\nintersection results in a geometry of the same dimension but not equal\nto either of the given geometries.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(183,'SET GLOBAL SQL_SLAVE_SKIP_COUNTER',8,'Syntax:\nSET GLOBAL sql_slave_skip_counter = N\n\nThis statement skips the next N events from the master. This is useful\nfor recovering from replication stops caused by a statement.\n\nThis statement is valid only when the slave threads are not running.\nOtherwise, it produces an error.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/set-global-sql-slave-skip-counter.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/set-global-sql-slave-skip-counter.html'),(184,'NUMGEOMETRIES',26,'NumGeometries(gc)\n\nReturns the number of geometries in the GeometryCollection value gc.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @gc = \'GeometryCollection(Point(1 1),LineString(2 2, 3 3))\';\nmysql> SELECT NumGeometries(GeomFromText(@gc));\n+----------------------------------+\n| NumGeometries(GeomFromText(@gc)) |\n+----------------------------------+\n|                                2 |\n+----------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(185,'MONTHNAME',32,'Syntax:\nMONTHNAME(date)\n\nReturns the full name of the month for date. The language used for the\nname is controlled by the value of the lc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.5/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT MONTHNAME(\'2008-02-03\');\n        -> \'February\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(186,'CHANGE MASTER TO',8,'Syntax:\nCHANGE MASTER TO option [, option] ...\n\noption:\n    MASTER_BIND = \'interface_name\'\n  | MASTER_HOST = \'host_name\'\n  | MASTER_USER = \'user_name\'\n  | MASTER_PASSWORD = \'password\'\n  | MASTER_PORT = port_num\n  | MASTER_CONNECT_RETRY = interval\n  | MASTER_HEARTBEAT_PERIOD = interval\n  | MASTER_LOG_FILE = \'master_log_name\'\n  | MASTER_LOG_POS = master_log_pos\n  | RELAY_LOG_FILE = \'relay_log_name\'\n  | RELAY_LOG_POS = relay_log_pos\n  | MASTER_SSL = {0|1}\n  | MASTER_SSL_CA = \'ca_file_name\'\n  | MASTER_SSL_CAPATH = \'ca_directory_name\'\n  | MASTER_SSL_CERT = \'cert_file_name\'\n  | MASTER_SSL_KEY = \'key_file_name\'\n  | MASTER_SSL_CIPHER = \'cipher_list\'\n  | MASTER_SSL_VERIFY_SERVER_CERT = {0|1}\n  | IGNORE_SERVER_IDS = (server_id_list)\n\nserver_id_list:\n    [server_id [, server_id] ... ]\n\nCHANGE MASTER TO changes the parameters that the slave server uses for\nconnecting to the master server, for reading the master binary log, and\nreading the slave relay log. It also updates the contents of the\nmaster.info and relay-log.info files. To use CHANGE MASTER TO, the\nslave replication threads must be stopped (use STOP SLAVE if\nnecessary).\n\nOptions not specified retain their value, except as indicated in the\nfollowing discussion. Thus, in most cases, there is no need to specify\noptions that do not change. For example, if the password to connect to\nyour MySQL master has changed, you just need to issue these statements\nto tell the slave about the new password:\n\nSTOP SLAVE; -- if replication was running\nCHANGE MASTER TO MASTER_PASSWORD=\'new3cret\';\nSTART SLAVE; -- if you want to restart replication\n\nMASTER_HOST, MASTER_USER, MASTER_PASSWORD, and MASTER_PORT provide\ninformation to the slave about how to connect to its master:\n\no MASTER_HOST and MASTER_PORT are the host name (or IP address) of the\n  master host and its TCP/IP port.\n\n  *Note*: Replication cannot use Unix socket files. You must be able to\n  connect to the master MySQL server using TCP/IP.\n\n  If you specify the MASTER_HOST or MASTER_PORT option, the slave\n  assumes that the master server is different from before (even if the\n  option value is the same as its current value.) In this case, the old\n  values for the master binary log file name and position are\n  considered no longer applicable, so if you do not specify\n  MASTER_LOG_FILE and MASTER_LOG_POS in the statement,\n  MASTER_LOG_FILE=\'\' and MASTER_LOG_POS=4 are silently appended to it.\n\n  Setting MASTER_HOST=\'\' (that is, setting its value explicitly to an\n  empty string) is not the same as not setting MASTER_HOST at all.\n  Beginning with MySQL 5.5, trying to set MASTER_HOST to an empty\n  string fails with an error. Previously, setting MASTER_HOST to an\n  empty string caused START SLAVE subsequently to fail. (Bug #28796)\n\no MASTER_USER and MASTER_PASSWORD are the user name and password of the\n  account to use for connecting to the master.\n\n  In MySQL 5.5.20 and later, MASTER_USER cannot be made empty; setting\n  MASTER_USER = \'\' or leaving it unset when setting a value for for\n  MASTER_PASSWORD causes an error (Bug #13427949).\n\n  Currently, a password used for a replication slave account is\n  effectively limited to 32 characters in length; the password can be\n  longer, but any excess characters are truncated. This is not due to\n  any limit imposed by the MySQL Server generally, but rather is an\n  issue specific to MySQL Replication. (For more information, see Bug\n  #43439.)\n\n  The text of a running CHANGE MASTER TO statement, including values\n  for MASTER_USER and MASTER_PASSWORD, can be seen in the output of a\n  concurrent SHOW PROCESSLIST statement.\n\nThe MASTER_SSL_xxx options provide information about using SSL for the\nconnection. They correspond to the --ssl-xxx options described in\nhttp://dev.mysql.com/doc/refman/5.5/en/ssl-options.html, and\nhttp://dev.mysql.com/doc/refman/5.5/en/replication-solutions-ssl.html.\nThese options can be changed even on slaves that are compiled without\nSSL support. They are saved to the master.info file, but are ignored if\nthe slave does not have SSL support enabled.\n\nMASTER_CONNECT_RETRY specifies how many seconds to wait between connect\nretries. The default is 60. The number of reconnection attempts is\nlimited by the --master-retry-count server option; for more\ninformation, see\nhttp://dev.mysql.com/doc/refman/5.5/en/replication-options.html.\n\nThe MASTER_BIND option is available in MySQL Cluster NDB 7.2 and later,\nbut is not supported in mainline MySQL 5.5.\n\nMASTER_BIND is for use on replication slaves having multiple network\ninterfaces, and determines which of the slave\'s network interfaces is\nchosen for connecting to the master.\n\nMASTER_HEARTBEAT_PERIOD sets the interval in seconds between\nreplication heartbeats. Whenever the master\'s binary log is updated\nwith an event, the waiting period for the next heartbeat is reset.\ninterval is a decimal value having the range 0 to 4294967 seconds and a\nresolution in milliseconds; the smallest nonzero value is 0.001.\nHeartbeats are sent by the master only if there are no unsent events in\nthe binary log file for a period longer than interval.\n\nSetting interval to 0 disables heartbeats altogether. The default value\nfor interval is equal to the value of slave_net_timeout divided by 2.\n\nSetting @@global.slave_net_timeout to a value less than that of the\ncurrent heartbeat interval results in a warning being issued. The\neffect of issuing RESET SLAVE on the heartbeat interval is to reset it\nto the default value.\n\nMASTER_LOG_FILE and MASTER_LOG_POS are the coordinates at which the\nslave I/O thread should begin reading from the master the next time the\nthread starts. RELAY_LOG_FILE and RELAY_LOG_POS are the coordinates at\nwhich the slave SQL thread should begin reading from the relay log the\nnext time the thread starts. If you specify either of MASTER_LOG_FILE\nor MASTER_LOG_POS, you cannot specify RELAY_LOG_FILE or RELAY_LOG_POS.\nIf neither of MASTER_LOG_FILE or MASTER_LOG_POS is specified, the slave\nuses the last coordinates of the slave SQL thread before CHANGE MASTER\nTO was issued. This ensures that there is no discontinuity in\nreplication, even if the slave SQL thread was late compared to the\nslave I/O thread, when you merely want to change, say, the password to\nuse.\n\nCHANGE MASTER TO deletes all relay log files and starts a new one,\nunless you specify RELAY_LOG_FILE or RELAY_LOG_POS. In that case, relay\nlog files are kept; the relay_log_purge global variable is set silently\nto 0.\n\nPrior to MySQL 5.5, RELAY_LOG_FILE required an absolute path. In MySQL\n5.5, the path can be relative, in which case the path is assumed to be\nrelative to the slave\'s data directory. (Bug #12190)\n\nIGNORE_SERVER_IDS was added in MySQL 5.5. This option takes a\ncomma-separated list of 0 or more server IDs. Events originating from\nthe corresponding servers are ignored, with the exception of log\nrotation and deletion events, which are still recorded in the relay\nlog.\n\nIn circular replication, the originating server normally acts as the\nterminator of its own events, so that they are not applied more than\nonce. Thus, this option is useful in circular replication when one of\nthe servers in the circle is removed. Suppose that you have a circular\nreplication setup with 4 servers, having server IDs 1, 2, 3, and 4, and\nserver 3 fails. When bridging the gap by starting replication from\nserver 2 to server 4, you can include IGNORE_SERVER_IDS = (3) in the\nCHANGE MASTER TO statement that you issue on server 4 to tell it to use\nserver 2 as its master instead of server 3. Doing so causes it to\nignore and not to propagate any statements that originated with the\nserver that is no longer in use.\n\nIf a CHANGE MASTER TO statement is issued without any IGNORE_SERVER_IDS\noption, any existing list is preserved; RESET SLAVE also has no effect\non the server ID list. To clear the list of ignored servers, it is\nnecessary to use the option with an empty list:\n\nCHANGE MASTER TO IGNORE_SERVER_IDS = ();\n\nIf IGNORE_SERVER_IDS contains the server\'s own ID and the server was\nstarted with the --replicate-same-server-id option enabled, an error\nresults.\n\nAlso beginning with MySQL 5.5, the master.info file and the output of\nSHOW SLAVE STATUS are extended to provide the list of servers that are\ncurrently ignored. For more information, see\nhttp://dev.mysql.com/doc/refman/5.5/en/slave-logs-status.html, and\n[HELP SHOW SLAVE STATUS].\n\nBeginning with MySQL 5.5.5, invoking CHANGE MASTER TO causes the\nprevious values for MASTER_HOST, MASTER_PORT, MASTER_LOG_FILE, and\nMASTER_LOG_POS to be written to the error log, along with other\ninformation about the slave\'s state prior to execution.\n\nCHANGE MASTER TO is useful for setting up a slave when you have the\nsnapshot of the master and have recorded the master binary log\ncoordinates corresponding to the time of the snapshot. After loading\nthe snapshot into the slave to synchronize it to the slave, you can run\nCHANGE MASTER TO MASTER_LOG_FILE=\'log_name\', MASTER_LOG_POS=log_pos on\nthe slave to specify the coordinates at which the slave should begin\nreading the master binary log.\n\nThe following example changes the master server the slave uses and\nestablishes the master binary log coordinates from which the slave\nbegins reading. This is used when you want to set up the slave to\nreplicate the master:\n\nCHANGE MASTER TO\n  MASTER_HOST=\'master2.mycompany.com\',\n  MASTER_USER=\'replication\',\n  MASTER_PASSWORD=\'bigs3cret\',\n  MASTER_PORT=3306,\n  MASTER_LOG_FILE=\'master2-bin.001\',\n  MASTER_LOG_POS=4,\n  MASTER_CONNECT_RETRY=10;\n\nThe next example shows an operation that is less frequently employed.\nIt is used when the slave has relay log files that you want it to\nexecute again for some reason. To do this, the master need not be\nreachable. You need only use CHANGE MASTER TO and start the SQL thread\n(START SLAVE SQL_THREAD):\n\nCHANGE MASTER TO\n  RELAY_LOG_FILE=\'slave-relay-bin.006\',\n  RELAY_LOG_POS=4025;\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/change-master-to.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/change-master-to.html'),(187,'DROP DATABASE',40,'Syntax:\nDROP {DATABASE | SCHEMA} [IF EXISTS] db_name\n\nDROP DATABASE drops all tables in the database and deletes the\ndatabase. Be very careful with this statement! To use DROP DATABASE,\nyou need the DROP privilege on the database. DROP SCHEMA is a synonym\nfor DROP DATABASE.\n\n*Important*: When a database is dropped, user privileges on the\ndatabase are not automatically dropped. See [HELP GRANT].\n\nIF EXISTS is used to prevent an error from occurring if the database\ndoes not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-database.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-database.html'),(188,'MBREQUAL',6,'MBREqual(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are the same.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(189,'TIMESTAMP FUNCTION',32,'Syntax:\nTIMESTAMP(expr), TIMESTAMP(expr1,expr2)\n\nWith a single argument, this function returns the date or datetime\nexpression expr as a datetime value. With two arguments, it adds the\ntime expression expr2 to the date or datetime expression expr1 and\nreturns the result as a datetime value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TIMESTAMP(\'2003-12-31\');\n        -> \'2003-12-31 00:00:00\'\nmysql> SELECT TIMESTAMP(\'2003-12-31 12:00:00\',\'12:00:00\');\n        -> \'2004-01-01 00:00:00\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(190,'PROCEDURE ANALYSE',34,'Syntax:\nANALYSE([max_elements[,max_memory]])\n\nANALYSE() examines the result from a query and returns an analysis of\nthe results that suggests optimal data types for each column that may\nhelp reduce table sizes. To obtain this analysis, append PROCEDURE\nANALYSE to the end of a SELECT statement:\n\nSELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])\n\nFor example:\n\nSELECT col1, col2 FROM table1 PROCEDURE ANALYSE(10, 2000);\n\nThe results show some statistics for the values returned by the query,\nand propose an optimal data type for the columns. This can be helpful\nfor checking your existing tables, or after importing new data. You may\nneed to try different settings for the arguments so that PROCEDURE\nANALYSE() does not suggest the ENUM data type when it is not\nappropriate.\n\nThe arguments are optional and are used as follows:\n\no max_elements (default 256) is the maximum number of distinct values\n  that ANALYSE() notices per column. This is used by ANALYSE() to check\n  whether the optimal data type should be of type ENUM; if there are\n  more than max_elements distinct values, then ENUM is not a suggested\n  type.\n\no max_memory (default 8192) is the maximum amount of memory that\n  ANALYSE() should allocate per column while trying to find all\n  distinct values.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/procedure-analyse.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/procedure-analyse.html'),(191,'HELP_VERSION',9,'This help information was generated from the MySQL 5.5 Reference Manual\non: 2013-06-18 (revision: 35447)\n\nThis information applies to MySQL 5.5 through 5.5.33.\n','',''),(192,'CHARACTER_LENGTH',38,'Syntax:\nCHARACTER_LENGTH(str)\n\nCHARACTER_LENGTH() is a synonym for CHAR_LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(193,'SHOW GRANTS',27,'Syntax:\nSHOW GRANTS [FOR user]\n\nThis statement lists the GRANT statement or statements that must be\nissued to duplicate the privileges that are granted to a MySQL user\naccount. The account is named using the same format as for the GRANT\nstatement; for example, \'jeffrey\'@\'localhost\'. If you specify only the\nuser name part of the account name, a host name part of \'%\' is used.\nFor additional information about specifying account names, see [HELP\nGRANT].\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT ALL PRIVILEGES ON *.* TO \'root\'@\'localhost\' WITH GRANT OPTION |\n+---------------------------------------------------------------------+\n\nTo list the privileges granted to the account that you are using to\nconnect to the server, you can use any of the following statements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any of the equivalent syntaxes) is\nused in DEFINER context, such as within a stored procedure that is\ndefined with SQL SECURITY DEFINER), the grants displayed are those of\nthe definer and not the invoker.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-grants.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-grants.html'),(194,'SHOW PRIVILEGES',27,'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The exact list of privileges depends on the version of\nyour server.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-privileges.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-privileges.html'),(195,'CREATE TABLESPACE',40,'Syntax:\nCREATE TABLESPACE tablespace_name\n    ADD DATAFILE \'file_name\'\n    USE LOGFILE GROUP logfile_group\n    [EXTENT_SIZE [=] extent_size]\n    [INITIAL_SIZE [=] initial_size]\n    [AUTOEXTEND_SIZE [=] autoextend_size]\n    [MAX_SIZE [=] max_size]\n    [NODEGROUP [=] nodegroup_id]\n    [WAIT]\n    [COMMENT [=] comment_text]\n    ENGINE [=] engine_name\n\nThis statement is used to create a tablespace, which can contain one or\nmore data files, providing storage space for tables. One data file is\ncreated and added to the tablespace using this statement. Additional\ndata files may be added to the tablespace by using the ALTER TABLESPACE\nstatement (see [HELP ALTER TABLESPACE]). For rules covering the naming\nof tablespaces, see\nhttp://dev.mysql.com/doc/refman/5.5/en/identifiers.html.\n\n*Note*: All MySQL Cluster Disk Data objects share the same namespace.\nThis means that each Disk Data object must be uniquely named (and not\nmerely each Disk Data object of a given type). For example, you cannot\nhave a tablespace and a log file group with the same name, or a\ntablespace and a data file with the same name.\n\nA log file group of one or more UNDO log files must be assigned to the\ntablespace to be created with the USE LOGFILE GROUP clause.\nlogfile_group must be an existing log file group created with CREATE\nLOGFILE GROUP (see [HELP CREATE LOGFILE GROUP]). Multiple tablespaces\nmay use the same log file group for UNDO logging.\n\nThe EXTENT_SIZE sets the size, in bytes, of the extents used by any\nfiles belonging to the tablespace. The default value is 1M. The minimum\nsize is 32K, and theoretical maximum is 2G, although the practical\nmaximum size depends on a number of factors. In most cases, changing\nthe extent size does not have any measurable effect on performance, and\nthe default value is recommended for all but the most unusual\nsituations.\n\nAn extent is a unit of disk space allocation. One extent is filled with\nas much data as that extent can contain before another extent is used.\nIn theory, up to 65,535 (64K) extents may used per data file; however,\nthe recommended maximum is 32,768 (32K). The recommended maximum size\nfor a single data file is 32G---that is, 32K extents x 1 MB per extent.\nIn addition, once an extent is allocated to a given partition, it\ncannot be used to store data from a different partition; an extent\ncannot store data from more than one partition. This means, for example\nthat a tablespace having a single datafile whose INITIAL_SIZE is 256 MB\nand whose EXTENT_SIZE is 128M has just two extents, and so can be used\nto store data from at most two different disk data table partitions.\n\nYou can see how many extents remain free in a given data file by\nquerying the INFORMATION_SCHEMA.FILES table, and so derive an estimate\nfor how much space remains free in the file. For further discussion and\nexamples, see http://dev.mysql.com/doc/refman/5.5/en/files-table.html.\n\nThe INITIAL_SIZE parameter sets the data file\'s total size in bytes.\nOnce the file has been created, its size cannot be changed; however,\nyou can add more data files to the tablespace using ALTER TABLESPACE\n... ADD DATAFILE. See [HELP ALTER TABLESPACE].\n\nINITIAL_SIZE is optional; its default value is 128M.\n\nOn 32-bit systems, the maximum supported value for INITIAL_SIZE is 4G.\n(Bug #29186)\n\nWhen setting EXTENT_SIZE or INITIAL_SIZE (either or both), you may\noptionally follow the number with a one-letter abbreviation for an\norder of magnitude, similar to those used in my.cnf. Generally, this is\none of the letters M (for megabytes) or G (for gigabytes).\n\nINITIAL_SIZE, EXTENT_SIZE, and UNDO_BUFFER_SIZE are subject to rounding\nas follows:\n\no EXTENT_SIZE and UNDO_BUFFER_SIZE are each rounded up to the nearest\n  whole multiple of 32K.\n\no INITIAL_SIZE is rounded down to the nearest whole multiple of 32K.\n\n  For data files, INITIAL_SIZE is subject to further rounding; the\n  result just obtained is rounded up to the nearest whole multiple of\n  EXTENT_SIZE (after any rounding).\n\nThe rounding just described is done explicitly, and a warning is issued\nby the MySQL Server when any such rounding is performed. The rounded\nvalues are also used by the NDB kernel for calculating\nINFORMATION_SCHEMA.FILES column values and other purposes. However, to\navoid an unexpected result, we suggest that you always use whole\nmultiples of 32K in specifying these options.\n\nAUTOEXTEND_SIZE, MAX_SIZE, NODEGROUP, WAIT, and COMMENT are parsed but\nignored, and so currently have no effect. These options are intended\nfor future expansion.\n\nThe ENGINE parameter determines the storage engine which uses this\ntablespace, with engine_name being the name of the storage engine.\nCurrently, engine_name must be one of the values NDB or NDBCLUSTER.\n\nWhen CREATE TABLESPACE is used with ENGINE = NDB, a tablespace and\nassociated data file are created on each Cluster data node. You can\nverify that the data files were created and obtain information about\nthem by querying the INFORMATION_SCHEMA.FILES table. For example:\n\nmysql> SELECT LOGFILE_GROUP_NAME, FILE_NAME, EXTRA\n    -> FROM INFORMATION_SCHEMA.FILES\n    -> WHERE TABLESPACE_NAME = \'newts\' AND FILE_TYPE = \'DATAFILE\';\n+--------------------+-------------+----------------+\n| LOGFILE_GROUP_NAME | FILE_NAME   | EXTRA          |\n+--------------------+-------------+----------------+\n| lg_3               | newdata.dat | CLUSTER_NODE=3 |\n| lg_3               | newdata.dat | CLUSTER_NODE=4 |\n+--------------------+-------------+----------------+\n2 rows in set (0.01 sec)\n\n(See http://dev.mysql.com/doc/refman/5.5/en/files-table.html.)\n\nCREATE TABLESPACE is useful only with Disk Data storage for MySQL\nCluster. See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-cluster-disk-data.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-tablespace.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-tablespace.html'),(196,'INSERT FUNCTION',38,'Syntax:\nINSERT(str,pos,len,newstr)\n\nReturns the string str, with the substring beginning at position pos\nand len characters long replaced by the string newstr. Returns the\noriginal string if pos is not within the length of the string. Replaces\nthe rest of the string from position pos if len is not within the\nlength of the rest of the string. Returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT INSERT(\'Quadratic\', 3, 4, \'What\');\n        -> \'QuWhattic\'\nmysql> SELECT INSERT(\'Quadratic\', -1, 4, \'What\');\n        -> \'Quadratic\'\nmysql> SELECT INSERT(\'Quadratic\', 3, 100, \'What\');\n        -> \'QuWhat\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(197,'CRC32',4,'Syntax:\nCRC32(expr)\n\nComputes a cyclic redundancy check value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is\nexpected to be a string and (if possible) is treated as one if it is\nnot.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT CRC32(\'MySQL\');\n        -> 3259397556\nmysql> SELECT CRC32(\'mysql\');\n        -> 2501908538\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(198,'XOR',15,'Syntax:\nXOR\n\nLogical XOR. Returns NULL if either operand is NULL. For non-NULL\noperands, evaluates to 1 if an odd number of operands is nonzero,\notherwise 0 is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html\n\n','mysql> SELECT 1 XOR 1;\n        -> 0\nmysql> SELECT 1 XOR 0;\n        -> 1\nmysql> SELECT 1 XOR NULL;\n        -> NULL\nmysql> SELECT 1 XOR 1 XOR 1;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html'),(199,'STARTPOINT',13,'StartPoint(ls)\n\nReturns the Point that is the start point of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(StartPoint(GeomFromText(@ls)));\n+---------------------------------------+\n| AsText(StartPoint(GeomFromText(@ls))) |\n+---------------------------------------+\n| POINT(1 1)                            |\n+---------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(200,'GRANT',10,'Syntax:\nGRANT\n    priv_type [(column_list)]\n      [, priv_type [(column_list)]] ...\n    ON [object_type] priv_level\n    TO user_specification [, user_specification] ...\n    [REQUIRE {NONE | ssl_option [[AND] ssl_option] ...}]\n    [WITH with_option ...]\n\nGRANT PROXY ON user_specification\n    TO user_specification [, user_specification] ...\n    [WITH GRANT OPTION]\n\nobject_type:\n    TABLE\n  | FUNCTION\n  | PROCEDURE\n\npriv_level:\n    *\n  | *.*\n  | db_name.*\n  | db_name.tbl_name\n  | tbl_name\n  | db_name.routine_name\n\nuser_specification:\n    user\n    [\n        IDENTIFIED BY [PASSWORD] \'password\'\n      | IDENTIFIED WITH auth_plugin [AS \'auth_string\']\n    ]\n\nssl_option:\n    SSL\n  | X509\n  | CIPHER \'cipher\'\n  | ISSUER \'issuer\'\n  | SUBJECT \'subject\'\n\nwith_option:\n    GRANT OPTION\n  | MAX_QUERIES_PER_HOUR count\n  | MAX_UPDATES_PER_HOUR count\n  | MAX_CONNECTIONS_PER_HOUR count\n  | MAX_USER_CONNECTIONS count\n\nThe GRANT statement grants privileges to MySQL user accounts. GRANT\nalso serves to specify other account characteristics such as use of\nsecure connections and limits on access to server resources. To use\nGRANT, you must have the GRANT OPTION privilege, and you must have the\nprivileges that you are granting.\n\nNormally, a database administrator first uses CREATE USER to create an\naccount, then GRANT to define its privileges and characteristics. For\nexample:\n\nCREATE USER \'jeffrey\'@\'localhost\' IDENTIFIED BY \'mypass\';\nGRANT ALL ON db1.* TO \'jeffrey\'@\'localhost\';\nGRANT SELECT ON db2.invoice TO \'jeffrey\'@\'localhost\';\nGRANT USAGE ON *.* TO \'jeffrey\'@\'localhost\' WITH MAX_QUERIES_PER_HOUR 90;\n\nHowever, if an account named in a GRANT statement does not already\nexist, GRANT may create it under the conditions described later in the\ndiscussion of the NO_AUTO_CREATE_USER SQL mode.\n\nThe REVOKE statement is related to GRANT and enables administrators to\nremove account privileges. See [HELP REVOKE].\n\nWhen successfully executed from the mysql program, GRANT responds with\nQuery OK, 0 rows affected. To determine what privileges result from the\noperation, use SHOW GRANTS. See [HELP SHOW GRANTS].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/grant.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/grant.html'),(201,'DECLARE VARIABLE',24,'Syntax:\nDECLARE var_name [, var_name] ... type [DEFAULT value]\n\nThis statement declares local variables within stored programs. To\nprovide a default value for a variable, include a DEFAULT clause. The\nvalue can be specified as an expression; it need not be a constant. If\nthe DEFAULT clause is missing, the initial value is NULL.\n\nLocal variables are treated like stored routine parameters with respect\nto data type and overflow checking. See [HELP CREATE PROCEDURE].\n\nVariable declarations must appear before cursor or handler\ndeclarations.\n\nLocal variable names are not case sensitive. Permissible characters and\nquoting rules are the same as for other identifiers, as described in\nhttp://dev.mysql.com/doc/refman/5.5/en/identifiers.html.\n\nThe scope of a local variable is the BEGIN ... END block within which\nit is declared. The variable can be referred to in blocks nested within\nthe declaring block, except those blocks that declare a variable with\nthe same name.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/declare-local-variable.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/declare-local-variable.html'),(202,'MPOLYFROMTEXT',3,'MPolyFromText(wkt[,srid]), MultiPolygonFromText(wkt[,srid])\n\nConstructs a MULTIPOLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(203,'MBRINTERSECTS',6,'MBRIntersects(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 intersect.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(204,'BIT_OR',16,'Syntax:\nBIT_OR(expr)\n\nReturns the bitwise OR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(205,'YEARWEEK',32,'Syntax:\nYEARWEEK(date), YEARWEEK(date,mode)\n\nReturns year and week for a date. The mode argument works exactly like\nthe mode argument to WEEK(). The year in the result may be different\nfrom the year in the date argument for the first and the last week of\nthe year.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT YEARWEEK(\'1987-01-01\');\n        -> 198653\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(206,'NOT BETWEEN',19,'Syntax:\nexpr NOT BETWEEN min AND max\n\nThis is the same as NOT (expr BETWEEN min AND max).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(207,'IS NOT',19,'Syntax:\nIS NOT boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;\n        -> 1, 1, 0\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(208,'LOG10',4,'Syntax:\nLOG10(X)\n\nReturns the base-10 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT LOG10(2);\n        -> 0.30102999566398\nmysql> SELECT LOG10(100);\n        -> 2\nmysql> SELECT LOG10(-100);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(209,'SQRT',4,'Syntax:\nSQRT(X)\n\nReturns the square root of a nonnegative number X.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT SQRT(4);\n        -> 2\nmysql> SELECT SQRT(20);\n        -> 4.4721359549996\nmysql> SELECT SQRT(-16);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(210,'DECIMAL',23,'DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nA packed \"exact\" fixed-point number. M is the total number of digits\n(the precision) and D is the number of digits after the decimal point\n(the scale). The decimal point and (for negative numbers) the \"-\" sign\nare not counted in M. If D is 0, values have no decimal point or\nfractional part. The maximum number of digits (M) for DECIMAL is 65.\nThe maximum number of supported decimals (D) is 30. If D is omitted,\nthe default is 0. If M is omitted, the default is 10.\n\nUNSIGNED, if specified, disallows negative values.\n\nAll basic calculations (+, -, *, /) with DECIMAL columns are done with\na precision of 65 digits.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(211,'CREATE INDEX',40,'Syntax:\nCREATE [ONLINE|OFFLINE] [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name\n    [index_type]\n    ON tbl_name (index_col_name,...)\n    [index_option] ...\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n  | COMMENT \'string\'\n\nCREATE INDEX is mapped to an ALTER TABLE statement to create indexes.\nSee [HELP ALTER TABLE]. CREATE INDEX cannot be used to create a PRIMARY\nKEY; use ALTER TABLE instead. For more information about indexes, see\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-indexes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-index.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-index.html'),(212,'CREATE FUNCTION',40,'The CREATE FUNCTION statement is used to create stored functions and\nuser-defined functions (UDFs):\n\no For information about creating stored functions, see [HELP CREATE\n  PROCEDURE].\n\no For information about creating user-defined functions, see [HELP\n  CREATE FUNCTION UDF].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-function.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-function.html'),(213,'ALTER DATABASE',40,'Syntax:\nALTER {DATABASE | SCHEMA} [db_name]\n    alter_specification ...\nALTER {DATABASE | SCHEMA} db_name\n    UPGRADE DATA DIRECTORY NAME\n\nalter_specification:\n    [DEFAULT] CHARACTER SET [=] charset_name\n  | [DEFAULT] COLLATE [=] collation_name\n\nALTER DATABASE enables you to change the overall characteristics of a\ndatabase. These characteristics are stored in the db.opt file in the\ndatabase directory. To use ALTER DATABASE, you need the ALTER privilege\non the database. ALTER SCHEMA is a synonym for ALTER DATABASE.\n\nThe database name can be omitted from the first syntax, in which case\nthe statement applies to the default database.\n\nNational Language Characteristics\n\nThe CHARACTER SET clause changes the default database character set.\nThe COLLATE clause changes the default database collation.\nhttp://dev.mysql.com/doc/refman/5.5/en/charset.html, discusses\ncharacter set and collation names.\n\nYou can see what character sets and collations are available using,\nrespectively, the SHOW CHARACTER SET and SHOW COLLATION statements. See\n[HELP SHOW CHARACTER SET], and [HELP SHOW COLLATION], for more\ninformation.\n\nIf you change the default character set or collation for a database,\nstored routines that use the database defaults must be dropped and\nrecreated so that they use the new defaults. (In a stored routine,\nvariables with character data types use the database defaults if the\ncharacter set or collation are not specified explicitly. See [HELP\nCREATE PROCEDURE].)\n\nUpgrading from Versions Older than MySQL 5.1\n\nThe syntax that includes the UPGRADE DATA DIRECTORY NAME clause updates\nthe name of the directory associated with the database to use the\nencoding implemented in MySQL 5.1 for mapping database names to\ndatabase directory names (see\nhttp://dev.mysql.com/doc/refman/5.5/en/identifier-mapping.html). This\nclause is for use under these conditions:\n\no It is intended when upgrading MySQL to 5.1 or later from older\n  versions.\n\no It is intended to update a database directory name to the current\n  encoding format if the name contains special characters that need\n  encoding.\n\no The statement is used by mysqlcheck (as invoked by mysql_upgrade).\n\nFor example, if a database in MySQL 5.0 has the name a-b-c, the name\ncontains instances of the - (dash) character. In MySQL 5.0, the\ndatabase directory is also named a-b-c, which is not necessarily safe\nfor all file systems. In MySQL 5.1 and later, the same database name is\nencoded as a@002db@002dc to produce a file system-neutral directory\nname.\n\nWhen a MySQL installation is upgraded to MySQL 5.1 or later from an\nolder version,the server displays a name such as a-b-c (which is in the\nold format) as #mysql50#a-b-c, and you must refer to the name using the\n#mysql50# prefix. Use UPGRADE DATA DIRECTORY NAME in this case to\nexplicitly tell the server to re-encode the database directory name to\nthe current encoding format:\n\nALTER DATABASE `#mysql50#a-b-c` UPGRADE DATA DIRECTORY NAME;\n\nAfter executing this statement, you can refer to the database as a-b-c\nwithout the special #mysql50# prefix.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-database.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/alter-database.html'),(214,'GEOMETRYN',26,'GeometryN(gc,N)\n\nReturns the N-th geometry in the GeometryCollection value gc.\nGeometries are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @gc = \'GeometryCollection(Point(1 1),LineString(2 2, 3 3))\';\nmysql> SELECT AsText(GeometryN(GeomFromText(@gc),1));\n+----------------------------------------+\n| AsText(GeometryN(GeomFromText(@gc),1)) |\n+----------------------------------------+\n| POINT(1 1)                             |\n+----------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(215,'<<',20,'Syntax:\n<<\n\nShifts a longlong (BIGINT) number to the left.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html\n\n','mysql> SELECT 1 << 2;\n        -> 4\n','http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html'),(216,'SHOW TABLE STATUS',27,'Syntax:\nSHOW TABLE STATUS [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-table-status.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-table-status.html'),(217,'MD5',12,'Syntax:\nMD5(str)\n\nCalculates an MD5 128-bit checksum for the string. The value is\nreturned as a string of 32 hex digits, or NULL if the argument was\nNULL. The return value can, for example, be used as a hash key. See the\nnotes at the beginning of this section about storing hash values\nefficiently.\n\nAs of MySQL 5.5.3, the return value is a nonbinary string in the\nconnection character set. Before 5.5.3, the return value is a binary\nstring; see the notes at the beginning of this section about using the\nvalue as a nonbinary string.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SELECT MD5(\'testing\');\n        -> \'ae2b1fca515949e5d54fb22b8ed95575\'\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(218,'<',19,'Syntax:\n<\n\nLess than:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 2 < 2;\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(219,'UNIX_TIMESTAMP',32,'Syntax:\nUNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)\n\nIf called with no argument, returns a Unix timestamp (seconds since\n\'1970-01-01 00:00:00\' UTC) as an unsigned integer. If UNIX_TIMESTAMP()\nis called with a date argument, it returns the value of the argument as\nseconds since \'1970-01-01 00:00:00\' UTC. date may be a DATE string, a\nDATETIME string, a TIMESTAMP, or a number in the format YYMMDD or\nYYYYMMDD. The server interprets date as a value in the current time\nzone and converts it to an internal value in UTC. Clients can set their\ntime zone as described in\nhttp://dev.mysql.com/doc/refman/5.5/en/time-zone-support.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT UNIX_TIMESTAMP();\n        -> 1196440210\nmysql> SELECT UNIX_TIMESTAMP(\'2007-11-30 10:30:19\');\n        -> 1196440219\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(220,'DAYOFMONTH',32,'Syntax:\nDAYOFMONTH(date)\n\nReturns the day of the month for date, in the range 1 to 31, or 0 for\ndates such as \'0000-00-00\' or \'2008-00-00\' that have a zero day part.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT DAYOFMONTH(\'2007-02-03\');\n        -> 3\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(221,'ASCII',38,'Syntax:\nASCII(str)\n\nReturns the numeric value of the leftmost character of the string str.\nReturns 0 if str is the empty string. Returns NULL if str is NULL.\nASCII() works for 8-bit characters.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT ASCII(\'2\');\n        -> 50\nmysql> SELECT ASCII(2);\n        -> 50\nmysql> SELECT ASCII(\'dx\');\n        -> 100\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(222,'DIV',4,'Syntax:\nDIV\n\nInteger division. Similar to FLOOR(), but is safe with BIGINT values.\n\nAs of MySQL 5.5.3, if either operand has a noninteger type, the\noperands are converted to DECIMAL and divided using DECIMAL arithmetic\nbefore converting the result to BIGINT. If the result exceeds BIGINT\nrange, an error occurs. Before MySQL 5.5.3, incorrect results may occur\nfor noninteger operands that exceed BIGINT range.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html\n\n','mysql> SELECT 5 DIV 2;\n        -> 2\n','http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html'),(223,'RENAME USER',10,'Syntax:\nRENAME USER old_user TO new_user\n    [, old_user TO new_user] ...\n\nThe RENAME USER statement renames existing MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the UPDATE privilege\nfor the mysql database. An error occurs if any old account does not\nexist or any new account exists. Each account name uses the format\ndescribed in http://dev.mysql.com/doc/refman/5.5/en/account-names.html.\nFor example:\n\nRENAME USER \'jeffrey\'@\'localhost\' TO \'jeff\'@\'127.0.0.1\';\n\nIf you specify only the user name part of the account name, a host name\npart of \'%\' is used.\n\nRENAME USER causes the privileges held by the old user to be those held\nby the new user. However, RENAME USER does not automatically drop or\ninvalidate databases or objects within them that the old user created.\nThis includes stored programs or views for which the DEFINER attribute\nnames the old user. Attempts to access such objects may produce an\nerror if they execute in definer security context. (For information\nabout security context, see\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-programs-security.html.)\n\nThe privilege changes take effect as indicated in\nhttp://dev.mysql.com/doc/refman/5.5/en/privilege-changes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/rename-user.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/rename-user.html'),(224,'SHOW SLAVE STATUS',27,'Syntax:\nSHOW SLAVE STATUS\n\nThis statement provides status information on essential parameters of\nthe slave threads. It requires either the SUPER or REPLICATION CLIENT\nprivilege.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW SLAVE STATUS\\G\n*************************** 1. row ***************************\n               Slave_IO_State: Waiting for master to send event\n                  Master_Host: localhost\n                  Master_User: root\n                  Master_Port: 3306\n                Connect_Retry: 3\n              Master_Log_File: gbichot-bin.005\n          Read_Master_Log_Pos: 79\n               Relay_Log_File: gbichot-relay-bin.005\n                Relay_Log_Pos: 548\n        Relay_Master_Log_File: gbichot-bin.005\n             Slave_IO_Running: Yes\n            Slave_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Master_Log_Pos: 79\n              Relay_Log_Space: 552\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Master_SSL_Allowed: No\n           Master_SSL_CA_File:\n           Master_SSL_CA_Path:\n              Master_SSL_Cert:\n            Master_SSL_Cipher:\n               Master_SSL_Key:\n        Seconds_Behind_Master: 8\nMaster_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n  Replicate_Ignore_Server_Ids: 0\n             Master_Server_Id: 1\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-slave-status.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-slave-status.html'),(225,'GEOMETRY',35,'MySQL provides a standard way of creating spatial columns for geometry\ntypes, for example, with CREATE TABLE or ALTER TABLE. Currently,\nspatial columns are supported for MyISAM, InnoDB, NDB, and ARCHIVE\ntables. See also the annotations about spatial indexes under [HELP\nSPATIAL].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-columns.html\n\n','CREATE TABLE geom (g GEOMETRY);\n','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-columns.html'),(226,'NUMPOINTS',13,'NumPoints(ls)\n\nReturns the number of Point objects in the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT NumPoints(GeomFromText(@ls));\n+------------------------------+\n| NumPoints(GeomFromText(@ls)) |\n+------------------------------+\n|                            3 |\n+------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(227,'ALTER LOGFILE GROUP',40,'Syntax:\nALTER LOGFILE GROUP logfile_group\n    ADD UNDOFILE \'file_name\'\n    [INITIAL_SIZE [=] size]\n    [WAIT]\n    ENGINE [=] engine_name\n\nThis statement adds an UNDO file named \'file_name\' to an existing log\nfile group logfile_group. An ALTER LOGFILE GROUP statement has one and\nonly one ADD UNDOFILE clause. No DROP UNDOFILE clause is currently\nsupported.\n\n*Note*: All MySQL Cluster Disk Data objects share the same namespace.\nThis means that each Disk Data object must be uniquely named (and not\nmerely each Disk Data object of a given type). For example, you cannot\nhave a tablespace and an undo log file with the same name, or an undo\nlog file and a data file with the same name.\n\nThe optional INITIAL_SIZE parameter sets the UNDO file\'s initial size\nin bytes; if not specified, the initial size default to 128M (128\nmegabytes). You may optionally follow size with a one-letter\nabbreviation for an order of magnitude, similar to those used in\nmy.cnf. Generally, this is one of the letters M (for megabytes) or G\n(for gigabytes).\n\nOn 32-bit systems, the maximum supported value for INITIAL_SIZE is 4G.\n(Bug #29186)\n\nThe minimum permitted value for INITIAL_SIZE is 1M. (Bug #29574)\n\n*Note*: WAIT is parsed but otherwise ignored. This keyword currently\nhas no effect, and is intended for future expansion.\n\nThe ENGINE parameter (required) determines the storage engine which is\nused by this log file group, with engine_name being the name of the\nstorage engine. Currently, the only accepted values for engine_name are\n\"NDBCLUSTER\" and \"NDB\". The two values are equivalent.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-logfile-group.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/alter-logfile-group.html'),(228,'&',20,'Syntax:\n&\n\nBitwise AND:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html\n\n','mysql> SELECT 29 & 15;\n        -> 13\n','http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html'),(229,'LOCALTIMESTAMP',32,'Syntax:\nLOCALTIMESTAMP, LOCALTIMESTAMP()\n\nLOCALTIMESTAMP and LOCALTIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(230,'ASSIGN-EQUAL',15,'Syntax:\n=\n\nThis operator is used to perform value assignments in two cases,\ndescribed in the next two paragraphs.\n\nWithin a SET statement, = is treated as an assignment operator that\ncauses the user variable on the left hand side of the operator to take\non the value to its right. (In other words, when used in a SET\nstatement, = is treated identically to :=.) The value on the right hand\nside may be a literal value, another variable storing a value, or any\nlegal expression that yields a scalar value, including the result of a\nquery (provided that this value is a scalar value). You can perform\nmultiple assignments in the same SET statement.\n\nIn the SET clause of an UPDATE statement, = also acts as an assignment\noperator; in this case, however, it causes the column named on the left\nhand side of the operator to assume the value given to the right,\nprovided any WHERE conditions that are part of the UPDATE are met. You\ncan make multiple assignments in the same SET clause of an UPDATE\nstatement.\n\nIn any other context, = is treated as a comparison operator.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/assignment-operators.html\n\n','mysql> SELECT @var1, @var2;\n        -> NULL, NULL\nmysql> SELECT @var1 := 1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2 := @var1;\n        -> 1, 1\nmysql> SELECT @var1, @var2;\n        -> 1, 1\n','http://dev.mysql.com/doc/refman/5.5/en/assignment-operators.html'),(231,'CONVERT',38,'Syntax:\nCONVERT(expr,type), CONVERT(expr USING transcoding_name)\n\nThe CONVERT() and CAST() functions take an expression of any type and\nproduce a result value of a specified type.\n\nThe type for the result can be one of the following values:\n\no BINARY[(N)]\n\no CHAR[(N)]\n\no DATE\n\no DATETIME\n\no DECIMAL[(M[,D])]\n\no SIGNED [INTEGER]\n\no TIME\n\no UNSIGNED [INTEGER]\n\nBINARY produces a string with the BINARY data type. See\nhttp://dev.mysql.com/doc/refman/5.5/en/binary-varbinary.html for a\ndescription of how this affects comparisons. If the optional length N\nis given, BINARY(N) causes the cast to use no more than N bytes of the\nargument. Values shorter than N bytes are padded with 0x00 bytes to a\nlength of N.\n\nCHAR(N) causes the cast to use no more than N characters of the\nargument.\n\nCAST() and CONVERT(... USING ...) are standard SQL syntax. The\nnon-USING form of CONVERT() is ODBC syntax.\n\nCONVERT() with USING is used to convert data between different\ncharacter sets. In MySQL, transcoding names are the same as the\ncorresponding character set names. For example, this statement converts\nthe string \'abc\' in the default character set to the corresponding\nstring in the utf8 character set:\n\nSELECT CONVERT(\'abc\' USING utf8);\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/cast-functions.html\n\n','SELECT enum_col FROM tbl_name ORDER BY CAST(enum_col AS CHAR);\n','http://dev.mysql.com/doc/refman/5.5/en/cast-functions.html'),(232,'DROP LOGFILE GROUP',40,'Syntax:\nDROP LOGFILE GROUP logfile_group\n    ENGINE [=] engine_name\n\nThis statement drops the log file group named logfile_group. The log\nfile group must already exist or an error results. (For information on\ncreating log file groups, see [HELP CREATE LOGFILE GROUP].)\n\n*Important*: Before dropping a log file group, you must drop all\ntablespaces that use that log file group for UNDO logging.\n\nThe required ENGINE clause provides the name of the storage engine used\nby the log file group to be dropped. Currently, the only permitted\nvalues for engine_name are NDB and NDBCLUSTER.\n\nDROP LOGFILE GROUP is useful only with Disk Data storage for MySQL\nCluster. See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-cluster-disk-data.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-logfile-group.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-logfile-group.html'),(233,'ADDDATE',32,'Syntax:\nADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, ADDDATE()\nis a synonym for DATE_ADD(). The related function SUBDATE() is a\nsynonym for DATE_SUB(). For information on the INTERVAL unit argument,\nsee the discussion for DATE_ADD().\n\nmysql> SELECT DATE_ADD(\'2008-01-02\', INTERVAL 31 DAY);\n        -> \'2008-02-02\'\nmysql> SELECT ADDDATE(\'2008-01-02\', INTERVAL 31 DAY);\n        -> \'2008-02-02\'\n\nWhen invoked with the days form of the second argument, MySQL treats it\nas an integer number of days to be added to expr.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT ADDDATE(\'2008-01-02\', 31);\n        -> \'2008-02-02\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(234,'REPEAT LOOP',24,'Syntax:\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\nThe statement list within a REPEAT statement is repeated until the\nsearch_condition expression is true. Thus, a REPEAT always enters the\nloop at least once. statement_list consists of one or more statements,\neach terminated by a semicolon (;) statement delimiter.\n\nA REPEAT statement can be labeled. For the rules regarding label use,\nsee [HELP labels].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/repeat.html\n\n','mysql> delimiter //\n\nmysql> CREATE PROCEDURE dorepeat(p1 INT)\n    -> BEGIN\n    ->   SET @x = 0;\n    ->   REPEAT\n    ->     SET @x = @x + 1;\n    ->   UNTIL @x > p1 END REPEAT;\n    -> END\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL dorepeat(1000)//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n+------+\n| @x   |\n+------+\n| 1001 |\n+------+\n1 row in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.5/en/repeat.html'),(235,'ALTER FUNCTION',40,'Syntax:\nALTER FUNCTION func_name [characteristic ...]\n\ncharacteristic:\n    COMMENT \'string\'\n  | LANGUAGE SQL\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nThis statement can be used to change the characteristics of a stored\nfunction. More than one change may be specified in an ALTER FUNCTION\nstatement. However, you cannot change the parameters or body of a\nstored function using this statement; to make such changes, you must\ndrop and re-create the function using DROP FUNCTION and CREATE\nFUNCTION.\n\nYou must have the ALTER ROUTINE privilege for the function. (That\nprivilege is granted automatically to the function creator.) If binary\nlogging is enabled, the ALTER FUNCTION statement might also require the\nSUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-programs-logging.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-function.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/alter-function.html'),(236,'SMALLINT',23,'SMALLINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA small integer. The signed range is -32768 to 32767. The unsigned\nrange is 0 to 65535.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(237,'DOUBLE PRECISION',23,'DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]\n[ZEROFILL]\n\nThese types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT\nSQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(238,'ORD',38,'Syntax:\nORD(str)\n\nIf the leftmost character of the string str is a multi-byte character,\nreturns the code for that character, calculated from the numeric values\nof its constituent bytes using this formula:\n\n  (1st byte code)\n+ (2nd byte code * 256)\n+ (3rd byte code * 2562) ...\n\nIf the leftmost character is not a multi-byte character, ORD() returns\nthe same value as the ASCII() function.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT ORD(\'2\');\n        -> 50\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(239,'DEALLOCATE PREPARE',8,'Syntax:\n{DEALLOCATE | DROP} PREPARE stmt_name\n\nTo deallocate a prepared statement produced with PREPARE, use a\nDEALLOCATE PREPARE statement that refers to the prepared statement\nname. Attempting to execute a prepared statement after deallocating it\nresults in an error.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/deallocate-prepare.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/deallocate-prepare.html'),(240,'ENVELOPE',37,'Envelope(g)\n\nReturns the Minimum Bounding Rectangle (MBR) for the geometry value g.\nThe result is returned as a Polygon value.\n\nThe polygon is defined by the corner points of the bounding box:\n\nPOLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SELECT AsText(Envelope(GeomFromText(\'LineString(1 1,2 2)\')));\n+-------------------------------------------------------+\n| AsText(Envelope(GeomFromText(\'LineString(1 1,2 2)\'))) |\n+-------------------------------------------------------+\n| POLYGON((1 1,2 1,2 2,1 2,1 1))                        |\n+-------------------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(241,'IS_FREE_LOCK',14,'Syntax:\nIS_FREE_LOCK(str)\n\nChecks whether the lock named str is free to use (that is, not locked).\nReturns 1 if the lock is free (no one is using the lock), 0 if the lock\nis in use, and NULL if an error occurs (such as an incorrect argument).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(242,'TOUCHES',31,'Touches(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially touches g2. Two\ngeometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either\nthe boundary or the interior of the other.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(243,'INET_ATON',14,'Syntax:\nINET_ATON(expr)\n\nGiven the dotted-quad representation of an IPv4 network address as a\nstring, returns an integer that represents the numeric value of the\naddress in network byte order (big endian). INET_ATON() returns NULL if\nit does not understand its argument.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','mysql> SELECT INET_ATON(\'10.0.5.9\');\n        -> 167773449\n','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(244,'UNCOMPRESS',12,'Syntax:\nUNCOMPRESS(string_to_uncompress)\n\nUncompresses a string compressed by the COMPRESS() function. If the\nargument is not a compressed value, the result is NULL. This function\nrequires MySQL to have been compiled with a compression library such as\nzlib. Otherwise, the return value is always NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SELECT UNCOMPRESS(COMPRESS(\'any string\'));\n        -> \'any string\'\nmysql> SELECT UNCOMPRESS(\'any string\');\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(245,'AUTO_INCREMENT',23,'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/example-auto-increment.html\n\n','CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n);\n\nINSERT INTO animals (name) VALUES\n    (\'dog\'),(\'cat\'),(\'penguin\'),\n    (\'lax\'),(\'whale\'),(\'ostrich\');\n\nSELECT * FROM animals;\n','http://dev.mysql.com/doc/refman/5.5/en/example-auto-increment.html'),(246,'ISSIMPLE',37,'IsSimple(g)\n\nIn MySQL 5.5, this function is a placeholder that always returns 0.\n\nThe description of each instantiable geometric class given earlier in\nthe chapter includes the specific conditions that cause an instance of\nthat class to be classified as not simple. (See [HELP Geometry\nhierarchy].)\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(247,'- BINARY',4,'Syntax:\n-\n\nSubtraction:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html\n\n','mysql> SELECT 3-5;\n        -> -2\n','http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html'),(248,'GEOMCOLLFROMTEXT',3,'GeomCollFromText(wkt[,srid]), GeometryCollectionFromText(wkt[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(249,'WKT DEFINITION',3,'The Well-Known Text (WKT) representation of Geometry is designed to\nexchange geometry data in ASCII form. For a Backus-Naur grammar that\nspecifies the formal production rules for writing WKT values, see the\nOpenGIS specification document referenced in\nhttp://dev.mysql.com/doc/refman/5.5/en/spatial-extensions.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/gis-wkt-format.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/gis-wkt-format.html'),(250,'CURRENT_TIME',32,'Syntax:\nCURRENT_TIME, CURRENT_TIME()\n\nCURRENT_TIME and CURRENT_TIME() are synonyms for CURTIME().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(251,'REVOKE',10,'Syntax:\nREVOKE\n    priv_type [(column_list)]\n      [, priv_type [(column_list)]] ...\n    ON [object_type] priv_level\n    FROM user [, user] ...\n\nREVOKE ALL PRIVILEGES, GRANT OPTION\n    FROM user [, user] ...\n\nREVOKE PROXY ON user\n    FROM user [, user] ...\n\nThe REVOKE statement enables system administrators to revoke privileges\nfrom MySQL accounts. Each account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.5/en/account-names.html. For example:\n\nREVOKE INSERT ON *.* FROM \'jeffrey\'@\'localhost\';\n\nIf you specify only the user name part of the account name, a host name\npart of \'%\' is used.\n\nFor details on the levels at which privileges exist, the permissible\npriv_type and priv_level values, and the syntax for specifying users\nand passwords, see [HELP GRANT]\n\nTo use the first REVOKE syntax, you must have the GRANT OPTION\nprivilege, and you must have the privileges that you are revoking.\n\nTo revoke all privileges, use the second syntax, which drops all\nglobal, database, table, column, and routine privileges for the named\nuser or users:\n\nREVOKE ALL PRIVILEGES, GRANT OPTION FROM user [, user] ...\n\nTo use this REVOKE syntax, you must have the global CREATE USER\nprivilege or the UPDATE privilege for the mysql database.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/revoke.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/revoke.html'),(252,'LAST_INSERT_ID',17,'Syntax:\nLAST_INSERT_ID(), LAST_INSERT_ID(expr)\n\nLAST_INSERT_ID() (with no argument) returns a BIGINT (64-bit) value\nrepresenting the first automatically generated value successfully\ninserted for an AUTO_INCREMENT column as a result of the most recently\nexecuted INSERT statement. The value of LAST_INSERT_ID() remains\nunchanged if no rows are successfully inserted.\n\nFor example, after inserting a row that generates an AUTO_INCREMENT\nvalue, you can get the value like this:\n\nmysql> SELECT LAST_INSERT_ID();\n        -> 195\n\nThe currently executing statement does not affect the value of\nLAST_INSERT_ID(). Suppose that you generate an AUTO_INCREMENT value\nwith one statement, and then refer to LAST_INSERT_ID() in a\nmultiple-row INSERT statement that inserts rows into a table with its\nown AUTO_INCREMENT column. The value of LAST_INSERT_ID() will remain\nstable in the second statement; its value for the second and later rows\nis not affected by the earlier row insertions. (However, if you mix\nreferences to LAST_INSERT_ID() and LAST_INSERT_ID(expr), the effect is\nundefined.)\n\nIf the previous statement returned an error, the value of\nLAST_INSERT_ID() is undefined. For transactional tables, if the\nstatement is rolled back due to an error, the value of LAST_INSERT_ID()\nis left undefined. For manual ROLLBACK, the value of LAST_INSERT_ID()\nis not restored to that before the transaction; it remains as it was at\nthe point of the ROLLBACK.\n\nWithin the body of a stored routine (procedure or function) or a\ntrigger, the value of LAST_INSERT_ID() changes the same way as for\nstatements executed outside the body of these kinds of objects. The\neffect of a stored routine or trigger upon the value of\nLAST_INSERT_ID() that is seen by following statements depends on the\nkind of routine:\n\no If a stored procedure executes statements that change the value of\n  LAST_INSERT_ID(), the changed value is seen by statements that follow\n  the procedure call.\n\no For stored functions and triggers that change the value, the value is\n  restored when the function or trigger ends, so following statements\n  will not see a changed value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(253,'LAST_DAY',32,'Syntax:\nLAST_DAY(date)\n\nTakes a date or datetime value and returns the corresponding value for\nthe last day of the month. Returns NULL if the argument is invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT LAST_DAY(\'2003-02-05\');\n        -> \'2003-02-28\'\nmysql> SELECT LAST_DAY(\'2004-02-05\');\n        -> \'2004-02-29\'\nmysql> SELECT LAST_DAY(\'2004-01-01 01:01:01\');\n        -> \'2004-01-31\'\nmysql> SELECT LAST_DAY(\'2003-03-32\');\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(254,'MEDIUMINT',23,'MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA medium-sized integer. The signed range is -8388608 to 8388607. The\nunsigned range is 0 to 16777215.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(255,'FLOOR',4,'Syntax:\nFLOOR(X)\n\nReturns the largest integer value not greater than X.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT FLOOR(1.23);\n        -> 1\nmysql> SELECT FLOOR(-1.23);\n        -> -2\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(256,'RTRIM',38,'Syntax:\nRTRIM(str)\n\nReturns the string str with trailing space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT RTRIM(\'barbar   \');\n        -> \'barbar\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(257,'EXPLAIN',29,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type] SELECT select_options\n\nexplain_type:\n    EXTENDED\n  | PARTITIONS\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query). The\nfollowing discussion uses the DESCRIBE and EXPLAIN keywords in\naccordance with those uses, but the MySQL parser treats them as\ncompletely synonymous.\n\nObtaining Table Structure Information\n\nDESCRIBE provides information about the columns in a table. It is a\nshortcut for SHOW COLUMNS FROM. These statements also display\ninformation for views. (See [HELP SHOW COLUMNS].)\n\ncol_name can be a column name, or a string containing the SQL \"%\" and\n\"_\" wildcard characters to obtain output only for the columns with\nnames matching the string. There is no need to enclose the string\nwithin quotation marks unless it contains spaces or other special\ncharacters.\n\nmysql> DESCRIBE City;\n+------------+----------+------+-----+---------+----------------+\n| Field      | Type     | Null | Key | Default | Extra          |\n+------------+----------+------+-----+---------+----------------+\n| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name       | char(35) | NO   |     |         |                |\n| Country    | char(3)  | NO   | UNI |         |                |\n| District   | char(20) | YES  | MUL |         |                |\n| Population | int(11)  | NO   |     | 0       |                |\n+------------+----------+------+-----+---------+----------------+\n5 rows in set (0.00 sec)\n\nThe description for SHOW COLUMNS provides more information about the\noutput columns (see [HELP SHOW COLUMNS]).\n\nIf the data types differ from what you expect them to be based on a\nCREATE TABLE statement, note that MySQL sometimes changes data types\nwhen you create or alter a table. The conditions under which this\noccurs are described in\nhttp://dev.mysql.com/doc/refman/5.5/en/silent-column-changes.html.\n\nThe DESCRIBE statement is provided for compatibility with Oracle.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nObtaining Query Execution Plan Information\n\nThe EXPLAIN statement provides a way to obtain information about how\nMySQL executes a statement:\n\no When you precede a SELECT statement with the keyword EXPLAIN, MySQL\n  displays information from the optimizer about the query execution\n  plan. That is, MySQL explains how it would process the statement,\n  including information about how tables are joined and in which order.\n  EXPLAIN EXTENDED can be used to obtain additional information.\n\n  For information about using EXPLAIN and EXPLAIN EXTENDED to obtain\n  query execution plan information, see\n  http://dev.mysql.com/doc/refman/5.5/en/using-explain.html.\n\no EXPLAIN PARTITIONS is useful only when examining queries involving\n  partitioned tables. For details, see\n  http://dev.mysql.com/doc/refman/5.5/en/partitioning-info.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/explain.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/explain.html'),(258,'DEGREES',4,'Syntax:\nDEGREES(X)\n\nReturns the argument X, converted from radians to degrees.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT DEGREES(PI());\n        -> 180\nmysql> SELECT DEGREES(PI() / 2);\n        -> 90\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(259,'VARCHAR',23,'[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA variable-length string. M represents the maximum column length in\ncharacters. The range of M is 0 to 65,535. The effective maximum length\nof a VARCHAR is subject to the maximum row size (65,535 bytes, which is\nshared among all columns) and the character set used. For example, utf8\ncharacters can require up to three bytes per character, so a VARCHAR\ncolumn that uses the utf8 character set can be declared to be a maximum\nof 21,844 characters. See\nhttp://dev.mysql.com/doc/refman/5.5/en/column-count-limit.html.\n\nMySQL stores VARCHAR values as a 1-byte or 2-byte length prefix plus\ndata. The length prefix indicates the number of bytes in the value. A\nVARCHAR column uses one length byte if values require no more than 255\nbytes, two length bytes if values may require more than 255 bytes.\n\n*Note*: MySQL 5.5 follows the standard SQL specification, and does not\nremove trailing spaces from VARCHAR values.\n\nVARCHAR is shorthand for CHARACTER VARYING. NATIONAL VARCHAR is the\nstandard SQL way to define that a VARCHAR column should use some\npredefined character set. MySQL 4.1 and up uses utf8 as this predefined\ncharacter set.\nhttp://dev.mysql.com/doc/refman/5.5/en/charset-national.html. NVARCHAR\nis shorthand for NATIONAL VARCHAR.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(260,'UNHEX',38,'Syntax:\n\nUNHEX(str)\n\nFor a string argument str, UNHEX(str) performs the inverse operation of\nHEX(str). That is, it interprets each pair of characters in the\nargument as a hexadecimal number and converts it to the character\nrepresented by the number. The return value is a binary string.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT UNHEX(\'4D7953514C\');\n        -> \'MySQL\'\nmysql> SELECT 0x4D7953514C;\n        -> \'MySQL\'\nmysql> SELECT UNHEX(HEX(\'string\'));\n        -> \'string\'\nmysql> SELECT HEX(UNHEX(\'1267\'));\n        -> \'1267\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(261,'- UNARY',4,'Syntax:\n-\n\nUnary minus. This operator changes the sign of the operand.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html\n\n','mysql> SELECT - 2;\n        -> -2\n','http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html'),(262,'STD',16,'Syntax:\nSTD(expr)\n\nReturns the population standard deviation of expr. This is an extension\nto standard SQL. The standard SQL function STDDEV_POP() can be used\ninstead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(263,'COS',4,'Syntax:\nCOS(X)\n\nReturns the cosine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT COS(PI());\n        -> -1\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(264,'DATE FUNCTION',32,'Syntax:\nDATE(expr)\n\nExtracts the date part of the date or datetime expression expr.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT DATE(\'2003-12-31 01:02:03\');\n        -> \'2003-12-31\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(265,'DROP TRIGGER',40,'Syntax:\nDROP TRIGGER [IF EXISTS] [schema_name.]trigger_name\n\nThis statement drops a trigger. The schema (database) name is optional.\nIf the schema is omitted, the trigger is dropped from the default\nschema. DROP TRIGGER requires the TRIGGER privilege for the table\nassociated with the trigger.\n\nUse IF EXISTS to prevent an error from occurring for a trigger that\ndoes not exist. A NOTE is generated for a nonexistent trigger when\nusing IF EXISTS. See [HELP SHOW WARNINGS].\n\nTriggers for a table are also dropped if you drop the table.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-trigger.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-trigger.html'),(266,'RESET MASTER',8,'Syntax:\nRESET MASTER\n\nDeletes all binary log files listed in the index file, resets the\nbinary log index file to be empty, and creates a new binary log file.\nThis statement is intended to be used only when the master is started\nfor the first time.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/reset-master.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/reset-master.html'),(267,'TAN',4,'Syntax:\nTAN(X)\n\nReturns the tangent of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT TAN(PI());\n        -> -1.2246063538224e-16\nmysql> SELECT TAN(PI()+1);\n        -> 1.5574077246549\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(268,'PI',4,'Syntax:\nPI()\n\nReturns the value of π (pi). The default number of decimal places\ndisplayed is seven, but MySQL uses the full double-precision value\ninternally.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT PI();\n        -> 3.141593\nmysql> SELECT PI()+0.000000000000000000;\n        -> 3.141592653589793116\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(269,'WEEKOFYEAR',32,'Syntax:\nWEEKOFYEAR(date)\n\nReturns the calendar week of the date as a number in the range from 1\nto 53. WEEKOFYEAR() is a compatibility function that is equivalent to\nWEEK(date,3).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT WEEKOFYEAR(\'2008-02-20\');\n        -> 8\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(270,'/',4,'Syntax:\n/\n\nDivision:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html\n\n','mysql> SELECT 3/5;\n        -> 0.60\n','http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html'),(271,'PURGE BINARY LOGS',8,'Syntax:\nPURGE { BINARY | MASTER } LOGS\n    { TO \'log_name\' | BEFORE datetime_expr }\n\nThe binary log is a set of files that contain information about data\nmodifications made by the MySQL server. The log consists of a set of\nbinary log files, plus an index file (see\nhttp://dev.mysql.com/doc/refman/5.5/en/binary-log.html).\n\nThe PURGE BINARY LOGS statement deletes all the binary log files listed\nin the log index file prior to the specified log file name or date.\nBINARY and MASTER are synonyms. Deleted log files also are removed from\nthe list recorded in the index file, so that the given log file becomes\nthe first in the list.\n\nThis statement has no effect if the server was not started with the\n--log-bin option to enable binary logging.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/purge-binary-logs.html\n\n','PURGE BINARY LOGS TO \'mysql-bin.010\';\nPURGE BINARY LOGS BEFORE \'2008-04-02 22:46:26\';\n','http://dev.mysql.com/doc/refman/5.5/en/purge-binary-logs.html'),(272,'STDDEV_SAMP',16,'Syntax:\nSTDDEV_SAMP(expr)\n\nReturns the sample standard deviation of expr (the square root of\nVAR_SAMP().\n\nSTDDEV_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(273,'SCHEMA',17,'Syntax:\nSCHEMA()\n\nThis function is a synonym for DATABASE().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(274,'MLINEFROMWKB',33,'MLineFromWKB(wkb[,srid]), MultiLineStringFromWKB(wkb[,srid])\n\nConstructs a MULTILINESTRING value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(275,'LOG2',4,'Syntax:\nLOG2(X)\n\nReturns the base-2 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT LOG2(65536);\n        -> 16\nmysql> SELECT LOG2(-100);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(276,'SUBTIME',32,'Syntax:\nSUBTIME(expr1,expr2)\n\nSUBTIME() returns expr1 - expr2 expressed as a value in the same format\nas expr1. expr1 is a time or datetime expression, and expr2 is a time\nexpression.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT SUBTIME(\'2007-12-31 23:59:59.999999\',\'1 1:1:1.000002\');\n        -> \'2007-12-30 22:58:58.999997\'\nmysql> SELECT SUBTIME(\'01:00:00.999999\', \'02:00:00.999998\');\n        -> \'-00:59:59.999999\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(277,'UNCOMPRESSED_LENGTH',12,'Syntax:\nUNCOMPRESSED_LENGTH(compressed_string)\n\nReturns the length that the compressed string had before being\ncompressed.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SELECT UNCOMPRESSED_LENGTH(COMPRESS(REPEAT(\'a\',30)));\n        -> 30\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(278,'DROP TABLE',40,'Syntax:\nDROP [TEMPORARY] TABLE [IF EXISTS]\n    tbl_name [, tbl_name] ...\n    [RESTRICT | CASCADE]\n\nDROP TABLE removes one or more tables. You must have the DROP privilege\nfor each table. All table data and the table definition are removed, so\nbe careful with this statement! If any of the tables named in the\nargument list do not exist, MySQL returns an error indicating by name\nwhich nonexisting tables it was unable to drop, but it also drops all\nof the tables in the list that do exist.\n\n*Important*: When a table is dropped, user privileges on the table are\nnot automatically dropped. See [HELP GRANT].\n\nNote that for a partitioned table, DROP TABLE permanently removes the\ntable definition, all of its partitions, and all of the data which was\nstored in those partitions. It also removes the partitioning definition\n(.par) file associated with the dropped table.\n\nUse IF EXISTS to prevent an error from occurring for tables that do not\nexist. A NOTE is generated for each nonexistent table when using IF\nEXISTS. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE are permitted to make porting easier. In MySQL\n5.5, they do nothing.\n\n*Note*: DROP TABLE automatically commits the current active\ntransaction, unless you use the TEMPORARY keyword.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-table.html'),(279,'POW',4,'Syntax:\nPOW(X,Y)\n\nReturns the value of X raised to the power of Y.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT POW(2,2);\n        -> 4\nmysql> SELECT POW(2,-2);\n        -> 0.25\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(280,'SHOW CREATE TABLE',27,'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the given table. To use\nthis statement, you must have some privilege for the table. This\nstatement also works with views.\nSHOW CREATE TABLE quotes table and column names according to the value\nof the sql_quote_show_create option. See\nhttp://dev.mysql.com/doc/refman/5.5/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-create-table.html\n\n','mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE t (\n  id INT(11) default NULL auto_increment,\n  s char(60) default NULL,\n  PRIMARY KEY (id)\n) ENGINE=MyISAM\n','http://dev.mysql.com/doc/refman/5.5/en/show-create-table.html'),(281,'DUAL',28,'You are permitted to specify DUAL as a dummy table name in situations\nwhere no tables are referenced:\n\nmysql> SELECT 1 + 1 FROM DUAL;\n        -> 2\n\nDUAL is purely for the convenience of people who require that all\nSELECT statements should have FROM and possibly other clauses. MySQL\nmay ignore the clauses. MySQL does not require FROM DUAL if no tables\nare referenced.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/select.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/select.html'),(282,'INSTR',38,'Syntax:\nINSTR(str,substr)\n\nReturns the position of the first occurrence of substring substr in\nstring str. This is the same as the two-argument form of LOCATE(),\nexcept that the order of the arguments is reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT INSTR(\'foobarbar\', \'bar\');\n        -> 4\nmysql> SELECT INSTR(\'xbar\', \'foobar\');\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(283,'NOW',32,'Syntax:\nNOW()\n\nReturns the current date and time as a value in \'YYYY-MM-DD HH:MM:SS\'\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context. The value is expressed in the\ncurrent time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT NOW();\n        -> \'2007-12-15 23:50:26\'\nmysql> SELECT NOW() + 0;\n        -> 20071215235026.000000\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(284,'SHOW ENGINES',27,'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server\'s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-engines.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-engines.html'),(285,'>=',19,'Syntax:\n>=\n\nGreater than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 2 >= 2;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(286,'EXP',4,'Syntax:\nEXP(X)\n\nReturns the value of e (the base of natural logarithms) raised to the\npower of X. The inverse of this function is LOG() (using a single\nargument only) or LN().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT EXP(2);\n        -> 7.3890560989307\nmysql> SELECT EXP(-2);\n        -> 0.13533528323661\nmysql> SELECT EXP(0);\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(287,'LONGBLOB',23,'LONGBLOB\n\nA BLOB column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\nbytes. The effective maximum length of LONGBLOB columns depends on the\nconfigured maximum packet size in the client/server protocol and\navailable memory. Each LONGBLOB value is stored using a 4-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(288,'POINTN',13,'PointN(ls,N)\n\nReturns the N-th Point in the Linestring value ls. Points are numbered\nbeginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(PointN(GeomFromText(@ls),2));\n+-------------------------------------+\n| AsText(PointN(GeomFromText(@ls),2)) |\n+-------------------------------------+\n| POINT(2 2)                          |\n+-------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(289,'YEAR DATA TYPE',23,'YEAR[(2|4)]\n\nA year in two-digit or four-digit format. The default is four-digit\nformat. YEAR(2) or YEAR(4) differ in display format, but have the same\nrange of values. In four-digit format, values display as 1901 to 2155,\nand 0000. In two-digit format, values display as 70 to 69, representing\nyears from 1970 to 2069. MySQL displays YEAR values in YYYY or\nYYformat, but permits assignment of values to YEAR columns using either\nstrings or numbers.\n\n*Note*: The YEAR(2) data type has certain issues that you should\nconsider before choosing to use it. As of MySQL 5.5.27, YEAR(2) is\ndeprecated. For more information, see\nhttp://dev.mysql.com/doc/refman/5.5/en/migrating-to-year4.html.\n\nFor additional information about YEAR display format and interpretation\nof input values, see http://dev.mysql.com/doc/refman/5.5/en/year.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html'),(290,'SUM',16,'Syntax:\nSUM([DISTINCT] expr)\n\nReturns the sum of expr. If the return set has no rows, SUM() returns\nNULL. The DISTINCT keyword can be used to sum only the distinct values\nof expr.\n\nSUM() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(291,'OCT',38,'Syntax:\nOCT(N)\n\nReturns a string representation of the octal value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,8). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT OCT(12);\n        -> \'14\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(292,'SYSDATE',32,'Syntax:\nSYSDATE()\n\nReturns the current date and time as a value in \'YYYY-MM-DD HH:MM:SS\'\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context.\n\nSYSDATE() returns the time at which it executes. This differs from the\nbehavior for NOW(), which returns a constant time that indicates the\ntime at which the statement began to execute. (Within a stored function\nor trigger, NOW() returns the time at which the function or triggering\nstatement began to execute.)\n\nmysql> SELECT NOW(), SLEEP(2), NOW();\n+---------------------+----------+---------------------+\n| NOW()               | SLEEP(2) | NOW()               |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:36 |        0 | 2006-04-12 13:47:36 |\n+---------------------+----------+---------------------+\n\nmysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();\n+---------------------+----------+---------------------+\n| SYSDATE()           | SLEEP(2) | SYSDATE()           |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:44 |        0 | 2006-04-12 13:47:46 |\n+---------------------+----------+---------------------+\n\nIn addition, the SET TIMESTAMP statement affects the value returned by\nNOW() but not by SYSDATE(). This means that timestamp settings in the\nbinary log have no effect on invocations of SYSDATE().\n\nBecause SYSDATE() can return different values even within the same\nstatement, and is not affected by SET TIMESTAMP, it is nondeterministic\nand therefore unsafe for replication if statement-based binary logging\nis used. If that is a problem, you can use row-based logging.\n\nAlternatively, you can use the --sysdate-is-now option to cause\nSYSDATE() to be an alias for NOW(). This works if the option is used on\nboth the master and the slave.\n\nThe nondeterministic nature of SYSDATE() also means that indexes cannot\nbe used for evaluating expressions that refer to it.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(293,'UNINSTALL PLUGIN',5,'Syntax:\nUNINSTALL PLUGIN plugin_name\n\nThis statement removes an installed server plugin. It requires the\nDELETE privilege for the mysql.plugin table.\n\nplugin_name must be the name of some plugin that is listed in the\nmysql.plugin table. The server executes the plugin\'s deinitialization\nfunction and removes the row for the plugin from the mysql.plugin\ntable, so that subsequent server restarts will not load and initialize\nthe plugin. UNINSTALL PLUGIN does not remove the plugin\'s shared\nlibrary file.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/uninstall-plugin.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/uninstall-plugin.html'),(294,'ASBINARY',33,'AsBinary(g), AsWKB(g)\n\nConverts a value in internal geometry format to its WKB representation\nand returns the binary result.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-to-convert-geometries-between-formats.html\n\n','SELECT AsBinary(g) FROM geom;\n','http://dev.mysql.com/doc/refman/5.5/en/functions-to-convert-geometries-between-formats.html'),(295,'REPEAT FUNCTION',38,'Syntax:\nREPEAT(str,count)\n\nReturns a string consisting of the string str repeated count times. If\ncount is less than 1, returns an empty string. Returns NULL if str or\ncount are NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT REPEAT(\'MySQL\', 3);\n        -> \'MySQLMySQLMySQL\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(296,'SHOW TABLES',27,'Syntax:\nSHOW [FULL] TABLES [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nMatching performed by the LIKE clause is dependent on the setting of\nthe lower_case_table_names system variable.\n\nThis statement also lists any views in the database. The FULL modifier\nis supported such that SHOW FULL TABLES displays a second output\ncolumn. Values for the second column are BASE TABLE for a table and\nVIEW for a view.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-tables.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-tables.html'),(297,'MAKEDATE',32,'Syntax:\nMAKEDATE(year,dayofyear)\n\nReturns a date, given year and day-of-year values. dayofyear must be\ngreater than 0 or the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT MAKEDATE(2011,31), MAKEDATE(2011,32);\n        -> \'2011-01-31\', \'2011-02-01\'\nmysql> SELECT MAKEDATE(2011,365), MAKEDATE(2014,365);\n        -> \'2011-12-31\', \'2014-12-31\'\nmysql> SELECT MAKEDATE(2011,0);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(298,'BINARY OPERATOR',38,'Syntax:\nBINARY\n\nThe BINARY operator casts the string following it to a binary string.\nThis is an easy way to force a column comparison to be done byte by\nbyte rather than character by character. This causes the comparison to\nbe case sensitive even if the column is not defined as BINARY or BLOB.\nBINARY also causes trailing spaces to be significant.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/cast-functions.html\n\n','mysql> SELECT \'a\' = \'A\';\n        -> 1\nmysql> SELECT BINARY \'a\' = \'A\';\n        -> 0\nmysql> SELECT \'a\' = \'a \';\n        -> 1\nmysql> SELECT BINARY \'a\' = \'a \';\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/cast-functions.html'),(299,'MBROVERLAPS',6,'MBROverlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 overlap. The term spatially overlaps is\nused if two geometries intersect and their intersection results in a\ngeometry of the same dimension but not equal to either of the given\ngeometries.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(300,'SOUNDEX',38,'Syntax:\nSOUNDEX(str)\n\nReturns a soundex string from str. Two strings that sound almost the\nsame should have identical soundex strings. A standard soundex string\nis four characters long, but the SOUNDEX() function returns an\narbitrarily long string. You can use SUBSTRING() on the result to get a\nstandard soundex string. All nonalphabetic characters in str are\nignored. All international alphabetic characters outside the A-Z range\nare treated as vowels.\n\n*Important*: When using SOUNDEX(), you should be aware of the following\nlimitations:\n\no This function, as currently implemented, is intended to work well\n  with strings that are in the English language only. Strings in other\n  languages may not produce reliable results.\n\no This function is not guaranteed to provide consistent results with\n  strings that use multi-byte character sets, including utf-8.\n\n  We hope to remove these limitations in a future release. See Bug\n  #22638 for more information.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT SOUNDEX(\'Hello\');\n        -> \'H400\'\nmysql> SELECT SOUNDEX(\'Quadratically\');\n        -> \'Q36324\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(301,'MBRTOUCHES',6,'MBRTouches(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 touch. Two geometries spatially touch if\nthe interiors of the geometries do not intersect, but the boundary of\none of the geometries intersects either the boundary or the interior of\nthe other.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(302,'DROP EVENT',40,'Syntax:\nDROP EVENT [IF EXISTS] event_name\n\nThis statement drops the event named event_name. The event immediately\nceases being active, and is deleted completely from the server.\n\nIf the event does not exist, the error ERROR 1517 (HY000): Unknown\nevent \'event_name\' results. You can override this and cause the\nstatement to generate a warning for nonexistent events instead using IF\nEXISTS.\n\nThis statement requires the EVENT privilege for the schema to which the\nevent to be dropped belongs.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-event.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-event.html'),(303,'INSERT SELECT',28,'Syntax:\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nWith INSERT ... SELECT, you can quickly insert many rows into a table\nfrom one or many tables. For example:\n\nINSERT INTO tbl_temp2 (fld_id)\n  SELECT tbl_temp1.fld_order_id\n  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/insert-select.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/insert-select.html'),(304,'CREATE PROCEDURE',40,'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    PROCEDURE sp_name ([proc_parameter[,...]])\n    [characteristic ...] routine_body\n\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    FUNCTION sp_name ([func_parameter[,...]])\n    RETURNS type\n    [characteristic ...] routine_body\n\nproc_parameter:\n    [ IN | OUT | INOUT ] param_name type\n\nfunc_parameter:\n    param_name type\n\ntype:\n    Any valid MySQL data type\n\ncharacteristic:\n    COMMENT \'string\'\n  | LANGUAGE SQL\n  | [NOT] DETERMINISTIC\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nroutine_body:\n    Valid SQL routine statement\n\nThese statements create stored routines. By default, a routine is\nassociated with the default database. To associate the routine\nexplicitly with a given database, specify the name as db_name.sp_name\nwhen you create it.\n\nThe CREATE FUNCTION statement is also used in MySQL to support UDFs\n(user-defined functions). See\nhttp://dev.mysql.com/doc/refman/5.5/en/adding-functions.html. A UDF can\nbe regarded as an external stored function. Stored functions share\ntheir namespace with UDFs. See\nhttp://dev.mysql.com/doc/refman/5.5/en/function-resolution.html, for\nthe rules describing how the server interprets references to different\nkinds of functions.\n\nTo invoke a stored procedure, use the CALL statement (see [HELP CALL]).\nTo invoke a stored function, refer to it in an expression. The function\nreturns a value during expression evaluation.\n\nCREATE PROCEDURE and CREATE FUNCTION require the CREATE ROUTINE\nprivilege. They might also require the SUPER privilege, depending on\nthe DEFINER value, as described later in this section. If binary\nlogging is enabled, CREATE FUNCTION might require the SUPER privilege,\nas described in\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-programs-logging.html.\n\nBy default, MySQL automatically grants the ALTER ROUTINE and EXECUTE\nprivileges to the routine creator. This behavior can be changed by\ndisabling the automatic_sp_privileges system variable. See\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-routines-privileges.html.\n\nThe DEFINER and SQL SECURITY clauses specify the security context to be\nused when checking access privileges at routine execution time, as\ndescribed later in this section.\n\nIf the routine name is the same as the name of a built-in SQL function,\na syntax error occurs unless you use a space between the name and the\nfollowing parenthesis when defining the routine or invoking it later.\nFor this reason, avoid using the names of existing SQL functions for\nyour own stored routines.\n\nThe IGNORE_SPACE SQL mode applies to built-in functions, not to stored\nroutines. It is always permissible to have spaces after a stored\nroutine name, regardless of whether IGNORE_SPACE is enabled.\n\nThe parameter list enclosed within parentheses must always be present.\nIf there are no parameters, an empty parameter list of () should be\nused. Parameter names are not case sensitive.\n\nEach parameter is an IN parameter by default. To specify otherwise for\na parameter, use the keyword OUT or INOUT before the parameter name.\n\n*Note*: Specifying a parameter as IN, OUT, or INOUT is valid only for a\nPROCEDURE. For a FUNCTION, parameters are always regarded as IN\nparameters.\n\nAn IN parameter passes a value into a procedure. The procedure might\nmodify the value, but the modification is not visible to the caller\nwhen the procedure returns. An OUT parameter passes a value from the\nprocedure back to the caller. Its initial value is NULL within the\nprocedure, and its value is visible to the caller when the procedure\nreturns. An INOUT parameter is initialized by the caller, can be\nmodified by the procedure, and any change made by the procedure is\nvisible to the caller when the procedure returns.\n\nFor each OUT or INOUT parameter, pass a user-defined variable in the\nCALL statement that invokes the procedure so that you can obtain its\nvalue when the procedure returns. If you are calling the procedure from\nwithin another stored procedure or function, you can also pass a\nroutine parameter or local routine variable as an IN or INOUT\nparameter.\n\nRoutine parameters cannot be referenced in statements prepared within\nthe routine; see\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-program-restrictions.html\n.\n\nThe following example shows a simple stored procedure that uses an OUT\nparameter:\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE simpleproc (OUT param1 INT)\n    -> BEGIN\n    ->   SELECT COUNT(*) INTO param1 FROM t;\n    -> END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter ;\n\nmysql> CALL simpleproc(@a);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @a;\n+------+\n| @a   |\n+------+\n| 3    |\n+------+\n1 row in set (0.00 sec)\n\nThe example uses the mysql client delimiter command to change the\nstatement delimiter from ; to // while the procedure is being defined.\nThis enables the ; delimiter used in the procedure body to be passed\nthrough to the server rather than being interpreted by mysql itself.\nSee\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-programs-defining.html.\n\nThe RETURNS clause may be specified only for a FUNCTION, for which it\nis mandatory. It indicates the return type of the function, and the\nfunction body must contain a RETURN value statement. If the RETURN\nstatement returns a value of a different type, the value is coerced to\nthe proper type. For example, if a function specifies an ENUM or SET\nvalue in the RETURNS clause, but the RETURN statement returns an\ninteger, the value returned from the function is the string for the\ncorresponding ENUM member of set of SET members.\n\nThe following example function takes a parameter, performs an operation\nusing an SQL function, and returns the result. In this case, it is\nunnecessary to use delimiter because the function definition contains\nno internal ; statement delimiters:\n\nmysql> CREATE FUNCTION hello (s CHAR(20))\nmysql> RETURNS CHAR(50) DETERMINISTIC\n    -> RETURN CONCAT(\'Hello, \',s,\'!\');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT hello(\'world\');\n+----------------+\n| hello(\'world\') |\n+----------------+\n| Hello, world!  |\n+----------------+\n1 row in set (0.00 sec)\n\nParameter types and function return types can be declared to use any\nvalid data type, except that the COLLATE attribute cannot be used prior\nto MySQL 5.5.3. As of 5.5.3, COLLATE can be used if preceded by the\nCHARACTER SET attribute.\n\nThe routine_body consists of a valid SQL routine statement. This can be\na simple statement such as SELECT or INSERT, or a compound statement\nwritten using BEGIN and END. Compound statements can contain\ndeclarations, loops, and other control structure statements. The syntax\nfor these statements is described in\nhttp://dev.mysql.com/doc/refman/5.5/en/sql-syntax-compound-statements.h\ntml.\n\nMySQL permits routines to contain DDL statements, such as CREATE and\nDROP. MySQL also permits stored procedures (but not stored functions)\nto contain SQL transaction statements such as COMMIT. Stored functions\nmay not contain statements that perform explicit or implicit commit or\nrollback. Support for these statements is not required by the SQL\nstandard, which states that each DBMS vendor may decide whether to\npermit them.\n\nStatements that return a result set can be used within a stored\nprocedure but not within a stored function. This prohibition includes\nSELECT statements that do not have an INTO var_list clause and other\nstatements such as SHOW, EXPLAIN, and CHECK TABLE. For statements that\ncan be determined at function definition time to return a result set, a\nNot allowed to return a result set from a function error occurs\n(ER_SP_NO_RETSET). For statements that can be determined only at\nruntime to return a result set, a PROCEDURE %s can\'t return a result\nset in the given context error occurs (ER_SP_BADSELECT).\n\nUSE statements within stored routines are not permitted. When a routine\nis invoked, an implicit USE db_name is performed (and undone when the\nroutine terminates). The causes the routine to have the given default\ndatabase while it executes. References to objects in databases other\nthan the routine default database should be qualified with the\nappropriate database name.\n\nFor additional information about statements that are not permitted in\nstored routines, see\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-program-restrictions.html\n.\n\nFor information about invoking stored procedures from within programs\nwritten in a language that has a MySQL interface, see [HELP CALL].\n\nMySQL stores the sql_mode system variable setting that is in effect at\nthe time a routine is created, and always executes the routine with\nthis setting in force, regardless of the server SQL mode in effect when\nthe routine is invoked.\n\nThe switch from the SQL mode of the invoker to that of the routine\noccurs after evaluation of arguments and assignment of the resulting\nvalues to routine parameters. If you define a routine in strict SQL\nmode but invoke it in nonstrict mode, assignment of arguments to\nroutine parameters does not take place in strict mode. If you require\nthat expressions passed to a routine be assigned in strict SQL mode,\nyou should invoke the routine with strict mode in effect.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-procedure.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-procedure.html'),(305,'VARBINARY',23,'VARBINARY(M)\n\nThe VARBINARY type is similar to the VARCHAR type, but stores binary\nbyte strings rather than nonbinary character strings. M represents the\nmaximum column length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(306,'LOAD INDEX',27,'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [PARTITION (partition_list | ALL)]\n    [[INDEX|KEY] (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\npartition_list:\n    partition_name[, partition_name][, ...]\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise.\n\nLOAD INDEX INTO CACHE is used only for MyISAM tables. In MySQL 5.5, it\nis also supported for partitioned MyISAM tables; in addition, indexes\non partitioned tables can be preloaded for one, several, or all\npartitions.\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nIGNORE LEAVES is also supported for partitioned MyISAM tables.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/load-index.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/load-index.html'),(307,'UNION',28,'Syntax:\nSELECT ...\nUNION [ALL | DISTINCT] SELECT ...\n[UNION [ALL | DISTINCT] SELECT ...]\n\nUNION is used to combine the result from multiple SELECT statements\ninto a single result set.\n\nThe column names from the first SELECT statement are used as the column\nnames for the results returned. Selected columns listed in\ncorresponding positions of each SELECT statement should have the same\ndata type. (For example, the first column selected by the first\nstatement should have the same type as the first column selected by the\nother statements.)\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/union.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/union.html'),(308,'TO_DAYS',32,'Syntax:\nTO_DAYS(date)\n\nGiven a date date, returns a day number (the number of days since year\n0).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TO_DAYS(950501);\n        -> 728779\nmysql> SELECT TO_DAYS(\'2007-10-07\');\n        -> 733321\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(309,'NOT REGEXP',38,'Syntax:\nexpr NOT REGEXP pat, expr NOT RLIKE pat\n\nThis is the same as NOT (expr REGEXP pat).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/regexp.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/regexp.html'),(310,'SHOW INDEX',27,'Syntax:\nSHOW {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [WHERE expr]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC. This statement requires some\nprivilege for any column in the table.\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. These two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nYou can also list a table\'s indexes with the mysqlshow -k db_name\ntbl_name command.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-index.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-index.html'),(311,'SHOW CREATE DATABASE',27,'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n\nShows the CREATE DATABASE statement that creates the given database. If\nthe SHOW statement includes an IF NOT EXISTS clause, the output too\nincludes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE\nDATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-create-database.html\n\n','mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n','http://dev.mysql.com/doc/refman/5.5/en/show-create-database.html'),(312,'LEAVE',24,'Syntax:\nLEAVE label\n\nThis statement is used to exit the flow control construct that has the\ngiven label. If the label is for the outermost stored program block,\nLEAVE exits the program.\n\nLEAVE can be used within BEGIN ... END or loop constructs (LOOP,\nREPEAT, WHILE).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/leave.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/leave.html'),(313,'NOT IN',19,'Syntax:\nexpr NOT IN (value,...)\n\nThis is the same as NOT (expr IN (value,...)).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(314,'!',15,'Syntax:\nNOT, !\n\nLogical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is\nnonzero, and NOT NULL returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html\n\n','mysql> SELECT NOT 10;\n        -> 0\nmysql> SELECT NOT 0;\n        -> 1\nmysql> SELECT NOT NULL;\n        -> NULL\nmysql> SELECT ! (1+1);\n        -> 0\nmysql> SELECT ! 1+1;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html'),(315,'DECLARE HANDLER',24,'Syntax:\nDECLARE handler_action HANDLER\n    FOR condition_value [, condition_value] ...\n    statement\n\nhandler_action:\n    CONTINUE\n  | EXIT\n  | UNDO\n\ncondition_value:\n    mysql_error_code\n  | SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n  | SQLWARNING\n  | NOT FOUND\n  | SQLEXCEPTION\n\nThe DECLARE ... HANDLER statement specifies a handler that deals with\none or more conditions. If one of these conditions occurs, the\nspecified statement executes. statement can be a simple statement such\nas SET var_name = value, or a compound statement written using BEGIN\nand END (see [HELP BEGIN END]).\n\nHandler declarations must appear after variable or condition\ndeclarations.\n\nThe handler_action value indicates what action the handler takes after\nexecution of the handler statement:\n\no CONTINUE: Execution of the current program continues.\n\no EXIT: Execution terminates for the BEGIN ... END compound statement\n  in which the handler is declared. This is true even if the condition\n  occurs in an inner block.\n\no UNDO: Not supported.\n\nThe condition_value for DECLARE ... HANDLER indicates the specific\ncondition or class of conditions that activates the handler:\n\no A MySQL error code (a number) or an SQLSTATE value (a 5-character\n  string literal). You should not use MySQL error code 0 or SQLSTATE\n  values that begin with \'00\', because those indicate success rather\n  than an error condition. For a list of MySQL error codes and SQLSTATE\n  values, see\n  http://dev.mysql.com/doc/refman/5.5/en/error-messages-server.html.\n\no A condition name previously specified with DECLARE ... CONDITION. A\n  condition name can be associated with a MySQL error code or SQLSTATE\n  value. See [HELP DECLARE CONDITION].\n\no SQLWARNING is shorthand for the class of SQLSTATE values that begin\n  with \'01\'.\n\no NOT FOUND is shorthand for the class of SQLSTATE values that begin\n  with \'02\'. This is relevant within the context of cursors and is used\n  to control what happens when a cursor reaches the end of a data set.\n  If no more rows are available, a No Data condition occurs with\n  SQLSTATE value \'02000\'. To detect this condition, you can set up a\n  handler for it (or for a NOT FOUND condition). For an example, see\n  http://dev.mysql.com/doc/refman/5.5/en/cursors.html. This condition\n  also occurs for SELECT ... INTO var_list statements that retrieve no\n  rows.\n\no SQLEXCEPTION is shorthand for the class of SQLSTATE values that do\n  not begin with \'00\', \'01\', or \'02\'.\n\nIf a condition occurs for which no handler has been declared, the\naction taken depends on the condition class:\n\no For SQLEXCEPTION conditions, the stored program terminates at the\n  statement that raised the condition, as if there were an EXIT\n  handler. If the program was called by another stored program, the\n  calling program handles the condition using the handler selection\n  rules applied to its own handlers.\n\no For SQLWARNING conditions, the program continues executing, as if\n  there were a CONTINUE handler.\n\no For NOT FOUND conditions, if the condition was raised normally, the\n  action is CONTINUE. If it was raised by SIGNAL or RESIGNAL, the\n  action is EXIT.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/declare-handler.html\n\n','mysql> CREATE TABLE test.t (s1 INT, PRIMARY KEY (s1));\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE handlerdemo ()\n    -> BEGIN\n    ->   DECLARE CONTINUE HANDLER FOR SQLSTATE \'23000\' SET @x2 = 1;\n    ->   SET @x = 1;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 2;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 3;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL handlerdemo()//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n    +------+\n    | @x   |\n    +------+\n    | 3    |\n    +------+\n    1 row in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.5/en/declare-handler.html'),(316,'DOUBLE',23,'DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA normal-size (double-precision) floating-point number. Permissible\nvalues are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and\n2.2250738585072014E-308 to 1.7976931348623157E+308. These are the\ntheoretical limits, based on the IEEE standard. The actual range might\nbe slightly smaller depending on your hardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits permitted by the hardware. A double-precision floating-point\nnumber is accurate to approximately 15 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(317,'TIME',23,'TIME\n\nA time. The range is \'-838:59:59\' to \'838:59:59\'. MySQL displays TIME\nvalues in \'HH:MM:SS\' format, but permits assignment of values to TIME\ncolumns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-type-overview.html'),(318,'&&',15,'Syntax:\nAND, &&\n\nLogical AND. Evaluates to 1 if all operands are nonzero and not NULL,\nto 0 if one or more operands are 0, otherwise NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html\n\n','mysql> SELECT 1 && 1;\n        -> 1\nmysql> SELECT 1 && 0;\n        -> 0\nmysql> SELECT 1 && NULL;\n        -> NULL\nmysql> SELECT 0 && NULL;\n        -> 0\nmysql> SELECT NULL && 0;\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/logical-operators.html'),(319,'X',11,'X(p)\n\nReturns the X-coordinate value for the Point object p as a\ndouble-precision number.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SELECT X(POINT(56.7, 53.34));\n+-----------------------+\n| X(POINT(56.7, 53.34)) |\n+-----------------------+\n|                  56.7 |\n+-----------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(320,'SYSTEM_USER',17,'Syntax:\nSYSTEM_USER()\n\nSYSTEM_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(321,'FOUND_ROWS',17,'Syntax:\nFOUND_ROWS()\n\nA SELECT statement may include a LIMIT clause to restrict the number of\nrows the server returns to the client. In some cases, it is desirable\nto know how many rows the statement would have returned without the\nLIMIT, but without running the statement again. To obtain this row\ncount, include a SQL_CALC_FOUND_ROWS option in the SELECT statement,\nand then invoke FOUND_ROWS() afterward:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT SQL_CALC_FOUND_ROWS * FROM tbl_name\n    -> WHERE id > 100 LIMIT 10;\nmysql> SELECT FOUND_ROWS();\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(322,'CROSSES',31,'Crosses(g1,g2)\n\nReturns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon\nor a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\no The two geometries intersect\n\no Their intersection results in a geometry that has a dimension that is\n  one less than the maximum dimension of the two given geometries\n\no Their intersection is not equal to either of the two given geometries\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(323,'TRUNCATE TABLE',40,'Syntax:\nTRUNCATE [TABLE] tbl_name\n\nTRUNCATE TABLE empties a table completely. It requires the DROP\nprivilege.\n\nLogically, TRUNCATE TABLE is similar to a DELETE statement that deletes\nall rows, or a sequence of DROP TABLE and CREATE TABLE statements. To\nachieve high performance, it bypasses the DML method of deleting data.\nThus, it cannot be rolled back, it does not cause ON DELETE triggers to\nfire, and it cannot be performed for InnoDB tables with parent-child\nforeign key relationships.\n\nAlthough TRUNCATE TABLE is similar to DELETE, it is classified as a DDL\nstatement rather than a DML statement. It differs from DELETE in the\nfollowing ways in MySQL 5.5:\n\no Truncate operations drop and re-create the table, which is much\n  faster than deleting rows one by one, particularly for large tables.\n\no Truncate operations cause an implicit commit, and so cannot be rolled\n  back.\n\no Truncation operations cannot be performed if the session holds an\n  active table lock.\n\no TRUNCATE TABLE fails for an InnoDB table if there are any FOREIGN KEY\n  constraints from other tables that reference the table. Foreign key\n  constraints between columns of the same table are permitted.\n\no Truncation operations do not return a meaningful value for the number\n  of deleted rows. The usual result is \"0 rows affected,\" which should\n  be interpreted as \"no information.\"\n\no As long as the table format file tbl_name.frm is valid, the table can\n  be re-created as an empty table with TRUNCATE TABLE, even if the data\n  or index files have become corrupted.\n\no Any AUTO_INCREMENT value is reset to its start value. This is true\n  even for MyISAM and InnoDB, which normally do not reuse sequence\n  values.\n\no When used with partitioned tables, TRUNCATE TABLE preserves the\n  partitioning; that is, the data and index files are dropped and\n  re-created, while the partition definitions (.par) file is\n  unaffected.\n\no The TRUNCATE TABLE statement does not invoke ON DELETE triggers.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/truncate-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/truncate-table.html'),(324,'BIT_XOR',16,'Syntax:\nBIT_XOR(expr)\n\nReturns the bitwise XOR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(325,'CURRENT_DATE',32,'Syntax:\nCURRENT_DATE, CURRENT_DATE()\n\nCURRENT_DATE and CURRENT_DATE() are synonyms for CURDATE().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(326,'START SLAVE',8,'Syntax:\nSTART SLAVE [thread_types]\n\nSTART SLAVE [SQL_THREAD] UNTIL\n    MASTER_LOG_FILE = \'log_name\', MASTER_LOG_POS = log_pos\n\nSTART SLAVE [SQL_THREAD] UNTIL\n    RELAY_LOG_FILE = \'log_name\', RELAY_LOG_POS = log_pos\n\nthread_types:\n    [thread_type [, thread_type] ... ]\n\nthread_type: IO_THREAD | SQL_THREAD\n\nSTART SLAVE with no thread_type options starts both of the slave\nthreads. The I/O thread reads events from the master server and stores\nthem in the relay log. The SQL thread reads events from the relay log\nand executes them. START SLAVE requires the SUPER privilege.\n\nIf START SLAVE succeeds in starting the slave threads, it returns\nwithout any error. However, even in that case, it might be that the\nslave threads start and then later stop (for example, because they do\nnot manage to connect to the master or read its binary log, or some\nother problem). START SLAVE does not warn you about this. You must\ncheck the slave\'s error log for error messages generated by the slave\nthreads, or check that they are running satisfactorily with SHOW SLAVE\nSTATUS.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/start-slave.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/start-slave.html'),(327,'AREA',2,'Area(poly)\n\nReturns as a double-precision number the area of the Polygon value\npoly, as measured in its spatial reference system.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @poly = \'Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))\';\nmysql> SELECT Area(GeomFromText(@poly));\n+---------------------------+\n| Area(GeomFromText(@poly)) |\n+---------------------------+\n|                         4 |\n+---------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(328,'FLUSH',27,'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL]\n    flush_option [, flush_option] ...\n\nThe FLUSH statement has several variant forms that clear or reload\nvarious internal caches, flush tables, or acquire locks. To execute\nFLUSH, you must have the RELOAD privilege. Specific flush options might\nrequire additional privileges, as described later.\n\nBy default, the server writes FLUSH statements to the binary log so\nthat they replicate to replication slaves. To suppress logging, specify\nthe optional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*: FLUSH LOGS, FLUSH MASTER, FLUSH SLAVE, and FLUSH TABLES WITH\nREAD LOCK (with or without a table list) are not written to the binary\nlog in any case because they would cause problems if replicated to a\nslave.\n\nSending a SIGHUP signal to the server causes several flush operations\nto occur that are similar to various forms of the FLUSH statement. See\nhttp://dev.mysql.com/doc/refman/5.5/en/server-signal-response.html.\n\nThe FLUSH statement causes an implicit commit. See\nhttp://dev.mysql.com/doc/refman/5.5/en/implicit-commit.html.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using the RESET statement with replication.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/flush.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/flush.html'),(329,'BEGIN END',24,'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\nBEGIN ... END syntax is used for writing compound statements, which can\nappear within stored programs (stored procedures and functions,\ntriggers, and events). A compound statement can contain multiple\nstatements, enclosed by the BEGIN and END keywords. statement_list\nrepresents a list of one or more statements, each terminated by a\nsemicolon (;) statement delimiter. The statement_list itself is\noptional, so the empty compound statement (BEGIN END) is legal.\n\nBEGIN ... END blocks can be nested.\n\nUse of multiple statements requires that a client is able to send\nstatement strings containing the ; statement delimiter. In the mysql\ncommand-line client, this is handled with the delimiter command.\nChanging the ; end-of-statement delimiter (for example, to //) permit ;\nto be used in a program body. For an example, see\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-programs-defining.html.\n\nA BEGIN ... END block can be labeled. See [HELP labels].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/begin-end.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/begin-end.html'),(330,'SHOW PROCEDURE STATUS',27,'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-procedure-status.html\n\n','mysql> SHOW PROCEDURE STATUS LIKE \'sp1\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2004-08-03 15:29:37\n             Created: 2004-08-03 15:29:37\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n','http://dev.mysql.com/doc/refman/5.5/en/show-procedure-status.html'),(331,'SHOW WARNINGS',27,'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS shows information about the conditions (errors, warnings,\nand notes) that resulted from the last statement in the current session\nthat generated messages. It shows nothing if the last statement used a\ntable and generated no messages. (That is, a statement that uses a\ntable but generates no messages clears the message list.) Statements\nthat do not use tables and do not generate messages have no effect on\nthe message list.\n\nWarnings are generated for DML statements such as INSERT, UPDATE, and\nLOAD DATA INFILE as well as DDL statements such as CREATE TABLE and\nALTER TABLE.\n\nSHOW WARNINGS is also used following EXPLAIN EXTENDED, to display the\nextra information generated by EXPLAIN when the EXTENDED keyword is\nused. See http://dev.mysql.com/doc/refman/5.5/en/explain-extended.html.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttp://dev.mysql.com/doc/refman/5.5/en/select.html.\n\nA related statement, SHOW ERRORS, shows only the error conditions (it\nexcludes warnings and notes). See [HELP SHOW ERRORS].\n\nThe SHOW COUNT(*) WARNINGS statement displays the total number of\nerrors, warnings, and notes. You can also retrieve this number from the\nwarning_count system variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-warnings.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-warnings.html'),(332,'DROP USER',10,'Syntax:\nDROP USER user [, user] ...\n\nThe DROP USER statement removes one or more MySQL accounts and their\nprivileges. It removes privilege rows for the account from all grant\ntables. To use this statement, you must have the global CREATE USER\nprivilege or the DELETE privilege for the mysql database. Each account\nname uses the format described in\nhttp://dev.mysql.com/doc/refman/5.5/en/account-names.html. For example:\n\nDROP USER \'jeffrey\'@\'localhost\';\n\nIf you specify only the user name part of the account name, a host name\npart of \'%\' is used.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-user.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-user.html'),(333,'STDDEV_POP',16,'Syntax:\nSTDDEV_POP(expr)\n\nReturns the population standard deviation of expr (the square root of\nVAR_POP()). You can also use STD() or STDDEV(), which are equivalent\nbut not standard SQL.\n\nSTDDEV_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(334,'SHOW CHARACTER SET',27,'Syntax:\nSHOW CHARACTER SET\n    [LIKE \'pattern\' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html. For example:\n\nmysql> SHOW CHARACTER SET LIKE \'latin%\';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-character-set.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-character-set.html'),(335,'SUBSTRING',38,'Syntax:\nSUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len),\nSUBSTRING(str FROM pos FOR len)\n\nThe forms without a len argument return a substring from string str\nstarting at position pos. The forms with a len argument return a\nsubstring len characters long from string str, starting at position\npos. The forms that use FROM are standard SQL syntax. It is also\npossible to use a negative value for pos. In this case, the beginning\nof the substring is pos characters from the end of the string, rather\nthan the beginning. A negative value may be used for pos in any of the\nforms of this function.\n\nFor all forms of SUBSTRING(), the position of the first character in\nthe string from which the substring is to be extracted is reckoned as\n1.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT SUBSTRING(\'Quadratically\',5);\n        -> \'ratically\'\nmysql> SELECT SUBSTRING(\'foobarbar\' FROM 4);\n        -> \'barbar\'\nmysql> SELECT SUBSTRING(\'Quadratically\',5,6);\n        -> \'ratica\'\nmysql> SELECT SUBSTRING(\'Sakila\', -3);\n        -> \'ila\'\nmysql> SELECT SUBSTRING(\'Sakila\', -5, 3);\n        -> \'aki\'\nmysql> SELECT SUBSTRING(\'Sakila\' FROM -4 FOR 2);\n        -> \'ki\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(336,'ISEMPTY',37,'IsEmpty(g)\n\nThis function is a placeholder that returns 0 for any valid geometry\nvalue, 1 for any invalid geometry value or NULL.\n\nMySQL does not support GIS EMPTY values such as POINT EMPTY.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(337,'SHOW FUNCTION STATUS',27,'Syntax:\nSHOW FUNCTION STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is similar to SHOW PROCEDURE STATUS but for stored\nfunctions. See [HELP SHOW PROCEDURE STATUS].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-function-status.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-function-status.html'),(338,'LTRIM',38,'Syntax:\nLTRIM(str)\n\nReturns the string str with leading space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT LTRIM(\'  barbar\');\n        -> \'barbar\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(339,'INTERSECTS',31,'Intersects(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially intersects g2.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(340,'CALL',28,'Syntax:\nCALL sp_name([parameter[,...]])\nCALL sp_name[()]\n\nThe CALL statement invokes a stored procedure that was defined\npreviously with CREATE PROCEDURE.\n\nStored procedures that take no arguments can be invoked without\nparentheses. That is, CALL p() and CALL p are equivalent.\n\nCALL can pass back values to its caller using parameters that are\ndeclared as OUT or INOUT parameters. When the procedure returns, a\nclient program can also obtain the number of rows affected for the\nfinal statement executed within the routine: At the SQL level, call the\nROW_COUNT() function; from the C API, call the mysql_affected_rows()\nfunction.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/call.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/call.html'),(341,'MBRDISJOINT',6,'MBRDisjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are disjoint (do not intersect).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(342,'VALUES',14,'Syntax:\nVALUES(col_name)\n\nIn an INSERT ... ON DUPLICATE KEY UPDATE statement, you can use the\nVALUES(col_name) function in the UPDATE clause to refer to column\nvalues from the INSERT portion of the statement. In other words,\nVALUES(col_name) in the UPDATE clause refers to the value of col_name\nthat would be inserted, had no duplicate-key conflict occurred. This\nfunction is especially useful in multiple-row inserts. The VALUES()\nfunction is meaningful only in the ON DUPLICATE KEY UPDATE clause of\nINSERT statements and returns NULL otherwise. See\nhttp://dev.mysql.com/doc/refman/5.5/en/insert-on-duplicate.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','mysql> INSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)\n    -> ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);\n','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(343,'SUBSTRING_INDEX',38,'Syntax:\nSUBSTRING_INDEX(str,delim,count)\n\nReturns the substring from string str before count occurrences of the\ndelimiter delim. If count is positive, everything to the left of the\nfinal delimiter (counting from the left) is returned. If count is\nnegative, everything to the right of the final delimiter (counting from\nthe right) is returned. SUBSTRING_INDEX() performs a case-sensitive\nmatch when searching for delim.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT SUBSTRING_INDEX(\'www.mysql.com\', \'.\', 2);\n        -> \'www.mysql\'\nmysql> SELECT SUBSTRING_INDEX(\'www.mysql.com\', \'.\', -2);\n        -> \'mysql.com\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(344,'ENCODE',12,'Syntax:\nENCODE(str,pass_str)\n\nEncrypt str using pass_str as the password. To decrypt the result, use\nDECODE().\n\nThe result is a binary string of the same length as str.\n\nThe strength of the encryption is based on how good the random\ngenerator is. It should suffice for short strings.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(345,'LOOP',24,'Syntax:\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\nLOOP implements a simple loop construct, enabling repeated execution of\nthe statement list, which consists of one or more statements, each\nterminated by a semicolon (;) statement delimiter. The statements\nwithin the loop are repeated until the loop is terminated. Usually,\nthis is accomplished with a LEAVE statement. Within a stored function,\nRETURN can also be used, which exits the function entirely.\n\nNeglecting to include a loop-termination statement results in an\ninfinite loop.\n\nA LOOP statement can be labeled. For the rules regarding label use, see\n[HELP labels].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/loop.html\n\n','CREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN\n      ITERATE label1;\n    END IF;\n    LEAVE label1;\n  END LOOP label1;\n  SET @x = p1;\nEND;\n','http://dev.mysql.com/doc/refman/5.5/en/loop.html'),(346,'TRUNCATE',4,'Syntax:\nTRUNCATE(X,D)\n\nReturns the number X, truncated to D decimal places. If D is 0, the\nresult has no decimal point or fractional part. D can be negative to\ncause D digits left of the decimal point of the value X to become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT TRUNCATE(1.223,1);\n        -> 1.2\nmysql> SELECT TRUNCATE(1.999,1);\n        -> 1.9\nmysql> SELECT TRUNCATE(1.999,0);\n        -> 1\nmysql> SELECT TRUNCATE(-1.999,1);\n        -> -1.9\nmysql> SELECT TRUNCATE(122,-2);\n       -> 100\nmysql> SELECT TRUNCATE(10.28*100,0);\n       -> 1028\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(347,'TIMESTAMPADD',32,'Syntax:\nTIMESTAMPADD(unit,interval,datetime_expr)\n\nAdds the integer expression interval to the date or datetime expression\ndatetime_expr. The unit for interval is given by the unit argument,\nwhich should be one of the following values: MICROSECOND\n(microseconds), SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or\nYEAR.\n\nIt is possible to use FRAC_SECOND in place of MICROSECOND, but\nFRAC_SECOND is deprecated. FRAC_SECOND was removed in MySQL 5.5.3.\n\nThe unit value may be specified using one of keywords as shown, or with\na prefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TIMESTAMPADD(MINUTE,1,\'2003-01-02\');\n        -> \'2003-01-02 00:01:00\'\nmysql> SELECT TIMESTAMPADD(WEEK,1,\'2003-01-02\');\n        -> \'2003-01-09\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(348,'SHOW',27,'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW AUTHORS\nSHOW {BINARY | MASTER} LOGS\nSHOW BINLOG EVENTS [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\nSHOW CHARACTER SET [like_or_where]\nSHOW COLLATION [like_or_where]\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CONTRIBUTORS\nSHOW CREATE DATABASE db_name\nSHOW CREATE EVENT event_name\nSHOW CREATE FUNCTION func_name\nSHOW CREATE PROCEDURE proc_name\nSHOW CREATE TABLE tbl_name\nSHOW CREATE TRIGGER trigger_name\nSHOW CREATE VIEW view_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {STATUS | MUTEX}\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW EVENTS\nSHOW FUNCTION CODE func_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW MASTER STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PLUGINS\nSHOW PROCEDURE CODE proc_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]\nSHOW PROFILES\nSHOW SLAVE HOSTS\nSHOW SLAVE STATUS\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW [FULL] TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where:\n    LIKE \'pattern\'\n  | WHERE expr\n\nIf the syntax for a given SHOW statement includes a LIKE \'pattern\'\npart, \'pattern\' is a string that can contain the SQL \"%\" and \"_\"\nwildcard characters. The pattern is useful for restricting statement\noutput to matching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show.html'),(349,'GREATEST',19,'Syntax:\nGREATEST(value1,value2,...)\n\nWith two or more arguments, returns the largest (maximum-valued)\nargument. The arguments are compared using the same rules as for\nLEAST().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT GREATEST(2,0);\n        -> 2\nmysql> SELECT GREATEST(34.0,3.0,5.0,767.0);\n        -> 767.0\nmysql> SELECT GREATEST(\'B\',\'A\',\'C\');\n        -> \'C\'\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(350,'SHOW VARIABLES',27,'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables. This\ninformation also can be obtained using the mysqladmin variables\ncommand. The LIKE clause, if present, indicates which variable names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html. This\nstatement does not require any privilege. It requires only the ability\nto connect to the server.\n\nWith the GLOBAL modifier, SHOW VARIABLES displays the values that are\nused for new connections to MySQL. As of MySQL 5.5.3, if a variable has\nno global value, no value is displayed. Before 5.5.3, the session value\nis displayed. With SESSION, SHOW VARIABLES displays the values that are\nin effect for the current connection. If no modifier is present, the\ndefault is SESSION. LOCAL is a synonym for SESSION.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the \"%\"\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because \"_\" is a wildcard that matches\nany single character, you should escape it as \"\\_\" to match it\nliterally. In practice, this is rarely necessary.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-variables.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-variables.html'),(351,'BINLOG',27,'Syntax:\nBINLOG \'str\'\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See http://dev.mysql.com/doc/refman/5.5/en/mysqlbinlog.html.)\nThe \'str\' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event. This\nstatement requires the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/binlog.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/binlog.html'),(352,'BIT_AND',16,'Syntax:\nBIT_AND(expr)\n\nReturns the bitwise AND of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(353,'SECOND',32,'Syntax:\nSECOND(time)\n\nReturns the second for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT SECOND(\'10:05:03\');\n        -> 3\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(354,'ATAN2',4,'Syntax:\nATAN(Y,X), ATAN2(Y,X)\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both\narguments are used to determine the quadrant of the result.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT ATAN(-2,2);\n        -> -0.78539816339745\nmysql> SELECT ATAN2(PI(),0);\n        -> 1.5707963267949\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(355,'MBRCONTAINS',6,'MBRContains(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\ncontains the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRWithin().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','mysql> SET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nmysql> SET @g2 = GeomFromText(\'Point(1 1)\');\nmysql> SELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);\n----------------------+----------------------+\n| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |\n+----------------------+----------------------+\n|                    1 |                    0 |\n+----------------------+----------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(356,'HOUR',32,'Syntax:\nHOUR(time)\n\nReturns the hour for time. The range of the return value is 0 to 23 for\ntime-of-day values. However, the range of TIME values actually is much\nlarger, so HOUR can return values greater than 23.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT HOUR(\'10:05:03\');\n        -> 10\nmysql> SELECT HOUR(\'272:59:59\');\n        -> 272\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(357,'SELECT',28,'Syntax:\nSELECT\n    [ALL | DISTINCT | DISTINCTROW ]\n      [HIGH_PRIORITY]\n      [STRAIGHT_JOIN]\n      [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]\n      [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]\n    select_expr [, select_expr ...]\n    [FROM table_references\n    [WHERE where_condition]\n    [GROUP BY {col_name | expr | position}\n      [ASC | DESC], ... [WITH ROLLUP]]\n    [HAVING where_condition]\n    [ORDER BY {col_name | expr | position}\n      [ASC | DESC], ...]\n    [LIMIT {[offset,] row_count | row_count OFFSET offset}]\n    [PROCEDURE procedure_name(argument_list)]\n    [INTO OUTFILE \'file_name\'\n        [CHARACTER SET charset_name]\n        export_options\n      | INTO DUMPFILE \'file_name\'\n      | INTO var_name [, var_name]]\n    [FOR UPDATE | LOCK IN SHARE MODE]]\n\nSELECT is used to retrieve rows selected from one or more tables, and\ncan include UNION statements and subqueries. See [HELP UNION], and\nhttp://dev.mysql.com/doc/refman/5.5/en/subqueries.html.\n\nThe most commonly used clauses of SELECT statements are these:\n\no Each select_expr indicates a column that you want to retrieve. There\n  must be at least one select_expr.\n\no table_references indicates the table or tables from which to retrieve\n  rows. Its syntax is described in [HELP JOIN].\n\no The WHERE clause, if given, indicates the condition or conditions\n  that rows must satisfy to be selected. where_condition is an\n  expression that evaluates to true for each row to be selected. The\n  statement selects all rows if there is no WHERE clause.\n\n  In the WHERE expression, you can use any of the functions and\n  operators that MySQL supports, except for aggregate (summary)\n  functions. See\n  http://dev.mysql.com/doc/refman/5.5/en/expressions.html, and\n  http://dev.mysql.com/doc/refman/5.5/en/functions.html.\n\nSELECT can also be used to retrieve rows computed without reference to\nany table.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/select.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/select.html'),(358,'COT',4,'Syntax:\nCOT(X)\n\nReturns the cotangent of X.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT COT(12);\n        -> -1.5726734063977\nmysql> SELECT COT(0);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(359,'SHOW CREATE EVENT',27,'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. It requires the EVENT privilege for the database from\nwhich the event is to be shown. For example (using the same event\ne_daily defined and then altered in [HELP SHOW EVENTS]):\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-create-event.html\n\n','mysql> SHOW CREATE EVENT test.e_daily\\G\n*************************** 1. row ***************************\n               Event: e_daily\n            sql_mode:\n           time_zone: SYSTEM\n        Create Event: CREATE EVENT `e_daily`\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ON COMPLETION NOT PRESERVE\n                        ENABLE\n                        COMMENT \'Saves total number of sessions then\n                                clears the table each day\'\n                        DO BEGIN\n                          INSERT INTO site_activity.totals (time, total)\n                            SELECT CURRENT_TIMESTAMP, COUNT(*)\n                            FROM site_activity.sessions;\n                          DELETE FROM site_activity.sessions;\n                        END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n','http://dev.mysql.com/doc/refman/5.5/en/show-create-event.html'),(360,'LOAD_FILE',38,'Syntax:\nLOAD_FILE(file_name)\n\nReads the file and returns the file contents as a string. To use this\nfunction, the file must be located on the server host, you must specify\nthe full path name to the file, and you must have the FILE privilege.\nThe file must be readable by all and its size less than\nmax_allowed_packet bytes. If the secure_file_priv system variable is\nset to a nonempty directory name, the file to be loaded must be located\nin that directory.\n\nIf the file does not exist or cannot be read because one of the\npreceding conditions is not satisfied, the function returns NULL.\n\nThe character_set_filesystem system variable controls interpretation of\nfile names that are given as literal strings.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> UPDATE t\n            SET blob_col=LOAD_FILE(\'/tmp/picture\')\n            WHERE id=1;\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(361,'POINTFROMTEXT',3,'PointFromText(wkt[,srid])\n\nConstructs a POINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(362,'GROUP_CONCAT',16,'Syntax:\nGROUP_CONCAT(expr)\n\nThis function returns a string result with the concatenated non-NULL\nvalues from a group. It returns NULL if there are no non-NULL values.\nThe full syntax is as follows:\n\nGROUP_CONCAT([DISTINCT] expr [,expr ...]\n             [ORDER BY {unsigned_integer | col_name | expr}\n                 [ASC | DESC] [,col_name ...]]\n             [SEPARATOR str_val])\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','mysql> SELECT student_name,\n    ->     GROUP_CONCAT(test_score)\n    ->     FROM student\n    ->     GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(363,'DATE_FORMAT',32,'Syntax:\nDATE_FORMAT(date,format)\n\nFormats the date value according to the format string.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT DATE_FORMAT(\'2009-10-04 22:23:00\', \'%W %M %Y\');\n        -> \'Sunday October 2009\'\nmysql> SELECT DATE_FORMAT(\'2007-10-04 22:23:00\', \'%H:%i:%s\');\n        -> \'22:23:00\'\nmysql> SELECT DATE_FORMAT(\'1900-10-04 22:23:00\',\n    ->                 \'%D %y %a %d %m %b %j\');\n        -> \'4th 00 Thu 04 10 Oct 277\'\nmysql> SELECT DATE_FORMAT(\'1997-10-04 22:23:00\',\n    ->                 \'%H %k %I %r %T %S %w\');\n        -> \'22 22 10 10:23:00 PM 22:23:00 00 6\'\nmysql> SELECT DATE_FORMAT(\'1999-01-01\', \'%X %V\');\n        -> \'1998 52\'\nmysql> SELECT DATE_FORMAT(\'2006-06-00\', \'%d\');\n        -> \'00\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(364,'BENCHMARK',17,'Syntax:\nBENCHMARK(count,expr)\n\nThe BENCHMARK() function executes the expression expr repeatedly count\ntimes. It may be used to time how quickly MySQL processes the\nexpression. The result value is always 0. The intended use is from\nwithin the mysql client, which reports query execution times:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT BENCHMARK(1000000,ENCODE(\'hello\',\'goodbye\'));\n+----------------------------------------------+\n| BENCHMARK(1000000,ENCODE(\'hello\',\'goodbye\')) |\n+----------------------------------------------+\n|                                            0 |\n+----------------------------------------------+\n1 row in set (4.74 sec)\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(365,'YEAR',32,'Syntax:\nYEAR(date)\n\nReturns the year for date, in the range 1000 to 9999, or 0 for the\n\"zero\" date.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT YEAR(\'1987-01-01\');\n        -> 1987\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(366,'SHOW ENGINE',27,'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine.\nThe following statements currently are supported:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE {NDB | NDBCLUSTER} STATUS\nSHOW ENGINE PERFORMANCE_SCHEMA STATUS\n\nSHOW ENGINE INNODB STATUS displays extensive information from the\nstandard InnoDB Monitor about the state of the InnoDB storage engine.\nFor information about the standard monitor and other InnoDB Monitors\nthat provide information about InnoDB processing, see\nhttp://dev.mysql.com/doc/refman/5.5/en/innodb-monitors.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex statistics. The\nstatement displays the following fields:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  The source file where the mutex is implemented, and the line number\n  in the file where the mutex is created. The line number may change\n  depending on your version of MySQL.\n\no Status\n\n  The mutex status. This field displays several values if UNIV_DEBUG\n  was defined at MySQL compilation time (for example, in include/univ.i\n  in the InnoDB part of the MySQL source tree). If UNIV_DEBUG was not\n  defined, the statement displays only the os_waits value. In the\n  latter case (without UNIV_DEBUG), the information on which the output\n  is based is insufficient to distinguish regular mutexes and mutexes\n  that protect rw-locks (which permit multiple readers or a single\n  writer). Consequently, the output may appear to contain multiple rows\n  for the same mutex.\n\n  o count indicates how many times the mutex was requested.\n\n  o spin_waits indicates how many times the spinlock had to run.\n\n  o spin_rounds indicates the number of spinlock rounds. (spin_rounds\n    divided by spin_waits provides the average round count.)\n\n  o os_waits indicates the number of operating system waits. This\n    occurs when the spinlock did not work (the mutex was not locked\n    during the spinlock and it was necessary to yield to the operating\n    system and wait).\n\n  o os_yields indicates the number of times a the thread trying to lock\n    a mutex gave up its timeslice and yielded to the operating system\n    (on the presumption that permitting other threads to run will free\n    the mutex so that it can be locked).\n\n  o os_wait_times indicates the amount of time (in ms) spent in\n    operating system waits, if the timed_mutexes system variable is 1\n    (ON). If timed_mutexes is 0 (OFF), timing is disabled, so\n    os_wait_times is 0. timed_mutexes is off by default.\n\nInformation from this statement can be used to diagnose system\nproblems. For example, large values of spin_waits and spin_rounds may\nindicate scalability problems.\n\nUse SHOW ENGINE PERFORMANCE_SCHEMA STATUS to inspect the internal\noperation of the Performance Schema code:\n\nmysql> SHOW ENGINE PERFORMANCE_SCHEMA STATUS\\G\n...\n*************************** 3. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.row_size\nStatus: 76\n*************************** 4. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.row_count\nStatus: 10000\n*************************** 5. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.memory\nStatus: 760000\n...\n*************************** 57. row ***************************\n  Type: performance_schema\n  Name: performance_schema.memory\nStatus: 26459600\n...\n\nThis statement is intended to help the DBA understand the effects that\ndifferent Performance Schema options have on memory requirements.\n\nName values consist of two parts, which name an internal buffer and a\nbuffer attribute, respectively. Interpret buffer names as follows:\n\no An internal buffer that is not exposed as a table is named within\n  parentheses. Examples: (pfs_cond_class).row_size,\n  (pfs_mutex_class).memory.\n\no An internal buffer that is exposed as a table in the\n  performance_schema database is named after the table, without\n  parentheses. Examples: events_waits_history.row_size,\n  mutex_instances.row_count.\n\no A value that applies to the Performance Schema as a whole begins with\n  performance_schema. Example: performance_schema.memory.\n\nBuffer attributes have these meanings:\n\no row_size is the size of the internal record used by the\n  implementation, such as the size of a row in a table. row_size values\n  cannot be changed.\n\no row_count is the number of internal records, such as the number of\n  rows in a table. row_count values can be changed using Performance\n  Schema configuration options.\n\no For a table, tbl_name.memory is the product of row_size and\n  row_count. For the Performance Schema as a whole,\n  performance_schema.memory is the sum of all the memory used (the sum\n  of all other memory values).\n\nIn some cases, there is a direct relationship between a Performance\nSchema configuration parameter and a SHOW ENGINE value. For example,\nevents_waits_history_long.row_count corresponds to\nperformance_schema_events_waits_history_long_size. In other cases, the\nrelationship is more complex. For example,\nevents_waits_history.row_count corresponds to\nperformance_schema_events_waits_history_size (the number of rows per\nthread) multiplied by performance_schema_max_thread_instances ( the\nnumber of threads).\n\nIf the server has the NDBCLUSTER storage engine enabled, SHOW ENGINE\nNDB STATUS displays cluster status information such as the number of\nconnected data nodes, the cluster connectstring, and cluster binlog\nepochs, as well as counts of various Cluster API objects created by the\nMySQL Server when connected to the cluster. Sample output from this\nstatement is shown here:\n\nmysql> SHOW ENGINE NDB STATUS;\n+------------+-----------------------+--------------------------------------------------+\n| Type       | Name                  | Status                                           |\n+------------+-----------------------+--------------------------------------------------+\n| ndbcluster | connection            | cluster_node_id=7,\n  connected_host=192.168.0.103, connected_port=1186, number_of_data_nodes=4,\n  number_of_ready_data_nodes=3, connect_count=0                                         |\n| ndbcluster | NdbTransaction        | created=6, free=0, sizeof=212                    |\n| ndbcluster | NdbOperation          | created=8, free=8, sizeof=660                    |\n| ndbcluster | NdbIndexScanOperation | created=1, free=1, sizeof=744                    |\n| ndbcluster | NdbIndexOperation     | created=0, free=0, sizeof=664                    |\n| ndbcluster | NdbRecAttr            | created=1285, free=1285, sizeof=60               |\n| ndbcluster | NdbApiSignal          | created=16, free=16, sizeof=136                  |\n| ndbcluster | NdbLabel              | created=0, free=0, sizeof=196                    |\n| ndbcluster | NdbBranch             | created=0, free=0, sizeof=24                     |\n| ndbcluster | NdbSubroutine         | created=0, free=0, sizeof=68                     |\n| ndbcluster | NdbCall               | created=0, free=0, sizeof=16                     |\n| ndbcluster | NdbBlob               | created=1, free=1, sizeof=264                    |\n| ndbcluster | NdbReceiver           | created=4, free=0, sizeof=68                     |\n| ndbcluster | binlog                | latest_epoch=155467, latest_trans_epoch=148126,\n  latest_received_binlog_epoch=0, latest_handled_binlog_epoch=0,\n  latest_applied_binlog_epoch=0                                                         |\n+------------+-----------------------+--------------------------------------------------+\n\nThe rows with connection and binlog in the Name column were added to\nthe output of this statement in MySQL 5.1. The Status column in each of\nthese rows provides information about the MySQL server\'s connection to\nthe cluster and about the cluster binary log\'s status, respectively.\nThe Status information is in the form of comma-delimited set of\nname/value pairs.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-engine.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-engine.html'),(367,'NAME_CONST',14,'Syntax:\nNAME_CONST(name,value)\n\nReturns the given value. When used to produce a result set column,\nNAME_CONST() causes the column to have the given name. The arguments\nshould be constants.\n\nmysql> SELECT NAME_CONST(\'myname\', 14);\n+--------+\n| myname |\n+--------+\n|     14 |\n+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(368,'RELEASE_LOCK',14,'Syntax:\nRELEASE_LOCK(str)\n\nReleases the lock named by the string str that was obtained with\nGET_LOCK(). Returns 1 if the lock was released, 0 if the lock was not\nestablished by this thread (in which case the lock is not released),\nand NULL if the named lock did not exist. The lock does not exist if it\nwas never obtained by a call to GET_LOCK() or if it has previously been\nreleased.\n\nThe DO statement is convenient to use with RELEASE_LOCK(). See [HELP\nDO].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(369,'IS NULL',19,'Syntax:\nIS NULL\n\nTests whether a value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;\n        -> 0, 0, 1\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(370,'CONVERT_TZ',32,'Syntax:\nCONVERT_TZ(dt,from_tz,to_tz)\n\nCONVERT_TZ() converts a datetime value dt from the time zone given by\nfrom_tz to the time zone given by to_tz and returns the resulting\nvalue. Time zones are specified as described in\nhttp://dev.mysql.com/doc/refman/5.5/en/time-zone-support.html. This\nfunction returns NULL if the arguments are invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT CONVERT_TZ(\'2004-01-01 12:00:00\',\'GMT\',\'MET\');\n        -> \'2004-01-01 13:00:00\'\nmysql> SELECT CONVERT_TZ(\'2004-01-01 12:00:00\',\'+00:00\',\'+10:00\');\n        -> \'2004-01-01 22:00:00\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(371,'TIME_TO_SEC',32,'Syntax:\nTIME_TO_SEC(time)\n\nReturns the time argument, converted to seconds.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TIME_TO_SEC(\'22:23:00\');\n        -> 80580\nmysql> SELECT TIME_TO_SEC(\'00:39:38\');\n        -> 2378\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(372,'WEEKDAY',32,'Syntax:\nWEEKDAY(date)\n\nReturns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 =\nSunday).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT WEEKDAY(\'2008-02-03 22:23:00\');\n        -> 6\nmysql> SELECT WEEKDAY(\'2007-11-06\');\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(373,'EXPORT_SET',38,'Syntax:\nEXPORT_SET(bits,on,off[,separator[,number_of_bits]])\n\nReturns a string such that for every bit set in the value bits, you get\nan on string and for every bit not set in the value, you get an off\nstring. Bits in bits are examined from right to left (from low-order to\nhigh-order bits). Strings are added to the result from left to right,\nseparated by the separator string (the default being the comma\ncharacter \",\"). The number of bits examined is given by number_of_bits,\nwhich has a default of 64 if not specified. number_of_bits is silently\nclipped to 64 if larger than 64. It is treated as an unsigned integer,\nso a value of -1 is effectively the same as 64.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT EXPORT_SET(5,\'Y\',\'N\',\',\',4);\n        -> \'Y,N,Y,N\'\nmysql> SELECT EXPORT_SET(6,\'1\',\'0\',\',\',10);\n        -> \'0,1,1,0,0,0,0,0,0,0\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(374,'ALTER SERVER',40,'Syntax:\nALTER SERVER  server_name\n    OPTIONS (option [, option] ...)\n\nAlters the server information for server_name, adjusting any of the\noptions permitted in the CREATE SERVER statement. The corresponding\nfields in the mysql.servers table are updated accordingly. This\nstatement requires the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-server.html\n\n','ALTER SERVER s OPTIONS (USER \'sally\');\n','http://dev.mysql.com/doc/refman/5.5/en/alter-server.html'),(375,'RESIGNAL',24,'Syntax:\nRESIGNAL [condition_value]\n    [SET signal_information_item\n    [, signal_information_item] ...]\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n\nsignal_information_item:\n    condition_information_item_name = simple_value_specification\n\ncondition_information_item_name:\n    CLASS_ORIGIN\n  | SUBCLASS_ORIGIN\n  | MESSAGE_TEXT\n  | MYSQL_ERRNO\n  | CONSTRAINT_CATALOG\n  | CONSTRAINT_SCHEMA\n  | CONSTRAINT_NAME\n  | CATALOG_NAME\n  | SCHEMA_NAME\n  | TABLE_NAME\n  | COLUMN_NAME\n  | CURSOR_NAME\n\ncondition_name, simple_value_specification:\n    (see following discussion)\n\nRESIGNAL passes on the error condition information that is available\nduring execution of a condition handler within a compound statement\ninside a stored procedure or function, trigger, or event. RESIGNAL may\nchange some or all information before passing it on. RESIGNAL is\nrelated to SIGNAL, but instead of originating a condition as SIGNAL\ndoes, RESIGNAL relays existing condition information, possibly after\nmodifying it.\n\nRESIGNAL makes it possible to both handle an error and return the error\ninformation. Otherwise, by executing an SQL statement within the\nhandler, information that caused the handler\'s activation is destroyed.\nRESIGNAL also can make some procedures shorter if a given handler can\nhandle part of a situation, then pass the condition \"up the line\" to\nanother handler.\n\nNo special privileges are required to execute the RESIGNAL statement.\n\nAll forms of RESIGNAL require that the current context be a condition\nhandler. Otherwise, RESIGNAL is illegal and a RESIGNAL when handler not\nactive error occurs.\n\nFor condition_value and signal_information_item, the definitions and\nrules are the same for RESIGNAL as for SIGNAL. For example, the\ncondition_value can be an SQLSTATE value, and the value can indicate\nerrors, warnings, or \"not found.\" For additional information, see [HELP\nSIGNAL].\n\nThe RESIGNAL statement takes condition_value and SET clauses, both of\nwhich are optional. This leads to several possible uses:\n\no RESIGNAL alone:\n\nRESIGNAL;\n\no RESIGNAL with new signal information:\n\nRESIGNAL SET signal_information_item [, signal_information_item] ...;\n\no RESIGNAL with a condition value and possibly new signal information:\n\nRESIGNAL condition_value\n    [SET signal_information_item [, signal_information_item] ...];\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/resignal.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/resignal.html'),(376,'TIME FUNCTION',32,'Syntax:\nTIME(expr)\n\nExtracts the time part of the time or datetime expression expr and\nreturns it as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT TIME(\'2003-12-31 01:02:03\');\n        -> \'01:02:03\'\nmysql> SELECT TIME(\'2003-12-31 01:02:03.000123\');\n        -> \'01:02:03.000123\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(377,'DATE_ADD',32,'Syntax:\nDATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)\n\nThese functions perform date arithmetic. The date argument specifies\nthe starting date or datetime value. expr is an expression specifying\nthe interval value to be added or subtracted from the starting date.\nexpr is a string; it may start with a \"-\" for negative intervals. unit\nis a keyword indicating the units in which the expression should be\ninterpreted.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT \'2008-12-31 23:59:59\' + INTERVAL 1 SECOND;\n        -> \'2009-01-01 00:00:00\'\nmysql> SELECT INTERVAL 1 DAY + \'2008-12-31\';\n        -> \'2009-01-01\'\nmysql> SELECT \'2005-01-01\' - INTERVAL 1 SECOND;\n        -> \'2004-12-31 23:59:59\'\nmysql> SELECT DATE_ADD(\'2000-12-31 23:59:59\',\n    ->                 INTERVAL 1 SECOND);\n        -> \'2001-01-01 00:00:00\'\nmysql> SELECT DATE_ADD(\'2010-12-31 23:59:59\',\n    ->                 INTERVAL 1 DAY);\n        -> \'2011-01-01 23:59:59\'\nmysql> SELECT DATE_ADD(\'2100-12-31 23:59:59\',\n    ->                 INTERVAL \'1:1\' MINUTE_SECOND);\n        -> \'2101-01-01 00:01:00\'\nmysql> SELECT DATE_SUB(\'2005-01-01 00:00:00\',\n    ->                 INTERVAL \'1 1:1:1\' DAY_SECOND);\n        -> \'2004-12-30 22:58:59\'\nmysql> SELECT DATE_ADD(\'1900-01-01 00:00:00\',\n    ->                 INTERVAL \'-1 10\' DAY_HOUR);\n        -> \'1899-12-30 14:00:00\'\nmysql> SELECT DATE_SUB(\'1998-01-02\', INTERVAL 31 DAY);\n        -> \'1997-12-02\'\nmysql> SELECT DATE_ADD(\'1992-12-31 23:59:59.000002\',\n    ->            INTERVAL \'1.999999\' SECOND_MICROSECOND);\n        -> \'1993-01-01 00:00:01.000001\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(378,'CAST',38,'Syntax:\nCAST(expr AS type)\n\nThe CAST() function takes an expression of any type and produces a\nresult value of a specified type, similar to CONVERT(). See the\ndescription of CONVERT() for more information.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/cast-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/cast-functions.html'),(379,'SOUNDS LIKE',38,'Syntax:\nexpr1 SOUNDS LIKE expr2\n\nThis is the same as SOUNDEX(expr1) = SOUNDEX(expr2).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(380,'PERIOD_DIFF',32,'Syntax:\nPERIOD_DIFF(P1,P2)\n\nReturns the number of months between periods P1 and P2. P1 and P2\nshould be in the format YYMM or YYYYMM. Note that the period arguments\nP1 and P2 are not date values.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT PERIOD_DIFF(200802,200703);\n        -> 11\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(381,'LIKE',38,'Syntax:\nexpr LIKE pat [ESCAPE \'escape_char\']\n\nPattern matching using SQL simple regular expression comparison.\nReturns 1 (TRUE) or 0 (FALSE). If either expr or pat is NULL, the\nresult is NULL.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html\n\n','mysql> SELECT \'David!\' LIKE \'David_\';\n        -> 1\nmysql> SELECT \'David!\' LIKE \'%D%v%\';\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html'),(382,'MULTIPOINT',25,'MultiPoint(pt1,pt2,...)\n\nConstructs a MultiPoint value using Point or WKB Point arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(383,'>>',20,'Syntax:\n>>\n\nShifts a longlong (BIGINT) number to the right.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html\n\n','mysql> SELECT 4 >> 2;\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html'),(384,'FETCH',24,'Syntax:\nFETCH [[NEXT] FROM] cursor_name INTO var_name [, var_name] ...\n\nThis statement fetches the next row for the SELECT statement associated\nwith the specified cursor (which must be open), and advances the cursor\npointer. If a row exists, the fetched columns are stored in the named\nvariables. The number of columns retrieved by the SELECT statement must\nmatch the number of output variables specified in the FETCH statement.\n\nIf no more rows are available, a No Data condition occurs with SQLSTATE\nvalue \'02000\'. To detect this condition, you can set up a handler for\nit (or for a NOT FOUND condition). For an example, see\nhttp://dev.mysql.com/doc/refman/5.5/en/cursors.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/fetch.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/fetch.html'),(385,'AVG',16,'Syntax:\nAVG([DISTINCT] expr)\n\nReturns the average value of expr. The DISTINCT option can be used to\nreturn the average of the distinct values of expr.\n\nAVG() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','mysql> SELECT student_name, AVG(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(386,'TRUE FALSE',30,'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/boolean-literals.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/boolean-literals.html'),(387,'MBRWITHIN',6,'MBRWithin(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\nis within the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRContains().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','mysql> SET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nmysql> SET @g2 = GeomFromText(\'Polygon((0 0,0 5,5 5,5 0,0 0))\');\nmysql> SELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);\n+--------------------+--------------------+\n| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |\n+--------------------+--------------------+\n|                  1 |                  0 |\n+--------------------+--------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(388,'SESSION_USER',17,'Syntax:\nSESSION_USER()\n\nSESSION_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(389,'IN',19,'Syntax:\nexpr IN (value,...)\n\nReturns 1 if expr is equal to any of the values in the IN list, else\nreturns 0. If all values are constants, they are evaluated according to\nthe type of expr and sorted. The search for the item then is done using\na binary search. This means IN is very quick if the IN value list\nconsists entirely of constants. Otherwise, type conversion takes place\naccording to the rules described in\nhttp://dev.mysql.com/doc/refman/5.5/en/type-conversion.html, but\napplied to all the arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 2 IN (0,3,5,7);\n        -> 0\nmysql> SELECT \'wefwf\' IN (\'wee\',\'wefwf\',\'weg\');\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(390,'QUOTE',38,'Syntax:\nQUOTE(str)\n\nQuotes a string to produce a result that can be used as a properly\nescaped data value in an SQL statement. The string is returned enclosed\nby single quotation marks and with each instance of backslash (\"\\\"),\nsingle quote (\"\'\"), ASCII NUL, and Control+Z preceded by a backslash.\nIf the argument is NULL, the return value is the word \"NULL\" without\nenclosing single quotation marks.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT QUOTE(\'Don\\\'t!\');\n        -> \'Don\\\'t!\'\nmysql> SELECT QUOTE(NULL);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(391,'HELP COMMAND',27,'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttp://dev.mysql.com/doc/refman/5.5/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run \'help contents\' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: \"Contents\"\nFor more information, type \'help <item>\', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Plugins\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: \'SHOW BINARY LOGS\'\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-binary-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nThe search string can contain the the wildcard characters \"%\" and \"_\".\nThese have the same meaning as for pattern-matching operations\nperformed with the LIKE operator. For example, HELP rep% returns a list\nof topics that begin with rep:\n\nmysql> HELP rep%\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following\ntopics:\n   REPAIR TABLE\n   REPEAT FUNCTION\n   REPEAT LOOP\n   REPLACE\n   REPLACE FUNCTION\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mysql-server-side-help.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/mysql-server-side-help.html'),(392,'QUARTER',32,'Syntax:\nQUARTER(date)\n\nReturns the quarter of the year for date, in the range 1 to 4.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT QUARTER(\'2008-04-01\');\n        -> 2\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(393,'POSITION',38,'Syntax:\nPOSITION(substr IN str)\n\nPOSITION(substr IN str) is a synonym for LOCATE(substr,str).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(394,'SHOW CREATE FUNCTION',27,'Syntax:\nSHOW CREATE FUNCTION func_name\n\nThis statement is similar to SHOW CREATE PROCEDURE but for stored\nfunctions. See [HELP SHOW CREATE PROCEDURE].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-create-function.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-create-function.html'),(395,'IS_USED_LOCK',14,'Syntax:\nIS_USED_LOCK(str)\n\nChecks whether the lock named str is in use (that is, locked). If so,\nit returns the connection identifier of the client that holds the lock.\nOtherwise, it returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(396,'POLYFROMTEXT',3,'PolyFromText(wkt[,srid]), PolygonFromText(wkt[,srid])\n\nConstructs a POLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(397,'DES_ENCRYPT',12,'Syntax:\nDES_ENCRYPT(str[,{key_num|key_str}])\n\nEncrypts the string with the given key using the Triple-DES algorithm.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.5/en/ssl-connections.html.\n\nThe encryption key to use is chosen based on the second argument to\nDES_ENCRYPT(), if one was given. With no argument, the first key from\nthe DES key file is used. With a key_num argument, the given key number\n(0 to 9) from the DES key file is used. With a key_str argument, the\ngiven key string is used to encrypt str.\n\nThe key file can be specified with the --des-key-file server option.\n\nThe return string is a binary string where the first character is\nCHAR(128 | key_num). If an error occurs, DES_ENCRYPT() returns NULL.\n\nThe 128 is added to make it easier to recognize an encrypted key. If\nyou use a string key, key_num is 127.\n\nThe string length for the result is given by this formula:\n\nnew_len = orig_len + (8 - (orig_len % 8)) + 1\n\nEach line in the DES key file has the following format:\n\nkey_num des_key_str\n\nEach key_num value must be a number in the range from 0 to 9. Lines in\nthe file may be in any order. des_key_str is the string that is used to\nencrypt the message. There should be at least one space between the\nnumber and the key. The first key is the default key that is used if\nyou do not specify any key argument to DES_ENCRYPT().\n\nYou can tell MySQL to read new key values from the key file with the\nFLUSH DES_KEY_FILE statement. This requires the RELOAD privilege.\n\nOne benefit of having a set of default keys is that it gives\napplications a way to check for the existence of encrypted column\nvalues, without giving the end user the right to decrypt those values.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SELECT customer_address FROM customer_table \n     > WHERE crypted_credit_card = DES_ENCRYPT(\'credit_card_number\');\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(398,'CEIL',4,'Syntax:\nCEIL(X)\n\nCEIL() is a synonym for CEILING().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(399,'LENGTH',38,'Syntax:\nLENGTH(str)\n\nReturns the length of the string str, measured in bytes. A multi-byte\ncharacter counts as multiple bytes. This means that for a string\ncontaining five 2-byte characters, LENGTH() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT LENGTH(\'text\');\n        -> 4\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(400,'STR_TO_DATE',32,'Syntax:\nSTR_TO_DATE(str,format)\n\nThis is the inverse of the DATE_FORMAT() function. It takes a string\nstr and a format string format. STR_TO_DATE() returns a DATETIME value\nif the format string contains both date and time parts, or a DATE or\nTIME value if the string contains only date or time parts. If the date,\ntime, or datetime value extracted from str is illegal, STR_TO_DATE()\nreturns NULL and produces a warning.\n\nThe server scans str attempting to match format to it. The format\nstring can contain literal characters and format specifiers beginning\nwith %. Literal characters in format must match literally in str.\nFormat specifiers in format must match a date or time part in str. For\nthe specifiers that can be used in format, see the DATE_FORMAT()\nfunction description.\n\nmysql> SELECT STR_TO_DATE(\'01,5,2013\',\'%d,%m,%Y\');\n        -> \'2013-05-01\'\nmysql> SELECT STR_TO_DATE(\'May 1, 2013\',\'%M %d,%Y\');\n        -> \'2013-05-01\'\n\nScanning starts at the beginning of str and fails if format is found\nnot to match. Extra characters at the end of str are ignored.\n\nmysql> SELECT STR_TO_DATE(\'a09:30:17\',\'a%h:%i:%s\');\n        -> \'09:30:17\'\nmysql> SELECT STR_TO_DATE(\'a09:30:17\',\'%h:%i:%s\');\n        -> NULL\nmysql> SELECT STR_TO_DATE(\'09:30:17a\',\'%h:%i:%s\');\n        -> \'09:30:17\'\n\nUnspecified date or time parts have a value of 0, so incompletely\nspecified values in str produce a result with some or all parts set to\n0:\n\nmysql> SELECT STR_TO_DATE(\'abc\',\'abc\');\n        -> \'0000-00-00\'\nmysql> SELECT STR_TO_DATE(\'9\',\'%m\');\n        -> \'0000-09-00\'\nmysql> SELECT STR_TO_DATE(\'9\',\'%s\');\n        -> \'00:00:09\'\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(401,'Y',11,'Y(p)\n\nReturns the Y-coordinate value for the Point object p as a\ndouble-precision number.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SELECT Y(POINT(56.7, 53.34));\n+-----------------------+\n| Y(POINT(56.7, 53.34)) |\n+-----------------------+\n|                 53.34 |\n+-----------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(402,'CHECKSUM TABLE',21,'Syntax:\nCHECKSUM TABLE tbl_name [, tbl_name] ... [ QUICK | EXTENDED ]\n\nCHECKSUM TABLE reports a table checksum. This statement requires the\nSELECT privilege for the table.\n\nWith QUICK, the live table checksum is reported if it is available, or\nNULL otherwise. This is very fast. A live checksum is enabled by\nspecifying the CHECKSUM=1 table option when you create the table;\ncurrently, this is supported only for MyISAM tables. See [HELP CREATE\nTABLE].\n\nWith EXTENDED, the entire table is read row by row and the checksum is\ncalculated. This can be very slow for large tables.\n\nIf neither QUICK nor EXTENDED is specified, MySQL returns a live\nchecksum if the table storage engine supports it and scans the table\notherwise.\n\nFor a nonexistent table, CHECKSUM TABLE returns NULL and generates a\nwarning.\n\nIn MySQL 5.5, CHECKSUM TABLE returns 0 for partitioned tables unless\nyou include the EXTENDED option. This issue is resolved in MySQL 5.6.\n(Bug #11933226, Bug #60681)\n\nThe checksum value depends on the table row format. If the row format\nchanges, the checksum also changes. For example, the storage format for\nVARCHAR changed between MySQL 4.1 and 5.0, so if a 4.1 table is\nupgraded to MySQL 5.0, the checksum value may change.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/checksum-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/checksum-table.html'),(403,'NUMINTERIORRINGS',2,'NumInteriorRings(poly)\n\nReturns the number of interior rings in the Polygon value poly.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT NumInteriorRings(GeomFromText(@poly));\n+---------------------------------------+\n| NumInteriorRings(GeomFromText(@poly)) |\n+---------------------------------------+\n|                                     1 |\n+---------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(404,'INTERIORRINGN',2,'InteriorRingN(poly,N)\n\nReturns the N-th interior ring for the Polygon value poly as a\nLineString. Rings are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT AsText(InteriorRingN(GeomFromText(@poly),1));\n+----------------------------------------------+\n| AsText(InteriorRingN(GeomFromText(@poly),1)) |\n+----------------------------------------------+\n| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |\n+----------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(405,'UTC_TIME',32,'Syntax:\nUTC_TIME, UTC_TIME()\n\nReturns the current UTC time as a value in \'HH:MM:SS\' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT UTC_TIME(), UTC_TIME() + 0;\n        -> \'18:07:53\', 180753.000000\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(406,'DROP FUNCTION',40,'The DROP FUNCTION statement is used to drop stored functions and\nuser-defined functions (UDFs):\n\no For information about dropping stored functions, see [HELP DROP\n  PROCEDURE].\n\no For information about dropping user-defined functions, see [HELP DROP\n  FUNCTION UDF].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-function.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-function.html'),(407,'ALTER EVENT',40,'Syntax:\nALTER\n    [DEFINER = { user | CURRENT_USER }]\n    EVENT event_name\n    [ON SCHEDULE schedule]\n    [ON COMPLETION [NOT] PRESERVE]\n    [RENAME TO new_event_name]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT \'comment\']\n    [DO event_body]\n\nThe ALTER EVENT statement changes one or more of the characteristics of\nan existing event without the need to drop and recreate it. The syntax\nfor each of the DEFINER, ON SCHEDULE, ON COMPLETION, COMMENT, ENABLE /\nDISABLE, and DO clauses is exactly the same as when used with CREATE\nEVENT. (See [HELP CREATE EVENT].)\n\nAny user can alter an event defined on a database for which that user\nhas the EVENT privilege. When a user executes a successful ALTER EVENT\nstatement, that user becomes the definer for the affected event.\n\nALTER EVENT works only with an existing event:\n\nmysql> ALTER EVENT no_such_event \n     >     ON SCHEDULE \n     >       EVERY \'2:3\' DAY_HOUR;\nERROR 1517 (HY000): Unknown event \'no_such_event\'\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-event.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/alter-event.html'),(408,'STDDEV',16,'Syntax:\nSTDDEV(expr)\n\nReturns the population standard deviation of expr. This function is\nprovided for compatibility with Oracle. The standard SQL function\nSTDDEV_POP() can be used instead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(409,'DATE_SUB',32,'Syntax:\nDATE_SUB(date,INTERVAL expr unit)\n\nSee the description for DATE_ADD().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(410,'PERIOD_ADD',32,'Syntax:\nPERIOD_ADD(P,N)\n\nAdds N months to period P (in the format YYMM or YYYYMM). Returns a\nvalue in the format YYYYMM. Note that the period argument P is not a\ndate value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT PERIOD_ADD(200801,2);\n        -> 200803\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(411,'|',20,'Syntax:\n|\n\nBitwise OR:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html\n\n','mysql> SELECT 29 | 15;\n        -> 31\n','http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html'),(412,'GEOMFROMTEXT',3,'GeomFromText(wkt[,srid]), GeometryFromText(wkt[,srid])\n\nConstructs a geometry value of any type using its WKT representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(413,'UUID_SHORT',14,'Syntax:\nUUID_SHORT()\n\nReturns a \"short\" universal identifier as a 64-bit unsigned integer\n(rather than a string-form 128-bit identifier as returned by the UUID()\nfunction).\n\nThe value of UUID_SHORT() is guaranteed to be unique if the following\nconditions hold:\n\no The server_id of the current host is unique among your set of master\n  and slave servers\n\no server_id is between 0 and 255\n\no You do not set back your system time for your server between mysqld\n  restarts\n\no You do not invoke UUID_SHORT() on average more than 16 million times\n  per second between mysqld restarts\n\nThe UUID_SHORT() return value is constructed this way:\n\n  (server_id & 255) << 56\n+ (server_startup_time_in_seconds << 24)\n+ incremented_variable++;\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','mysql> SELECT UUID_SHORT();\n        -> 92395783831158784\n','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(414,'RIGHT',38,'Syntax:\nRIGHT(str,len)\n\nReturns the rightmost len characters from the string str, or NULL if\nany argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT RIGHT(\'foobarbar\', 4);\n        -> \'rbar\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(415,'DATEDIFF',32,'Syntax:\nDATEDIFF(expr1,expr2)\n\nDATEDIFF() returns expr1 - expr2 expressed as a value in days from one\ndate to the other. expr1 and expr2 are date or date-and-time\nexpressions. Only the date parts of the values are used in the\ncalculation.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT DATEDIFF(\'2007-12-31 23:59:59\',\'2007-12-30\');\n        -> 1\nmysql> SELECT DATEDIFF(\'2010-11-30 23:59:59\',\'2010-12-31\');\n        -> -31\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(416,'DROP TABLESPACE',40,'Syntax:\nDROP TABLESPACE tablespace_name\n    ENGINE [=] engine_name\n\nThis statement drops a tablespace that was previously created using\nCREATE TABLESPACE (see [HELP CREATE TABLESPACE]).\n\n*Important*: The tablespace to be dropped must not contain any data\nfiles; in other words, before you can drop a tablespace, you must first\ndrop each of its data files using ALTER TABLESPACE ... DROP DATAFILE\n(see [HELP ALTER TABLESPACE]).\n\nThe ENGINE clause (required) specifies the storage engine used by the\ntablespace. Currently, the only accepted values for engine_name are NDB\nand NDBCLUSTER.\n\nDROP TABLESPACE is useful only with Disk Data storage for MySQL\nCluster. See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-cluster-disk-data.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-tablespace.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-tablespace.html'),(417,'DROP PROCEDURE',40,'Syntax:\nDROP {PROCEDURE | FUNCTION} [IF EXISTS] sp_name\n\nThis statement is used to drop a stored procedure or function. That is,\nthe specified routine is removed from the server. You must have the\nALTER ROUTINE privilege for the routine. (If the\nautomatic_sp_privileges system variable is enabled, that privilege and\nEXECUTE are granted automatically to the routine creator when the\nroutine is created and dropped from the creator when the routine is\ndropped. See\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-routines-privileges.html.\n)\n\nThe IF EXISTS clause is a MySQL extension. It prevents an error from\noccurring if the procedure or function does not exist. A warning is\nproduced that can be viewed with SHOW WARNINGS.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/drop-procedure.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/drop-procedure.html'),(418,'CHECK TABLE',21,'Syntax:\nCHECK TABLE tbl_name [, tbl_name] ... [option] ...\n\noption = {FOR UPGRADE | QUICK | FAST | MEDIUM | EXTENDED | CHANGED}\n\nCHECK TABLE checks a table or tables for errors. CHECK TABLE works for\nInnoDB, MyISAM, ARCHIVE, and CSV tables. For MyISAM tables, the key\nstatistics are updated as well.\n\nTo check a table, you must have some privilege for it.\n\nCHECK TABLE can also check views for problems, such as tables that are\nreferenced in the view definition that no longer exist.\n\nCHECK TABLE is supported for partitioned tables, and you can use ALTER\nTABLE ... CHECK PARTITION to check one or more partitions; for more\ninformation, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.5/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/check-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/check-table.html'),(419,'BIN',38,'Syntax:\nBIN(N)\n\nReturns a string representation of the binary value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,2). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT BIN(12);\n        -> \'1100\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(420,'INSTALL PLUGIN',5,'Syntax:\nINSTALL PLUGIN plugin_name SONAME \'shared_library_name\'\n\nThis statement installs a server plugin. It requires the INSERT\nprivilege for the mysql.plugin table.\n\nplugin_name is the name of the plugin as defined in the plugin\ndescriptor structure contained in the library file (see\nhttp://dev.mysql.com/doc/refman/5.5/en/plugin-data-structures.html).\nPlugin names are not case sensitive. For maximal compatibility, plugin\nnames should be limited to ASCII letters, digits, and underscore\nbecause they are used in C source files, shell command lines, M4 and\nBourne shell scripts, and SQL environments.\n\nshared_library_name is the name of the shared library that contains the\nplugin code. The name includes the file name extension (for example,\nlibmyplugin.so, libmyplugin.dll, or libmyplugin.dylib).\n\nThe shared library must be located in the plugin directory (the\ndirectory named by the plugin_dir system variable). The library must be\nin the plugin directory itself, not in a subdirectory. By default,\nplugin_dir is the plugin directory under the directory named by the\npkglibdir configuration variable, but it can be changed by setting the\nvalue of plugin_dir at server startup. For example, set its value in a\nmy.cnf file:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\n\nIf the value of plugin_dir is a relative path name, it is taken to be\nrelative to the MySQL base directory (the value of the basedir system\nvariable).\n\nINSTALL PLUGIN loads and initializes the plugin code to make the plugin\navailable for use. A plugin is initialized by executing its\ninitialization function, which handles any setup that the plugin must\nperform before it can be used. When the server shuts down, it executes\nthe deinitialization function for each plugin that is loaded so that\nthe plugin has a change to perform any final cleanup.\n\nINSTALL PLUGIN also registers the plugin by adding a line that\nindicates the plugin name and library file name to the mysql.plugin\ntable. At server startup, the server loads and initializes any plugin\nthat is listed in the mysql.plugin table. This means that a plugin is\ninstalled with INSTALL PLUGIN only once, not every time the server\nstarts. Plugin loading at startup does not occur if the server is\nstarted with the --skip-grant-tables option.\n\nA plugin library can contain multiple plugins. For each of them to be\ninstalled, use a separate INSTALL PLUGIN statement. Each statement\nnames a different plugin, but all of them specify the same library\nname.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/install-plugin.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/install-plugin.html'),(421,'DECLARE CURSOR',24,'Syntax:\nDECLARE cursor_name CURSOR FOR select_statement\n\nThis statement declares a cursor and associates it with a SELECT\nstatement that retrieves the rows to be traversed by the cursor. To\nfetch the rows later, use a FETCH statement. The number of columns\nretrieved by the SELECT statement must match the number of output\nvariables specified in the FETCH statement.\n\nThe SELECT statement cannot have an INTO clause.\n\nCursor declarations must appear before handler declarations and after\nvariable and condition declarations.\n\nA stored program may contain multiple cursor declarations, but each\ncursor declared in a given block must have a unique name. For an\nexample, see http://dev.mysql.com/doc/refman/5.5/en/cursors.html.\n\nFor information available through SHOW statements, it is possible in\nmany cases to obtain equivalent information by using a cursor with an\nINFORMATION_SCHEMA table.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/declare-cursor.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/declare-cursor.html'),(422,'LOAD DATA',28,'Syntax:\nLOAD DATA [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE \'file_name\'\n    [REPLACE | IGNORE]\n    INTO TABLE tbl_name\n    [CHARACTER SET charset_name]\n    [{FIELDS | COLUMNS}\n        [TERMINATED BY \'string\']\n        [[OPTIONALLY] ENCLOSED BY \'char\']\n        [ESCAPED BY \'char\']\n    ]\n    [LINES\n        [STARTING BY \'string\']\n        [TERMINATED BY \'string\']\n    ]\n    [IGNORE number {LINES | ROWS}]\n    [(col_name_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD DATA INFILE statement reads rows from a text file into a table\nat a very high speed. LOAD DATA INFILE is the complement of SELECT ...\nINTO OUTFILE. (See\nhttp://dev.mysql.com/doc/refman/5.5/en/select-into.html.) To write data\nfrom a table to a file, use SELECT ... INTO OUTFILE. To read the file\nback into a table, use LOAD DATA INFILE. The syntax of the FIELDS and\nLINES clauses is the same for both statements. Both clauses are\noptional, but FIELDS must precede LINES if both are specified.\n\nYou can also load data files by using the mysqlimport utility; it\noperates by sending a LOAD DATA INFILE statement to the server. The\n--local option causes mysqlimport to read data files from the client\nhost. You can specify the --compress option to get better performance\nover slow networks if the client and server support the compressed\nprotocol. See http://dev.mysql.com/doc/refman/5.5/en/mysqlimport.html.\n\nFor more information about the efficiency of INSERT versus LOAD DATA\nINFILE and speeding up LOAD DATA INFILE, see\nhttp://dev.mysql.com/doc/refman/5.5/en/insert-speed.html.\n\nThe file name must be given as a literal string. On Windows, specify\nbackslashes in path names as forward slashes or doubled backslashes.\nThe character_set_filesystem system variable controls the\ninterpretation of the file name.\n\nThe character set indicated by the character_set_database system\nvariable is used to interpret the information in the file. SET NAMES\nand the setting of character_set_client do not affect interpretation of\ninput. If the contents of the input file use a character set that\ndiffers from the default, it is usually preferable to specify the\ncharacter set of the file by using the CHARACTER SET clause. A\ncharacter set of binary specifies \"no conversion.\"\n\nLOAD DATA INFILE interprets all fields in the file as having the same\ncharacter set, regardless of the data types of the columns into which\nfield values are loaded. For proper interpretation of file contents,\nyou must ensure that it was written with the correct character set. For\nexample, if you write a data file with mysqldump -T or by issuing a\nSELECT ... INTO OUTFILE statement in mysql, be sure to use a\n--default-character-set option so that output is written in the\ncharacter set to be used when the file is loaded with LOAD DATA INFILE.\n\n*Note*: It is not possible to load data files that use the ucs2, utf16,\nor utf32 character set.\n\nIf you use LOW_PRIORITY, execution of the LOAD DATA statement is\ndelayed until no other clients are reading from the table. This affects\nonly storage engines that use only table-level locking (such as MyISAM,\nMEMORY, and MERGE).\n\nIf you specify CONCURRENT with a MyISAM table that satisfies the\ncondition for concurrent inserts (that is, it contains no free blocks\nin the middle), other threads can retrieve data from the table while\nLOAD DATA is executing. This option affects the performance of LOAD\nDATA a bit, even if no other thread is using the table at the same\ntime.\n\nWith row-based replication, CONCURRENT is replicated regardless of\nMySQL version. With statement-based replication CONCURRENT is not\nreplicated prior to MySQL 5.5.1 (see Bug #34628). For more information,\nsee\nhttp://dev.mysql.com/doc/refman/5.5/en/replication-features-load-data.h\ntml.\n\nThe LOCAL keyword affects expected location of the file and error\nhandling, as described later. LOCAL works only if your server and your\nclient both have been configured to permit it. For example, if mysqld\nwas started with --local-infile=0, LOCAL does not work. See\nhttp://dev.mysql.com/doc/refman/5.5/en/load-data-local.html.\n\nThe LOCAL keyword affects where the file is expected to be found:\n\no If LOCAL is specified, the file is read by the client program on the\n  client host and sent to the server. The file can be given as a full\n  path name to specify its exact location. If given as a relative path\n  name, the name is interpreted relative to the directory in which the\n  client program was started.\n\n  When using LOCAL with LOAD DATA, a copy of the file is created in the\n  server\'s temporary directory. This is not the directory determined by\n  the value of tmpdir or slave_load_tmpdir, but rather the operating\n  system\'s temporary directory, and is not configurable in the MySQL\n  Server. (Typically the system temporary directory is /tmp on Linux\n  systems and C:\\WINDOWS\\TEMP on Windows.) Lack of sufficient space for\n  the copy in this directory can cause the LOAD DATA LOCAL statement to\n  fail.\n\no If LOCAL is not specified, the file must be located on the server\n  host and is read directly by the server. The server uses the\n  following rules to locate the file:\n\n  o If the file name is an absolute path name, the server uses it as\n    given.\n\n  o If the file name is a relative path name with one or more leading\n    components, the server searches for the file relative to the\n    server\'s data directory.\n\n  o If a file name with no leading components is given, the server\n    looks for the file in the database directory of the default\n    database.\n\nIn the non-LOCAL case, these rules mean that a file named as\n./myfile.txt is read from the server\'s data directory, whereas the file\nnamed as myfile.txt is read from the database directory of the default\ndatabase. For example, if db1 is the default database, the following\nLOAD DATA statement reads the file data.txt from the database directory\nfor db1, even though the statement explicitly loads the file into a\ntable in the db2 database:\n\nLOAD DATA INFILE \'data.txt\' INTO TABLE db2.my_table;\n\nFor security reasons, when reading text files located on the server,\nthe files must either reside in the database directory or be readable\nby all. Also, to use LOAD DATA INFILE on server files, you must have\nthe FILE privilege. See\nhttp://dev.mysql.com/doc/refman/5.5/en/privileges-provided.html. For\nnon-LOCAL load operations, if the secure_file_priv system variable is\nset to a nonempty directory name, the file to be loaded must be located\nin that directory.\n\nUsing LOCAL is a bit slower than letting the server access the files\ndirectly, because the contents of the file must be sent over the\nconnection by the client to the server. On the other hand, you do not\nneed the FILE privilege to load local files.\n\nLOCAL also affects error handling:\n\no With LOAD DATA INFILE, data-interpretation and duplicate-key errors\n  terminate the operation.\n\no With LOAD DATA LOCAL INFILE, data-interpretation and duplicate-key\n  errors become warnings and the operation continues because the server\n  has no way to stop transmission of the file in the middle of the\n  operation. For duplicate-key errors, this is the same as if IGNORE is\n  specified. IGNORE is explained further later in this section.\n\nThe REPLACE and IGNORE keywords control handling of input rows that\nduplicate existing rows on unique key values:\n\no If you specify REPLACE, input rows replace existing rows. In other\n  words, rows that have the same value for a primary key or unique\n  index as an existing row. See [HELP REPLACE].\n\no If you specify IGNORE, input rows that duplicate an existing row on a\n  unique key value are skipped.\n\no If you do not specify either option, the behavior depends on whether\n  the LOCAL keyword is specified. Without LOCAL, an error occurs when a\n  duplicate key value is found, and the rest of the text file is\n  ignored. With LOCAL, the default behavior is the same as if IGNORE is\n  specified; this is because the server has no way to stop transmission\n  of the file in the middle of the operation.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/load-data.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/load-data.html'),(423,'MULTILINESTRING',25,'MultiLineString(ls1,ls2,...)\n\nConstructs a MultiLineString value using LineString or WKB LineString\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(424,'LOCALTIME',32,'Syntax:\nLOCALTIME, LOCALTIME()\n\nLOCALTIME and LOCALTIME() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(425,'SHOW RELAYLOG EVENTS',27,'Syntax:\nSHOW RELAYLOG EVENTS\n   [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the relay log of a replication slave. If you do not\nspecify \'log_name\', the first relay log is displayed. This statement\nhas no effect on the master.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-relaylog-events.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-relaylog-events.html'),(426,'MPOINTFROMTEXT',3,'MPointFromText(wkt[,srid]), MultiPointFromText(wkt[,srid])\n\nConstructs a MULTIPOINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(427,'BLOB',23,'BLOB[(M)]\n\nA BLOB column with a maximum length of 65,535 (216 - 1) bytes. Each\nBLOB value is stored using a 2-byte length prefix that indicates the\nnumber of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest BLOB type large enough to hold\nvalues M bytes long.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(428,'SHA1',12,'Syntax:\nSHA1(str), SHA(str)\n\nCalculates an SHA-1 160-bit checksum for the string, as described in\nRFC 3174 (Secure Hash Algorithm). The value is returned as a string of\n40 hex digits, or NULL if the argument was NULL. One of the possible\nuses for this function is as a hash key. See the notes at the beginning\nof this section about storing hash values efficiently. You can also use\nSHA1() as a cryptographic function for storing passwords. SHA() is\nsynonymous with SHA1().\n\nAs of MySQL 5.5.3, the return value is a nonbinary string in the\nconnection character set. Before 5.5.3, the return value is a binary\nstring; see the notes at the beginning of this section about using the\nvalue as a nonbinary string.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SELECT SHA1(\'abc\');\n        -> \'a9993e364706816aba3e25717850c26c9cd0d89d\'\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(429,'SUBSTR',38,'Syntax:\nSUBSTR(str,pos), SUBSTR(str FROM pos), SUBSTR(str,pos,len), SUBSTR(str\nFROM pos FOR len)\n\nSUBSTR() is a synonym for SUBSTRING().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(430,'PASSWORD',12,'Syntax:\nPASSWORD(str)\n\nCalculates and returns a hashed password string from the plaintext\npassword str and returns a nonbinary string in the connection character\nset (a binary string before MySQL 5.5.3), or NULL if the argument is\nNULL. This function is the SQL interface to the algorithm used by the\nserver to encrypt MySQL passwords for storage in the mysql.user grant\ntable.\n\nThe password hashing method used by PASSWORD() depends on the value of\nthe old_passwords system variable:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','mysql> SET old_passwords = 0;\nmysql> SELECT PASSWORD(\'mypass\');\n+-------------------------------------------+\n| PASSWORD(\'mypass\')                        |\n+-------------------------------------------+\n| *6C8989366EAF75BB670AD8EA7A7FC1176A95CEF4 |\n+-------------------------------------------+\n\nmysql> SET old_passwords = 1;\nmysql> SELECT PASSWORD(\'mypass\');\n+--------------------+\n| PASSWORD(\'mypass\') |\n+--------------------+\n| 6f8c114b58f2ce9e   |\n+--------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(431,'CHAR',23,'[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA fixed-length string that is always right-padded with spaces to the\nspecified length when stored. M represents the column length in\ncharacters. The range of M is 0 to 255. If M is omitted, the length is\n1.\n\n*Note*: Trailing spaces are removed when CHAR values are retrieved\nunless the PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(432,'UTC_DATE',32,'Syntax:\nUTC_DATE, UTC_DATE()\n\nReturns the current UTC date as a value in \'YYYY-MM-DD\' or YYYYMMDD\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT UTC_DATE(), UTC_DATE() + 0;\n        -> \'2003-08-14\', 20030814\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(433,'DIMENSION',37,'Dimension(g)\n\nReturns the inherent dimension of the geometry value g. The result can\nbe -1, 0, 1, or 2. The meaning of these values is given in\nhttp://dev.mysql.com/doc/refman/5.5/en/gis-class-geometry.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SELECT Dimension(GeomFromText(\'LineString(1 1,2 2)\'));\n+------------------------------------------------+\n| Dimension(GeomFromText(\'LineString(1 1,2 2)\')) |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(434,'COUNT DISTINCT',16,'Syntax:\nCOUNT(DISTINCT expr,[expr...])\n\nReturns a count of the number of rows with different non-NULL expr\nvalues.\n\nCOUNT(DISTINCT) returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html\n\n','mysql> SELECT COUNT(DISTINCT results) FROM student;\n','http://dev.mysql.com/doc/refman/5.5/en/group-by-functions.html'),(435,'BIT',23,'BIT[(M)]\n\nA bit-field type. M indicates the number of bits per value, from 1 to\n64. The default is 1 if M is omitted.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(436,'XA',8,'Syntax:\nXA {START|BEGIN} xid [JOIN|RESUME]\n\nXA END xid [SUSPEND [FOR MIGRATE]]\n\nXA PREPARE xid\n\nXA COMMIT xid [ONE PHASE]\n\nXA ROLLBACK xid\n\nXA RECOVER\n\nFor XA START, the JOIN and RESUME clauses are not supported.\n\nFor XA END the SUSPEND [FOR MIGRATE] clause is not supported.\n\nEach XA statement begins with the XA keyword, and most of them require\nan xid value. An xid is an XA transaction identifier. It indicates\nwhich transaction the statement applies to. xid values are supplied by\nthe client, or generated by the MySQL server. An xid value has from one\nto three parts:\n\nxid: gtrid [, bqual [, formatID ]]\n\ngtrid is a global transaction identifier, bqual is a branch qualifier,\nand formatID is a number that identifies the format used by the gtrid\nand bqual values. As indicated by the syntax, bqual and formatID are\noptional. The default bqual value is \'\' if not given. The default\nformatID value is 1 if not given.\n\ngtrid and bqual must be string literals, each up to 64 bytes (not\ncharacters) long. gtrid and bqual can be specified in several ways. You\ncan use a quoted string (\'ab\'), hex string (0x6162, X\'ab\'), or bit\nvalue (b\'nnnn\').\n\nformatID is an unsigned integer.\n\nThe gtrid and bqual values are interpreted in bytes by the MySQL\nserver\'s underlying XA support routines. However, while an SQL\nstatement containing an XA statement is being parsed, the server works\nwith some specific character set. To be safe, write gtrid and bqual as\nhex strings.\n\nxid values typically are generated by the Transaction Manager. Values\ngenerated by one TM must be different from values generated by other\nTMs. A given TM must be able to recognize its own xid values in a list\nof values returned by the XA RECOVER statement.\n\nXA START xid starts an XA transaction with the given xid value. Each XA\ntransaction must have a unique xid value, so the value must not\ncurrently be used by another XA transaction. Uniqueness is assessed\nusing the gtrid and bqual values. All following XA statements for the\nXA transaction must be specified using the same xid value as that given\nin the XA START statement. If you use any of those statements but\nspecify an xid value that does not correspond to some existing XA\ntransaction, an error occurs.\n\nOne or more XA transactions can be part of the same global transaction.\nAll XA transactions within a given global transaction must use the same\ngtrid value in the xid value. For this reason, gtrid values must be\nglobally unique so that there is no ambiguity about which global\ntransaction a given XA transaction is part of. The bqual part of the\nxid value must be different for each XA transaction within a global\ntransaction. (The requirement that bqual values be different is a\nlimitation of the current MySQL XA implementation. It is not part of\nthe XA specification.)\n\nThe XA RECOVER statement returns information for those XA transactions\non the MySQL server that are in the PREPARED state. (See\nhttp://dev.mysql.com/doc/refman/5.5/en/xa-states.html.) The output\nincludes a row for each such XA transaction on the server, regardless\nof which client started it.\n\nXA RECOVER output rows look like this (for an example xid value\nconsisting of the parts \'abc\', \'def\', and 7):\n\nmysql> XA RECOVER;\n+----------+--------------+--------------+--------+\n| formatID | gtrid_length | bqual_length | data   |\n+----------+--------------+--------------+--------+\n|        7 |            3 |            3 | abcdef |\n+----------+--------------+--------------+--------+\n\nThe output columns have the following meanings:\n\no formatID is the formatID part of the transaction xid\n\no gtrid_length is the length in bytes of the gtrid part of the xid\n\no bqual_length is the length in bytes of the bqual part of the xid\n\no data is the concatenation of the gtrid and bqual parts of the xid\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/xa-statements.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/xa-statements.html'),(437,'EQUALS',31,'Equals(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially equal to g2.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),(438,'SHOW CREATE VIEW',27,'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows a CREATE VIEW statement that creates the given\nview.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-create-view.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-create-view.html'),(439,'INTERVAL',19,'Syntax:\nINTERVAL(N,N1,N2,N3,...)\n\nReturns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All\narguments are treated as integers. It is required that N1 < N2 < N3 <\n... < Nn for this function to work correctly. This is because a binary\nsearch is used (very fast).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);\n        -> 3\nmysql> SELECT INTERVAL(10, 1, 10, 100, 1000);\n        -> 2\nmysql> SELECT INTERVAL(22, 23, 30, 44, 200);\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(440,'FROM_DAYS',32,'Syntax:\nFROM_DAYS(N)\n\nGiven a day number N, returns a DATE value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT FROM_DAYS(730669);\n        -> \'2007-07-03\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(441,'ALTER PROCEDURE',40,'Syntax:\nALTER PROCEDURE proc_name [characteristic ...]\n\ncharacteristic:\n    COMMENT \'string\'\n  | LANGUAGE SQL\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nThis statement can be used to change the characteristics of a stored\nprocedure. More than one change may be specified in an ALTER PROCEDURE\nstatement. However, you cannot change the parameters or body of a\nstored procedure using this statement; to make such changes, you must\ndrop and re-create the procedure using DROP PROCEDURE and CREATE\nPROCEDURE.\n\nYou must have the ALTER ROUTINE privilege for the procedure. By\ndefault, that privilege is granted automatically to the procedure\ncreator. This behavior can be changed by disabling the\nautomatic_sp_privileges system variable. See\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-routines-privileges.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-procedure.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/alter-procedure.html'),(442,'BIT_COUNT',20,'Syntax:\nBIT_COUNT(N)\n\nReturns the number of bits that are set in the argument N.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html\n\n','mysql> SELECT BIT_COUNT(29), BIT_COUNT(b\'101010\');\n        -> 4, 3\n','http://dev.mysql.com/doc/refman/5.5/en/bit-functions.html'),(443,'OCTET_LENGTH',38,'Syntax:\nOCTET_LENGTH(str)\n\nOCTET_LENGTH() is a synonym for LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(444,'UTC_TIMESTAMP',32,'Syntax:\nUTC_TIMESTAMP, UTC_TIMESTAMP()\n\nReturns the current UTC date and time as a value in \'YYYY-MM-DD\nHH:MM:SS\' or YYYYMMDDHHMMSS.uuuuuu format, depending on whether the\nfunction is used in a string or numeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;\n        -> \'2003-08-14 18:08:04\', 20030814180804.000000\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(445,'AES_ENCRYPT',12,'Syntax:\nAES_ENCRYPT(str,key_str)\n\nAES_ENCRYPT() and AES_DECRYPT() enable encryption and decryption of\ndata using the official AES (Advanced Encryption Standard) algorithm,\npreviously known as \"Rijndael.\" Encoding with a 128-bit key length is\nused, but you can extend it up to 256 bits by modifying the source. We\nchose 128 bits because it is much faster and it is secure enough for\nmost purposes.\n\nAES_ENCRYPT() encrypts a string and returns a binary string.\nAES_DECRYPT() decrypts the encrypted string and returns the original\nstring. The input arguments may be any length. If either argument is\nNULL, the result of this function is also NULL.\n\nBecause AES is a block-level algorithm, padding is used to encode\nuneven length strings and so the result string length may be calculated\nusing this formula:\n\n16 * (trunc(string_length / 16) + 1)\n\nIf AES_DECRYPT() detects invalid data or incorrect padding, it returns\nNULL. However, it is possible for AES_DECRYPT() to return a non-NULL\nvalue (possibly garbage) if the input data or the key is invalid.\n\nYou can use the AES functions to store data in an encrypted form by\nmodifying your queries:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','INSERT INTO t VALUES (1,AES_ENCRYPT(\'text\',\'password\'));\n','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(446,'+',4,'Syntax:\n+\n\nAddition:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html\n\n','mysql> SELECT 3+5;\n        -> 8\n','http://dev.mysql.com/doc/refman/5.5/en/arithmetic-functions.html'),(447,'INET_NTOA',14,'Syntax:\nINET_NTOA(expr)\n\nGiven a numeric IPv4 network address in network byte order, returns the\ndotted-quad representation of the address as a string. INET_NTOA()\nreturns NULL if it does not understand its argument.\n\nAs of MySQL 5.5.3, the return value is a nonbinary string in the\nconnection character set. Before 5.5.3, the return value is a binary\nstring.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html\n\n','mysql> SELECT INET_NTOA(167773449);\n        -> \'10.0.5.9\'\n','http://dev.mysql.com/doc/refman/5.5/en/miscellaneous-functions.html'),(448,'ACOS',4,'Syntax:\nACOS(X)\n\nReturns the arc cosine of X, that is, the value whose cosine is X.\nReturns NULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT ACOS(1);\n        -> 0\nmysql> SELECT ACOS(1.0001);\n        -> NULL\nmysql> SELECT ACOS(0);\n        -> 1.5707963267949\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(449,'ISOLATION',8,'Syntax:\nSET [GLOBAL | SESSION] TRANSACTION ISOLATION LEVEL\n  {\n       REPEATABLE READ\n     | READ COMMITTED\n     | READ UNCOMMITTED\n     | SERIALIZABLE\n   }\n\nThis statement sets the transaction isolation level, used for\noperations on InnoDB tables.\n\nScope of the Isolation Level\n\nYou can set the isolation level globally, for the current session, or\nfor the next transaction:\n\no With the GLOBAL keyword, the statement sets the default transaction\n  level globally for all subsequent sessions. Existing sessions are\n  unaffected.\n\no With the SESSION keyword, the statement sets the default transaction\n  level for all subsequent transactions performed within the current\n  session.\n\no Without any SESSION or GLOBAL keyword, the statement sets the\n  isolation level for the next (not started) transaction performed\n  within the current session.\n\nA change to the global default isolation level requires the SUPER\nprivilege. Any session is free to change its session isolation level\n(even in the middle of a transaction), or the isolation level for its\nnext transaction.\n\nSET TRANSACTION ISOLATION LEVEL without GLOBAL or SESSION is not\npermitted while there is an active transaction:\n\nmysql> START TRANSACTION;\nQuery OK, 0 rows affected (0.02 sec)\n\nmysql> SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;\nERROR 1568 (25001): Transaction isolation level can\'t be changed\nwhile a transaction is in progress\n\nTo set the global default isolation level at server startup, use the\n--transaction-isolation=level option to mysqld on the command line or\nin an option file. Values of level for this option use dashes rather\nthan spaces, so the permissible values are READ-UNCOMMITTED,\nREAD-COMMITTED, REPEATABLE-READ, or SERIALIZABLE. For example, to set\nthe default isolation level to REPEATABLE READ, use these lines in the\n[mysqld] section of an option file:\n\n[mysqld]\ntransaction-isolation = REPEATABLE-READ\n\nIt is possible to check or set the global and session transaction\nisolation levels at runtime by using the tx_isolation system variable:\n\nSELECT @@GLOBAL.tx_isolation, @@tx_isolation;\nSET GLOBAL tx_isolation=\'REPEATABLE-READ\';\nSET SESSION tx_isolation=\'SERIALIZABLE\';\n\nDetails and Usage of Isolation Levels\n\nInnoDB supports each of the transaction isolation levels described here\nusing different locking strategies. You can enforce a high degree of\nconsistency with the default REPEATABLE READ level, for operations on\ncrucial data where ACID compliance is important. Or you can relax the\nconsistency rules with READ COMMITTED or even READ UNCOMMITTED, in\nsituations such as bulk reporting where precise consistency and\nrepeatable results are less important than minimizing the amount of\noverhead for locking. SERIALIZABLE enforces even stricter rules than\nREPEATABLE READ, and is used mainly in specialized situations, such as\nwith XA transactions and for troubleshooting issues with concurrency\nand deadlocks.\n\nFor full information about how these isolation levels work with InnoDB\ntransactions, see\nhttp://dev.mysql.com/doc/refman/5.5/en/innodb-transaction-model.html.\nIn particular, for additional information about InnoDB record-level\nlocks and how it uses them to execute various types of statements, see\nhttp://dev.mysql.com/doc/refman/5.5/en/innodb-record-level-locks.html\nand http://dev.mysql.com/doc/refman/5.5/en/innodb-locks-set.html.\n\nThe following list describes how MySQL supports the different\ntransaction levels. The list goes from the most commonly used level to\nthe least used.\n\no REPEATABLE READ\n\n  This is the default isolation level for InnoDB. For consistent reads,\n  there is an important difference from the READ COMMITTED isolation\n  level: All consistent reads within the same transaction read the\n  snapshot established by the first read. This convention means that if\n  you issue several plain (nonlocking) SELECT statements within the\n  same transaction, these SELECT statements are consistent also with\n  respect to each other. See\n  http://dev.mysql.com/doc/refman/5.5/en/innodb-consistent-read.html.\n\n  For locking reads (SELECT with FOR UPDATE or LOCK IN SHARE MODE),\n  UPDATE, and DELETE statements, locking depends on whether the\n  statement uses a unique index with a unique search condition, or a\n  range-type search condition. For a unique index with a unique search\n  condition, InnoDB locks only the index record found, not the gap\n  before it. For other search conditions, InnoDB locks the index range\n  scanned, using gap locks or next-key (gap plus index-record) locks to\n  block insertions by other sessions into the gaps covered by the\n  range.\n\no READ COMMITTED\n\n  A somewhat Oracle-like isolation level with respect to consistent\n  (nonlocking) reads: Each consistent read, even within the same\n  transaction, sets and reads its own fresh snapshot. See\n  http://dev.mysql.com/doc/refman/5.5/en/innodb-consistent-read.html.\n\n  For locking reads (SELECT with FOR UPDATE or LOCK IN SHARE MODE),\n  UPDATE statements, and DELETE statements, InnoDB locks only index\n  records, not the gaps before them, and thus permits the free\n  insertion of new records next to locked records.\n\n  *Note*: In MySQL 5.5, when READ COMMITTED isolation level is used or\n  the innodb_locks_unsafe_for_binlog system variable is enabled, there\n  is no InnoDB gap locking except for foreign-key constraint checking\n  and duplicate-key checking. Also, record locks for nonmatching rows\n  are released after MySQL has evaluated the WHERE condition. If you\n  use READ COMMITTED or enable innodb_locks_unsafe_for_binlog, you must\n  use row-based binary logging.\n\no READ UNCOMMITTED\n\n  SELECT statements are performed in a nonlocking fashion, but a\n  possible earlier version of a row might be used. Thus, using this\n  isolation level, such reads are not consistent. This is also called a\n  \"dirty read.\" Otherwise, this isolation level works like READ\n  COMMITTED.\n\no SERIALIZABLE\n\n  This level is like REPEATABLE READ, but InnoDB implicitly converts\n  all plain SELECT statements to SELECT ... LOCK IN SHARE MODE if\n  autocommit is disabled. If autocommit is enabled, the SELECT is its\n  own transaction. It therefore is known to be read only and can be\n  serialized if performed as a consistent (nonlocking) read and need\n  not block for other transactions. (To force a plain SELECT to block\n  if other transactions have modified the selected rows, disable\n  autocommit.)\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/set-transaction.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/set-transaction.html'),(450,'CEILING',4,'Syntax:\nCEILING(X)\n\nReturns the smallest integer value not less than X.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT CEILING(1.23);\n        -> 2\nmysql> SELECT CEILING(-1.23);\n        -> -1\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(451,'SIN',4,'Syntax:\nSIN(X)\n\nReturns the sine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT SIN(PI());\n        -> 1.2246063538224e-16\nmysql> SELECT ROUND(SIN(PI()));\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(452,'DAYOFWEEK',32,'Syntax:\nDAYOFWEEK(date)\n\nReturns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 =\nSaturday). These index values correspond to the ODBC standard.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT DAYOFWEEK(\'2007-02-03\');\n        -> 7\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(453,'SHOW PROCESSLIST',27,'Syntax:\nSHOW [FULL] PROCESSLIST\n\nSHOW PROCESSLIST shows you which threads are running. You can also get\nthis information from the INFORMATION_SCHEMA PROCESSLIST table or the\nmysqladmin processlist command. If you have the PROCESS privilege, you\ncan see all threads. Otherwise, you can see only your own threads (that\nis, threads associated with the MySQL account that you are using). If\nyou do not use the FULL keyword, only the first 100 characters of each\nstatement are shown in the Info field.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-processlist.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-processlist.html'),(454,'LINEFROMWKB',33,'LineFromWKB(wkb[,srid]), LineStringFromWKB(wkb[,srid])\n\nConstructs a LINESTRING value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(455,'GEOMETRYTYPE',37,'GeometryType(g)\n\nReturns as a binary string the name of the geometry type of which the\ngeometry instance g is a member. The name corresponds to one of the\ninstantiable Geometry subclasses.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SELECT GeometryType(GeomFromText(\'POINT(1 1)\'));\n+------------------------------------------+\n| GeometryType(GeomFromText(\'POINT(1 1)\')) |\n+------------------------------------------+\n| POINT                                    |\n+------------------------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(456,'CREATE VIEW',40,'Syntax:\nCREATE\n    [OR REPLACE]\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThe CREATE VIEW statement creates a new view, or replaces an existing\none if the OR REPLACE clause is given. If the view does not exist,\nCREATE OR REPLACE VIEW is the same as CREATE VIEW. If the view does\nexist, CREATE OR REPLACE VIEW is the same as ALTER VIEW.\n\nThe select_statement is a SELECT statement that provides the definition\nof the view. (When you select from the view, you select in effect using\nthe SELECT statement.) select_statement can select from base tables or\nother views.\n\nThe view definition is \"frozen\" at creation time, so changes to the\nunderlying tables afterward do not affect the view definition. For\nexample, if a view is defined as SELECT * on a table, new columns added\nto the table later do not become part of the view.\n\nThe ALGORITHM clause affects how MySQL processes the view. The DEFINER\nand SQL SECURITY clauses specify the security context to be used when\nchecking access privileges at view invocation time. The WITH CHECK\nOPTION clause can be given to constrain inserts or updates to rows in\ntables referenced by the view. These clauses are described later in\nthis section.\n\nThe CREATE VIEW statement requires the CREATE VIEW privilege for the\nview, and some privilege for each column selected by the SELECT\nstatement. For columns used elsewhere in the SELECT statement you must\nhave the SELECT privilege. If the OR REPLACE clause is present, you\nmust also have the DROP privilege for the view. CREATE VIEW might also\nrequire the SUPER privilege, depending on the DEFINER value, as\ndescribed later in this section.\n\nWhen a view is referenced, privilege checking occurs as described later\nin this section.\n\nA view belongs to a database. By default, a new view is created in the\ndefault database. To create the view explicitly in a given database,\nspecify the name as db_name.view_name when you create it:\n\nmysql> CREATE VIEW test.v AS SELECT * FROM t;\n\nWithin a database, base tables and views share the same namespace, so a\nbase table and a view cannot have the same name.\n\nColumns retrieved by the SELECT statement can be simple references to\ntable columns. They can also be expressions that use functions,\nconstant values, operators, and so forth.\n\nViews must have unique column names with no duplicates, just like base\ntables. By default, the names of the columns retrieved by the SELECT\nstatement are used for the view column names. To define explicit names\nfor the view columns, the optional column_list clause can be given as a\nlist of comma-separated identifiers. The number of names in column_list\nmust be the same as the number of columns retrieved by the SELECT\nstatement.\n\nUnqualified table or view names in the SELECT statement are interpreted\nwith respect to the default database. A view can refer to tables or\nviews in other databases by qualifying the table or view name with the\nproper database name.\n\nA view can be created from many kinds of SELECT statements. It can\nrefer to base tables or other views. It can use joins, UNION, and\nsubqueries. The SELECT need not even refer to any tables. The following\nexample defines a view that selects two columns from another table, as\nwell as an expression calculated from those columns:\n\nmysql> CREATE TABLE t (qty INT, price INT);\nmysql> INSERT INTO t VALUES(3, 50);\nmysql> CREATE VIEW v AS SELECT qty, price, qty*price AS value FROM t;\nmysql> SELECT * FROM v;\n+------+-------+-------+\n| qty  | price | value |\n+------+-------+-------+\n|    3 |    50 |   150 |\n+------+-------+-------+\n\nA view definition is subject to the following restrictions:\n\no The SELECT statement cannot contain a subquery in the FROM clause.\n\no The SELECT statement cannot refer to system or user variables.\n\no Within a stored program, the definition cannot refer to program\n  parameters or local variables.\n\no The SELECT statement cannot refer to prepared statement parameters.\n\no Any table or view referred to in the definition must exist. However,\n  after a view has been created, it is possible to drop a table or view\n  that the definition refers to. In this case, use of the view results\n  in an error. To check a view definition for problems of this kind,\n  use the CHECK TABLE statement.\n\no The definition cannot refer to a TEMPORARY table, and you cannot\n  create a TEMPORARY view.\n\no Any tables named in the view definition must exist at definition\n  time.\n\no You cannot associate a trigger with a view.\n\no Aliases for column names in the SELECT statement are checked against\n  the maximum column length of 64 characters (not the maximum alias\n  length of 256 characters).\n\nORDER BY is permitted in a view definition, but it is ignored if you\nselect from a view using a statement that has its own ORDER BY.\n\nFor other options or clauses in the definition, they are added to the\noptions or clauses of the statement that references the view, but the\neffect is undefined. For example, if a view definition includes a LIMIT\nclause, and you select from the view using a statement that has its own\nLIMIT clause, it is undefined which limit applies. This same principle\napplies to options such as ALL, DISTINCT, or SQL_SMALL_RESULT that\nfollow the SELECT keyword, and to clauses such as INTO, FOR UPDATE,\nLOCK IN SHARE MODE, and PROCEDURE.\n\nIf you create a view and then change the query processing environment\nby changing system variables, that may affect the results that you get\nfrom the view:\n\nmysql> CREATE VIEW v (mycol) AS SELECT \'abc\';\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET sql_mode = \'\';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT \"mycol\" FROM v;\n+-------+\n| mycol |\n+-------+\n| mycol |\n+-------+\n1 row in set (0.01 sec)\n\nmysql> SET sql_mode = \'ANSI_QUOTES\';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT \"mycol\" FROM v;\n+-------+\n| mycol |\n+-------+\n| abc   |\n+-------+\n1 row in set (0.00 sec)\n\nThe DEFINER and SQL SECURITY clauses determine which MySQL account to\nuse when checking access privileges for the view when a statement is\nexecuted that references the view. The valid SQL SECURITY\ncharacteristic values are DEFINER and INVOKER. These indicate that the\nrequired privileges must be held by the user who defined or invoked the\nview, respectively. The default SQL SECURITY value is DEFINER.\n\nIf a user value is given for the DEFINER clause, it should be a MySQL\naccount specified as \'user_name\'@\'host_name\' (the same format used in\nthe GRANT statement), CURRENT_USER, or CURRENT_USER(). The default\nDEFINER value is the user who executes the CREATE VIEW statement. This\nis the same as specifying DEFINER = CURRENT_USER explicitly.\n\nIf you specify the DEFINER clause, these rules determine the valid\nDEFINER user values:\n\no If you do not have the SUPER privilege, the only valid user value is\n  your own account, either specified literally or by using\n  CURRENT_USER. You cannot set the definer to some other account.\n\no If you have the SUPER privilege, you can specify any syntactically\n  valid account name. If the account does not actually exist, a warning\n  is generated.\n\no Although it is possible to create a view with a nonexistent DEFINER\n  account, an error occurs when the view is referenced if the SQL\n  SECURITY value is DEFINER but the definer account does not exist.\n\nFor more information about view security, see\nhttp://dev.mysql.com/doc/refman/5.5/en/stored-programs-security.html.\n\nWithin a view definition, CURRENT_USER returns the view\'s DEFINER value\nby default. For views defined with the SQL SECURITY INVOKER\ncharacteristic, CURRENT_USER returns the account for the view\'s\ninvoker. For information about user auditing within views, see\nhttp://dev.mysql.com/doc/refman/5.5/en/account-activity-auditing.html.\n\nWithin a stored routine that is defined with the SQL SECURITY DEFINER\ncharacteristic, CURRENT_USER returns the routine\'s DEFINER value. This\nalso affects a view defined within such a routine, if the view\ndefinition contains a DEFINER value of CURRENT_USER.\n\nView privileges are checked like this:\n\no At view definition time, the view creator must have the privileges\n  needed to use the top-level objects accessed by the view. For\n  example, if the view definition refers to table columns, the creator\n  must have some privilege for each column in the select list of the\n  definition, and the SELECT privilege for each column used elsewhere\n  in the definition. If the definition refers to a stored function,\n  only the privileges needed to invoke the function can be checked. The\n  privileges required at function invocation time can be checked only\n  as it executes: For different invocations, different execution paths\n  within the function might be taken.\n\no The user who references a view must have appropriate privileges to\n  access it (SELECT to select from it, INSERT to insert into it, and so\n  forth.)\n\no When a view has been referenced, privileges for objects accessed by\n  the view are checked against the privileges held by the view DEFINER\n  account or invoker, depending on whether the SQL SECURITY\n  characteristic is DEFINER or INVOKER, respectively.\n\no If reference to a view causes execution of a stored function,\n  privilege checking for statements executed within the function depend\n  on whether the function SQL SECURITY characteristic is DEFINER or\n  INVOKER. If the security characteristic is DEFINER, the function runs\n  with the privileges of the DEFINER account. If the characteristic is\n  INVOKER, the function runs with the privileges determined by the\n  view\'s SQL SECURITY characteristic.\n\nExample: A view might depend on a stored function, and that function\nmight invoke other stored routines. For example, the following view\ninvokes a stored function f():\n\nCREATE VIEW v AS SELECT * FROM t WHERE t.id = f(t.name);\n\nSuppose that f() contains a statement such as this:\n\nIF name IS NULL then\n  CALL p1();\nELSE\n  CALL p2();\nEND IF;\n\nThe privileges required for executing statements within f() need to be\nchecked when f() executes. This might mean that privileges are needed\nfor p1() or p2(), depending on the execution path within f(). Those\nprivileges must be checked at runtime, and the user who must possess\nthe privileges is determined by the SQL SECURITY values of the view v\nand the function f().\n\nThe DEFINER and SQL SECURITY clauses for views are extensions to\nstandard SQL. In standard SQL, views are handled using the rules for\nSQL SECURITY DEFINER. The standard says that the definer of the view,\nwhich is the same as the owner of the view\'s schema, gets applicable\nprivileges on the view (for example, SELECT) and may grant them. MySQL\nhas no concept of a schema \"owner\", so MySQL adds a clause to identify\nthe definer. The DEFINER clause is an extension where the intent is to\nhave what the standard has; that is, a permanent record of who defined\nthe view. This is why the default DEFINER value is the account of the\nview creator.\n\nThe optional ALGORITHM clause is a MySQL extension to standard SQL. It\naffects how MySQL processes the view. ALGORITHM takes three values:\nMERGE, TEMPTABLE, or UNDEFINED. The default algorithm is UNDEFINED if\nno ALGORITHM clause is present. For more information, see\nhttp://dev.mysql.com/doc/refman/5.5/en/view-algorithms.html.\n\nSome views are updatable. That is, you can use them in statements such\nas UPDATE, DELETE, or INSERT to update the contents of the underlying\ntable. For a view to be updatable, there must be a one-to-one\nrelationship between the rows in the view and the rows in the\nunderlying table. There are also certain other constructs that make a\nview nonupdatable.\n\nThe WITH CHECK OPTION clause can be given for an updatable view to\nprevent inserts or updates to rows except those for which the WHERE\nclause in the select_statement is true.\n\nIn a WITH CHECK OPTION clause for an updatable view, the LOCAL and\nCASCADED keywords determine the scope of check testing when the view is\ndefined in terms of another view. The LOCAL keyword restricts the CHECK\nOPTION only to the view being defined. CASCADED causes the checks for\nunderlying views to be evaluated as well. When neither keyword is\ngiven, the default is CASCADED.\n\nFor more information about updatable views and the WITH CHECK OPTION\nclause, see\nhttp://dev.mysql.com/doc/refman/5.5/en/view-updatability.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-view.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-view.html'),(457,'TRIM',38,'Syntax:\nTRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr\nFROM] str)\n\nReturns the string str with all remstr prefixes or suffixes removed. If\nnone of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is\nassumed. remstr is optional and, if not specified, spaces are removed.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT TRIM(\'  bar   \');\n        -> \'bar\'\nmysql> SELECT TRIM(LEADING \'x\' FROM \'xxxbarxxx\');\n        -> \'barxxx\'\nmysql> SELECT TRIM(BOTH \'x\' FROM \'xxxbarxxx\');\n        -> \'bar\'\nmysql> SELECT TRIM(TRAILING \'xyz\' FROM \'barxxyz\');\n        -> \'barx\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(458,'IS',19,'Syntax:\nIS boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;\n        -> 1, 1, 1\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(459,'GET_FORMAT',32,'Syntax:\nGET_FORMAT({DATE|TIME|DATETIME}, {\'EUR\'|\'USA\'|\'JIS\'|\'ISO\'|\'INTERNAL\'})\n\nReturns a format string. This function is useful in combination with\nthe DATE_FORMAT() and the STR_TO_DATE() functions.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT DATE_FORMAT(\'2003-10-03\',GET_FORMAT(DATE,\'EUR\'));\n        -> \'03.10.2003\'\nmysql> SELECT STR_TO_DATE(\'10.31.2003\',GET_FORMAT(DATE,\'USA\'));\n        -> \'2003-10-31\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(460,'TINYBLOB',23,'TINYBLOB\n\nA BLOB column with a maximum length of 255 (28 - 1) bytes. Each\nTINYBLOB value is stored using a 1-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(461,'SIGNAL',24,'Syntax:\nSIGNAL condition_value\n    [SET signal_information_item\n    [, signal_information_item] ...]\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n\nsignal_information_item:\n    condition_information_item_name = simple_value_specification\n\ncondition_information_item_name:\n    CLASS_ORIGIN\n  | SUBCLASS_ORIGIN\n  | MESSAGE_TEXT\n  | MYSQL_ERRNO\n  | CONSTRAINT_CATALOG\n  | CONSTRAINT_SCHEMA\n  | CONSTRAINT_NAME\n  | CATALOG_NAME\n  | SCHEMA_NAME\n  | TABLE_NAME\n  | COLUMN_NAME\n  | CURSOR_NAME\n\ncondition_name, simple_value_specification:\n    (see following discussion)\n\nSIGNAL is the way to \"return\" an error. SIGNAL provides error\ninformation to a handler, to an outer portion of the application, or to\nthe client. Also, it provides control over the error\'s characteristics\n(error number, SQLSTATE value, message). Without SIGNAL, it is\nnecessary to resort to workarounds such as deliberately referring to a\nnonexistent table to cause a routine to return an error.\n\nNo special privileges are required to execute the SIGNAL statement.\n\nThe condition_value in a SIGNAL statement indicates the error value to\nbe returned. It can be an SQLSTATE value (a 5-character string literal)\nor a condition_name that refers to a named condition previously defined\nwith DECLARE ... CONDITION (see [HELP DECLARE CONDITION]).\n\nAn SQLSTATE value can indicate errors, warnings, or \"not found.\" The\nfirst two characters of the value indicate its error class, as\ndiscussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/signal.html#signal-condition-inf\normation-items. Some signal values cause statement termination; see\nhttp://dev.mysql.com/doc/refman/5.5/en/signal.html#signal-effects.\n\nThe SQLSTATE value for a SIGNAL statement should not start with \'00\'\nbecause such values indicate success and are not valid for signaling an\nerror. This is true whether the SQLSTATE value is specified directly in\nthe SIGNAL statement or in a named condition referred to in the\nstatement. If the value is invalid, a Bad SQLSTATE error occurs.\n\nTo signal a generic SQLSTATE value, use \'45000\', which means \"unhandled\nuser-defined exception.\"\n\nThe SIGNAL statement optionally includes a SET clause that contains\nmultiple signal items, in a comma-separated list of\ncondition_information_item_name = simple_value_specification\nassignments.\n\nEach condition_information_item_name may be specified only once in the\nSET clause. Otherwise, a Duplicate condition information item error\noccurs.\n\nValid simple_value_specification designators can be specified using\nstored procedure or function parameters, stored program local variables\ndeclared with DECLARE, user-defined variables, system variables, or\nliterals. A character literal may include a _charset introducer.\n\nFor information about permissible condition_information_item_name\nvalues, see\nhttp://dev.mysql.com/doc/refman/5.5/en/signal.html#signal-condition-inf\normation-items.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/signal.html\n\n','CREATE PROCEDURE p (pval INT)\nBEGIN\n  DECLARE specialty CONDITION FOR SQLSTATE \'45000\';\n  IF pval = 0 THEN\n    SIGNAL SQLSTATE \'01000\';\n  ELSEIF pval = 1 THEN\n    SIGNAL SQLSTATE \'45000\'\n      SET MESSAGE_TEXT = \'An error occurred\';\n  ELSEIF pval = 2 THEN\n    SIGNAL specialty\n      SET MESSAGE_TEXT = \'An error occurred\';\n  ELSE\n    SIGNAL SQLSTATE \'01000\'\n      SET MESSAGE_TEXT = \'A warning occurred\', MYSQL_ERRNO = 1000;\n    SIGNAL SQLSTATE \'45000\'\n      SET MESSAGE_TEXT = \'An error occurred\', MYSQL_ERRNO = 1001;\n  END IF;\nEND;\n','http://dev.mysql.com/doc/refman/5.5/en/signal.html'),(462,'SAVEPOINT',8,'Syntax:\nSAVEPOINT identifier\nROLLBACK [WORK] TO [SAVEPOINT] identifier\nRELEASE SAVEPOINT identifier\n\nInnoDB supports the SQL statements SAVEPOINT, ROLLBACK TO SAVEPOINT,\nRELEASE SAVEPOINT and the optional WORK keyword for ROLLBACK.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/savepoint.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/savepoint.html'),(463,'USER',17,'Syntax:\nUSER()\n\nReturns the current MySQL user name and host name as a string in the\nutf8 character set.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT USER();\n        -> \'davida@localhost\'\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(464,'LABELS',24,'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nLabels are permitted for BEGIN ... END blocks and for the LOOP, REPEAT,\nand WHILE statements. Label use for those statements follows these\nrules:\n\no begin_label must be followed by a colon.\n\no begin_label can be given without end_label. If end_label is present,\n  it must be the same as begin_label.\n\no end_label cannot be given without begin_label.\n\no Labels at the same nesting level must be distinct.\n\no Labels can be up to 16 characters long.\n\nTo refer to a label within the labeled construct, use an ITERATE or\nLEAVE statement. The following example uses those statements to\ncontinue iterating or terminate the loop:\n\nCREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN ITERATE label1; END IF;\n    LEAVE label1;\n  END LOOP label1;\nEND;\n\nThe scope of a block label does not include the code for handlers\ndeclared within the block. For details, see [HELP DECLARE HANDLER].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/statement-labels.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/statement-labels.html'),(465,'ALTER TABLE',40,'Syntax:\nALTER [ONLINE | OFFLINE] [IGNORE] TABLE tbl_name\n    [alter_specification [, alter_specification] ...]\n    [partition_options]\n\nalter_specification:\n    table_options\n  | ADD [COLUMN] col_name column_definition\n        [FIRST | AFTER col_name ]\n  | ADD [COLUMN] (col_name column_definition,...)\n  | ADD {INDEX|KEY} [index_name]\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]] PRIMARY KEY\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]]\n        UNIQUE [INDEX|KEY] [index_name]\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD FULLTEXT [INDEX|KEY] [index_name]\n        (index_col_name,...) [index_option] ...\n  | ADD SPATIAL [INDEX|KEY] [index_name]\n        (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]]\n        FOREIGN KEY [index_name] (index_col_name,...)\n        reference_definition\n  | ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT}\n  | CHANGE [COLUMN] old_col_name new_col_name column_definition\n        [FIRST|AFTER col_name]\n  | MODIFY [COLUMN] col_name column_definition\n        [FIRST | AFTER col_name]\n  | DROP [COLUMN] col_name\n  | DROP PRIMARY KEY\n  | DROP {INDEX|KEY} index_name\n  | DROP FOREIGN KEY fk_symbol\n  | MAX_ROWS = rows\n  | DISABLE KEYS\n  | ENABLE KEYS\n  | RENAME [TO|AS] new_tbl_name\n  | ORDER BY col_name [, col_name] ...\n  | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]\n  | [DEFAULT] CHARACTER SET [=] charset_name [COLLATE [=] collation_name]\n  | DISCARD TABLESPACE\n  | IMPORT TABLESPACE\n  | FORCE\n  | ADD PARTITION (partition_definition)\n  | DROP PARTITION partition_names\n  | TRUNCATE PARTITION {partition_names | ALL}\n  | COALESCE PARTITION number\n  | REORGANIZE PARTITION [partition_names INTO (partition_definitions)]\n  | ANALYZE PARTITION {partition_names | ALL}\n  | CHECK PARTITION {partition_names | ALL}\n  | OPTIMIZE PARTITION {partition_names | ALL}\n  | REBUILD PARTITION {partition_names | ALL}\n  | REPAIR PARTITION {partition_names | ALL}\n  | PARTITION BY partitioning_expression\n  | REMOVE PARTITIONING\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n  | COMMENT \'string\'\n\ntable_options:\n    table_option [[,] table_option] ...  (see CREATE TABLE options)\n\npartition_options:\n    (see CREATE TABLE options)\n\nALTER TABLE changes the structure of a table. For example, you can add\nor delete columns, create or destroy indexes, change the type of\nexisting columns, or rename columns or the table itself. You can also\nchange characteristics such as the storage engine used for the table or\nthe table comment.\n\nPartitioning-related clauses for ALTER TABLE can be used with\npartitioned tables for repartitioning, for adding, dropping, merging,\nand splitting partitions, and for performing partitioning maintenance.\nIt is possible for an ALTER TABLE statement to contain a PARTITION BY\nor REMOVE PARTITIONING clause in an addition to other alter\nspecifications, but the PARTITION BY or REMOVE PARTITIONING clause must\nbe specified last after any other specifications. The ADD PARTITION,\nDROP PARTITION, COALESCE PARTITION, REORGANIZE PARTITION, ANALYZE\nPARTITION, CHECK PARTITION, and REPAIR PARTITION options cannot be\ncombined with other alter specifications in a single ALTER TABLE, since\nthe options just listed act on individual partitions. For more\ninformation, see\nhttp://dev.mysql.com/doc/refman/5.5/en/alter-table-partition-operations\n.html.\n\nFollowing the table name, specify the alterations to be made. If none\nare given, ALTER TABLE does nothing.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/alter-table.html'),(466,'MPOINTFROMWKB',33,'MPointFromWKB(wkb[,srid]), MultiPointFromWKB(wkb[,srid])\n\nConstructs a MULTIPOINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(467,'CHAR BYTE',23,'The CHAR BYTE data type is an alias for the BINARY data type. This is a\ncompatibility feature.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(468,'REPAIR TABLE',21,'Syntax:\nREPAIR [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n    [QUICK] [EXTENDED] [USE_FRM]\n\nREPAIR TABLE repairs a possibly corrupted table. By default, it has the\nsame effect as myisamchk --recover tbl_name. REPAIR TABLE works for\nMyISAM, ARCHIVE, and CSV tables. See\nhttp://dev.mysql.com/doc/refman/5.5/en/myisam-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.5/en/archive-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.5/en/csv-storage-engine.html\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nREPAIR TABLE is supported for partitioned tables. However, the USE_FRM\noption cannot be used with this statement on a partitioned table.\n\nYou can use ALTER TABLE ... REPAIR PARTITION to repair one or more\npartitions; for more information, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.5/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/repair-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/repair-table.html'),(469,'MERGE',18,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column and index\ninformation. You cannot merge MyISAM tables in which the columns are\nlisted in a different order, do not have exactly the same columns, or\nhave the indexes in different order. However, any or all of the MyISAM\ntables can be compressed with myisampack. See\nhttp://dev.mysql.com/doc/refman/5.5/en/myisampack.html. Differences in\ntable options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS do not\nmatter.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','http://dev.mysql.com/doc/refman/5.5/en/merge-storage-engine.html'),(470,'CREATE TABLE',40,'Syntax:\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    (create_definition,...)\n    [table_options]\n    [partition_options]\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    [(create_definition,...)]\n    [table_options]\n    [partition_options]\n    select_statement\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    { LIKE old_tbl_name | (LIKE old_tbl_name) }\n\ncreate_definition:\n    col_name column_definition\n  | [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...)\n      [index_option] ...\n  | {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n      [index_option] ...\n  | [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY]\n      [index_name] [index_type] (index_col_name,...)\n      [index_option] ...\n  | {FULLTEXT|SPATIAL} [INDEX|KEY] [index_name] (index_col_name,...)\n      [index_option] ...\n  | [CONSTRAINT [symbol]] FOREIGN KEY\n      [index_name] (index_col_name,...) reference_definition\n  | CHECK (expr)\n\ncolumn_definition:\n    data_type [NOT NULL | NULL] [DEFAULT default_value]\n      [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]\n      [COMMENT \'string\']\n      [COLUMN_FORMAT {FIXED|DYNAMIC|DEFAULT}]\n      [STORAGE {DISK|MEMORY|DEFAULT}]\n      [reference_definition]\n\ndata_type:\n    BIT[(length)]\n  | TINYINT[(length)] [UNSIGNED] [ZEROFILL]\n  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]\n  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]\n  | INT[(length)] [UNSIGNED] [ZEROFILL]\n  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]\n  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]\n  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DECIMAL[(length[,decimals])] [UNSIGNED] [ZEROFILL]\n  | NUMERIC[(length[,decimals])] [UNSIGNED] [ZEROFILL]\n  | DATE\n  | TIME\n  | TIMESTAMP\n  | DATETIME\n  | YEAR\n  | CHAR[(length)]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | VARCHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | BINARY[(length)]\n  | VARBINARY(length)\n  | TINYBLOB\n  | BLOB\n  | MEDIUMBLOB\n  | LONGBLOB\n  | TINYTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | TEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | MEDIUMTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | LONGTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | ENUM(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | SET(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | spatial_type\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n  | COMMENT \'string\'\n\nreference_definition:\n    REFERENCES tbl_name (index_col_name,...)\n      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]\n      [ON DELETE reference_option]\n      [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\ntable_options:\n    table_option [[,] table_option] ...\n\ntable_option:\n    ENGINE [=] engine_name\n  | AUTO_INCREMENT [=] value\n  | AVG_ROW_LENGTH [=] value\n  | [DEFAULT] CHARACTER SET [=] charset_name\n  | CHECKSUM [=] {0 | 1}\n  | [DEFAULT] COLLATE [=] collation_name\n  | COMMENT [=] \'string\'\n  | CONNECTION [=] \'connect_string\'\n  | DATA DIRECTORY [=] \'absolute path to directory\'\n  | DELAY_KEY_WRITE [=] {0 | 1}\n  | INDEX DIRECTORY [=] \'absolute path to directory\'\n  | INSERT_METHOD [=] { NO | FIRST | LAST }\n  | KEY_BLOCK_SIZE [=] value\n  | MAX_ROWS [=] value\n  | MIN_ROWS [=] value\n  | PACK_KEYS [=] {0 | 1 | DEFAULT}\n  | PASSWORD [=] \'string\'\n  | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT}\n  | TABLESPACE tablespace_name [STORAGE {DISK|MEMORY|DEFAULT}]\n  | UNION [=] (tbl_name[,tbl_name]...)\n\npartition_options:\n    PARTITION BY\n        { [LINEAR] HASH(expr)\n        | [LINEAR] KEY [ALGORITHM={1|2}] (column_list)\n        | RANGE{(expr) | COLUMNS(column_list)}\n        | LIST{(expr) | COLUMNS(column_list)} }\n    [PARTITIONS num]\n    [SUBPARTITION BY\n        { [LINEAR] HASH(expr)\n        | [LINEAR] KEY [ALGORITHM={1|2}] (column_list) }\n      [SUBPARTITIONS num]\n    ]\n    [(partition_definition [, partition_definition] ...)]\n\npartition_definition:\n    PARTITION partition_name\n        [VALUES \n            {LESS THAN {(expr | value_list) | MAXVALUE} \n            | \n            IN (value_list)}]\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] \'comment_text\' ]\n        [DATA DIRECTORY [=] \'data_dir\']\n        [INDEX DIRECTORY [=] \'index_dir\']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [TABLESPACE [=] tablespace_name]\n        [NODEGROUP [=] node_group_id]\n        [(subpartition_definition [, subpartition_definition] ...)]\n\nsubpartition_definition:\n    SUBPARTITION logical_name\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] \'comment_text\' ]\n        [DATA DIRECTORY [=] \'data_dir\']\n        [INDEX DIRECTORY [=] \'index_dir\']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [TABLESPACE [=] tablespace_name]\n        [NODEGROUP [=] node_group_id]\n\nselect_statement:\n    [IGNORE | REPLACE] [AS] SELECT ...   (Some valid select statement)\n\nCREATE TABLE creates a table with the given name. You must have the\nCREATE privilege for the table.\n\nRules for permissible table names are given in\nhttp://dev.mysql.com/doc/refman/5.5/en/identifiers.html. By default,\nthe table is created in the default database, using the InnoDB storage\nengine. An error occurs if the table exists, if there is no default\ndatabase, or if the database does not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/create-table.html'),(471,'>',19,'Syntax:\n>\n\nGreater than:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT 2 > 2;\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(472,'ANALYZE TABLE',21,'Syntax:\nANALYZE [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n\nANALYZE TABLE analyzes and stores the key distribution for a table.\nDuring the analysis, the table is locked with a read lock for InnoDB\nand MyISAM. This statement works with InnoDB, NDB, and MyISAM tables.\nFor MyISAM tables, this statement is equivalent to using myisamchk\n--analyze.\n\nFor more information on how the analysis works within InnoDB, see\nhttp://dev.mysql.com/doc/refman/5.5/en/innodb-restrictions.html.\n\nMySQL uses the stored key distribution to decide the order in which\ntables should be joined when you perform a join on something other than\na constant. In addition, key distributions can be used when deciding\nwhich indexes to use for a specific table within a query.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nANALYZE TABLE is supported for partitioned tables, and you can use\nALTER TABLE ... ANALYZE PARTITION to analyze one or more partitions;\nfor more information, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.5/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/analyze-table.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/analyze-table.html'),(473,'MICROSECOND',32,'Syntax:\nMICROSECOND(expr)\n\nReturns the microseconds from the time or datetime expression expr as a\nnumber in the range from 0 to 999999.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT MICROSECOND(\'12:00:00.123456\');\n        -> 123456\nmysql> SELECT MICROSECOND(\'2009-12-31 23:59:59.000010\');\n        -> 10\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(474,'CONSTRAINT',40,'MySQL supports foreign keys, which let you cross-reference related data\nacross tables, and foreign key constraints, which help keep this\nspread-out data consistent. The essential syntax for a foreign key\nconstraint definition in a CREATE TABLE or ALTER TABLE statement looks\nlike this:\n\n[CONSTRAINT [symbol]] FOREIGN KEY\n    [index_name] (index_col_name, ...)\n    REFERENCES tbl_name (index_col_name,...)\n    [ON DELETE reference_option]\n    [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-table-foreign-keys.html\n\n','CREATE TABLE product (\n    category INT NOT NULL, id INT NOT NULL,\n    price DECIMAL,\n    PRIMARY KEY(category, id)\n)   ENGINE=INNODB;\n\nCREATE TABLE customer (\n    id INT NOT NULL,\n    PRIMARY KEY (id)\n)   ENGINE=INNODB;\n\nCREATE TABLE product_order (\n    no INT NOT NULL AUTO_INCREMENT,\n    product_category INT NOT NULL,\n    product_id INT NOT NULL,\n    customer_id INT NOT NULL,\n\n    PRIMARY KEY(no),\n    INDEX (product_category, product_id),\n    INDEX (customer_id),\n\n    FOREIGN KEY (product_category, product_id)\n      REFERENCES product(category, id)\n      ON UPDATE CASCADE ON DELETE RESTRICT,\n\n    FOREIGN KEY (customer_id)\n      REFERENCES customer(id)\n)   ENGINE=INNODB;\n','http://dev.mysql.com/doc/refman/5.5/en/create-table-foreign-keys.html'),(475,'CREATE SERVER',40,'Syntax:\nCREATE SERVER server_name\n    FOREIGN DATA WRAPPER wrapper_name\n    OPTIONS (option [, option] ...)\n\noption:\n  { HOST character-literal\n  | DATABASE character-literal\n  | USER character-literal\n  | PASSWORD character-literal\n  | SOCKET character-literal\n  | OWNER character-literal\n  | PORT numeric-literal }\n\nThis statement creates the definition of a server for use with the\nFEDERATED storage engine. The CREATE SERVER statement creates a new row\nin the servers table in the mysql database. This statement requires the\nSUPER privilege.\n\nThe server_name should be a unique reference to the server. Server\ndefinitions are global within the scope of the server, it is not\npossible to qualify the server definition to a specific database.\nserver_name has a maximum length of 64 characters (names longer than 64\ncharacters are silently truncated), and is case insensitive. You may\nspecify the name as a quoted string.\n\nThe wrapper_name should be mysql, and may be quoted with single\nquotation marks. Other values for wrapper_name are not currently\nsupported.\n\nFor each option you must specify either a character literal or numeric\nliteral. Character literals are UTF-8, support a maximum length of 64\ncharacters and default to a blank (empty) string. String literals are\nsilently truncated to 64 characters. Numeric literals must be a number\nbetween 0 and 9999, default value is 0.\n\n*Note*: The OWNER option is currently not applied, and has no effect on\nthe ownership or operation of the server connection that is created.\n\nThe CREATE SERVER statement creates an entry in the mysql.servers table\nthat can later be used with the CREATE TABLE statement when creating a\nFEDERATED table. The options that you specify will be used to populate\nthe columns in the mysql.servers table. The table columns are\nServer_name, Host, Db, Username, Password, Port and Socket.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/create-server.html\n\n','CREATE SERVER s\nFOREIGN DATA WRAPPER mysql\nOPTIONS (USER \'Remote\', HOST \'192.168.1.106\', DATABASE \'test\');\n','http://dev.mysql.com/doc/refman/5.5/en/create-server.html'),(476,'FIELD',38,'Syntax:\nFIELD(str,str1,str2,str3,...)\n\nReturns the index (position) of str in the str1, str2, str3, ... list.\nReturns 0 if str is not found.\n\nIf all arguments to FIELD() are strings, all arguments are compared as\nstrings. If all arguments are numbers, they are compared as numbers.\nOtherwise, the arguments are compared as double.\n\nIf str is NULL, the return value is 0 because NULL fails equality\ncomparison with any value. FIELD() is the complement of ELT().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT FIELD(\'ej\', \'Hej\', \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> 2\nmysql> SELECT FIELD(\'fo\', \'Hej\', \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(477,'MAKETIME',32,'Syntax:\nMAKETIME(hour,minute,second)\n\nReturns a time value calculated from the hour, minute, and second\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT MAKETIME(12,15,30);\n        -> \'12:15:30\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(478,'CURDATE',32,'Syntax:\nCURDATE()\n\nReturns the current date as a value in \'YYYY-MM-DD\' or YYYYMMDD format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT CURDATE();\n        -> \'2008-06-13\'\nmysql> SELECT CURDATE() + 0;\n        -> 20080613\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(479,'SET PASSWORD',10,'Syntax:\nSET PASSWORD [FOR user] =\n    {\n        PASSWORD(\'cleartext password\')\n      | OLD_PASSWORD(\'cleartext password\')\n      | \'encrypted password\'\n    }\n\nThe SET PASSWORD statement assigns a password to an existing MySQL user\naccount. When the read_only system variable is enabled, the SUPER\nprivilege is required to use SET PASSWORD, in addition to whatever\nother privileges might be required.\n\nIf the password is specified using the PASSWORD() or OLD_PASSWORD()\nfunction, the cleartext (unencrypted) password should be given as the\nargument to the function, which hashes the password and returns the\nencrypted password string. If the password is specified without using\neither function, it should be the already encrypted password value as a\nliteral string. In all cases, the encrypted password string must be in\nthe format required by the authentication method used for the account.\n\nWith no FOR user clause, this statement sets the password for the\ncurrent user. (To see which account the server authenticated you as,\ninvoke the CURRENT_USER() function.) Any client who successfully\nconnects to the server using a nonanonymous account can change the\npassword for that account.\n\nWith a FOR user clause, this statement sets the password for the named\nuser. You must have the UPDATE privilege for the mysql database to do\nthis. The user account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.5/en/account-names.html. The user\nvalue should be given as \'user_name\'@\'host_name\', where \'user_name\' and\n\'host_name\' are exactly as listed in the User and Host columns of the\nmysql.user table row. (If you specify only a user name, a host name of\n\'%\' is used.) For example, to set the password for an account with User\nand Host column values of \'bob\' and \'%.example.org\', write the\nstatement like this:\n\nSET PASSWORD FOR \'bob\'@\'%.example.org\' = PASSWORD(\'cleartext password\');\n\nThat is equivalent to the following statements:\n\nUPDATE mysql.user SET Password=PASSWORD(\'cleartext password\')\n  WHERE User=\'bob\' AND Host=\'%.example.org\';\nFLUSH PRIVILEGES;\n\nAnother way to set the password is to use GRANT:\n\nGRANT USAGE ON *.* TO \'bob\'@\'%.example.org\' IDENTIFIED BY \'cleartext password\';\n\nThe old_passwords system variable value determines the hashing method\nused by PASSWORD(). If you specify the password using that function and\nSET PASSWORD rejects the password as not being in the correct format,\nit may be necessary to set old_passwords to change the hashing method.\nFor descriptions of the permitted values, see\nhttp://dev.mysql.com/doc/refman/5.5/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/set-password.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/set-password.html'),(480,'ALTER TABLESPACE',40,'Syntax:\nALTER TABLESPACE tablespace_name\n    {ADD|DROP} DATAFILE \'file_name\'\n    [INITIAL_SIZE [=] size]\n    [WAIT]\n    ENGINE [=] engine_name\n\nThis statement can be used either to add a new data file, or to drop a\ndata file from a tablespace.\n\nThe ADD DATAFILE variant enables you to specify an initial size using\nan INITIAL_SIZE clause, where size is measured in bytes; the default\nvalue is 128M (128 megabytes). You may optionally follow this integer\nvalue with a one-letter abbreviation for an order of magnitude, similar\nto those used in my.cnf. Generally, this is one of the letters M (for\nmegabytes) or G (for gigabytes).\n\n*Note*: All MySQL Cluster Disk Data objects share the same namespace.\nThis means that each Disk Data object must be uniquely named (and not\nmerely each Disk Data object of a given type). For example, you cannot\nhave a tablespace and an data file with the same name, or an undo log\nfile and a tablespace with the same name.\n\nOn 32-bit systems, the maximum supported value for INITIAL_SIZE is 4G.\n(Bug #29186)\n\nINITIAL_SIZE is rounded, explicitly, as for CREATE TABLESPACE.\n\nOnce a data file has been created, its size cannot be changed; however,\nyou can add more data files to the tablespace using additional ALTER\nTABLESPACE ... ADD DATAFILE statements.\n\nUsing DROP DATAFILE with ALTER TABLESPACE drops the data file\n\'file_name\' from the tablespace. You cannot drop a data file from a\ntablespace which is in use by any table; in other words, the data file\nmust be empty (no extents used). See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-cluster-disk-data-objects.\nhtml. In addition, any data file to be dropped must previously have\nbeen added to the tablespace with CREATE TABLESPACE or ALTER\nTABLESPACE.\n\nBoth ALTER TABLESPACE ... ADD DATAFILE and ALTER TABLESPACE ... DROP\nDATAFILE require an ENGINE clause which specifies the storage engine\nused by the tablespace. Currently, the only accepted values for\nengine_name are NDB and NDBCLUSTER.\n\nWAIT is parsed but otherwise ignored, and so has no effect in MySQL\n5.5. It is intended for future expansion.\n\nWhen ALTER TABLESPACE ... ADD DATAFILE is used with ENGINE = NDB, a\ndata file is created on each Cluster data node. You can verify that the\ndata files were created and obtain information about them by querying\nthe INFORMATION_SCHEMA.FILES table. For example, the following query\nshows all data files belonging to the tablespace named newts:\n\nmysql> SELECT LOGFILE_GROUP_NAME, FILE_NAME, EXTRA\n    -> FROM INFORMATION_SCHEMA.FILES\n    -> WHERE TABLESPACE_NAME = \'newts\' AND FILE_TYPE = \'DATAFILE\';\n+--------------------+--------------+----------------+\n| LOGFILE_GROUP_NAME | FILE_NAME    | EXTRA          |\n+--------------------+--------------+----------------+\n| lg_3               | newdata.dat  | CLUSTER_NODE=3 |\n| lg_3               | newdata.dat  | CLUSTER_NODE=4 |\n| lg_3               | newdata2.dat | CLUSTER_NODE=3 |\n| lg_3               | newdata2.dat | CLUSTER_NODE=4 |\n+--------------------+--------------+----------------+\n2 rows in set (0.03 sec)\n\nSee http://dev.mysql.com/doc/refman/5.5/en/files-table.html.\n\nALTER TABLESPACE is useful only with Disk Data storage for MySQL\nCluster. See\nhttp://dev.mysql.com/doc/refman/5.5/en/mysql-cluster-disk-data.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/alter-tablespace.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/alter-tablespace.html'),(481,'IF FUNCTION',7,'Syntax:\nIF(expr1,expr2,expr3)\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns\nexpr2; otherwise it returns expr3. IF() returns a numeric or string\nvalue, depending on the context in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html\n\n','mysql> SELECT IF(1>2,2,3);\n        -> 3\nmysql> SELECT IF(1<2,\'yes\',\'no\');\n        -> \'yes\'\nmysql> SELECT IF(STRCMP(\'test\',\'test1\'),\'no\',\'yes\');\n        -> \'no\'\n','http://dev.mysql.com/doc/refman/5.5/en/control-flow-functions.html'),(482,'ENUM',23,'ENUM(\'value1\',\'value2\',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nAn enumeration. A string object that can have only one value, chosen\nfrom the list of values \'value1\', \'value2\', ..., NULL or the special \'\'\nerror value. ENUM values are represented internally as integers.\n\nAn ENUM column can have a maximum of 65,535 distinct elements. (The\npractical limit is less than 3000.) A table can have no more than 255\nunique element list definitions among its ENUM and SET columns\nconsidered as a group. For more information on these limits, see\nhttp://dev.mysql.com/doc/refman/5.5/en/limits-frm-file.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(483,'DATABASE',17,'Syntax:\nDATABASE()\n\nReturns the default (current) database name as a string in the utf8\ncharacter set. If there is no default database, DATABASE() returns\nNULL. Within a stored routine, the default database is the database\nthat the routine is associated with, which is not necessarily the same\nas the database that is the default in the calling context.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT DATABASE();\n        -> \'test\'\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(484,'POINTFROMWKB',33,'PointFromWKB(wkb[,srid])\n\nConstructs a POINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/creating-spatial-values.html'),(485,'POWER',4,'Syntax:\nPOWER(X,Y)\n\nThis is a synonym for POW().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(486,'ATAN',4,'Syntax:\nATAN(X)\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT ATAN(2);\n        -> 1.1071487177941\nmysql> SELECT ATAN(-2);\n        -> -1.1071487177941\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(487,'STRCMP',38,'Syntax:\nSTRCMP(expr1,expr2)\n\nSTRCMP() returns 0 if the strings are the same, -1 if the first\nargument is smaller than the second according to the current sort\norder, and 1 otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html\n\n','mysql> SELECT STRCMP(\'text\', \'text2\');\n        -> -1\nmysql> SELECT STRCMP(\'text2\', \'text\');\n        -> 1\nmysql> SELECT STRCMP(\'text\', \'text\');\n        -> 0\n','http://dev.mysql.com/doc/refman/5.5/en/string-comparison-functions.html'),(488,'INSERT DELAYED',28,'Syntax:\nINSERT DELAYED ...\n\nThe DELAYED option for the INSERT statement is a MySQL extension to\nstandard SQL that is very useful if you have clients that cannot or\nneed not wait for the INSERT to complete. This is a common situation\nwhen you use MySQL for logging and you also periodically run SELECT and\nUPDATE statements that take a long time to complete.\n\nWhen a client uses INSERT DELAYED, it gets an okay from the server at\nonce, and the row is queued to be inserted when the table is not in use\nby any other thread.\n\nAnother major benefit of using INSERT DELAYED is that inserts from many\nclients are bundled together and written in one block. This is much\nfaster than performing many separate inserts.\n\nNote that INSERT DELAYED is slower than a normal INSERT if the table is\nnot otherwise in use. There is also the additional overhead for the\nserver to handle a separate thread for each table for which there are\ndelayed rows. This means that you should use INSERT DELAYED only when\nyou are really sure that you need it.\n\nThe queued rows are held only in memory until they are inserted into\nthe table. This means that if you terminate mysqld forcibly (for\nexample, with kill -9) or if mysqld dies unexpectedly, any queued rows\nthat have not been written to disk are lost.\n\nThere are some constraints on the use of DELAYED:\n\no INSERT DELAYED works only with MyISAM, MEMORY, ARCHIVE, and BLACKHOLE\n  tables. For engines that do not support DELAYED, an error occurs.\n\no An error occurs for INSERT DELAYED if used with a table that has been\n  locked with LOCK TABLES because the insert must be handled by a\n  separate thread, not by the session that holds the lock.\n\no For MyISAM tables, if there are no free blocks in the middle of the\n  data file, concurrent SELECT and INSERT statements are supported.\n  Under these circumstances, you very seldom need to use INSERT DELAYED\n  with MyISAM.\n\no INSERT DELAYED should be used only for INSERT statements that specify\n  value lists. The server ignores DELAYED for INSERT ... SELECT or\n  INSERT ... ON DUPLICATE KEY UPDATE statements.\n\no Because the INSERT DELAYED statement returns immediately, before the\n  rows are inserted, you cannot use LAST_INSERT_ID() to get the\n  AUTO_INCREMENT value that the statement might generate.\n\no DELAYED rows are not visible to SELECT statements until they actually\n  have been inserted.\n\no Prior to MySQL 5.5.7, INSERT DELAYED was treated as a normal INSERT\n  if the statement inserted multiple rows, binary logging was enabled,\n  and the global logging format was statement-based (that is, whenever\n  binlog_format was set to STATEMENT). Beginning with MySQL 5.5.7,\n  INSERT DELAYED is always handled as a simple INSERT (that is, without\n  the DELAYED option) whenever the value of binlog_format is STATEMENT\n  or MIXED. (In the latter case, the statement no longer triggers a\n  switch to row-based logging, and so is logged using the\n  statement-based format.)\n\n  This does not apply when using row-based binary logging mode\n  (binlog_format set to ROW), in which INSERT DELAYED statements are\n  always executed using the DELAYED option as specified, and logged as\n  row-update events.\n\no DELAYED is ignored on slave replication servers, so that INSERT\n  DELAYED is treated as a normal INSERT on slaves. This is because\n  DELAYED could cause the slave to have different data than the master.\n\no Pending INSERT DELAYED statements are lost if a table is write locked\n  and ALTER TABLE is used to modify the table structure.\n\no INSERT DELAYED is not supported for views.\n\no INSERT DELAYED is not supported for partitioned tables.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/insert-delayed.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/insert-delayed.html'),(489,'SHOW PROFILE',27,'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype:\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\nProfiling is controlled by the profiling session variable, which has a\ndefault value of 0 (OFF). Profiling is enabled by setting profiling to\n1 or ON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nserver. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILE and SHOW PROFILES, so\nyou will find neither of those statements in the profile list.\nMalformed statements are profiled. For example, SHOW PROFILING is an\nillegal statement, and a syntax error occurs if you try to execute it,\nbut it will show up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthough there might be some minor differences in interpretion for the\ntwo statements for some status values (see\nhttp://dev.mysql.com/doc/refman/5.5/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-profile.html\n\n','mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.5/en/show-profile.html'),(490,'SHOW PROCEDURE CODE',27,'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nBoth statements require that you be the owner of the routine or have\nSELECT access to the mysql.proc table.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-procedure-code.html\n\n','mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n    -> BEGIN\n    ->   DECLARE fanta INT DEFAULT 55;\n    ->   DROP TABLE t2;\n    ->   LOOP\n    ->     INSERT INTO t3 VALUES (fanta);\n    ->     END LOOP;\n    ->   END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n','http://dev.mysql.com/doc/refman/5.5/en/show-procedure-code.html'),(491,'MEDIUMTEXT',23,'MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 16,777,215 (224 - 1) characters.\nThe effective maximum length is less if the value contains multi-byte\ncharacters. Each MEDIUMTEXT value is stored using a 3-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/string-type-overview.html'),(492,'LN',4,'Syntax:\nLN(X)\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X.\nIf X is less than or equal to 0, then NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT LN(2);\n        -> 0.69314718055995\nmysql> SELECT LN(-2);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(493,'RETURN',24,'Syntax:\nRETURN expr\n\nThe RETURN statement terminates execution of a stored function and\nreturns the value expr to the function caller. There must be at least\none RETURN statement in a stored function. There may be more than one\nif the function has multiple exit points.\n\nThis statement is not used in stored procedures, triggers, or events.\nThe LEAVE statement can be used to exit a stored program of those\ntypes.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/return.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/return.html'),(494,'SHOW COLLATION',27,'Syntax:\nSHOW COLLATION\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement lists collations supported by the server. By default,\nthe output from SHOW COLLATION includes all available collations. The\nLIKE clause, if present, indicates which collation names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.5/en/extended-show.html. For example:\n\nmysql> SHOW COLLATION LIKE \'latin1%\';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         |          |       0 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       0 |\n| latin1_danish_ci  | latin1  | 15 |         |          |       0 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       0 |\n| latin1_general_ci | latin1  | 48 |         |          |       0 |\n| latin1_general_cs | latin1  | 49 |         |          |       0 |\n| latin1_spanish_ci | latin1  | 94 |         |          |       0 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/show-collation.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/show-collation.html'),(495,'LOG',4,'Syntax:\nLOG(X), LOG(B,X)\n\nIf called with one parameter, this function returns the natural\nlogarithm of X. If X is less than or equal to 0, then NULL is returned.\n\nThe inverse of this function (when called with a single argument) is\nthe EXP() function.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT LOG(2);\n        -> 0.69314718055995\nmysql> SELECT LOG(-2);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(496,'SET SQL_LOG_BIN',8,'Syntax:\nSET sql_log_bin = {0|1}\n\nThe sql_log_bin variable controls whether logging to the binary log is\ndone. The default value is 1 (do logging). To change logging for the\ncurrent session, change the session value of this variable. The session\nuser must have the SUPER privilege to set this variable.\n\nBeginning with MySQL 5.5.5, it is no longer possible to set\n@@session.sql_log_bin within a transaction or subquery. (Bug #53437)\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/set-sql-log-bin.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/set-sql-log-bin.html'),(497,'!=',19,'Syntax:\n<>, !=\n\nNot equal:\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT \'.01\' <> \'0.01\';\n        -> 1\nmysql> SELECT .01 <> \'0.01\';\n        -> 0\nmysql> SELECT \'zapp\' <> \'zappp\';\n        -> 1\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(498,'WHILE',24,'Syntax:\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nThe statement list within a WHILE statement is repeated as long as the\nsearch_condition expression is true. statement_list consists of one or\nmore SQL statements, each terminated by a semicolon (;) statement\ndelimiter.\n\nA WHILE statement can be labeled. For the rules regarding label use,\nsee [HELP labels].\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/while.html\n\n','CREATE PROCEDURE dowhile()\nBEGIN\n  DECLARE v1 INT DEFAULT 5;\n\n  WHILE v1 > 0 DO\n    ...\n    SET v1 = v1 - 1;\n  END WHILE;\nEND;\n','http://dev.mysql.com/doc/refman/5.5/en/while.html'),(499,'AES_DECRYPT',12,'Syntax:\nAES_DECRYPT(crypt_str,key_str)\n\nThis function decrypts data using the official AES (Advanced Encryption\nStandard) algorithm. For more information, see the description of\nAES_ENCRYPT().\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html'),(500,'DAYNAME',32,'Syntax:\nDAYNAME(date)\n\nReturns the name of the weekday for date. The language used for the\nname is controlled by the value of the lc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.5/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html\n\n','mysql> SELECT DAYNAME(\'2007-02-03\');\n        -> \'Saturday\'\n','http://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html'),(501,'COERCIBILITY',17,'Syntax:\nCOERCIBILITY(str)\n\nReturns the collation coercibility value of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT COERCIBILITY(\'abc\' COLLATE latin1_swedish_ci);\n        -> 0\nmysql> SELECT COERCIBILITY(USER());\n        -> 3\nmysql> SELECT COERCIBILITY(\'abc\');\n        -> 4\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(502,'INT',23,'INT[(M)] [UNSIGNED] [ZEROFILL]\n\nA normal-size integer. The signed range is -2147483648 to 2147483647.\nThe unsigned range is 0 to 4294967295.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html\n\n','','http://dev.mysql.com/doc/refman/5.5/en/numeric-type-overview.html'),(503,'GLENGTH',13,'GLength(ls)\n\nReturns as a double-precision number the length of the LineString value\nls in its associated spatial reference.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html\n\n','mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT GLength(GeomFromText(@ls));\n+----------------------------+\n| GLength(GeomFromText(@ls)) |\n+----------------------------+\n|            2.8284271247462 |\n+----------------------------+\n','http://dev.mysql.com/doc/refman/5.5/en/geometry-property-functions.html'),(504,'RADIANS',4,'Syntax:\nRADIANS(X)\n\nReturns the argument X, converted from degrees to radians. (Note that\nπ radians equals 180 degrees.)\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html\n\n','mysql> SELECT RADIANS(90);\n        -> 1.5707963267949\n','http://dev.mysql.com/doc/refman/5.5/en/mathematical-functions.html'),(505,'COLLATION',17,'Syntax:\nCOLLATION(str)\n\nReturns the collation of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT COLLATION(\'abc\');\n        -> \'latin1_swedish_ci\'\nmysql> SELECT COLLATION(_utf8\'abc\');\n        -> \'utf8_general_ci\'\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(506,'COALESCE',19,'Syntax:\nCOALESCE(value,...)\n\nReturns the first non-NULL value in the list, or NULL if there are no\nnon-NULL values.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html\n\n','mysql> SELECT COALESCE(NULL,1);\n        -> 1\nmysql> SELECT COALESCE(NULL,NULL,NULL);\n        -> NULL\n','http://dev.mysql.com/doc/refman/5.5/en/comparison-operators.html'),(507,'VERSION',17,'Syntax:\nVERSION()\n\nReturns a string that indicates the MySQL server version. The string\nuses the utf8 character set. The value might have a suffix in addition\nto the version number. See the description of the version system\nvariable in\nhttp://dev.mysql.com/doc/refman/5.5/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/information-functions.html\n\n','mysql> SELECT VERSION();\n        -> \'5.5.33-standard\'\n','http://dev.mysql.com/doc/refman/5.5/en/information-functions.html'),(508,'MAKE_SET',38,'Syntax:\nMAKE_SET(bits,str1,str2,...)\n\nReturns a set value (a string containing substrings separated by \",\"\ncharacters) consisting of the strings that have the corresponding bit\nin bits set. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL\nvalues in str1, str2, ... are not appended to the result.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT MAKE_SET(1,\'a\',\'b\',\'c\');\n        -> \'a\'\nmysql> SELECT MAKE_SET(1 | 4,\'hello\',\'nice\',\'world\');\n        -> \'hello,world\'\nmysql> SELECT MAKE_SET(1 | 4,\'hello\',\'nice\',NULL,\'world\');\n        -> \'hello\'\nmysql> SELECT MAKE_SET(0,\'a\',\'b\',\'c\');\n        -> \'\'\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html'),(509,'FIND_IN_SET',38,'Syntax:\nFIND_IN_SET(str,strlist)\n\nReturns a value in the range of 1 to N if the string str is in the\nstring list strlist consisting of N substrings. A string list is a\nstring composed of substrings separated by \",\" characters. If the first\nargument is a constant string and the second is a column of type SET,\nthe FIND_IN_SET() function is optimized to use bit arithmetic. Returns\n0 if str is not in strlist or if strlist is the empty string. Returns\nNULL if either argument is NULL. This function does not work properly\nif the first argument contains a comma (\",\") character.\n\nURL: http://dev.mysql.com/doc/refman/5.5/en/string-functions.html\n\n','mysql> SELECT FIND_IN_SET(\'b\',\'a,b,c,d\');\n        -> 2\n','http://dev.mysql.com/doc/refman/5.5/en/string-functions.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ndb_binlog_index`
--

DROP TABLE IF EXISTS `ndb_binlog_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` bigint(20) unsigned NOT NULL,
  `updates` bigint(20) unsigned NOT NULL,
  `deletes` bigint(20) unsigned NOT NULL,
  `schemaops` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndb_binlog_index`
--

LOCK TABLES `ndb_binlog_index` WRITE;
/*!40000 ALTER TABLE `ndb_binlog_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndb_binlog_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proc`
--

DROP TABLE IF EXISTS `proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proc`
--

LOCK TABLES `proc` WRITE;
/*!40000 ALTER TABLE `proc` DISABLE KEYS */;
INSERT INTO `proc` VALUES ('revive_adserver','GetImpressionCount','FUNCTION','GetImpressionCount','SQL','CONTAINS_SQL','NO','DEFINER','vSessionID VARCHAR(16),vTrackGUID VARCHAR(16)','int(11)','BEGIN\n	SET @impCount := (SELECT Count(1) FROM bt_ImpressionLog WHERE SessionID = vSessionID AND TrackGUID = vTrackGUID);\n	return @impCount;\n\nEND','root@localhost','2014-09-17 08:09:19','2014-09-17 08:09:19','','','utf8','utf8_general_ci','latin1_swedish_ci','BEGIN\n	SET @impCount := (SELECT Count(1) FROM bt_ImpressionLog WHERE SessionID = vSessionID AND TrackGUID = vTrackGUID);\n	return @impCount;\n\nEND');
/*!40000 ALTER TABLE `proc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proxies_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_user` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'','2013-08-14 19:28:58'),('ubuntu','root','','',1,'','2013-08-14 19:28:58');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password` char(41) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin DEFAULT '',
  `authentication_string` text COLLATE utf8_bin,
  PRIMARY KEY (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','root','*73F9F0B9355CE8C12CE021BC2C5D9D5E747236DC','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'',''),('ubuntu','root','*73F9F0B9355CE8C12CE021BC2C5D9D5E747236DC','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'',''),('127.0.0.1','root','*73F9F0B9355CE8C12CE021BC2C5D9D5E747236DC','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'',''),('::1','root','*73F9F0B9355CE8C12CE021BC2C5D9D5E747236DC','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'',''),('localhost','','','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'',NULL),('ubuntu','','','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'',NULL),('localhost','debian-sys-maint','*FAFBD9DE4C3B3AA40B32FC07464F4A8834E0993E','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','','','','',0,0,0,0,'',NULL),('localhost','csrf_elgg_user','*2A9A6518A546125B42EA5265A0DF7916402951B3','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'',NULL),('localhost','xss_elgg_user','*2A9A6518A546125B42EA5265A0DF7916402951B3','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'',NULL),('localhost','se_elgg_user','*2A9A6518A546125B42EA5265A0DF7916402951B3','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'',NULL),('localhost','wt_elgg_user','*2A9A6518A546125B42EA5265A0DF7916402951B3','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'',NULL),('localhost','phpmyadmin','*73F9F0B9355CE8C12CE021BC2C5D9D5E747236DC','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'',NULL),('localhost','wtuser','*A95CB6AE061B1935D63544A782637558AC053211','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `phpmyadmin`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `phpmyadmin` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `phpmyadmin`;

--
-- Table structure for table `pma_bookmark`
--

DROP TABLE IF EXISTS `pma_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_bookmark`
--

LOCK TABLES `pma_bookmark` WRITE;
/*!40000 ALTER TABLE `pma_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_column_info`
--

DROP TABLE IF EXISTS `pma_column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_column_info`
--

LOCK TABLES `pma_column_info` WRITE;
/*!40000 ALTER TABLE `pma_column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_designer_coords`
--

DROP TABLE IF EXISTS `pma_designer_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_designer_coords`
--

LOCK TABLES `pma_designer_coords` WRITE;
/*!40000 ALTER TABLE `pma_designer_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_designer_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_history`
--

DROP TABLE IF EXISTS `pma_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_history`
--

LOCK TABLES `pma_history` WRITE;
/*!40000 ALTER TABLE `pma_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_pdf_pages`
--

DROP TABLE IF EXISTS `pma_pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_pdf_pages`
--

LOCK TABLES `pma_pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma_pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_relation`
--

DROP TABLE IF EXISTS `pma_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_relation`
--

LOCK TABLES `pma_relation` WRITE;
/*!40000 ALTER TABLE `pma_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_coords`
--

DROP TABLE IF EXISTS `pma_table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_coords`
--

LOCK TABLES `pma_table_coords` WRITE;
/*!40000 ALTER TABLE `pma_table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_info`
--

DROP TABLE IF EXISTS `pma_table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_info`
--

LOCK TABLES `pma_table_info` WRITE;
/*!40000 ALTER TABLE `pma_table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_tracking`
--

DROP TABLE IF EXISTS `pma_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_tracking`
--

LOCK TABLES `pma_tracking` WRITE;
/*!40000 ALTER TABLE `pma_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_userconfig`
--

DROP TABLE IF EXISTS `pma_userconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_userconfig`
--

LOCK TABLES `pma_userconfig` WRITE;
/*!40000 ALTER TABLE `pma_userconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_userconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `revive_adserver`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `revive_adserver` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `revive_adserver`;

--
-- Table structure for table `bt_Category`
--

DROP TABLE IF EXISTS `bt_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bt_Category` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) NOT NULL,
  `CategoryDescription` varchar(200) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_Category`
--

LOCK TABLES `bt_Category` WRITE;
/*!40000 ALTER TABLE `bt_Category` DISABLE KEYS */;
INSERT INTO `bt_Category` VALUES (1,'Camera','Clicks for sharp pictures'),(2,'Shoes','Sports foot wear for you'),(3,'Electronic LCD','View your world in HD'),(4,'Mobiles','World is in your pocket..!!');
/*!40000 ALTER TABLE `bt_Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bt_ImpressionLog`
--

DROP TABLE IF EXISTS `bt_ImpressionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bt_ImpressionLog` (
  `ImpressionID` int(11) NOT NULL AUTO_INCREMENT,
  `SessionID` varchar(16) NOT NULL,
  `TrackGUID` varchar(16) DEFAULT NULL,
  `TrackingID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ImpressionID`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_ImpressionLog`
--

LOCK TABLES `bt_ImpressionLog` WRITE;
/*!40000 ALTER TABLE `bt_ImpressionLog` DISABLE KEYS */;
INSERT INTO `bt_ImpressionLog` VALUES (150,'1580765081493909','8089326451339674',0),(151,'1580765081493909','8089326451339674',0),(152,'1580765081493909','7644794244489658',0),(153,'1580765081493909','7644794244489658',0),(154,'1580765081493909','4293327407220900',0),(155,'1580765081493909','4293327407220900',0),(156,'1580765081493909','4293327407220900',0),(157,'1580765081493909','4293327407220900',0),(158,'1580765081493909','9178334178556573',0),(159,'1580765081493909','9178334178556573',0),(160,'1580765081493909','5890502497057826',0),(161,'1580765081493909','5890502497057826',0),(162,'1580765081493909','5890502497057826',0),(163,'1580765081493909','5890502497057826',0),(164,'6726939354926091','5890502497057826',0),(165,'6726939354926091','6449377887088520',0),(166,'6726939354926091','6449377887088520',0),(167,'6726939354926091','8089326451339674',0),(168,'6726939354926091','8089326451339674',0),(169,'6726939354926091','7644794244489658',0),(170,'6726939354926091','7644794244489658',0),(171,'6726939354926091','6594500331683041',0),(172,'6726939354926091','6594500331683041',0),(173,'6726939354926091','4293327407220900',0),(174,'6726939354926091','4293327407220900',0),(175,'6726939354926091','3957353166949466',0),(176,'6726939354926091','3957353166949466',0),(177,'6726939354926091','8678892570671441',0),(178,'6726939354926091','8678892570671441',0),(179,'6726939354926091','768872100307923',0),(180,'6726939354926091','768872100307923',0),(181,'6726939354926091','768872100307923',0),(182,'6726939354926091','768872100307923',0),(183,'6726939354926091','1264893761278606',0),(184,'6726939354926091','1264893761278606',0),(185,'6726939354926091','7202414934944842',0),(186,'6726939354926091','7202414934944842',0),(187,'6726939354926091','9178334178556573',0),(188,'6726939354926091','9178334178556573',0),(189,'6726939354926091','768872100307923',0),(190,'6726939354926091','768872100307923',0),(191,'6726939354926091','5173435362122807',0),(192,'6726939354926091','5173435362122807',0),(193,'6726939354926091','1141069340355684',0),(194,'6726939354926091','1141069340355684',0),(195,'6726939354926091','9836573923177230',0),(196,'6726939354926091','9836573923177230',0),(197,'6726939354926091','3292700527298696',0),(198,'6726939354926091','3292700527298696',0),(199,'6726939354926091','683077966133852',0),(200,'6726939354926091','683077966133852',0),(201,'6726939354926091','1455042828759668',0),(202,'6726939354926091','1455042828759668',0),(203,'6726939354926091','8326918373014243',0),(204,'6726939354926091','8326918373014243',0),(205,'6726939354926091','1500189875939495',0),(206,'6726939354926091','1500189875939495',0),(207,'6726939354926091','9239631984143199',0),(208,'6726939354926091','9239631984143199',0),(209,'6726939354926091','9153523920322832',0),(210,'6726939354926091','9153523920322832',0),(211,'6726939354926091','3610642005167885',0),(212,'6726939354926091','3610642005167885',0),(213,'6726939354926091','6965888389535971',0),(214,'6726939354926091','6965888389535971',0),(215,'6726939354926091','6965888389535971',0),(216,'6726939354926091','6965888389535971',0),(217,'9362600576051896','683077966133852',0),(218,'9362600576051896','683077966133852',0),(219,'9362600576051896','9153523920322832',0),(220,'9362600576051896','9153523920322832',0),(221,'9362600576051896','5890502497057826',0),(222,'9362600576051896','5890502497057826',0),(223,'5643382500213801','7644794244489658',0),(224,'5643382500213801','7644794244489658',0),(225,'5643382500213801','768872100307923',0),(226,'5643382500213801','768872100307923',0),(227,'5643382500213801','6594500331683041',0),(228,'5643382500213801','6594500331683041',0),(229,'2780610135111141','5173435362122807',0),(230,'2780610135111141','5173435362122807',0),(231,'2780610135111141','1141069340355684',0),(232,'2780610135111141','1141069340355684',0),(233,'2780610135111141','1141069340355684',0),(234,'2780610135111141','1141069340355684',0),(235,'9365566008733344','8326918373014243',0),(236,'9365566008733344','8326918373014243',0),(237,'9365566008733344','1500189875939495',0),(238,'9365566008733344','1500189875939495',0),(239,'9365566008733344','1500189875939495',0),(240,'9365566008733344','1500189875939495',0),(241,'3275262877305618','3957353166949466',0),(242,'3275262877305618','3957353166949466',0),(243,'3275262877305618','768872100307923',0),(244,'3275262877305618','768872100307923',0),(245,'8983982205249497','6449377887088520',0),(246,'8983982205249497','6449377887088520',0),(247,'3646988951425898','3957353166949466',0),(248,'3646988951425898','3957353166949466',0),(249,'7969184220028918','5173435362122807',0),(250,'7969184220028918','5173435362122807',0),(251,'7969184220028918','8326918373014243',0),(252,'7969184220028918','8326918373014243',0),(253,'6746756593578503','8326918373014243',0),(254,'6746756593578503','8326918373014243',0),(255,'6746756593578503','768872100307923',0),(256,'6746756593578503','768872100307923',0),(257,'7443004588830227','5890502497057826',0),(258,'7443004588830227','5890502497057826',0),(259,'9495927822252879','3957353166949466',0),(260,'9495927822252879','3957353166949466',0),(261,'3542059853519776','5173435362122807',0),(262,'3542059853519776','5173435362122807',0),(263,'5708297063930725','8326918373014243',0),(264,'5708297063930725','8326918373014243',0),(265,'5708297063930725','768872100307923',0),(266,'5708297063930725','768872100307923',0),(267,'6540983821689410','768872100307923',0),(268,'6540983821689410','768872100307923',0),(269,'6540983821689410','683077966133852',0),(270,'6540983821689410','683077966133852',0),(271,'6540983821689410','683077966133852',0),(272,'6540983821689410','683077966133852',0),(273,'6540983821689410','1683077966133852',0),(274,'6540983821689410','1683077966133852',0),(275,'6540983821689410','1768872100307923',0),(276,'6540983821689410','1768872100307923',0),(277,'3631036796213871','5890502497057826',0),(278,'3631036796213871','5890502497057826',0),(279,'2047266154841331','1768872100307923',0),(280,'2047266154841331','1768872100307923',0),(281,'2807513249799816','6449377887088520',0),(282,'2807513249799816','6449377887088520',0),(283,'2807513249799816','6449377887088520',0),(284,'534193087783351','8089326451339674',0),(285,'534193087783351','8089326451339674',0),(286,'534193087783351','4293327407220900',0),(287,'534193087783351','4293327407220900',0),(288,'534193087783351','4293327407220900',0),(289,'534193087783351','4293327407220900',0),(290,'534193087783351','6594500331683041',0),(291,'534193087783351','6594500331683041',0),(292,'534193087783351','9836573923177230',0),(293,'534193087783351','9836573923177230',0),(294,'534193087783351','9836573923177230',0),(295,'534193087783351','9836573923177230',0),(296,'534193087783351','9836573923177230',0),(297,'534193087783351','9836573923177230',0),(298,'534193087783351','9239631984143199',0),(299,'534193087783351','9239631984143199',0),(300,'534193087783351','1768872100307923',0),(301,'534193087783351','1768872100307923',0),(302,'534193087783351','9836573923177230',0),(303,'534193087783351','9836573923177230',0),(304,'319539109061648','8089326451339674',0),(305,'319539109061648','8089326451339674',0),(306,'319539109061648','8089326451339674',0),(307,'319539109061648','8089326451339674',0),(308,'319539109061648','1768872100307923',0),(309,'319539109061648','1768872100307923',0);
/*!40000 ALTER TABLE `bt_ImpressionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bt_Products`
--

DROP TABLE IF EXISTS `bt_Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bt_Products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) NOT NULL,
  `ProductDescription` varchar(200) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `BannerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `bt_Products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `bt_Category` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_Products`
--

LOCK TABLES `bt_Products` WRITE;
/*!40000 ALTER TABLE `bt_Products` DISABLE KEYS */;
INSERT INTO `bt_Products` VALUES (1,'Nikon 1011','Pictures for your life',1,4),(2,'Canon','Click HD pics',1,5),(3,'Lumix','Pictures in HD',1,6),(4,'Nikon 2100','photographers choice',1,7),(9,'Samsung','Everyones click',1,8),(10,'Sony','unbelivable clicks',1,9),(13,'Adidas','Impossible is Nothing',2,22),(14,' Puma','Pumas chase everything',2,23),(15,'Nike','Just do it',2,24),(16,'Woodland','hoes for the true adventurer',2,25),(17,'Reebok','Go for it',2,26),(18,'Bata','Best in all time',2,27),(19,'LG','Lifes good',3,10),(20,'Samsung LCD','Everyones invited',3,11),(21,'Videocon','Videos for life',3,12),(22,'Phillips','View world in HD',3,13),(23,'Toshiba','Best in HD tv',3,14),(24,'Sony','live in HD',3,15),(25,'HUAWEI','China Phone',4,16),(26,'IPhone 5s','best smart phone',4,17),(29,'Blackberry','Secure smart phone',4,18),(30,'Samsung','common man phone',4,19),(31,'HTC','feell the touch',4,20),(32,'HTC Wildfire','wild fire for your life',4,21);
/*!40000 ALTER TABLE `bt_Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bt_TrackInventory`
--

DROP TABLE IF EXISTS `bt_TrackInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bt_TrackInventory` (
  `TrackingID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) NOT NULL,
  `WebsiteID` int(11) NOT NULL,
  `TrackGUID` varchar(16) NOT NULL,
  PRIMARY KEY (`TrackingID`),
  KEY `ProductID` (`ProductID`,`WebsiteID`),
  KEY `WebsiteID` (`WebsiteID`),
  CONSTRAINT `bt_TrackInventory_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `bt_Products` (`ProductID`),
  CONSTRAINT `bt_TrackInventory_ibfk_2` FOREIGN KEY (`WebsiteID`) REFERENCES `bt_WebSite` (`SiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_TrackInventory`
--

LOCK TABLES `bt_TrackInventory` WRITE;
/*!40000 ALTER TABLE `bt_TrackInventory` DISABLE KEYS */;
INSERT INTO `bt_TrackInventory` VALUES (1,1,1,'5890502497057826'),(2,2,1,'6449377887088520'),(3,3,1,'8089326451339674'),(4,4,1,'7644794244489658'),(5,9,1,'6594500331683041'),(6,10,1,'4293327407220900'),(7,13,2,'3957353166949466'),(8,14,2,'8678892570671441'),(9,15,2,'1768872100307923'),(10,16,2,'1264893761278606'),(11,17,2,'7202414934944842'),(12,18,2,'9178334178556573'),(13,19,5,'5173435362122807'),(15,20,5,'1141069340355684'),(16,21,5,'9836573923177230'),(17,22,5,'3292700527298696'),(18,23,5,'1683077966133852'),(19,24,5,'1455042828759668'),(20,25,6,'8326918373014243'),(21,26,6,'1500189875939495'),(22,29,6,'9239631984143199'),(23,30,6,'9153523920322832'),(24,31,6,'3610642005167885'),(25,32,6,'6965888389535971');
/*!40000 ALTER TABLE `bt_TrackInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bt_WebSite`
--

DROP TABLE IF EXISTS `bt_WebSite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bt_WebSite` (
  `SiteID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteURL` varchar(200) NOT NULL,
  `SiteDescription` varchar(200) NOT NULL,
  PRIMARY KEY (`SiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_WebSite`
--

LOCK TABLES `bt_WebSite` WRITE;
/*!40000 ALTER TABLE `bt_WebSite` DISABLE KEYS */;
INSERT INTO `bt_WebSite` VALUES (1,'http://www.wtcamerastore.com/','One stop store for all Cameras'),(2,'http://www.wtshoestore.com/','One stop store for all Shoes'),(5,'http://www.wtelectronicstore.com/','One stop for all Electronics'),(6,'http://www.wtmobilestore.com/','One stop for all mobiles');
/*!40000 ALTER TABLE `bt_WebSite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_account_preference_assoc`
--

DROP TABLE IF EXISTS `rv_account_preference_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_account_preference_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `preference_id` mediumint(9) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`account_id`,`preference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_account_preference_assoc`
--

LOCK TABLES `rv_account_preference_assoc` WRITE;
/*!40000 ALTER TABLE `rv_account_preference_assoc` DISABLE KEYS */;
INSERT INTO `rv_account_preference_assoc` VALUES (1,1,''),(1,2,''),(1,3,'1'),(1,4,'1'),(1,5,'1'),(1,6,'100'),(1,7,'1'),(1,8,''),(1,9,''),(1,10,'1'),(1,11,'100'),(1,12,'1'),(1,13,'1'),(1,14,'100'),(1,15,'1'),(1,16,'America/New_York'),(1,17,'4'),(1,18,'1'),(1,19,''),(1,20,'1'),(1,21,'1'),(1,22,''),(1,23,''),(1,24,'1'),(1,25,''),(1,26,'1'),(1,27,''),(1,28,''),(1,29,'1'),(1,30,'1'),(1,31,'2'),(1,32,'1'),(1,33,''),(1,34,'4'),(1,35,''),(1,36,''),(1,37,'0'),(1,38,''),(1,39,''),(1,40,'0'),(1,41,''),(1,42,''),(1,43,'0'),(1,44,''),(1,45,''),(1,46,'0'),(1,47,''),(1,48,''),(1,49,'0'),(1,50,''),(1,51,''),(1,52,'0'),(1,53,''),(1,54,''),(1,55,'0'),(1,56,''),(1,57,''),(1,58,'0'),(1,59,''),(1,60,''),(1,61,'0'),(1,62,'1'),(1,63,''),(1,64,'5'),(1,65,''),(1,66,''),(1,67,'0'),(1,68,''),(1,69,''),(1,70,'0'),(1,71,''),(1,72,''),(1,73,'0'),(1,74,''),(1,75,''),(1,76,'0'),(1,77,'1'),(1,78,''),(1,79,'1'),(1,80,'1'),(1,81,''),(1,82,'2'),(1,83,'1'),(1,84,''),(1,85,'3'),(1,86,''),(1,87,''),(1,88,'0'),(1,89,''),(1,90,''),(1,91,'0'),(1,92,''),(1,93,''),(1,94,'0'),(1,95,''),(1,96,''),(1,97,'0');
/*!40000 ALTER TABLE `rv_account_preference_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_account_user_assoc`
--

DROP TABLE IF EXISTS `rv_account_user_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_account_user_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `linked` datetime NOT NULL,
  PRIMARY KEY (`account_id`,`user_id`),
  KEY `rv_account_user_assoc_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_account_user_assoc`
--

LOCK TABLES `rv_account_user_assoc` WRITE;
/*!40000 ALTER TABLE `rv_account_user_assoc` DISABLE KEYS */;
INSERT INTO `rv_account_user_assoc` VALUES (1,1,'2014-09-17 00:27:08'),(2,1,'2014-09-17 00:27:08');
/*!40000 ALTER TABLE `rv_account_user_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_account_user_permission_assoc`
--

DROP TABLE IF EXISTS `rv_account_user_permission_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_account_user_permission_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `permission_id` mediumint(9) NOT NULL,
  `is_allowed` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`account_id`,`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_account_user_permission_assoc`
--

LOCK TABLES `rv_account_user_permission_assoc` WRITE;
/*!40000 ALTER TABLE `rv_account_user_permission_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_account_user_permission_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_accounts`
--

DROP TABLE IF EXISTS `rv_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_accounts` (
  `account_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(16) NOT NULL DEFAULT '',
  `account_name` varchar(255) DEFAULT NULL,
  `m2m_password` varchar(32) DEFAULT NULL,
  `m2m_ticket` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `rv_accounts_account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_accounts`
--

LOCK TABLES `rv_accounts` WRITE;
/*!40000 ALTER TABLE `rv_accounts` DISABLE KEYS */;
INSERT INTO `rv_accounts` VALUES (1,'ADMIN','Administrator account',NULL,NULL),(2,'MANAGER','Default manager',NULL,NULL),(3,'ADVERTISER','Webtracking',NULL,NULL);
/*!40000 ALTER TABLE `rv_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_acls`
--

DROP TABLE IF EXISTS `rv_acls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_acls` (
  `bannerid` mediumint(9) NOT NULL DEFAULT '0',
  `logical` varchar(3) NOT NULL DEFAULT 'and',
  `type` varchar(255) NOT NULL DEFAULT '',
  `comparison` char(2) NOT NULL DEFAULT '==',
  `data` text NOT NULL,
  `executionorder` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `rv_acls_bannerid_executionorder` (`bannerid`,`executionorder`),
  KEY `rv_acls_bannerid` (`bannerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_acls`
--

LOCK TABLES `rv_acls` WRITE;
/*!40000 ALTER TABLE `rv_acls` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_acls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_acls_channel`
--

DROP TABLE IF EXISTS `rv_acls_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_acls_channel` (
  `channelid` mediumint(9) NOT NULL DEFAULT '0',
  `logical` varchar(3) NOT NULL DEFAULT 'and',
  `type` varchar(255) NOT NULL DEFAULT '',
  `comparison` char(2) NOT NULL DEFAULT '==',
  `data` text NOT NULL,
  `executionorder` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `rv_acls_channel_channelid_executionorder` (`channelid`,`executionorder`),
  KEY `rv_acls_channel_channelid` (`channelid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_acls_channel`
--

LOCK TABLES `rv_acls_channel` WRITE;
/*!40000 ALTER TABLE `rv_acls_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_acls_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_ad_category_assoc`
--

DROP TABLE IF EXISTS `rv_ad_category_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_ad_category_assoc` (
  `ad_category_assoc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ad_category_assoc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_ad_category_assoc`
--

LOCK TABLES `rv_ad_category_assoc` WRITE;
/*!40000 ALTER TABLE `rv_ad_category_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_ad_category_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_ad_zone_assoc`
--

DROP TABLE IF EXISTS `rv_ad_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_ad_zone_assoc` (
  `ad_zone_assoc_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `zone_id` mediumint(9) DEFAULT NULL,
  `ad_id` mediumint(9) DEFAULT NULL,
  `priority` double DEFAULT '0',
  `link_type` smallint(6) NOT NULL DEFAULT '1',
  `priority_factor` double DEFAULT '0',
  `to_be_delivered` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_zone_assoc_id`),
  KEY `rv_ad_zone_assoc_zone_id` (`zone_id`),
  KEY `rv_ad_zone_assoc_ad_id` (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_ad_zone_assoc`
--

LOCK TABLES `rv_ad_zone_assoc` WRITE;
/*!40000 ALTER TABLE `rv_ad_zone_assoc` DISABLE KEYS */;
INSERT INTO `rv_ad_zone_assoc` VALUES (1,0,1,0,0,1,1),(2,0,2,0,0,1,1),(3,0,3,0,0,1,1),(4,0,4,0,0,1,1),(5,0,5,0,0,1,1),(6,0,6,0,0,1,1),(7,0,7,0,0,1,1),(8,0,8,0,0,1,1),(9,0,9,0,0,1,1),(10,0,10,0,0,1,1),(11,0,11,0,0,1,1),(12,0,12,0,0,1,1),(13,0,13,0,0,1,1),(14,0,14,0,0,1,1),(15,0,15,0,0,1,1),(16,0,16,0,0,1,1),(17,0,17,0,0,1,1),(18,0,18,0,0,1,1),(19,0,19,0,0,1,1),(20,0,20,0,0,1,1),(21,0,21,0,0,1,1),(22,0,22,0,0,1,1),(23,0,23,0,0,1,1),(24,0,24,0,0,1,1),(25,0,25,0,0,1,1),(26,0,26,0,0,1,1),(27,0,27,0,0,1,1);
/*!40000 ALTER TABLE `rv_ad_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_affiliates`
--

DROP TABLE IF EXISTS `rv_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_affiliates` (
  `affiliateid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `agencyid` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `mnemonic` varchar(5) NOT NULL DEFAULT '',
  `comments` text,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `website` varchar(255) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `an_website_id` int(11) DEFAULT NULL,
  `oac_country_code` char(2) NOT NULL DEFAULT '',
  `oac_language_id` int(11) DEFAULT NULL,
  `oac_category_id` int(11) DEFAULT NULL,
  `as_website_id` int(11) DEFAULT NULL,
  `account_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`affiliateid`),
  UNIQUE KEY `rv_affiliates_account_id` (`account_id`),
  KEY `rv_affiliates_agencyid` (`agencyid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_affiliates`
--

LOCK TABLES `rv_affiliates` WRITE;
/*!40000 ALTER TABLE `rv_affiliates` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_affiliates_extra`
--

DROP TABLE IF EXISTS `rv_affiliates_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_affiliates_extra` (
  `affiliateid` mediumint(9) NOT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `postcode` varchar(64) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `fax` varchar(64) DEFAULT NULL,
  `account_contact` varchar(255) DEFAULT NULL,
  `payee_name` varchar(255) DEFAULT NULL,
  `tax_id` varchar(64) DEFAULT NULL,
  `mode_of_payment` varchar(64) DEFAULT NULL,
  `currency` varchar(64) DEFAULT NULL,
  `unique_users` int(11) DEFAULT NULL,
  `unique_views` int(11) DEFAULT NULL,
  `page_rank` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `help_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_affiliates_extra`
--

LOCK TABLES `rv_affiliates_extra` WRITE;
/*!40000 ALTER TABLE `rv_affiliates_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_affiliates_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_agency`
--

DROP TABLE IF EXISTS `rv_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_agency` (
  `agencyid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `logout_url` varchar(255) DEFAULT NULL,
  `active` smallint(1) DEFAULT '0',
  `updated` datetime NOT NULL,
  `account_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`agencyid`),
  UNIQUE KEY `rv_agency_account_id` (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_agency`
--

LOCK TABLES `rv_agency` WRITE;
/*!40000 ALTER TABLE `rv_agency` DISABLE KEYS */;
INSERT INTO `rv_agency` VALUES (1,'Default manager',NULL,'info@wtadlab.com',NULL,1,'2014-09-17 07:27:07',2);
/*!40000 ALTER TABLE `rv_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_application_variable`
--

DROP TABLE IF EXISTS `rv_application_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_application_variable` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_application_variable`
--

LOCK TABLES `rv_application_variable` WRITE;
/*!40000 ALTER TABLE `rv_application_variable` DISABLE KEYS */;
INSERT INTO `rv_application_variable` VALUES ('tables_core','613'),('oa_version','3.0.5'),('admin_account_id','1'),('oxHtml_version','1.2.1'),('oxText_version','1.2.1'),('Client_version','1.2.1'),('Geo_version','1.2.1'),('Site_version','1.2.1'),('Time_version','1.2.1'),('ox3rdPartyServers_version','1.1.0'),('oxReportsStandard_version','1.5.1'),('oxReportsAdmin_version','1.5.1'),('oxCacheFile_version','1.1.1'),('oxMemcached_version','1.1.1'),('oxMaxMindGeoIP_version','1.2.2'),('oxInvocationTags_version','1.2.1'),('tables_oxDeliveryDataPrepare','002'),('oxDeliveryDataPrepare_version','1.1.1'),('oxLogClick_version','1.1.1'),('oxLogConversion_version','1.1.1'),('oxLogImpression_version','1.1.1'),('oxLogRequest_version','1.1.1'),('tables_vastbannertypehtml','013'),('vastInlineBannerTypeHtml_version','1.10.2'),('vastOverlayBannerTypeHtml_version','1.10.2'),('oxLogVast_version','1.10.2'),('vastServeVideoPlayer_version','1.10.2'),('videoReport_version','1.10.2');
/*!40000 ALTER TABLE `rv_application_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_audit`
--

DROP TABLE IF EXISTS `rv_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_audit` (
  `auditid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `actionid` mediumint(9) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT '',
  `contextid` mediumint(9) DEFAULT NULL,
  `parentid` mediumint(9) DEFAULT NULL,
  `details` text NOT NULL,
  `userid` mediumint(9) NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `usertype` tinyint(4) NOT NULL DEFAULT '0',
  `updated` datetime DEFAULT NULL,
  `account_id` mediumint(9) NOT NULL,
  `advertiser_account_id` mediumint(9) DEFAULT NULL,
  `website_account_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`auditid`),
  KEY `rv_audit_parentid_contextid` (`parentid`,`contextid`),
  KEY `rv_audit_updated` (`updated`),
  KEY `rv_audit_usertype` (`usertype`),
  KEY `rv_audit_username` (`username`),
  KEY `rv_audit_context_actionid` (`context`,`actionid`),
  KEY `rv_audit_account_id` (`account_id`),
  KEY `rv_audit_advertiser_account_id` (`advertiser_account_id`),
  KEY `rv_audit_website_account_id` (`website_account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_audit`
--

LOCK TABLES `rv_audit` WRITE;
/*!40000 ALTER TABLE `rv_audit` DISABLE KEYS */;
INSERT INTO `rv_audit` VALUES (1,1,'accounts',1,NULL,'a:4:{s:10:\"account_id\";i:1;s:12:\"account_type\";s:5:\"ADMIN\";s:12:\"account_name\";s:21:\"Administrator account\";s:8:\"key_desc\";s:21:\"Administrator account\";}',0,'Installer',0,'2014-09-17 07:27:07',1,NULL,NULL),(2,1,'accounts',2,NULL,'a:4:{s:10:\"account_id\";i:2;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:8:\"key_desc\";s:15:\"Default manager\";}',0,'Installer',0,'2014-09-17 07:27:07',2,NULL,NULL),(3,1,'agency',1,NULL,'a:9:{s:8:\"agencyid\";i:1;s:4:\"name\";s:15:\"Default manager\";s:7:\"contact\";s:4:\"null\";s:5:\"email\";s:16:\"info@wtadlab.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";i:1;s:7:\"updated\";s:19:\"2014-09-17 07:27:07\";s:10:\"account_id\";i:2;s:8:\"key_desc\";s:15:\"Default manager\";}',0,'Installer',0,'2014-09-17 07:27:07',2,NULL,NULL),(4,1,'users',1,NULL,'a:14:{s:7:\"user_id\";i:1;s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:16:\"info@wtadlab.com\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";i:2;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2014-09-17 00:27:07\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2014-09-17 00:27:07\";s:8:\"key_desc\";s:5:\"admin\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(5,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2014-09-17 00:27:08\";s:8:\"key_desc\";s:21:\"Account #1 -> User #1\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(6,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:2;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2014-09-17 00:27:08\";s:8:\"key_desc\";s:21:\"Account #2 -> User #1\";}',0,'Installer',0,'2014-09-17 07:27:08',2,NULL,NULL),(7,1,'preferences',1,NULL,'a:4:{s:13:\"preference_id\";i:1;s:15:\"preference_name\";s:24:\"default_banner_image_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"default_banner_image_url\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(8,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:1;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #1\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(9,1,'preferences',2,NULL,'a:4:{s:13:\"preference_id\";i:2;s:15:\"preference_name\";s:30:\"default_banner_destination_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:30:\"default_banner_destination_url\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(10,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:2;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #2\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(11,1,'preferences',3,NULL,'a:4:{s:13:\"preference_id\";i:3;s:15:\"preference_name\";s:21:\"default_banner_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"default_banner_weight\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(12,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:3;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #3\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(13,1,'preferences',4,NULL,'a:4:{s:13:\"preference_id\";i:4;s:15:\"preference_name\";s:23:\"default_campaign_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:23:\"default_campaign_weight\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(14,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:4;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #4\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(15,1,'preferences',5,NULL,'a:4:{s:13:\"preference_id\";i:5;s:15:\"preference_name\";s:16:\"warn_email_admin\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:16:\"warn_email_admin\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(16,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:5;s:5:\"value\";b:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #5\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(17,1,'preferences',6,NULL,'a:4:{s:13:\"preference_id\";i:6;s:15:\"preference_name\";s:33:\"warn_email_admin_impression_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:33:\"warn_email_admin_impression_limit\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(18,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:6;s:5:\"value\";i:100;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #6\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(19,1,'preferences',7,NULL,'a:4:{s:13:\"preference_id\";i:7;s:15:\"preference_name\";s:26:\"warn_email_admin_day_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:26:\"warn_email_admin_day_limit\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(20,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:7;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #7\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(21,1,'preferences',8,NULL,'a:4:{s:13:\"preference_id\";i:8;s:15:\"preference_name\";s:21:\"campaign_ecpm_enabled\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"campaign_ecpm_enabled\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(22,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:8;s:5:\"value\";b:0;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #8\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(23,1,'preferences',9,NULL,'a:4:{s:13:\"preference_id\";i:9;s:15:\"preference_name\";s:21:\"contract_ecpm_enabled\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"contract_ecpm_enabled\";}',0,'Installer',0,'2014-09-17 07:27:08',1,NULL,NULL),(24,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:9;s:5:\"value\";b:0;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #9\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(25,1,'preferences',10,NULL,'a:4:{s:13:\"preference_id\";i:10;s:15:\"preference_name\";s:18:\"warn_email_manager\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"warn_email_manager\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(26,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:10;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #10\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(27,1,'preferences',11,NULL,'a:4:{s:13:\"preference_id\";i:11;s:15:\"preference_name\";s:35:\"warn_email_manager_impression_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"warn_email_manager_impression_limit\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(28,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:11;s:5:\"value\";i:100;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #11\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(29,1,'preferences',12,NULL,'a:4:{s:13:\"preference_id\";i:12;s:15:\"preference_name\";s:28:\"warn_email_manager_day_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:28:\"warn_email_manager_day_limit\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(30,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:12;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #12\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(31,1,'preferences',13,NULL,'a:4:{s:13:\"preference_id\";i:13;s:15:\"preference_name\";s:21:\"warn_email_advertiser\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"warn_email_advertiser\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(32,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:13;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #13\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(33,1,'preferences',14,NULL,'a:4:{s:13:\"preference_id\";i:14;s:15:\"preference_name\";s:38:\"warn_email_advertiser_impression_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:38:\"warn_email_advertiser_impression_limit\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(34,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:14;s:5:\"value\";i:100;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #14\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(35,1,'preferences',15,NULL,'a:4:{s:13:\"preference_id\";i:15;s:15:\"preference_name\";s:31:\"warn_email_advertiser_day_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:31:\"warn_email_advertiser_day_limit\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(36,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:15;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #15\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(37,1,'preferences',16,NULL,'a:4:{s:13:\"preference_id\";i:16;s:15:\"preference_name\";s:8:\"timezone\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:8:\"timezone\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(38,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:16;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(39,1,'preferences',17,NULL,'a:4:{s:13:\"preference_id\";i:17;s:15:\"preference_name\";s:22:\"tracker_default_status\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_default_status\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(40,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:17;s:5:\"value\";i:4;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #17\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(41,1,'preferences',18,NULL,'a:4:{s:13:\"preference_id\";i:18;s:15:\"preference_name\";s:20:\"tracker_default_type\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:20:\"tracker_default_type\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(42,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:18;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #18\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(43,1,'preferences',19,NULL,'a:4:{s:13:\"preference_id\";i:19;s:15:\"preference_name\";s:22:\"tracker_link_campaigns\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_link_campaigns\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(44,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:19;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #19\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(45,1,'preferences',20,NULL,'a:4:{s:13:\"preference_id\";i:20;s:15:\"preference_name\";s:21:\"ui_show_campaign_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"ui_show_campaign_info\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(46,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:20;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #20\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(47,1,'preferences',21,NULL,'a:4:{s:13:\"preference_id\";i:21;s:15:\"preference_name\";s:19:\"ui_show_banner_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_info\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(48,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:21;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #21\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(49,1,'preferences',22,NULL,'a:4:{s:13:\"preference_id\";i:22;s:15:\"preference_name\";s:24:\"ui_show_campaign_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:24:\"ui_show_campaign_preview\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(50,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:22;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #22\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(51,1,'preferences',23,NULL,'a:4:{s:13:\"preference_id\";i:23;s:15:\"preference_name\";s:19:\"ui_show_banner_html\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_html\";}',0,'Installer',0,'2014-09-17 07:27:09',1,NULL,NULL),(52,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:23;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #23\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(53,1,'preferences',24,NULL,'a:4:{s:13:\"preference_id\";i:24;s:15:\"preference_name\";s:22:\"ui_show_banner_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"ui_show_banner_preview\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(54,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:24;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #24\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(55,1,'preferences',25,NULL,'a:4:{s:13:\"preference_id\";i:25;s:15:\"preference_name\";s:16:\"ui_hide_inactive\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:16:\"ui_hide_inactive\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(56,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:25;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #25\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(57,1,'preferences',26,NULL,'a:4:{s:13:\"preference_id\";i:26;s:15:\"preference_name\";s:24:\"ui_show_matching_banners\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"ui_show_matching_banners\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(58,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:26;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #26\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(59,1,'preferences',27,NULL,'a:4:{s:13:\"preference_id\";i:27;s:15:\"preference_name\";s:32:\"ui_show_matching_banners_parents\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:32:\"ui_show_matching_banners_parents\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(60,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:27;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #27\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(61,1,'preferences',28,NULL,'a:4:{s:13:\"preference_id\";i:28;s:15:\"preference_name\";s:17:\"ui_show_entity_id\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_show_entity_id\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(62,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:28;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #28\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(63,1,'preferences',29,NULL,'a:4:{s:13:\"preference_id\";i:29;s:15:\"preference_name\";s:14:\"ui_novice_user\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:14:\"ui_novice_user\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(64,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:29;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #29\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(65,1,'preferences',30,NULL,'a:4:{s:13:\"preference_id\";i:30;s:15:\"preference_name\";s:17:\"ui_week_start_day\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_week_start_day\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(66,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:30;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #30\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(67,1,'preferences',31,NULL,'a:4:{s:13:\"preference_id\";i:31;s:15:\"preference_name\";s:22:\"ui_percentage_decimals\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:22:\"ui_percentage_decimals\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(68,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:31;s:5:\"value\";i:2;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #31\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(69,1,'preferences',32,NULL,'a:4:{s:13:\"preference_id\";i:32;s:15:\"preference_name\";s:17:\"ui_column_revenue\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_revenue\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(70,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:32;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #32\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(71,1,'preferences',33,NULL,'a:4:{s:13:\"preference_id\";i:33;s:15:\"preference_name\";s:23:\"ui_column_revenue_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_revenue_label\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(72,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:33;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #33\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(73,1,'preferences',34,NULL,'a:4:{s:13:\"preference_id\";i:34;s:15:\"preference_name\";s:22:\"ui_column_revenue_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revenue_rank\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(74,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:34;s:5:\"value\";i:4;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #34\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(75,1,'preferences',35,NULL,'a:4:{s:13:\"preference_id\";i:35;s:15:\"preference_name\";s:12:\"ui_column_bv\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_bv\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(76,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:35;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #35\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(77,1,'preferences',36,NULL,'a:4:{s:13:\"preference_id\";i:36;s:15:\"preference_name\";s:18:\"ui_column_bv_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_bv_label\";}',0,'Installer',0,'2014-09-17 07:27:10',1,NULL,NULL),(78,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:36;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #36\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(79,1,'preferences',37,NULL,'a:4:{s:13:\"preference_id\";i:37;s:15:\"preference_name\";s:17:\"ui_column_bv_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_bv_rank\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(80,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:37;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #37\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(81,1,'preferences',38,NULL,'a:4:{s:13:\"preference_id\";i:38;s:15:\"preference_name\";s:19:\"ui_column_num_items\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_num_items\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(82,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:38;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #38\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(83,1,'preferences',39,NULL,'a:4:{s:13:\"preference_id\";i:39;s:15:\"preference_name\";s:25:\"ui_column_num_items_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_num_items_label\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(84,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:39;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #39\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(85,1,'preferences',40,NULL,'a:4:{s:13:\"preference_id\";i:40;s:15:\"preference_name\";s:24:\"ui_column_num_items_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_num_items_rank\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(86,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:40;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #40\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(87,1,'preferences',41,NULL,'a:4:{s:13:\"preference_id\";i:41;s:15:\"preference_name\";s:16:\"ui_column_revcpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_revcpc\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(88,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:41;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #41\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(89,1,'preferences',42,NULL,'a:4:{s:13:\"preference_id\";i:42;s:15:\"preference_name\";s:22:\"ui_column_revcpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revcpc_label\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(90,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:42;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #42\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(91,1,'preferences',43,NULL,'a:4:{s:13:\"preference_id\";i:43;s:15:\"preference_name\";s:21:\"ui_column_revcpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_revcpc_rank\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(92,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:43;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #43\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(93,1,'preferences',44,NULL,'a:4:{s:13:\"preference_id\";i:44;s:15:\"preference_name\";s:14:\"ui_column_erpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpm\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(94,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:44;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #44\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(95,1,'preferences',45,NULL,'a:4:{s:13:\"preference_id\";i:45;s:15:\"preference_name\";s:20:\"ui_column_erpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpm_label\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(96,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:45;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #45\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(97,1,'preferences',46,NULL,'a:4:{s:13:\"preference_id\";i:46;s:15:\"preference_name\";s:19:\"ui_column_erpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpm_rank\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(98,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:46;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #46\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(99,1,'preferences',47,NULL,'a:4:{s:13:\"preference_id\";i:47;s:15:\"preference_name\";s:14:\"ui_column_erpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpc\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(100,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:47;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #47\";}',0,'Installer',0,'2014-09-17 07:27:11',1,NULL,NULL),(101,1,'preferences',48,NULL,'a:4:{s:13:\"preference_id\";i:48;s:15:\"preference_name\";s:20:\"ui_column_erpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpc_label\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(102,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:48;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #48\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(103,1,'preferences',49,NULL,'a:4:{s:13:\"preference_id\";i:49;s:15:\"preference_name\";s:19:\"ui_column_erpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpc_rank\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(104,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:49;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #49\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(105,1,'preferences',50,NULL,'a:4:{s:13:\"preference_id\";i:50;s:15:\"preference_name\";s:14:\"ui_column_erps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erps\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(106,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:50;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #50\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(107,1,'preferences',51,NULL,'a:4:{s:13:\"preference_id\";i:51;s:15:\"preference_name\";s:20:\"ui_column_erps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erps_label\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(108,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:51;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #51\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(109,1,'preferences',52,NULL,'a:4:{s:13:\"preference_id\";i:52;s:15:\"preference_name\";s:19:\"ui_column_erps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erps_rank\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(110,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:52;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #52\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(111,1,'preferences',53,NULL,'a:4:{s:13:\"preference_id\";i:53;s:15:\"preference_name\";s:14:\"ui_column_eipm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipm\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(112,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:53;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #53\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(113,1,'preferences',54,NULL,'a:4:{s:13:\"preference_id\";i:54;s:15:\"preference_name\";s:20:\"ui_column_eipm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipm_label\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(114,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:54;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #54\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(115,1,'preferences',55,NULL,'a:4:{s:13:\"preference_id\";i:55;s:15:\"preference_name\";s:19:\"ui_column_eipm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipm_rank\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(116,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:55;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #55\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(117,1,'preferences',56,NULL,'a:4:{s:13:\"preference_id\";i:56;s:15:\"preference_name\";s:14:\"ui_column_eipc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipc\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(118,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:56;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #56\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(119,1,'preferences',57,NULL,'a:4:{s:13:\"preference_id\";i:57;s:15:\"preference_name\";s:20:\"ui_column_eipc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipc_label\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(120,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:57;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #57\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(121,1,'preferences',58,NULL,'a:4:{s:13:\"preference_id\";i:58;s:15:\"preference_name\";s:19:\"ui_column_eipc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipc_rank\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(122,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:58;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #58\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(123,1,'preferences',59,NULL,'a:4:{s:13:\"preference_id\";i:59;s:15:\"preference_name\";s:14:\"ui_column_eips\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eips\";}',0,'Installer',0,'2014-09-17 07:27:12',1,NULL,NULL),(124,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:59;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #59\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(125,1,'preferences',60,NULL,'a:4:{s:13:\"preference_id\";i:60;s:15:\"preference_name\";s:20:\"ui_column_eips_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eips_label\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(126,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:60;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #60\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(127,1,'preferences',61,NULL,'a:4:{s:13:\"preference_id\";i:61;s:15:\"preference_name\";s:19:\"ui_column_eips_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eips_rank\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(128,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:61;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #61\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(129,1,'preferences',62,NULL,'a:4:{s:13:\"preference_id\";i:62;s:15:\"preference_name\";s:14:\"ui_column_ecpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpm\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(130,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:62;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #62\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(131,1,'preferences',63,NULL,'a:4:{s:13:\"preference_id\";i:63;s:15:\"preference_name\";s:20:\"ui_column_ecpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpm_label\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(132,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:63;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #63\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(133,1,'preferences',64,NULL,'a:4:{s:13:\"preference_id\";i:64;s:15:\"preference_name\";s:19:\"ui_column_ecpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpm_rank\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(134,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:64;s:5:\"value\";i:5;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #64\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(135,1,'preferences',65,NULL,'a:4:{s:13:\"preference_id\";i:65;s:15:\"preference_name\";s:14:\"ui_column_ecpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpc\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(136,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:65;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #65\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(137,1,'preferences',66,NULL,'a:4:{s:13:\"preference_id\";i:66;s:15:\"preference_name\";s:20:\"ui_column_ecpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpc_label\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(138,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:66;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #66\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(139,1,'preferences',67,NULL,'a:4:{s:13:\"preference_id\";i:67;s:15:\"preference_name\";s:19:\"ui_column_ecpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpc_rank\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(140,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:67;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #67\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(141,1,'preferences',68,NULL,'a:4:{s:13:\"preference_id\";i:68;s:15:\"preference_name\";s:14:\"ui_column_ecps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecps\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(142,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:68;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #68\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(143,1,'preferences',69,NULL,'a:4:{s:13:\"preference_id\";i:69;s:15:\"preference_name\";s:20:\"ui_column_ecps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecps_label\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(144,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:69;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #69\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(145,1,'preferences',70,NULL,'a:4:{s:13:\"preference_id\";i:70;s:15:\"preference_name\";s:19:\"ui_column_ecps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecps_rank\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(146,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:70;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #70\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(147,1,'preferences',71,NULL,'a:4:{s:13:\"preference_id\";i:71;s:15:\"preference_name\";s:12:\"ui_column_id\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_id\";}',0,'Installer',0,'2014-09-17 07:27:13',1,NULL,NULL),(148,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:71;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #71\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(149,1,'preferences',72,NULL,'a:4:{s:13:\"preference_id\";i:72;s:15:\"preference_name\";s:18:\"ui_column_id_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_id_label\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(150,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:72;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #72\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(151,1,'preferences',73,NULL,'a:4:{s:13:\"preference_id\";i:73;s:15:\"preference_name\";s:17:\"ui_column_id_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_id_rank\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(152,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:73;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #73\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(153,1,'preferences',74,NULL,'a:4:{s:13:\"preference_id\";i:74;s:15:\"preference_name\";s:18:\"ui_column_requests\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_requests\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(154,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:74;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #74\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(155,1,'preferences',75,NULL,'a:4:{s:13:\"preference_id\";i:75;s:15:\"preference_name\";s:24:\"ui_column_requests_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_requests_label\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(156,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:75;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #75\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(157,1,'preferences',76,NULL,'a:4:{s:13:\"preference_id\";i:76;s:15:\"preference_name\";s:23:\"ui_column_requests_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_requests_rank\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(158,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:76;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #76\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(159,1,'preferences',77,NULL,'a:4:{s:13:\"preference_id\";i:77;s:15:\"preference_name\";s:21:\"ui_column_impressions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_impressions\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(160,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:77;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #77\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(161,1,'preferences',78,NULL,'a:4:{s:13:\"preference_id\";i:78;s:15:\"preference_name\";s:27:\"ui_column_impressions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_impressions_label\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(162,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:78;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #78\";}',0,'Installer',0,'2014-09-17 07:27:14',1,NULL,NULL),(163,1,'preferences',79,NULL,'a:4:{s:13:\"preference_id\";i:79;s:15:\"preference_name\";s:26:\"ui_column_impressions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_impressions_rank\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(164,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:79;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #79\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(165,1,'preferences',80,NULL,'a:4:{s:13:\"preference_id\";i:80;s:15:\"preference_name\";s:16:\"ui_column_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_clicks\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(166,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:80;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #80\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(167,1,'preferences',81,NULL,'a:4:{s:13:\"preference_id\";i:81;s:15:\"preference_name\";s:22:\"ui_column_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_clicks_label\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(168,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:81;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #81\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(169,1,'preferences',82,NULL,'a:4:{s:13:\"preference_id\";i:82;s:15:\"preference_name\";s:21:\"ui_column_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_clicks_rank\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(170,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:82;s:5:\"value\";i:2;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #82\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(171,1,'preferences',83,NULL,'a:4:{s:13:\"preference_id\";i:83;s:15:\"preference_name\";s:13:\"ui_column_ctr\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:13:\"ui_column_ctr\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(172,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:83;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #83\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(173,1,'preferences',84,NULL,'a:4:{s:13:\"preference_id\";i:84;s:15:\"preference_name\";s:19:\"ui_column_ctr_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ctr_label\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(174,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:84;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #84\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(175,1,'preferences',85,NULL,'a:4:{s:13:\"preference_id\";i:85;s:15:\"preference_name\";s:18:\"ui_column_ctr_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_ctr_rank\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(176,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:85;s:5:\"value\";i:3;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #85\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(177,1,'preferences',86,NULL,'a:4:{s:13:\"preference_id\";i:86;s:15:\"preference_name\";s:21:\"ui_column_conversions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_conversions\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(178,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:86;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #86\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(179,1,'preferences',87,NULL,'a:4:{s:13:\"preference_id\";i:87;s:15:\"preference_name\";s:27:\"ui_column_conversions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_conversions_label\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(180,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:87;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #87\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(181,1,'preferences',88,NULL,'a:4:{s:13:\"preference_id\";i:88;s:15:\"preference_name\";s:26:\"ui_column_conversions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_conversions_rank\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(182,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:88;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #88\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(183,1,'preferences',89,NULL,'a:4:{s:13:\"preference_id\";i:89;s:15:\"preference_name\";s:29:\"ui_column_conversions_pending\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:29:\"ui_column_conversions_pending\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(184,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:89;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #89\";}',0,'Installer',0,'2014-09-17 07:27:15',1,NULL,NULL),(185,1,'preferences',90,NULL,'a:4:{s:13:\"preference_id\";i:90;s:15:\"preference_name\";s:35:\"ui_column_conversions_pending_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"ui_column_conversions_pending_label\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(186,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:90;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #90\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(187,1,'preferences',91,NULL,'a:4:{s:13:\"preference_id\";i:91;s:15:\"preference_name\";s:34:\"ui_column_conversions_pending_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:34:\"ui_column_conversions_pending_rank\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(188,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:91;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #91\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(189,1,'preferences',92,NULL,'a:4:{s:13:\"preference_id\";i:92;s:15:\"preference_name\";s:18:\"ui_column_sr_views\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_sr_views\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(190,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:92;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #92\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(191,1,'preferences',93,NULL,'a:4:{s:13:\"preference_id\";i:93;s:15:\"preference_name\";s:24:\"ui_column_sr_views_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_views_label\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(192,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:93;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #93\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(193,1,'preferences',94,NULL,'a:4:{s:13:\"preference_id\";i:94;s:15:\"preference_name\";s:23:\"ui_column_sr_views_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_sr_views_rank\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(194,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:94;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #94\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(195,1,'preferences',95,NULL,'a:4:{s:13:\"preference_id\";i:95;s:15:\"preference_name\";s:19:\"ui_column_sr_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_sr_clicks\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(196,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:95;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #95\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(197,1,'preferences',96,NULL,'a:4:{s:13:\"preference_id\";i:96;s:15:\"preference_name\";s:25:\"ui_column_sr_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_sr_clicks_label\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(198,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:96;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #96\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(199,1,'preferences',97,NULL,'a:4:{s:13:\"preference_id\";i:97;s:15:\"preference_name\";s:24:\"ui_column_sr_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_clicks_rank\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(200,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:97;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #97\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(201,2,'account_preference_assoc',0,NULL,'a:2:{s:5:\"value\";a:2:{s:3:\"was\";s:0:\"\";s:2:\"is\";s:16:\"America/New_York\";}s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}',0,'Installer',0,'2014-09-17 07:27:16',1,NULL,NULL),(202,1,'accounts',3,NULL,'a:4:{s:10:\"account_id\";i:3;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:11:\"Webtracking\";s:8:\"key_desc\";s:11:\"Webtracking\";}',1,'admin',0,'2014-09-17 08:17:24',1,3,NULL),(203,1,'clients',1,NULL,'a:17:{s:8:\"clientid\";i:1;s:8:\"agencyid\";i:1;s:10:\"clientname\";s:11:\"Webtracking\";s:7:\"contact\";s:7:\"wtadmim\";s:5:\"email\";s:17:\"wtadmin@wtlab.com\";s:6:\"report\";s:1:\"f\";s:14:\"reportinterval\";i:7;s:14:\"reportlastdate\";s:10:\"2014-09-17\";s:16:\"reportdeactivate\";s:1:\"f\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:17:24\";s:15:\"an_adnetwork_id\";i:0;s:16:\"as_advertiser_id\";i:0;s:10:\"account_id\";i:3;s:21:\"advertiser_limitation\";s:5:\"false\";s:4:\"type\";i:0;s:8:\"key_desc\";s:11:\"Webtracking\";}',1,'admin',0,'2014-09-17 08:17:24',2,3,NULL),(204,1,'campaigns',1,NULL,'a:37:{s:10:\"campaignid\";i:1;s:12:\"campaignname\";s:30:\"Webtracking - Default Campaign\";s:8:\"clientid\";i:1;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:8:\"priority\";i:-1;s:6:\"weight\";i:1;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:0;s:12:\"revenue_type\";i:1;s:7:\"updated\";s:19:\"2014-09-17 08:17:35\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:14:\"an_campaign_id\";i:0;s:14:\"as_campaign_id\";i:0;s:6:\"status\";i:0;s:9:\"an_status\";i:0;s:16:\"as_reject_reason\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:100;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:19:\"2014-09-17 04:00:00\";s:11:\"expire_time\";s:4:\"NULL\";s:4:\"type\";i:0;s:8:\"key_desc\";s:30:\"Webtracking - Default Campaign\";}',1,'admin',0,'2014-09-17 08:17:35',2,3,NULL),(205,1,'banners',1,NULL,'a:44:{s:8:\"bannerid\";i:1;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"2256ef0a5e9d26cec4aea2bbbdf87511.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"sample1\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:20:29\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"sample1\";}',1,'admin',0,'2014-09-17 08:20:29',2,3,NULL),(206,1,'ad_zone_assoc',1,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:1;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:1;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #1 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:20:29',2,3,NULL),(207,1,'banners',2,NULL,'a:44:{s:8:\"bannerid\";i:2;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"2256ef0a5e9d26cec4aea2bbbdf87511.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"sample2\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:20:48\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"sample2\";}',1,'admin',0,'2014-09-17 08:20:48',2,3,NULL),(208,1,'ad_zone_assoc',2,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:2;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:2;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #2 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:20:48',2,3,NULL),(209,1,'banners',3,NULL,'a:44:{s:8:\"bannerid\";i:3;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"2256ef0a5e9d26cec4aea2bbbdf87511.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"sample3\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:21:04\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"sample3\";}',1,'admin',0,'2014-09-17 08:21:04',2,3,NULL),(210,1,'ad_zone_assoc',3,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:3;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:3;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #3 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:21:04',2,3,NULL),(211,1,'banners',4,NULL,'a:44:{s:8:\"bannerid\";i:4;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"c4b403cbcaa88ab0314bb410a7a5ee43.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Camera1\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:23:25\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Camera1\";}',1,'admin',0,'2014-09-17 08:23:26',2,3,NULL),(212,1,'ad_zone_assoc',4,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:4;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:4;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #4 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:23:26',2,3,NULL),(213,1,'banners',5,NULL,'a:44:{s:8:\"bannerid\";i:5;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:3:\"png\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"6c5de61af7427cf6e586adae7aa0d6d1.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:172;s:6:\"height\";i:163;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Camera2\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:23:42\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Camera2\";}',1,'admin',0,'2014-09-17 08:23:42',2,3,NULL),(214,1,'ad_zone_assoc',5,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:5;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:5;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #5 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:23:42',2,3,NULL),(215,1,'banners',6,NULL,'a:44:{s:8:\"bannerid\";i:6;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:3:\"png\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"c569cf62c790549e342557b7054b539c.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:147;s:6:\"height\";i:122;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Camera3\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:24:04\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Camera3\";}',1,'admin',0,'2014-09-17 08:24:04',2,3,NULL),(216,1,'ad_zone_assoc',6,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:6;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:6;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #6 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:24:04',2,3,NULL),(217,1,'banners',7,NULL,'a:44:{s:8:\"bannerid\";i:7;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"5b198e258983daed4d8898250ae7d773.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:227;s:6:\"height\";i:222;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Camera4\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:24:18\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Camera4\";}',1,'admin',0,'2014-09-17 08:24:18',2,3,NULL),(218,1,'ad_zone_assoc',7,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:7;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:7;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #7 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:24:18',2,3,NULL),(219,1,'banners',8,NULL,'a:44:{s:8:\"bannerid\";i:8;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"b1af8018625cf9854fa7c82a812d454c.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:237;s:6:\"height\";i:213;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Camera5\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:24:31\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Camera5\";}',1,'admin',0,'2014-09-17 08:24:31',2,3,NULL),(220,1,'ad_zone_assoc',8,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:8;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:8;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #8 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:24:31',2,3,NULL),(221,1,'banners',9,NULL,'a:44:{s:8:\"bannerid\";i:9;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"511d2fc922e04b9aae0f256965c969d6.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:240;s:6:\"height\";i:159;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Camera6\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:24:47\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Camera6\";}',1,'admin',0,'2014-09-17 08:24:47',2,3,NULL),(222,1,'ad_zone_assoc',9,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:9;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:9;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #9 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:24:47',2,3,NULL),(223,1,'banners',10,NULL,'a:44:{s:8:\"bannerid\";i:10;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:3:\"png\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"d7926a182ce3afc35e7664832babc74d.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:202;s:6:\"height\";i:139;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:4:\"LCD1\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:25:02\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:4:\"LCD1\";}',1,'admin',0,'2014-09-17 08:25:02',2,3,NULL),(224,1,'ad_zone_assoc',10,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:10;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:10;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #10 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:25:02',2,3,NULL),(225,1,'banners',11,NULL,'a:44:{s:8:\"bannerid\";i:11;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:3:\"png\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"d0d441bd210df32ebdaacf550d1e962e.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:206;s:6:\"height\";i:138;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:4:\"LCD2\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:25:17\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:4:\"LCD2\";}',1,'admin',0,'2014-09-17 08:25:17',2,3,NULL),(226,1,'ad_zone_assoc',11,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:11;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:11;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #11 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:25:17',2,3,NULL),(227,1,'banners',12,NULL,'a:44:{s:8:\"bannerid\";i:12;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:3:\"png\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"d2fc322cf1102b20751a980776a2f076.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:175;s:6:\"height\";i:125;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:4:\"LCD3\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:25:28\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:4:\"LCD3\";}',1,'admin',0,'2014-09-17 08:25:29',2,3,NULL),(228,1,'ad_zone_assoc',12,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:12;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:12;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #12 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:25:29',2,3,NULL),(229,1,'banners',13,NULL,'a:44:{s:8:\"bannerid\";i:13;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"dfd581f7e46a75bc7116d29639d84a0b.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:171;s:6:\"height\";i:128;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:4:\"LCD4\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:25:40\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:4:\"LCD4\";}',1,'admin',0,'2014-09-17 08:25:40',2,3,NULL),(230,1,'ad_zone_assoc',13,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:13;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:13;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #13 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:25:40',2,3,NULL),(231,1,'banners',14,NULL,'a:44:{s:8:\"bannerid\";i:14;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"acc42831222497131439fec5b972cce4.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:172;s:6:\"height\";i:123;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:4:\"LCD5\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:25:52\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:4:\"LCD5\";}',1,'admin',0,'2014-09-17 08:25:52',2,3,NULL),(232,1,'ad_zone_assoc',14,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:14;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:14;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #14 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:25:52',2,3,NULL),(233,1,'banners',15,NULL,'a:44:{s:8:\"bannerid\";i:15;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"76e20f0c5081c68915e528b0b88922cb.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:157;s:6:\"height\";i:128;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:4:\"LCD6\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:26:04\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:4:\"LCD6\";}',1,'admin',0,'2014-09-17 08:26:04',2,3,NULL),(234,1,'ad_zone_assoc',15,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:15;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:15;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #15 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:26:04',2,3,NULL),(235,1,'banners',16,NULL,'a:44:{s:8:\"bannerid\";i:16;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"bbaea7b89db953cb71fe8f670b0f0f37.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:200;s:6:\"height\";i:285;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Mobile1\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:26:29\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Mobile1\";}',1,'admin',0,'2014-09-17 08:26:29',2,3,NULL),(236,1,'ad_zone_assoc',16,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:16;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:16;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #16 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:26:29',2,3,NULL),(237,1,'banners',17,NULL,'a:44:{s:8:\"bannerid\";i:17;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"523816fbe83e954d98d27e8f8f0cb259.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:200;s:6:\"height\";i:285;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Mobile2\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:26:42\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Mobile2\";}',1,'admin',0,'2014-09-17 08:26:42',2,3,NULL),(238,1,'ad_zone_assoc',17,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:17;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:17;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #17 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:26:42',2,3,NULL),(239,1,'banners',18,NULL,'a:44:{s:8:\"bannerid\";i:18;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"d1a2d676a1fcc0d1261afbb31d12429b.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:200;s:6:\"height\";i:285;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Mobile3\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:26:56\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Mobile3\";}',1,'admin',0,'2014-09-17 08:26:56',2,3,NULL),(240,1,'ad_zone_assoc',18,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:18;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:18;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #18 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:26:56',2,3,NULL),(241,1,'banners',19,NULL,'a:44:{s:8:\"bannerid\";i:19;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"ffe263d6b431ae023d41be6de78dbe94.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:200;s:6:\"height\";i:285;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Mobile4\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:27:10\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Mobile4\";}',1,'admin',0,'2014-09-17 08:27:10',2,3,NULL),(242,1,'ad_zone_assoc',19,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:19;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:19;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #19 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:27:10',2,3,NULL),(243,1,'banners',20,NULL,'a:44:{s:8:\"bannerid\";i:20;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"04ff515ffd41bfe82985b4263259fe7e.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:200;s:6:\"height\";i:285;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Mobile5\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:27:26\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Mobile5\";}',1,'admin',0,'2014-09-17 08:27:26',2,3,NULL),(244,1,'ad_zone_assoc',20,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:20;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:20;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #20 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:27:26',2,3,NULL),(245,1,'banners',21,NULL,'a:44:{s:8:\"bannerid\";i:21;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"f47b0fd65aa8b0e82e602be7b88039ba.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:200;s:6:\"height\";i:268;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:7:\"Mobile6\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:27:46\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:7:\"Mobile6\";}',1,'admin',0,'2014-09-17 08:27:46',2,3,NULL),(246,1,'ad_zone_assoc',21,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:21;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:21;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #21 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:27:46',2,3,NULL),(247,1,'banners',22,NULL,'a:44:{s:8:\"bannerid\";i:22;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"eeb1670a6b0a6d7422459ddb7bbedfe0.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:173;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:5:\"Shoe1\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:28:01\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:5:\"Shoe1\";}',1,'admin',0,'2014-09-17 08:28:01',2,3,NULL),(248,1,'ad_zone_assoc',22,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:22;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:22;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #22 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:28:01',2,3,NULL),(249,1,'banners',23,NULL,'a:44:{s:8:\"bannerid\";i:23;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"c26d1157be9f8d35e97ed45e9389acc4.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:173;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:5:\"Shoe2\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:28:13\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:5:\"Shoe2\";}',1,'admin',0,'2014-09-17 08:28:13',2,3,NULL),(250,1,'ad_zone_assoc',23,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:23;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:23;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #23 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:28:13',2,3,NULL),(251,1,'banners',24,NULL,'a:44:{s:8:\"bannerid\";i:24;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"45491213e773c55b5fdf092c651656d8.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:173;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:5:\"Shoe3\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:28:25\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:5:\"Shoe3\";}',1,'admin',0,'2014-09-17 08:28:25',2,3,NULL),(252,1,'ad_zone_assoc',24,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:24;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:24;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #24 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:28:25',2,3,NULL),(253,1,'banners',25,NULL,'a:44:{s:8:\"bannerid\";i:25;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"2929d8e29b2227a4e170d6a9629b9eba.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:173;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:5:\"Shoe4\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:28:36\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:5:\"Shoe4\";}',1,'admin',0,'2014-09-17 08:28:36',2,3,NULL),(254,1,'ad_zone_assoc',25,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:25;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:25;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #25 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:28:36',2,3,NULL),(255,1,'banners',26,NULL,'a:44:{s:8:\"bannerid\";i:26;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"05f0078dcf2ce9a5ed890368a61380d6.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:173;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:5:\"Shoe5\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:28:48\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:5:\"Shoe5\";}',1,'admin',0,'2014-09-17 08:28:48',2,3,NULL),(256,1,'ad_zone_assoc',26,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:26;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:26;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #26 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:28:48',2,3,NULL),(257,1,'banners',27,NULL,'a:44:{s:8:\"bannerid\";i:27;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:4:\"jpeg\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"388862b3843567b1282a99790428df7d.jpg\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:250;s:6:\"height\";i:173;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:5:\"Shoe6\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2014-09-17 08:29:00\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:12:\"an_banner_id\";i:0;s:12:\"as_banner_id\";i:0;s:6:\"status\";i:0;s:16:\"ad_direct_status\";i:0;s:29:\"ad_direct_rejection_reason_id\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:8:\"key_desc\";s:5:\"Shoe6\";}',1,'admin',0,'2014-09-17 08:29:00',2,3,NULL),(258,1,'ad_zone_assoc',27,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:27;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:27;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:17:\"Ad #27 -> Zone #0\";}',1,'admin',0,'2014-09-17 08:29:00',2,3,NULL);
/*!40000 ALTER TABLE `rv_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_banner_vast_element`
--

DROP TABLE IF EXISTS `rv_banner_vast_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_banner_vast_element` (
  `banner_vast_element_id` mediumint(9) NOT NULL,
  `banner_id` mediumint(9) NOT NULL,
  `vast_element_type` varchar(16) NOT NULL DEFAULT '',
  `vast_video_id` varchar(100) DEFAULT NULL,
  `vast_video_duration` mediumint(9) DEFAULT NULL,
  `vast_video_delivery` varchar(20) DEFAULT NULL,
  `vast_video_type` varchar(20) DEFAULT NULL,
  `vast_video_bitrate` varchar(20) DEFAULT NULL,
  `vast_video_height` mediumint(9) DEFAULT NULL,
  `vast_video_width` mediumint(9) DEFAULT NULL,
  `vast_video_outgoing_filename` text,
  `vast_companion_banner_id` mediumint(9) DEFAULT NULL,
  `vast_overlay_height` mediumint(9) DEFAULT NULL,
  `vast_overlay_width` mediumint(9) DEFAULT NULL,
  `vast_video_clickthrough_url` text,
  `vast_overlay_action` varchar(20) DEFAULT NULL,
  `vast_overlay_format` varchar(20) DEFAULT NULL,
  `vast_overlay_text_title` text,
  `vast_overlay_text_description` text,
  `vast_overlay_text_call` text,
  `vast_creative_type` varchar(20) DEFAULT NULL,
  `vast_thirdparty_impression` text,
  KEY `rv_banner_vast_element_banner_vast_banner_vast_element_id` (`banner_vast_element_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_banner_vast_element`
--

LOCK TABLES `rv_banner_vast_element` WRITE;
/*!40000 ALTER TABLE `rv_banner_vast_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_banner_vast_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_banners`
--

DROP TABLE IF EXISTS `rv_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_banners` (
  `bannerid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `campaignid` mediumint(9) NOT NULL DEFAULT '0',
  `contenttype` enum('gif','jpeg','png','html','swf','dcr','rpm','mov','txt') NOT NULL DEFAULT 'gif',
  `pluginversion` mediumint(9) NOT NULL DEFAULT '0',
  `storagetype` enum('sql','web','url','html','network','txt') NOT NULL DEFAULT 'sql',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `imageurl` varchar(255) NOT NULL DEFAULT '',
  `htmltemplate` text NOT NULL,
  `htmlcache` text NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '1',
  `seq` tinyint(4) NOT NULL DEFAULT '0',
  `target` varchar(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `statustext` varchar(255) NOT NULL DEFAULT '',
  `bannertext` text NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `adserver` varchar(255) NOT NULL DEFAULT '',
  `block` int(11) NOT NULL DEFAULT '0',
  `capping` int(11) NOT NULL DEFAULT '0',
  `session_capping` int(11) NOT NULL DEFAULT '0',
  `compiledlimitation` text NOT NULL,
  `acl_plugins` text,
  `append` text NOT NULL,
  `bannertype` tinyint(4) NOT NULL DEFAULT '0',
  `alt_filename` varchar(255) NOT NULL DEFAULT '',
  `alt_imageurl` varchar(255) NOT NULL DEFAULT '',
  `alt_contenttype` enum('gif','jpeg','png') NOT NULL DEFAULT 'gif',
  `comments` text,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `transparent` tinyint(1) NOT NULL DEFAULT '0',
  `parameters` text,
  `an_banner_id` int(11) DEFAULT NULL,
  `as_banner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `ad_direct_status` tinyint(4) NOT NULL DEFAULT '0',
  `ad_direct_rejection_reason_id` tinyint(4) NOT NULL DEFAULT '0',
  `ext_bannertype` varchar(255) DEFAULT NULL,
  `prepend` text NOT NULL,
  PRIMARY KEY (`bannerid`),
  KEY `rv_banners_campaignid` (`campaignid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_banners`
--

LOCK TABLES `rv_banners` WRITE;
/*!40000 ALTER TABLE `rv_banners` DISABLE KEYS */;
INSERT INTO `rv_banners` VALUES (1,1,'jpeg',0,'web','2256ef0a5e9d26cec4aea2bbbdf87511.jpg','','','',1920,1080,1,0,'','','','','','sample1','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:20:29','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(2,1,'jpeg',0,'web','2256ef0a5e9d26cec4aea2bbbdf87511.jpg','','','',1920,1080,1,0,'','','','','','sample2','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:20:48','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(3,1,'jpeg',0,'web','2256ef0a5e9d26cec4aea2bbbdf87511.jpg','','','',1920,1080,1,0,'','','','','','sample3','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:21:04','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(4,1,'jpeg',0,'web','c4b403cbcaa88ab0314bb410a7a5ee43.jpg','','','',160,160,1,0,'','','','','','Camera1','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:23:25','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(5,1,'png',0,'web','6c5de61af7427cf6e586adae7aa0d6d1.jpg','','','',172,163,1,0,'','','','','','Camera2','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:23:42','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(6,1,'png',0,'web','c569cf62c790549e342557b7054b539c.jpg','','','',147,122,1,0,'','','','','','Camera3','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:24:04','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(7,1,'jpeg',0,'web','5b198e258983daed4d8898250ae7d773.jpg','','','',227,222,1,0,'','','','','','Camera4','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:24:18','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(8,1,'jpeg',0,'web','b1af8018625cf9854fa7c82a812d454c.jpg','','','',237,213,1,0,'','','','','','Camera5','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:24:31','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(9,1,'jpeg',0,'web','511d2fc922e04b9aae0f256965c969d6.jpg','','','',240,159,1,0,'','','','','','Camera6','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:24:47','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(10,1,'png',0,'web','d7926a182ce3afc35e7664832babc74d.jpg','','','',202,139,1,0,'','','','','','LCD1','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:25:02','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(11,1,'png',0,'web','d0d441bd210df32ebdaacf550d1e962e.jpg','','','',206,138,1,0,'','','','','','LCD2','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:25:17','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(12,1,'png',0,'web','d2fc322cf1102b20751a980776a2f076.jpg','','','',175,125,1,0,'','','','','','LCD3','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:25:28','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(13,1,'jpeg',0,'web','dfd581f7e46a75bc7116d29639d84a0b.jpg','','','',171,128,1,0,'','','','','','LCD4','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:25:40','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(14,1,'jpeg',0,'web','acc42831222497131439fec5b972cce4.jpg','','','',172,123,1,0,'','','','','','LCD5','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:25:52','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(15,1,'jpeg',0,'web','76e20f0c5081c68915e528b0b88922cb.jpg','','','',157,128,1,0,'','','','','','LCD6','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:26:04','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(16,1,'jpeg',0,'web','bbaea7b89db953cb71fe8f670b0f0f37.jpg','','','',200,285,1,0,'','','','','','Mobile1','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:26:29','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(17,1,'jpeg',0,'web','523816fbe83e954d98d27e8f8f0cb259.jpg','','','',200,285,1,0,'','','','','','Mobile2','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:26:42','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(18,1,'jpeg',0,'web','d1a2d676a1fcc0d1261afbb31d12429b.jpg','','','',200,285,1,0,'','','','','','Mobile3','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:26:56','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(19,1,'jpeg',0,'web','ffe263d6b431ae023d41be6de78dbe94.jpg','','','',200,285,1,0,'','','','','','Mobile4','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:27:10','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(20,1,'jpeg',0,'web','04ff515ffd41bfe82985b4263259fe7e.jpg','','','',200,285,1,0,'','','','','','Mobile5','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:27:26','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(21,1,'jpeg',0,'web','f47b0fd65aa8b0e82e602be7b88039ba.jpg','','','',200,268,1,0,'','','','','','Mobile6','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:27:46','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(22,1,'jpeg',0,'web','eeb1670a6b0a6d7422459ddb7bbedfe0.jpg','','','',250,173,1,0,'','','','','','Shoe1','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:28:01','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(23,1,'jpeg',0,'web','c26d1157be9f8d35e97ed45e9389acc4.jpg','','','',250,173,1,0,'','','','','','Shoe2','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:28:13','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(24,1,'jpeg',0,'web','45491213e773c55b5fdf092c651656d8.jpg','','','',250,173,1,0,'','','','','','Shoe3','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:28:25','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(25,1,'jpeg',0,'web','2929d8e29b2227a4e170d6a9629b9eba.jpg','','','',250,173,1,0,'','','','','','Shoe4','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:28:36','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(26,1,'jpeg',0,'web','05f0078dcf2ce9a5ed890368a61380d6.jpg','','','',250,173,1,0,'','','','','','Shoe5','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:28:48','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,''),(27,1,'jpeg',0,'web','388862b3843567b1282a99790428df7d.jpg','','','',250,173,1,0,'','','','','','Shoe6','',0,0,0,'',NULL,'',0,'','','','','2014-09-17 08:29:00','0000-00-00 00:00:00','',0,'N;',NULL,NULL,0,0,0,NULL,'');
/*!40000 ALTER TABLE `rv_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_campaigns`
--

DROP TABLE IF EXISTS `rv_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_campaigns` (
  `campaignid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `campaignname` varchar(255) NOT NULL DEFAULT '',
  `clientid` mediumint(9) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT '-1',
  `clicks` int(11) DEFAULT '-1',
  `conversions` int(11) DEFAULT '-1',
  `priority` int(11) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '1',
  `target_impression` int(11) NOT NULL DEFAULT '0',
  `target_click` int(11) NOT NULL DEFAULT '0',
  `target_conversion` int(11) NOT NULL DEFAULT '0',
  `anonymous` enum('t','f') NOT NULL DEFAULT 'f',
  `companion` smallint(1) DEFAULT '0',
  `comments` text,
  `revenue` decimal(10,4) DEFAULT NULL,
  `revenue_type` smallint(6) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL DEFAULT '0',
  `capping` int(11) NOT NULL DEFAULT '0',
  `session_capping` int(11) NOT NULL DEFAULT '0',
  `an_campaign_id` int(11) DEFAULT NULL,
  `as_campaign_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `an_status` int(11) NOT NULL DEFAULT '0',
  `as_reject_reason` int(11) NOT NULL DEFAULT '0',
  `hosted_views` int(11) NOT NULL DEFAULT '0',
  `hosted_clicks` int(11) NOT NULL DEFAULT '0',
  `viewwindow` mediumint(9) NOT NULL DEFAULT '0',
  `clickwindow` mediumint(9) NOT NULL DEFAULT '0',
  `ecpm` decimal(10,4) DEFAULT NULL,
  `min_impressions` int(11) NOT NULL DEFAULT '0',
  `ecpm_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `activate_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `show_capped_no_cookie` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`),
  KEY `rv_campaigns_clientid` (`clientid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_campaigns`
--

LOCK TABLES `rv_campaigns` WRITE;
/*!40000 ALTER TABLE `rv_campaigns` DISABLE KEYS */;
INSERT INTO `rv_campaigns` VALUES (1,'Webtracking - Default Campaign',1,-1,-1,-1,-1,1,0,0,0,'f',0,'',NULL,1,'2014-09-17 08:17:35',0,0,0,NULL,NULL,0,0,0,0,0,0,0,NULL,100,0,'2014-09-17 04:00:00',NULL,0,0);
/*!40000 ALTER TABLE `rv_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_campaigns_trackers`
--

DROP TABLE IF EXISTS `rv_campaigns_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_campaigns_trackers` (
  `campaign_trackerid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `campaignid` mediumint(9) NOT NULL DEFAULT '0',
  `trackerid` mediumint(9) NOT NULL DEFAULT '0',
  `status` smallint(1) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`campaign_trackerid`),
  KEY `rv_campaigns_trackers_campaignid` (`campaignid`),
  KEY `rv_campaigns_trackers_trackerid` (`trackerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_campaigns_trackers`
--

LOCK TABLES `rv_campaigns_trackers` WRITE;
/*!40000 ALTER TABLE `rv_campaigns_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_campaigns_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_category`
--

DROP TABLE IF EXISTS `rv_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_category`
--

LOCK TABLES `rv_category` WRITE;
/*!40000 ALTER TABLE `rv_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_channel`
--

DROP TABLE IF EXISTS `rv_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_channel` (
  `channelid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `agencyid` mediumint(9) NOT NULL DEFAULT '0',
  `affiliateid` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `compiledlimitation` text NOT NULL,
  `acl_plugins` text,
  `active` smallint(1) DEFAULT NULL,
  `comments` text,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`channelid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_channel`
--

LOCK TABLES `rv_channel` WRITE;
/*!40000 ALTER TABLE `rv_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_clients`
--

DROP TABLE IF EXISTS `rv_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_clients` (
  `clientid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `agencyid` mediumint(9) NOT NULL DEFAULT '0',
  `clientname` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `report` enum('t','f') NOT NULL DEFAULT 't',
  `reportinterval` mediumint(9) NOT NULL DEFAULT '7',
  `reportlastdate` date NOT NULL DEFAULT '0000-00-00',
  `reportdeactivate` enum('t','f') NOT NULL DEFAULT 't',
  `comments` text,
  `updated` datetime NOT NULL,
  `an_adnetwork_id` int(11) DEFAULT NULL,
  `as_advertiser_id` int(11) DEFAULT NULL,
  `account_id` mediumint(9) DEFAULT NULL,
  `advertiser_limitation` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clientid`),
  UNIQUE KEY `rv_clients_account_id` (`account_id`),
  KEY `rv_clients_agencyid_type` (`agencyid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_clients`
--

LOCK TABLES `rv_clients` WRITE;
/*!40000 ALTER TABLE `rv_clients` DISABLE KEYS */;
INSERT INTO `rv_clients` VALUES (1,1,'Webtracking','wtadmim','wtadmin@wtlab.com','f',7,'2014-09-17','f','','2014-09-17 08:17:24',NULL,NULL,3,0,0);
/*!40000 ALTER TABLE `rv_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_a`
--

DROP TABLE IF EXISTS `rv_data_bkt_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_a` (
  `server_conv_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_id` mediumint(9) NOT NULL,
  `date_time` datetime NOT NULL,
  `action_date_time` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `action` int(10) DEFAULT NULL,
  `window` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  PRIMARY KEY (`server_conv_id`,`server_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_a`
--

LOCK TABLES `rv_data_bkt_a` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_a_var`
--

DROP TABLE IF EXISTS `rv_data_bkt_a_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_a_var` (
  `server_conv_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_variable_id` mediumint(9) NOT NULL,
  `value` text,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`server_conv_id`,`server_ip`,`tracker_variable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_a_var`
--

LOCK TABLES `rv_data_bkt_a_var` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_a_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_a_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_c`
--

DROP TABLE IF EXISTS `rv_data_bkt_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_c` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_c`
--

LOCK TABLES `rv_data_bkt_c` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_m`
--

DROP TABLE IF EXISTS `rv_data_bkt_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_m` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_m`
--

LOCK TABLES `rv_data_bkt_m` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_m` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_r`
--

DROP TABLE IF EXISTS `rv_data_bkt_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_r` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_r`
--

LOCK TABLES `rv_data_bkt_r` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_r` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_vast_e`
--

DROP TABLE IF EXISTS `rv_data_bkt_vast_e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_vast_e` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(20) NOT NULL,
  `zone_id` mediumint(20) NOT NULL,
  `vast_event_id` mediumint(20) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`,`vast_event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_vast_e`
--

LOCK TABLES `rv_data_bkt_vast_e` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_vast_e` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_vast_e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_intermediate_ad`
--

DROP TABLE IF EXISTS `rv_data_intermediate_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_intermediate_ad` (
  `data_intermediate_ad_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL DEFAULT '0',
  `impressions` int(10) unsigned NOT NULL DEFAULT '0',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `conversions` int(10) unsigned NOT NULL DEFAULT '0',
  `total_basket_value` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `total_num_items` int(11) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  PRIMARY KEY (`data_intermediate_ad_id`),
  KEY `rv_data_intermediate_ad_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `rv_data_intermediate_ad_zone_id_date_time` (`zone_id`,`date_time`),
  KEY `rv_data_intermediate_ad_date_time` (`date_time`),
  KEY `rv_data_intermediate_ad_interval_start` (`interval_start`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_intermediate_ad`
--

LOCK TABLES `rv_data_intermediate_ad` WRITE;
/*!40000 ALTER TABLE `rv_data_intermediate_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_intermediate_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_intermediate_ad_connection`
--

DROP TABLE IF EXISTS `rv_data_intermediate_ad_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_intermediate_ad_connection` (
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `tracker_date_time` datetime NOT NULL,
  `connection_date_time` datetime DEFAULT NULL,
  `tracker_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `tracker_channel` varchar(255) DEFAULT NULL,
  `connection_channel` varchar(255) DEFAULT NULL,
  `tracker_channel_ids` varchar(64) DEFAULT NULL,
  `connection_channel_ids` varchar(64) DEFAULT NULL,
  `tracker_language` varchar(13) DEFAULT NULL,
  `connection_language` varchar(13) DEFAULT NULL,
  `tracker_ip_address` varchar(16) DEFAULT NULL,
  `connection_ip_address` varchar(16) DEFAULT NULL,
  `tracker_host_name` varchar(255) DEFAULT NULL,
  `connection_host_name` varchar(255) DEFAULT NULL,
  `tracker_country` char(2) DEFAULT NULL,
  `connection_country` char(2) DEFAULT NULL,
  `tracker_https` int(10) unsigned DEFAULT NULL,
  `connection_https` int(10) unsigned DEFAULT NULL,
  `tracker_domain` varchar(255) DEFAULT NULL,
  `connection_domain` varchar(255) DEFAULT NULL,
  `tracker_page` varchar(255) DEFAULT NULL,
  `connection_page` varchar(255) DEFAULT NULL,
  `tracker_query` varchar(255) DEFAULT NULL,
  `connection_query` varchar(255) DEFAULT NULL,
  `tracker_referer` varchar(255) DEFAULT NULL,
  `connection_referer` varchar(255) DEFAULT NULL,
  `tracker_search_term` varchar(255) DEFAULT NULL,
  `connection_search_term` varchar(255) DEFAULT NULL,
  `tracker_user_agent` varchar(255) DEFAULT NULL,
  `connection_user_agent` varchar(255) DEFAULT NULL,
  `tracker_os` varchar(32) DEFAULT NULL,
  `connection_os` varchar(32) DEFAULT NULL,
  `tracker_browser` varchar(32) DEFAULT NULL,
  `connection_browser` varchar(32) DEFAULT NULL,
  `connection_action` int(10) unsigned DEFAULT NULL,
  `connection_window` int(10) unsigned DEFAULT NULL,
  `connection_status` int(10) unsigned NOT NULL DEFAULT '4',
  `inside_window` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`data_intermediate_ad_connection_id`),
  KEY `rv_data_intermediate_ad_connection_tracker_date_time` (`tracker_date_time`),
  KEY `rv_data_intermediate_ad_connection_tracker_id` (`tracker_id`),
  KEY `rv_data_intermediate_ad_connection_ad_id` (`ad_id`),
  KEY `rv_data_intermediate_ad_connection_zone_id` (`zone_id`),
  KEY `rv_data_intermediate_ad_connection_viewer_id` (`viewer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_intermediate_ad_connection`
--

LOCK TABLES `rv_data_intermediate_ad_connection` WRITE;
/*!40000 ALTER TABLE `rv_data_intermediate_ad_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_intermediate_ad_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_intermediate_ad_variable_value`
--

DROP TABLE IF EXISTS `rv_data_intermediate_ad_variable_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_intermediate_ad_variable_value` (
  `data_intermediate_ad_variable_value_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL,
  `tracker_variable_id` int(11) NOT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`data_intermediate_ad_variable_value_id`),
  KEY `rv_data_intermediate_ad_variable_value_data_intermediate_ad_con` (`data_intermediate_ad_connection_id`),
  KEY `rv_data_intermediate_ad_variable_value_tracker_variable_id` (`tracker_variable_id`),
  KEY `rv_data_intermediate_ad_variable_value_tracker_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_intermediate_ad_variable_value`
--

LOCK TABLES `rv_data_intermediate_ad_variable_value` WRITE;
/*!40000 ALTER TABLE `rv_data_intermediate_ad_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_intermediate_ad_variable_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_ad_click`
--

DROP TABLE IF EXISTS `rv_data_raw_ad_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_ad_click` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL,
  KEY `rv_data_raw_ad_click_viewer_id` (`viewer_id`),
  KEY `rv_data_raw_ad_click_date_time` (`date_time`),
  KEY `rv_data_raw_ad_click_ad_id` (`ad_id`),
  KEY `rv_data_raw_ad_click_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_ad_click`
--

LOCK TABLES `rv_data_raw_ad_click` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_ad_click` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_ad_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_ad_impression`
--

DROP TABLE IF EXISTS `rv_data_raw_ad_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_ad_impression` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL,
  KEY `rv_data_raw_ad_impression_viewer_id` (`viewer_id`),
  KEY `rv_data_raw_ad_impression_date_time` (`date_time`),
  KEY `rv_data_raw_ad_impression_ad_id` (`ad_id`),
  KEY `rv_data_raw_ad_impression_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_ad_impression`
--

LOCK TABLES `rv_data_raw_ad_impression` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_ad_impression` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_ad_impression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_ad_request`
--

DROP TABLE IF EXISTS `rv_data_raw_ad_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_ad_request` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL,
  KEY `rv_data_raw_ad_request_viewer_id` (`viewer_id`),
  KEY `rv_data_raw_ad_request_date_time` (`date_time`),
  KEY `rv_data_raw_ad_request_ad_id` (`ad_id`),
  KEY `rv_data_raw_ad_request_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_ad_request`
--

LOCK TABLES `rv_data_raw_ad_request` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_ad_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_ad_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_tracker_impression`
--

DROP TABLE IF EXISTS `rv_data_raw_tracker_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_tracker_impression` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `viewer_id` varchar(32) NOT NULL DEFAULT '',
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `tracker_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` int(10) unsigned DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` int(10) unsigned DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`server_raw_tracker_impression_id`,`server_raw_ip`),
  KEY `rv_data_raw_tracker_impression_viewer_id` (`viewer_id`),
  KEY `rv_data_raw_tracker_impression_date_time` (`date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_tracker_impression`
--

LOCK TABLES `rv_data_raw_tracker_impression` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_tracker_impression` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_tracker_impression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_tracker_variable_value`
--

DROP TABLE IF EXISTS `rv_data_raw_tracker_variable_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_tracker_variable_value` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_variable_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`server_raw_tracker_impression_id`,`server_raw_ip`,`tracker_variable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_tracker_variable_value`
--

LOCK TABLES `rv_data_raw_tracker_variable_value` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_tracker_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_tracker_variable_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_summary_ad_hourly`
--

DROP TABLE IF EXISTS `rv_data_summary_ad_hourly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_summary_ad_hourly` (
  `data_summary_ad_hourly_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL DEFAULT '0',
  `impressions` int(10) unsigned NOT NULL DEFAULT '0',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `conversions` int(10) unsigned NOT NULL DEFAULT '0',
  `total_basket_value` decimal(10,4) DEFAULT NULL,
  `total_num_items` int(11) DEFAULT NULL,
  `total_revenue` decimal(10,4) DEFAULT NULL,
  `total_cost` decimal(10,4) DEFAULT NULL,
  `total_techcost` decimal(10,4) DEFAULT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`data_summary_ad_hourly_id`),
  KEY `rv_data_summary_ad_hourly_date_time` (`date_time`),
  KEY `rv_data_summary_ad_hourly_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `rv_data_summary_ad_hourly_zone_id_date_time` (`zone_id`,`date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_summary_ad_hourly`
--

LOCK TABLES `rv_data_summary_ad_hourly` WRITE;
/*!40000 ALTER TABLE `rv_data_summary_ad_hourly` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_summary_ad_hourly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_summary_ad_zone_assoc`
--

DROP TABLE IF EXISTS `rv_data_summary_ad_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_summary_ad_zone_assoc` (
  `data_summary_ad_zone_assoc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `required_impressions` int(10) unsigned NOT NULL,
  `requested_impressions` int(10) unsigned NOT NULL,
  `priority` double NOT NULL,
  `priority_factor` double DEFAULT NULL,
  `priority_factor_limited` smallint(6) NOT NULL DEFAULT '0',
  `past_zone_traffic_fraction` double DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `expired` datetime DEFAULT NULL,
  `expired_by` int(10) unsigned DEFAULT NULL,
  `to_be_delivered` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`data_summary_ad_zone_assoc_id`),
  KEY `rv_data_summary_ad_zone_assoc_interval_start` (`interval_start`),
  KEY `rv_data_summary_ad_zone_assoc_interval_end` (`interval_end`),
  KEY `rv_data_summary_ad_zone_assoc_ad_id` (`ad_id`),
  KEY `rv_data_summary_ad_zone_assoc_zone_id` (`zone_id`),
  KEY `rv_data_summary_ad_zone_assoc_expired` (`expired`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_summary_ad_zone_assoc`
--

LOCK TABLES `rv_data_summary_ad_zone_assoc` WRITE;
/*!40000 ALTER TABLE `rv_data_summary_ad_zone_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_summary_ad_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_summary_channel_daily`
--

DROP TABLE IF EXISTS `rv_data_summary_channel_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_summary_channel_daily` (
  `data_summary_channel_daily_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `channel_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `forecast_impressions` int(10) unsigned NOT NULL DEFAULT '0',
  `actual_impressions` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`data_summary_channel_daily_id`),
  KEY `rv_data_summary_channel_daily_day` (`day`),
  KEY `rv_data_summary_channel_daily_channel_id` (`channel_id`),
  KEY `rv_data_summary_channel_daily_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_summary_channel_daily`
--

LOCK TABLES `rv_data_summary_channel_daily` WRITE;
/*!40000 ALTER TABLE `rv_data_summary_channel_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_summary_channel_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_summary_zone_impression_history`
--

DROP TABLE IF EXISTS `rv_data_summary_zone_impression_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_summary_zone_impression_history` (
  `data_summary_zone_impression_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `forecast_impressions` int(10) unsigned DEFAULT NULL,
  `actual_impressions` int(10) unsigned DEFAULT NULL,
  `est` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`data_summary_zone_impression_history_id`),
  KEY `rv_data_summary_zone_impression_history_operation_interval_id` (`operation_interval_id`),
  KEY `rv_data_summary_zone_impression_history_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_summary_zone_impression_history`
--

LOCK TABLES `rv_data_summary_zone_impression_history` WRITE;
/*!40000 ALTER TABLE `rv_data_summary_zone_impression_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_summary_zone_impression_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_database_action`
--

DROP TABLE IF EXISTS `rv_database_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_database_action` (
  `database_action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upgrade_action_id` int(10) unsigned DEFAULT '0',
  `schema_name` varchar(64) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `timing` int(2) NOT NULL,
  `action` int(2) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `tablename` varchar(64) DEFAULT NULL,
  `tablename_backup` varchar(64) DEFAULT NULL,
  `table_backup_schema` text,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`database_action_id`),
  KEY `rv_database_action_upgrade_action_id` (`upgrade_action_id`,`database_action_id`),
  KEY `rv_database_action_schema_version_timing_action` (`schema_name`,`version`,`timing`,`action`),
  KEY `rv_database_action_updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_database_action`
--

LOCK TABLES `rv_database_action` WRITE;
/*!40000 ALTER TABLE `rv_database_action` DISABLE KEYS */;
INSERT INTO `rv_database_action` VALUES (1,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_c',NULL,NULL,'2014-09-17 07:27:56'),(2,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_m',NULL,NULL,'2014-09-17 07:27:56'),(3,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_r',NULL,NULL,'2014-09-17 07:27:56'),(4,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_a',NULL,NULL,'2014-09-17 07:27:56'),(5,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_a_var',NULL,NULL,'2014-09-17 07:27:56'),(6,30,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'banner_vast_element',NULL,NULL,'2014-09-17 07:28:05'),(7,30,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_vast_e',NULL,NULL,'2014-09-17 07:28:05'),(8,30,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'stats_vast',NULL,NULL,'2014-09-17 07:28:05');
/*!40000 ALTER TABLE `rv_database_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_images`
--

DROP TABLE IF EXISTS `rv_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_images` (
  `filename` varchar(128) NOT NULL DEFAULT '',
  `contents` longblob NOT NULL,
  `t_stamp` datetime DEFAULT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_images`
--

LOCK TABLES `rv_images` WRITE;
/*!40000 ALTER TABLE `rv_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_log_maintenance_forecasting`
--

DROP TABLE IF EXISTS `rv_log_maintenance_forecasting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_log_maintenance_forecasting` (
  `log_maintenance_forecasting_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `updated_to` datetime DEFAULT NULL,
  PRIMARY KEY (`log_maintenance_forecasting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_log_maintenance_forecasting`
--

LOCK TABLES `rv_log_maintenance_forecasting` WRITE;
/*!40000 ALTER TABLE `rv_log_maintenance_forecasting` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_log_maintenance_forecasting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_log_maintenance_priority`
--

DROP TABLE IF EXISTS `rv_log_maintenance_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_log_maintenance_priority` (
  `log_maintenance_priority_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `run_type` tinyint(3) unsigned NOT NULL,
  `updated_to` datetime DEFAULT NULL,
  PRIMARY KEY (`log_maintenance_priority_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_log_maintenance_priority`
--

LOCK TABLES `rv_log_maintenance_priority` WRITE;
/*!40000 ALTER TABLE `rv_log_maintenance_priority` DISABLE KEYS */;
INSERT INTO `rv_log_maintenance_priority` VALUES (1,'2014-09-17 08:20:30','2014-09-17 08:20:30',60,0,1,NULL),(2,'2014-09-17 08:20:30','2014-09-17 08:20:30',60,0,2,NULL),(3,'2014-09-17 08:20:30','2014-09-17 08:20:30',60,0,2,NULL),(4,'2014-09-17 08:20:49','2014-09-17 08:20:49',60,0,1,NULL),(5,'2014-09-17 08:20:49','2014-09-17 08:20:49',60,0,2,NULL),(6,'2014-09-17 08:20:49','2014-09-17 08:20:49',60,0,2,NULL),(7,'2014-09-17 08:21:05','2014-09-17 08:21:05',60,0,1,NULL),(8,'2014-09-17 08:21:05','2014-09-17 08:21:05',60,0,2,NULL),(9,'2014-09-17 08:21:05','2014-09-17 08:21:05',60,0,2,NULL),(10,'2014-09-17 08:23:26','2014-09-17 08:23:26',60,0,1,NULL),(11,'2014-09-17 08:23:26','2014-09-17 08:23:26',60,0,2,NULL),(12,'2014-09-17 08:23:26','2014-09-17 08:23:26',60,0,2,NULL),(13,'2014-09-17 08:23:43','2014-09-17 08:23:43',60,0,1,NULL),(14,'2014-09-17 08:23:43','2014-09-17 08:23:43',60,0,2,NULL),(15,'2014-09-17 08:23:43','2014-09-17 08:23:43',60,0,2,NULL),(16,'2014-09-17 08:24:04','2014-09-17 08:24:05',60,1,1,NULL),(17,'2014-09-17 08:24:05','2014-09-17 08:24:05',60,0,2,NULL),(18,'2014-09-17 08:24:05','2014-09-17 08:24:05',60,0,2,NULL),(19,'2014-09-17 08:24:19','2014-09-17 08:24:19',60,0,1,NULL),(20,'2014-09-17 08:24:19','2014-09-17 08:24:19',60,0,2,NULL),(21,'2014-09-17 08:24:19','2014-09-17 08:24:19',60,0,2,NULL),(22,'2014-09-17 08:24:32','2014-09-17 08:24:32',60,0,1,NULL),(23,'2014-09-17 08:24:32','2014-09-17 08:24:32',60,0,2,NULL),(24,'2014-09-17 08:24:32','2014-09-17 08:24:32',60,0,2,NULL),(25,'2014-09-17 08:24:48','2014-09-17 08:24:48',60,0,1,NULL),(26,'2014-09-17 08:24:48','2014-09-17 08:24:48',60,0,2,NULL),(27,'2014-09-17 08:24:48','2014-09-17 08:24:48',60,0,2,NULL),(28,'2014-09-17 08:25:03','2014-09-17 08:25:03',60,0,1,NULL),(29,'2014-09-17 08:25:03','2014-09-17 08:25:03',60,0,2,NULL),(30,'2014-09-17 08:25:03','2014-09-17 08:25:03',60,0,2,NULL),(31,'2014-09-17 08:25:18','2014-09-17 08:25:18',60,0,1,NULL),(32,'2014-09-17 08:25:18','2014-09-17 08:25:18',60,0,2,NULL),(33,'2014-09-17 08:25:18','2014-09-17 08:25:18',60,0,2,NULL),(34,'2014-09-17 08:25:29','2014-09-17 08:25:29',60,0,1,NULL),(35,'2014-09-17 08:25:29','2014-09-17 08:25:29',60,0,2,NULL),(36,'2014-09-17 08:25:29','2014-09-17 08:25:29',60,0,2,NULL),(37,'2014-09-17 08:25:41','2014-09-17 08:25:41',60,0,1,NULL),(38,'2014-09-17 08:25:41','2014-09-17 08:25:41',60,0,2,NULL),(39,'2014-09-17 08:25:41','2014-09-17 08:25:41',60,0,2,NULL),(40,'2014-09-17 08:25:53','2014-09-17 08:25:53',60,0,1,NULL),(41,'2014-09-17 08:25:53','2014-09-17 08:25:53',60,0,2,NULL),(42,'2014-09-17 08:25:53','2014-09-17 08:25:53',60,0,2,NULL),(43,'2014-09-17 08:26:05','2014-09-17 08:26:05',60,0,1,NULL),(44,'2014-09-17 08:26:05','2014-09-17 08:26:05',60,0,2,NULL),(45,'2014-09-17 08:26:05','2014-09-17 08:26:05',60,0,2,NULL),(46,'2014-09-17 08:26:30','2014-09-17 08:26:30',60,0,1,NULL),(47,'2014-09-17 08:26:30','2014-09-17 08:26:30',60,0,2,NULL),(48,'2014-09-17 08:26:30','2014-09-17 08:26:30',60,0,2,NULL),(49,'2014-09-17 08:26:43','2014-09-17 08:26:43',60,0,1,NULL),(50,'2014-09-17 08:26:43','2014-09-17 08:26:43',60,0,2,NULL),(51,'2014-09-17 08:26:43','2014-09-17 08:26:43',60,0,2,NULL),(52,'2014-09-17 08:26:57','2014-09-17 08:26:57',60,0,1,NULL),(53,'2014-09-17 08:26:57','2014-09-17 08:26:57',60,0,2,NULL),(54,'2014-09-17 08:26:57','2014-09-17 08:26:57',60,0,2,NULL),(55,'2014-09-17 08:27:11','2014-09-17 08:27:11',60,0,1,NULL),(56,'2014-09-17 08:27:11','2014-09-17 08:27:11',60,0,2,NULL),(57,'2014-09-17 08:27:11','2014-09-17 08:27:11',60,0,2,NULL),(58,'2014-09-17 08:27:27','2014-09-17 08:27:27',60,0,1,NULL),(59,'2014-09-17 08:27:27','2014-09-17 08:27:27',60,0,2,NULL),(60,'2014-09-17 08:27:27','2014-09-17 08:27:27',60,0,2,NULL),(61,'2014-09-17 08:27:46','2014-09-17 08:27:47',60,1,1,NULL),(62,'2014-09-17 08:27:47','2014-09-17 08:27:47',60,0,2,NULL),(63,'2014-09-17 08:27:47','2014-09-17 08:27:47',60,0,2,NULL),(64,'2014-09-17 08:28:02','2014-09-17 08:28:02',60,0,1,NULL),(65,'2014-09-17 08:28:02','2014-09-17 08:28:02',60,0,2,NULL),(66,'2014-09-17 08:28:02','2014-09-17 08:28:02',60,0,2,NULL),(67,'2014-09-17 08:28:14','2014-09-17 08:28:14',60,0,1,NULL),(68,'2014-09-17 08:28:14','2014-09-17 08:28:14',60,0,2,NULL),(69,'2014-09-17 08:28:14','2014-09-17 08:28:14',60,0,2,NULL),(70,'2014-09-17 08:28:26','2014-09-17 08:28:26',60,0,1,NULL),(71,'2014-09-17 08:28:26','2014-09-17 08:28:26',60,0,2,NULL),(72,'2014-09-17 08:28:26','2014-09-17 08:28:26',60,0,2,NULL),(73,'2014-09-17 08:28:37','2014-09-17 08:28:37',60,0,1,NULL),(74,'2014-09-17 08:28:37','2014-09-17 08:28:37',60,0,2,NULL),(75,'2014-09-17 08:28:37','2014-09-17 08:28:37',60,0,2,NULL),(76,'2014-09-17 08:28:49','2014-09-17 08:28:49',60,0,1,NULL),(77,'2014-09-17 08:28:49','2014-09-17 08:28:49',60,0,2,NULL),(78,'2014-09-17 08:28:49','2014-09-17 08:28:49',60,0,2,NULL),(79,'2014-09-17 08:29:00','2014-09-17 08:29:00',60,0,1,NULL),(80,'2014-09-17 08:29:00','2014-09-17 08:29:00',60,0,2,NULL),(81,'2014-09-17 08:29:00','2014-09-17 08:29:00',60,0,2,NULL);
/*!40000 ALTER TABLE `rv_log_maintenance_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_log_maintenance_statistics`
--

DROP TABLE IF EXISTS `rv_log_maintenance_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_log_maintenance_statistics` (
  `log_maintenance_statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `adserver_run_type` int(2) DEFAULT NULL,
  `search_run_type` int(2) DEFAULT NULL,
  `tracker_run_type` int(2) DEFAULT NULL,
  `updated_to` datetime DEFAULT NULL,
  PRIMARY KEY (`log_maintenance_statistics_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_log_maintenance_statistics`
--

LOCK TABLES `rv_log_maintenance_statistics` WRITE;
/*!40000 ALTER TABLE `rv_log_maintenance_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_log_maintenance_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_password_recovery`
--

DROP TABLE IF EXISTS `rv_password_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_password_recovery` (
  `user_type` varchar(64) NOT NULL DEFAULT '',
  `user_id` int(10) NOT NULL,
  `recovery_id` varchar(64) NOT NULL DEFAULT '',
  `updated` datetime NOT NULL,
  PRIMARY KEY (`user_type`,`user_id`),
  UNIQUE KEY `rv_password_recovery_recovery_id` (`recovery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_password_recovery`
--

LOCK TABLES `rv_password_recovery` WRITE;
/*!40000 ALTER TABLE `rv_password_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_password_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_placement_zone_assoc`
--

DROP TABLE IF EXISTS `rv_placement_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_placement_zone_assoc` (
  `placement_zone_assoc_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `zone_id` mediumint(9) DEFAULT NULL,
  `placement_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`placement_zone_assoc_id`),
  KEY `rv_placement_zone_assoc_zone_id` (`zone_id`),
  KEY `rv_placement_zone_assoc_placement_id` (`placement_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_placement_zone_assoc`
--

LOCK TABLES `rv_placement_zone_assoc` WRITE;
/*!40000 ALTER TABLE `rv_placement_zone_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_placement_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_preferences`
--

DROP TABLE IF EXISTS `rv_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_preferences` (
  `preference_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(64) NOT NULL DEFAULT '',
  `account_type` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`preference_id`),
  UNIQUE KEY `rv_preferences_preference_name` (`preference_name`),
  KEY `rv_preferences_account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_preferences`
--

LOCK TABLES `rv_preferences` WRITE;
/*!40000 ALTER TABLE `rv_preferences` DISABLE KEYS */;
INSERT INTO `rv_preferences` VALUES (1,'default_banner_image_url','TRAFFICKER'),(2,'default_banner_destination_url','TRAFFICKER'),(3,'default_banner_weight','ADVERTISER'),(4,'default_campaign_weight','ADVERTISER'),(5,'warn_email_admin','ADMIN'),(6,'warn_email_admin_impression_limit','ADMIN'),(7,'warn_email_admin_day_limit','ADMIN'),(8,'campaign_ecpm_enabled','MANAGER'),(9,'contract_ecpm_enabled','MANAGER'),(10,'warn_email_manager','MANAGER'),(11,'warn_email_manager_impression_limit','MANAGER'),(12,'warn_email_manager_day_limit','MANAGER'),(13,'warn_email_advertiser','ADVERTISER'),(14,'warn_email_advertiser_impression_limit','ADVERTISER'),(15,'warn_email_advertiser_day_limit','ADVERTISER'),(16,'timezone','MANAGER'),(17,'tracker_default_status','ADVERTISER'),(18,'tracker_default_type','ADVERTISER'),(19,'tracker_link_campaigns','ADVERTISER'),(20,'ui_show_campaign_info','ADVERTISER'),(21,'ui_show_banner_info','ADVERTISER'),(22,'ui_show_campaign_preview','ADVERTISER'),(23,'ui_show_banner_html','ADVERTISER'),(24,'ui_show_banner_preview','ADVERTISER'),(25,'ui_hide_inactive',''),(26,'ui_show_matching_banners','TRAFFICKER'),(27,'ui_show_matching_banners_parents','TRAFFICKER'),(28,'ui_show_entity_id',''),(29,'ui_novice_user',''),(30,'ui_week_start_day',''),(31,'ui_percentage_decimals',''),(32,'ui_column_revenue','MANAGER'),(33,'ui_column_revenue_label','MANAGER'),(34,'ui_column_revenue_rank','MANAGER'),(35,'ui_column_bv','MANAGER'),(36,'ui_column_bv_label','MANAGER'),(37,'ui_column_bv_rank','MANAGER'),(38,'ui_column_num_items','MANAGER'),(39,'ui_column_num_items_label','MANAGER'),(40,'ui_column_num_items_rank','MANAGER'),(41,'ui_column_revcpc','MANAGER'),(42,'ui_column_revcpc_label','MANAGER'),(43,'ui_column_revcpc_rank','MANAGER'),(44,'ui_column_erpm','MANAGER'),(45,'ui_column_erpm_label','MANAGER'),(46,'ui_column_erpm_rank','MANAGER'),(47,'ui_column_erpc','MANAGER'),(48,'ui_column_erpc_label','MANAGER'),(49,'ui_column_erpc_rank','MANAGER'),(50,'ui_column_erps','MANAGER'),(51,'ui_column_erps_label','MANAGER'),(52,'ui_column_erps_rank','MANAGER'),(53,'ui_column_eipm','MANAGER'),(54,'ui_column_eipm_label','MANAGER'),(55,'ui_column_eipm_rank','MANAGER'),(56,'ui_column_eipc','MANAGER'),(57,'ui_column_eipc_label','MANAGER'),(58,'ui_column_eipc_rank','MANAGER'),(59,'ui_column_eips','MANAGER'),(60,'ui_column_eips_label','MANAGER'),(61,'ui_column_eips_rank','MANAGER'),(62,'ui_column_ecpm','MANAGER'),(63,'ui_column_ecpm_label','MANAGER'),(64,'ui_column_ecpm_rank','MANAGER'),(65,'ui_column_ecpc','MANAGER'),(66,'ui_column_ecpc_label','MANAGER'),(67,'ui_column_ecpc_rank','MANAGER'),(68,'ui_column_ecps','MANAGER'),(69,'ui_column_ecps_label','MANAGER'),(70,'ui_column_ecps_rank','MANAGER'),(71,'ui_column_id','MANAGER'),(72,'ui_column_id_label','MANAGER'),(73,'ui_column_id_rank','MANAGER'),(74,'ui_column_requests','MANAGER'),(75,'ui_column_requests_label','MANAGER'),(76,'ui_column_requests_rank','MANAGER'),(77,'ui_column_impressions','MANAGER'),(78,'ui_column_impressions_label','MANAGER'),(79,'ui_column_impressions_rank','MANAGER'),(80,'ui_column_clicks','MANAGER'),(81,'ui_column_clicks_label','MANAGER'),(82,'ui_column_clicks_rank','MANAGER'),(83,'ui_column_ctr','MANAGER'),(84,'ui_column_ctr_label','MANAGER'),(85,'ui_column_ctr_rank','MANAGER'),(86,'ui_column_conversions','MANAGER'),(87,'ui_column_conversions_label','MANAGER'),(88,'ui_column_conversions_rank','MANAGER'),(89,'ui_column_conversions_pending','MANAGER'),(90,'ui_column_conversions_pending_label','MANAGER'),(91,'ui_column_conversions_pending_rank','MANAGER'),(92,'ui_column_sr_views','MANAGER'),(93,'ui_column_sr_views_label','MANAGER'),(94,'ui_column_sr_views_rank','MANAGER'),(95,'ui_column_sr_clicks','MANAGER'),(96,'ui_column_sr_clicks_label','MANAGER'),(97,'ui_column_sr_clicks_rank','MANAGER');
/*!40000 ALTER TABLE `rv_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_session`
--

DROP TABLE IF EXISTS `rv_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_session` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `sessiondata` text NOT NULL,
  `lastused` datetime DEFAULT NULL,
  PRIMARY KEY (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_session`
--

LOCK TABLES `rv_session` WRITE;
/*!40000 ALTER TABLE `rv_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_stats_vast`
--

DROP TABLE IF EXISTS `rv_stats_vast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_stats_vast` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(20) NOT NULL,
  `zone_id` mediumint(20) NOT NULL,
  `vast_event_id` mediumint(20) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  KEY `rv_stats_vast_creativekey` (`interval_start`,`creative_id`),
  KEY `rv_stats_vast_zonekey` (`interval_start`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_stats_vast`
--

LOCK TABLES `rv_stats_vast` WRITE;
/*!40000 ALTER TABLE `rv_stats_vast` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_stats_vast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_targetstats`
--

DROP TABLE IF EXISTS `rv_targetstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_targetstats` (
  `day` date NOT NULL DEFAULT '0000-00-00',
  `campaignid` mediumint(9) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `modified` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_targetstats`
--

LOCK TABLES `rv_targetstats` WRITE;
/*!40000 ALTER TABLE `rv_targetstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_targetstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_tracker_append`
--

DROP TABLE IF EXISTS `rv_tracker_append`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_tracker_append` (
  `tracker_append_id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` mediumint(9) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `tagcode` text NOT NULL,
  `paused` enum('t','f') NOT NULL DEFAULT 'f',
  `autotrack` enum('t','f') NOT NULL DEFAULT 'f',
  PRIMARY KEY (`tracker_append_id`),
  KEY `rv_tracker_append_tracker_id` (`tracker_id`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_tracker_append`
--

LOCK TABLES `rv_tracker_append` WRITE;
/*!40000 ALTER TABLE `rv_tracker_append` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_tracker_append` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_trackers`
--

DROP TABLE IF EXISTS `rv_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_trackers` (
  `trackerid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `trackername` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `clientid` mediumint(9) NOT NULL DEFAULT '0',
  `viewwindow` mediumint(9) NOT NULL DEFAULT '0',
  `clickwindow` mediumint(9) NOT NULL DEFAULT '0',
  `blockwindow` mediumint(9) NOT NULL DEFAULT '0',
  `status` smallint(1) unsigned NOT NULL DEFAULT '4',
  `type` smallint(1) unsigned NOT NULL DEFAULT '1',
  `linkcampaigns` enum('t','f') NOT NULL DEFAULT 'f',
  `variablemethod` enum('default','js','dom','custom') NOT NULL DEFAULT 'default',
  `appendcode` text NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`trackerid`),
  KEY `rv_trackers_clientid` (`clientid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_trackers`
--

LOCK TABLES `rv_trackers` WRITE;
/*!40000 ALTER TABLE `rv_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_upgrade_action`
--

DROP TABLE IF EXISTS `rv_upgrade_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_upgrade_action` (
  `upgrade_action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upgrade_name` varchar(128) DEFAULT NULL,
  `version_to` varchar(64) NOT NULL DEFAULT '',
  `version_from` varchar(64) DEFAULT NULL,
  `action` int(2) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logfile` varchar(128) DEFAULT NULL,
  `confbackup` varchar(128) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`upgrade_action_id`),
  KEY `rv_upgrade_action_updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_upgrade_action`
--

LOCK TABLES `rv_upgrade_action` WRITE;
/*!40000 ALTER TABLE `rv_upgrade_action` DISABLE KEYS */;
INSERT INTO `rv_upgrade_action` VALUES (1,'install_3.0.5','3.0.5','0',1,'UPGRADE_COMPLETE','install.log',NULL,'2014-09-17 00:26:16'),(2,'install_openXBannerTypes','1.2.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:21'),(3,'install_oxHtml','1.2.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:21'),(4,'install_oxText','1.2.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:21'),(5,'install_openXDeliveryLimitations','1.2.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:27'),(6,'install_Client','1.2.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:26'),(7,'install_Geo','1.2.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:26'),(8,'install_Site','1.2.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:26'),(9,'install_Time','1.2.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:26'),(10,'install_openX3rdPartyServers','1.1.0','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:32'),(11,'install_ox3rdPartyServers','1.1.0','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:32'),(12,'install_openXReports','1.5.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:37'),(13,'install_oxReportsStandard','1.5.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:36'),(14,'install_oxReportsAdmin','1.5.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:36'),(15,'install_openXDeliveryCacheStore','1.1.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:41'),(16,'install_oxCacheFile','1.1.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:41'),(17,'install_oxMemcached','1.1.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:41'),(18,'install_openXMaxMindGeoIP','1.2.2','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:46'),(19,'install_oxMaxMindGeoIP','1.2.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:46'),(20,'install_openXInvocationTags','1.2.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:51'),(21,'install_oxInvocationTags','1.2.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:50'),(22,'install_openXDeliveryLog','1.1.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:59'),(23,'install_oxDeliveryDataPrepare','1.1.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:56'),(24,'install_oxLogClick','1.1.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:57'),(25,'install_oxLogConversion','1.1.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:57'),(26,'install_oxLogImpression','1.1.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:57'),(27,'install_oxLogRequest','1.1.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:27:57'),(28,'install_openXVideoAds','1.10.2','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:28:08'),(29,'install_vastInlineBannerTypeHtml','1.10.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:28:06'),(30,'install_vastOverlayBannerTypeHtml','1.10.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:28:06'),(31,'install_oxLogVast','1.10.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:28:06'),(32,'install_vastServeVideoPlayer','1.10.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:28:07'),(33,'install_videoReport','1.10.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2014-09-17 07:28:07');
/*!40000 ALTER TABLE `rv_upgrade_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_userlog`
--

DROP TABLE IF EXISTS `rv_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_userlog` (
  `userlogid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `usertype` tinyint(4) NOT NULL DEFAULT '0',
  `userid` mediumint(9) NOT NULL DEFAULT '0',
  `action` mediumint(9) NOT NULL DEFAULT '0',
  `object` mediumint(9) DEFAULT NULL,
  `details` mediumtext,
  PRIMARY KEY (`userlogid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_userlog`
--

LOCK TABLES `rv_userlog` WRITE;
/*!40000 ALTER TABLE `rv_userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_users`
--

DROP TABLE IF EXISTS `rv_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_users` (
  `user_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(64) NOT NULL DEFAULT '',
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `default_account_id` mediumint(9) DEFAULT NULL,
  `comments` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sso_user_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_last_login` datetime DEFAULT NULL,
  `email_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `rv_users_username` (`username`),
  UNIQUE KEY `rv_users_sso_user_id` (`sso_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_users`
--

LOCK TABLES `rv_users` WRITE;
/*!40000 ALTER TABLE `rv_users` DISABLE KEYS */;
INSERT INTO `rv_users` VALUES (1,'Administrator','info@wtadlab.com','admin','878238a97cf1b572e3dd4d8d4f922458','en',2,NULL,1,NULL,'2014-09-17 00:27:07',NULL,'2014-09-17 00:27:07');
/*!40000 ALTER TABLE `rv_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_variable_publisher`
--

DROP TABLE IF EXISTS `rv_variable_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_variable_publisher` (
  `variable_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`variable_id`,`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_variable_publisher`
--

LOCK TABLES `rv_variable_publisher` WRITE;
/*!40000 ALTER TABLE `rv_variable_publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_variable_publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_variables`
--

DROP TABLE IF EXISTS `rv_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_variables` (
  `variableid` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `trackerid` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT NULL,
  `datatype` enum('numeric','string','date') NOT NULL DEFAULT 'numeric',
  `purpose` enum('basket_value','num_items','post_code') DEFAULT NULL,
  `reject_if_empty` smallint(1) unsigned NOT NULL DEFAULT '0',
  `is_unique` int(11) NOT NULL DEFAULT '0',
  `unique_window` int(11) NOT NULL DEFAULT '0',
  `variablecode` varchar(255) NOT NULL DEFAULT '',
  `hidden` enum('t','f') NOT NULL DEFAULT 'f',
  `updated` datetime NOT NULL,
  PRIMARY KEY (`variableid`),
  KEY `rv_variables_is_unique` (`is_unique`),
  KEY `rv_variables_trackerid` (`trackerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_variables`
--

LOCK TABLES `rv_variables` WRITE;
/*!40000 ALTER TABLE `rv_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_zones`
--

DROP TABLE IF EXISTS `rv_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_zones` (
  `zoneid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `affiliateid` mediumint(9) DEFAULT NULL,
  `zonename` varchar(245) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `delivery` smallint(6) NOT NULL DEFAULT '0',
  `zonetype` smallint(6) NOT NULL DEFAULT '0',
  `category` text NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `ad_selection` text NOT NULL,
  `chain` text NOT NULL,
  `prepend` text NOT NULL,
  `append` text NOT NULL,
  `appendtype` tinyint(4) NOT NULL DEFAULT '0',
  `forceappend` enum('t','f') DEFAULT 'f',
  `inventory_forecast_type` smallint(6) NOT NULL DEFAULT '0',
  `comments` text,
  `cost` decimal(10,4) DEFAULT NULL,
  `cost_type` smallint(6) DEFAULT NULL,
  `cost_variable_id` varchar(255) DEFAULT NULL,
  `technology_cost` decimal(10,4) DEFAULT NULL,
  `technology_cost_type` smallint(6) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL DEFAULT '0',
  `capping` int(11) NOT NULL DEFAULT '0',
  `session_capping` int(11) NOT NULL DEFAULT '0',
  `what` text NOT NULL,
  `as_zone_id` int(11) DEFAULT NULL,
  `is_in_ad_direct` tinyint(1) NOT NULL DEFAULT '0',
  `rate` decimal(19,2) DEFAULT NULL,
  `pricing` varchar(50) NOT NULL DEFAULT 'CPM',
  `oac_category_id` int(11) DEFAULT NULL,
  `ext_adselection` varchar(255) DEFAULT NULL,
  `show_capped_no_cookie` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`zoneid`),
  KEY `rv_zones_zonenameid` (`zonename`,`zoneid`),
  KEY `rv_zones_affiliateid` (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_zones`
--

LOCK TABLES `rv_zones` WRITE;
/*!40000 ALTER TABLE `rv_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `se_elgg_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `se_elgg_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `se_elgg_db`;

--
-- Table structure for table `elgg_access_collection_membership`
--

DROP TABLE IF EXISTS `elgg_access_collection_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collections`
--

DROP TABLE IF EXISTS `elgg_access_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_annotations`
--

DROP TABLE IF EXISTS `elgg_annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_api_users`
--

DROP TABLE IF EXISTS `elgg_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_config`
--

DROP TABLE IF EXISTS `elgg_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','s:0:\"\";',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_datalists`
--

DROP TABLE IF EXISTS `elgg_datalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('filestore_run_once','1410872376'),('plugin_run_once','1410872376'),('elgg_widget_run_once','1410872376'),('installed','1410872407'),('path','/var/www/SeedElgg/'),('dataroot','/home/seed/elggData/SeedElgg/'),('default_site','1'),('version','2014012000'),('simplecache_enabled','1'),('system_cache_enabled','1'),('processed_upgrades','a:45:{i:0;s:14:\"2008100701.php\";i:1;s:14:\"2008101303.php\";i:2;s:14:\"2009022701.php\";i:3;s:14:\"2009041701.php\";i:4;s:14:\"2009070101.php\";i:5;s:14:\"2009102801.php\";i:6;s:14:\"2010010501.php\";i:7;s:14:\"2010033101.php\";i:8;s:14:\"2010040201.php\";i:9;s:14:\"2010052601.php\";i:10;s:14:\"2010060101.php\";i:11;s:14:\"2010060401.php\";i:12;s:14:\"2010061501.php\";i:13;s:14:\"2010062301.php\";i:14;s:14:\"2010062302.php\";i:15;s:14:\"2010070301.php\";i:16;s:14:\"2010071001.php\";i:17;s:14:\"2010071002.php\";i:18;s:14:\"2010111501.php\";i:19;s:14:\"2010121601.php\";i:20;s:14:\"2010121602.php\";i:21;s:14:\"2010121701.php\";i:22;s:14:\"2010123101.php\";i:23;s:14:\"2011010101.php\";i:24;s:61:\"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php\";i:25;s:61:\"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php\";i:26;s:60:\"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php\";i:27;s:51:\"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php\";i:28;s:57:\"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php\";i:29;s:61:\"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php\";i:30;s:59:\"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php\";i:31;s:14:\"2011052801.php\";i:32;s:60:\"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php\";i:33;s:62:\"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php\";i:34;s:54:\"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php\";i:35;s:53:\"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php\";i:36;s:50:\"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php\";i:37;s:50:\"2012012100-1.8.3-system_cache-93100e7d55a24a11.php\";i:38;s:59:\"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php\";i:39;s:58:\"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php\";i:40;s:59:\"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php\";i:41;s:62:\"2013051700-1.8.15-add_missing_group_index-52a63a3a3ffaced2.php\";i:42;s:53:\"2013052900-1.8.15-ipv6_in_syslog-f5c2cc0196e9e731.php\";i:43;s:50:\"2013060900-1.8.15-site_secret-404fc165cf9e0ac9.php\";i:44;s:50:\"2014012000-1.8.18-remember_me-9a8a433685cf7be9.php\";}'),('admin_registered','1'),('simplecache_lastupdate_default','1410962304'),('simplecache_lastcached_default','1410962304'),('__site_secret__','zOTXlvrOAC4Pg2R7_egCFNtOO3dANkJk'),('simplecache_lastupdate_failsafe','0'),('simplecache_lastcached_failsafe','0'),('simplecache_lastupdate_foaf','0'),('simplecache_lastcached_foaf','0'),('simplecache_lastupdate_ical','0'),('simplecache_lastcached_ical','0'),('simplecache_lastupdate_installation','0'),('simplecache_lastcached_installation','0'),('simplecache_lastupdate_json','0'),('simplecache_lastcached_json','0'),('simplecache_lastupdate_opendd','0'),('simplecache_lastcached_opendd','0'),('simplecache_lastupdate_php','0'),('simplecache_lastcached_php','0'),('simplecache_lastupdate_rss','0'),('simplecache_lastcached_rss','0'),('simplecache_lastupdate_xml','0'),('simplecache_lastcached_xml','0');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entities`
--

DROP TABLE IF EXISTS `elgg_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1410872407,1410872407,1410872407,'yes'),(2,'object',2,1,1,1,2,1410872407,1410872407,1410872407,'yes'),(3,'object',2,1,1,1,2,1410872407,1410872407,1410872407,'yes'),(4,'object',2,1,1,1,2,1410872407,1410872407,1410872407,'yes'),(5,'object',2,1,1,1,2,1410872407,1410872407,1410872407,'yes'),(6,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(7,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(8,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(9,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(10,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(11,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(12,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(13,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(14,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(15,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(16,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(17,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(18,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(19,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(20,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(21,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(22,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(23,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(24,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(25,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(26,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(27,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(28,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(29,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(30,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(31,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(32,'object',2,1,1,1,2,1410872408,1410872408,1410872408,'yes'),(33,'user',0,0,1,0,2,1410872435,1410962534,1410872435,'yes'),(34,'object',3,33,1,33,0,1410872436,1410872436,1410872436,'yes'),(35,'object',3,33,1,33,0,1410872436,1410872436,1410872436,'yes'),(36,'object',3,33,1,33,0,1410872436,1410872436,1410872436,'yes'),(37,'object',3,33,1,33,0,1410872436,1410872436,1410872436,'yes'),(38,'object',3,33,1,33,0,1410872436,1410872436,1410872436,'yes'),(39,'user',0,0,1,0,2,1410962248,1410962248,1410962248,'no'),(40,'user',0,0,1,0,2,1410962393,1410962402,1410962393,'yes'),(41,'user',0,0,1,0,2,1410962440,1410962452,1410962440,'yes'),(42,'user',0,0,1,0,2,1410962481,1410962486,1410962481,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_relationships`
--

DROP TABLE IF EXISTS `elgg_entity_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (1,2,'active_plugin',1,1410872408),(2,3,'active_plugin',1,1410872408),(3,11,'active_plugin',1,1410872408),(4,12,'active_plugin',1,1410872408),(5,13,'active_plugin',1,1410872408),(6,14,'active_plugin',1,1410872408),(7,15,'active_plugin',1,1410872408),(8,16,'active_plugin',1,1410872408),(9,17,'active_plugin',1,1410872408),(10,18,'active_plugin',1,1410872408),(11,19,'active_plugin',1,1410872408),(12,20,'active_plugin',1,1410872408),(13,21,'active_plugin',1,1410872408),(14,22,'active_plugin',1,1410872409),(15,23,'active_plugin',1,1410872409),(16,24,'active_plugin',1,1410872409),(17,25,'active_plugin',1,1410872409),(18,26,'active_plugin',1,1410872409),(19,28,'active_plugin',1,1410872409),(20,29,'active_plugin',1,1410872409),(25,40,'member_of_site',1,1410962393),(22,32,'active_plugin',1,1410872409),(23,33,'member_of_site',1,1410872435),(24,39,'member_of_site',1,1410962248),(26,41,'member_of_site',1,1410962440),(27,42,'member_of_site',1,1410962481);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_subtypes`
--

DROP TABLE IF EXISTS `elgg_entity_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','file','ElggFile'),(2,'object','plugin','ElggPlugin'),(3,'object','widget','ElggWidget'),(4,'object','blog','ElggBlog'),(5,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_geocode_cache`
--

DROP TABLE IF EXISTS `elgg_geocode_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_groups_entity`
--

DROP TABLE IF EXISTS `elgg_groups_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_hmac_cache`
--

DROP TABLE IF EXISTS `elgg_hmac_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metadata`
--

DROP TABLE IF EXISTS `elgg_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (1,1,1,2,'text',0,2,1410872407,'yes'),(2,33,3,4,'text',33,2,1410872436,'yes'),(3,33,5,4,'text',0,2,1410872436,'yes'),(4,33,6,7,'text',0,2,1410872436,'yes'),(5,39,3,4,'text',39,2,1410962248,'no'),(6,39,8,9,'text',0,2,1410962248,'no'),(7,39,5,10,'text',0,2,1410962248,'yes'),(8,39,6,11,'text',0,2,1410962248,'yes'),(9,40,3,4,'text',40,2,1410962393,'yes'),(10,41,3,4,'text',41,2,1410962440,'yes'),(11,42,3,4,'text',42,2,1410962481,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metastrings`
--

DROP TABLE IF EXISTS `elgg_metastrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'info@seedelgg.com'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user'),(8,'disable_reason'),(9,'uservalidationbyemail_new_user'),(10,'0'),(11,'');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_objects_entity`
--

DROP TABLE IF EXISTS `elgg_objects_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'blog',''),(3,'bookmarks',''),(4,'categories',''),(5,'custom_index',''),(6,'dashboard',''),(7,'developers',''),(8,'diagnostics',''),(9,'embed',''),(10,'externalpages',''),(11,'file',''),(12,'garbagecollector',''),(13,'groups',''),(14,'htmlawed',''),(15,'invitefriends',''),(16,'likes',''),(17,'logbrowser',''),(18,'logrotate',''),(19,'members',''),(20,'messageboard',''),(21,'messages',''),(22,'notifications',''),(23,'pages',''),(24,'profile',''),(25,'reportedcontent',''),(26,'search',''),(27,'tagcloud',''),(28,'thewire',''),(29,'tinymce',''),(30,'twitter_api',''),(31,'uservalidationbyemail',''),(32,'zaudio',''),(34,'',''),(35,'',''),(36,'',''),(37,'',''),(38,'','');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_private_settings`
--

DROP TABLE IF EXISTS `elgg_private_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','1'),(2,3,'elgg:internal:priority','2'),(3,4,'elgg:internal:priority','3'),(4,5,'elgg:internal:priority','4'),(5,6,'elgg:internal:priority','5'),(6,7,'elgg:internal:priority','6'),(7,8,'elgg:internal:priority','7'),(8,9,'elgg:internal:priority','8'),(9,10,'elgg:internal:priority','9'),(10,11,'elgg:internal:priority','10'),(11,12,'elgg:internal:priority','11'),(12,13,'elgg:internal:priority','12'),(13,14,'elgg:internal:priority','13'),(14,15,'elgg:internal:priority','14'),(15,16,'elgg:internal:priority','15'),(16,17,'elgg:internal:priority','16'),(17,18,'elgg:internal:priority','17'),(18,19,'elgg:internal:priority','18'),(19,20,'elgg:internal:priority','19'),(20,21,'elgg:internal:priority','20'),(21,22,'elgg:internal:priority','21'),(22,23,'elgg:internal:priority','22'),(23,24,'elgg:internal:priority','23'),(24,25,'elgg:internal:priority','24'),(25,26,'elgg:internal:priority','25'),(26,27,'elgg:internal:priority','26'),(27,28,'elgg:internal:priority','27'),(28,29,'elgg:internal:priority','28'),(29,30,'elgg:internal:priority','29'),(30,31,'elgg:internal:priority','30'),(31,32,'elgg:internal:priority','31'),(32,34,'handler','control_panel'),(33,34,'context','admin'),(34,34,'column','1'),(35,34,'order','0'),(36,35,'handler','admin_welcome'),(37,35,'context','admin'),(38,35,'order','10'),(39,35,'column','1'),(40,36,'handler','online_users'),(41,36,'context','admin'),(42,36,'column','2'),(43,36,'order','-20'),(44,37,'handler','new_users'),(45,37,'context','admin'),(46,37,'order','10'),(47,37,'column','2'),(48,38,'handler','content_stats'),(49,38,'context','admin'),(50,38,'order','20'),(51,38,'column','2'),(52,36,'num_display','8'),(53,37,'num_display','5'),(54,38,'num_display','8');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_river`
--

DROP TABLE IF EXISTS `elgg_river`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_sites_entity`
--

DROP TABLE IF EXISTS `elgg_sites_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'SEED Lab Site','','http://www.seedlabelgg.com/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_system_log`
--

DROP TABLE IF EXISTS `elgg_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872407,'127.0.0.1'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872407,'127.0.0.1'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872407,'127.0.0.1'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872407,'127.0.0.1'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410872408,'127.0.0.1'),(32,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872408,'127.0.0.1'),(33,2,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872408,'127.0.0.1'),(34,3,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872408,'127.0.0.1'),(35,4,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872408,'127.0.0.1'),(36,5,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872408,'127.0.0.1'),(37,14,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(38,15,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(39,16,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(40,17,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(41,18,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(42,19,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(43,20,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(44,21,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(45,22,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410872409,'127.0.0.1'),(46,23,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410872435,'127.0.0.1'),(47,33,'ElggUser','user','','create',0,0,2,'yes',1410872435,'127.0.0.1'),(48,2,'ElggMetadata','metadata','notification:method:email','create',0,33,2,'yes',1410872436,'127.0.0.1'),(49,34,'ElggWidget','object','widget','create',0,33,0,'yes',1410872436,'127.0.0.1'),(50,35,'ElggWidget','object','widget','create',0,33,0,'yes',1410872436,'127.0.0.1'),(51,36,'ElggWidget','object','widget','create',0,33,0,'yes',1410872436,'127.0.0.1'),(52,37,'ElggWidget','object','widget','create',0,33,0,'yes',1410872436,'127.0.0.1'),(53,38,'ElggWidget','object','widget','create',0,33,0,'yes',1410872436,'127.0.0.1'),(54,33,'ElggUser','user','','make_admin',0,0,2,'yes',1410872436,'127.0.0.1'),(55,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1410872436,'127.0.0.1'),(56,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1410872436,'127.0.0.1'),(57,33,'ElggUser','user','','update',33,0,2,'yes',1410872436,'127.0.0.1'),(58,33,'ElggUser','user','','login',33,0,2,'yes',1410872436,'127.0.0.1'),(59,33,'ElggUser','user','','logout',33,0,2,'yes',1410872453,'127.0.0.1'),(60,33,'ElggUser','user','','update',33,0,2,'yes',1410872453,'127.0.0.1'),(61,24,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410962248,'127.0.0.1'),(62,39,'ElggUser','user','','create',0,0,2,'yes',1410962248,'127.0.0.1'),(63,5,'ElggMetadata','metadata','notification:method:email','create',0,39,2,'yes',1410962248,'127.0.0.1'),(64,39,'ElggUser','user','','disable',0,0,2,'yes',1410962248,'127.0.0.1'),(65,6,'ElggMetadata','metadata','disable_reason','create',0,0,2,'yes',1410962248,'127.0.0.1'),(66,5,'ElggMetadata','metadata','notification:method:email','disable',0,39,2,'yes',1410962248,'127.0.0.1'),(67,6,'ElggMetadata','metadata','disable_reason','disable',0,0,2,'yes',1410962248,'127.0.0.1'),(68,7,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1410962248,'127.0.0.1'),(69,8,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1410962248,'127.0.0.1'),(70,33,'ElggUser','user','','update',33,0,2,'yes',1410962266,'127.0.0.1'),(71,33,'ElggUser','user','','login',33,0,2,'yes',1410962266,'127.0.0.1'),(72,21,'ElggRelationship','relationship','active_plugin','delete',33,0,2,'yes',1410962303,'127.0.0.1'),(73,33,'ElggUser','user','','logout',33,0,2,'yes',1410962314,'127.0.0.1'),(74,33,'ElggUser','user','','update',33,0,2,'yes',1410962314,'127.0.0.1'),(75,25,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410962393,'127.0.0.1'),(76,40,'ElggUser','user','','create',0,0,2,'yes',1410962393,'127.0.0.1'),(77,9,'ElggMetadata','metadata','notification:method:email','create',0,40,2,'yes',1410962393,'127.0.0.1'),(78,40,'ElggUser','user','','update',40,0,2,'yes',1410962393,'127.0.0.1'),(79,40,'ElggUser','user','','login',40,0,2,'yes',1410962393,'127.0.0.1'),(80,40,'ElggUser','user','','logout',40,0,2,'yes',1410962402,'127.0.0.1'),(81,40,'ElggUser','user','','update',40,0,2,'yes',1410962402,'127.0.0.1'),(82,26,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410962440,'127.0.0.1'),(83,41,'ElggUser','user','','create',0,0,2,'yes',1410962440,'127.0.0.1'),(84,10,'ElggMetadata','metadata','notification:method:email','create',0,41,2,'yes',1410962440,'127.0.0.1'),(85,41,'ElggUser','user','','update',41,0,2,'yes',1410962440,'127.0.0.1'),(86,41,'ElggUser','user','','login',41,0,2,'yes',1410962440,'127.0.0.1'),(87,41,'ElggUser','user','','logout',41,0,2,'yes',1410962452,'127.0.0.1'),(88,41,'ElggUser','user','','update',41,0,2,'yes',1410962452,'127.0.0.1'),(89,27,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410962481,'127.0.0.1'),(90,42,'ElggUser','user','','create',0,0,2,'yes',1410962481,'127.0.0.1'),(91,11,'ElggMetadata','metadata','notification:method:email','create',0,42,2,'yes',1410962481,'127.0.0.1'),(92,42,'ElggUser','user','','update',42,0,2,'yes',1410962481,'127.0.0.1'),(93,42,'ElggUser','user','','login',42,0,2,'yes',1410962481,'127.0.0.1'),(94,42,'ElggUser','user','','logout',42,0,2,'yes',1410962486,'127.0.0.1'),(95,42,'ElggUser','user','','update',42,0,2,'yes',1410962486,'127.0.0.1'),(96,33,'ElggUser','user','','update',33,0,2,'yes',1410962500,'127.0.0.1'),(97,33,'ElggUser','user','','login',33,0,2,'yes',1410962500,'127.0.0.1'),(98,33,'ElggUser','user','','logout',33,0,2,'yes',1410962534,'127.0.0.1'),(99,33,'ElggUser','user','','update',33,0,2,'yes',1410962534,'127.0.0.1');
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_apisessions`
--

DROP TABLE IF EXISTS `elgg_users_apisessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_entity`
--

DROP TABLE IF EXISTS `elgg_users_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (33,'admin','admin','ef54164969fc0cd09cc6aa0c75c11905','xtNgsuPw','admin@seedelgg.com','en','','no','yes',1410962534,1410962531,1410962500,1410962266),(39,'Alice','alice','185042478defa322a1c87cc3ad1214b9','RojQ1vRe','alice@seedlab.com','en','','no','no',0,0,0,0),(40,'Boby','boby','fbec86fed480bd596c88d58cdef4e754','1iQvPC8k','boby@seedlab.com','en','','no','no',1410962402,1410962394,1410962393,0),(41,'Charlie','charlie','9dcbffc79690effb555af21360473bd0','wUHPBcaV','charlie@seedlab.com','en','','no','no',1410962451,1410962441,1410962440,0),(42,'Samy','samy','ad55c7fc1f4b2bee1d1bbbbae2b807a5','49B2d482','samy@seedlab.com','en','','no','no',1410962485,1410962482,1410962481,0);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_sessions`
--

DROP TABLE IF EXISTS `elgg_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('4s6t76kvs00kviocf7d37apie7',1410872454,'__elgg_session|s:32:\"2646a0ce833aa7de909a2efb0830674d\";msg|a:0:{}'),('lffcpnq39a0s8b9adkdnco1du5',1410961077,'__elgg_session|s:32:\"d41b5746db3412df2b5f29a88cc1f243\";msg|a:0:{}'),('2esir8eii0ouslqml4u8m8l8d2',1410962249,'__elgg_session|s:32:\"edf3085ce614a581d3a41146867d5e68\";msg|a:0:{}sticky_forms|a:0:{}'),('7otr77vpu1v4hbersbqspjd5h6',1410962343,'__elgg_session|s:32:\"b974a76f614070dd2b4b4f21cf5fa912\";msg|a:0:{}sticky_forms|a:0:{}'),('sr2unco7ik3sicactmropek3q2',1410962411,'__elgg_session|s:32:\"ec282a1d298d4ca3d02bdba6c0e17650\";msg|a:0:{}'),('qeellrf0k1tleu397om8h4urn1',1410962456,'__elgg_session|s:32:\"732a8f675bd41d4fb809f78d125bcbfc\";msg|a:0:{}'),('grnk59he3gg726gpa3vqteghm4',1410962486,'__elgg_session|s:32:\"d81588457fb7e2ef99296cb494dd59a0\";msg|a:0:{}'),('0qt2sblpgc194465sqmqsqcqi6',1410962535,'__elgg_session|s:32:\"b3ff50f5c2f34244a40e8d207e2964bb\";msg|a:0:{}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `sop_collabtive_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sop_collabtive_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sop_collabtive_db`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL DEFAULT '',
  `ufrom` varchar(255) NOT NULL DEFAULT '',
  `ufrom_id` int(10) NOT NULL DEFAULT '0',
  `userto` varchar(255) NOT NULL DEFAULT '',
  `userto_id` int(10) NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_assigned`
--

DROP TABLE IF EXISTS `company_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `company` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `company` (`company`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_assigned`
--

LOCK TABLES `company_assigned` WRITE;
/*!40000 ALTER TABLE `company_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `project` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  `user` int(10) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `added` varchar(255) NOT NULL DEFAULT '',
  `datei` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `folder` int(10) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `datei` (`datei`),
  KEY `added` (`added`),
  KEY `project` (`project`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_attached`
--

DROP TABLE IF EXISTS `files_attached`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_attached` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` int(10) unsigned NOT NULL DEFAULT '0',
  `message` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `file` (`file`,`message`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_attached`
--

LOCK TABLES `files_attached` WRITE;
/*!40000 ALTER TABLE `files_attached` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_attached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `action` int(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `datum` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `datum` (`datum`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  FULLTEXT KEY `username` (`username`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,0,'','admin','user',1,0,'1313335623'),(2,1,'admin','peter','user',1,0,'1313335673'),(3,1,'admin','alice','user',1,0,'1313335689'),(4,1,'admin','bob','user',1,0,'1313335702'),(5,1,'admin','ted','user',1,0,'1313335714'),(6,1,'admin','seed','user',1,0,'1313335729'),(7,1,'admin','Users\\\' Account Information','projekt',1,1,'1313336281'),(8,1,'admin','admin','user',6,1,'1313336281');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `posted` varchar(255) NOT NULL DEFAULT '',
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `replyto` int(11) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`),
  KEY `user` (`user`),
  KEY `replyto` (`replyto`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `end` (`end`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones_assigned`
--

DROP TABLE IF EXISTS `milestones_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones_assigned`
--

LOCK TABLES `milestones_assigned` WRITE;
/*!40000 ALTER TABLE `milestones_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectfolders`
--

DROP TABLE IF EXISTS `projectfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectfolders` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectfolders`
--

LOCK TABLES `projectfolders` WRITE;
/*!40000 ALTER TABLE `projectfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte`
--

DROP TABLE IF EXISTS `projekte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `budget` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte`
--

LOCK TABLES `projekte` WRITE;
/*!40000 ALTER TABLE `projekte` DISABLE KEYS */;
INSERT INTO `projekte` VALUES (1,'Users\' Account Information','Username:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; admin<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; seed<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; peter<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alice<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ted<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bob<br /><br />Password: same as the username.<br /><br />Notice: \'admin\' and \'seed\' are two administrators for this application. When doing the Lab, please leave one of them untouched for safety.','1313336281','0',1,0);
/*!40000 ALTER TABLE `projekte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte_assigned`
--

DROP TABLE IF EXISTS `projekte_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `projekt` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `projekt` (`projekt`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte_assigned`
--

LOCK TABLES `projekte_assigned` WRITE;
/*!40000 ALTER TABLE `projekte_assigned` DISABLE KEYS */;
INSERT INTO `projekte_assigned` VALUES (1,1,1);
/*!40000 ALTER TABLE `projekte_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `projects` text NOT NULL,
  `tasks` text NOT NULL,
  `milestones` text NOT NULL,
  `messages` text NOT NULL,
  `files` text NOT NULL,
  `chat` text NOT NULL,
  `timetracker` text NOT NULL,
  `admin` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:3:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:1;}','a:1:{s:3:\"add\";i:1;}'),(2,'User','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:3:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:0;}','a:1:{s:3:\"add\";i:0;}'),(3,'Client','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:3:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;}','a:1:{s:3:\"add\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:4:\"read\";i:0;}','a:1:{s:3:\"add\";i:0;}');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_assigned`
--

DROP TABLE IF EXISTS `roles_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL,
  `role` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_assigned`
--

LOCK TABLES `roles_assigned` WRITE;
/*!40000 ALTER TABLE `roles_assigned` DISABLE KEYS */;
INSERT INTO `roles_assigned` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,1);
/*!40000 ALTER TABLE `roles_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `ID` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `subtitle` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `timezone` varchar(60) DEFAULT NULL,
  `dateformat` varchar(50) DEFAULT NULL,
  `template` varchar(255) DEFAULT '',
  `mailnotify` tinyint(1) DEFAULT '1',
  `mailfrom` varchar(255) DEFAULT NULL,
  `mailfromname` varchar(255) DEFAULT NULL,
  `mailmethod` varchar(5) DEFAULT NULL,
  `mailhost` varchar(255) DEFAULT NULL,
  `mailuser` varchar(255) DEFAULT NULL,
  `mailpass` varchar(255) DEFAULT NULL,
  `rssuser` varchar(255) DEFAULT NULL,
  `rsspass` varchar(255) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `name` (`name`),
  KEY `subtitle` (`subtitle`),
  KEY `locale` (`locale`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (0,'Collabtive','Projectmanagement','en','America/New_York','d.m.Y','standard',1,'collabtive@localhost',NULL,'mail',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasklist`
--

DROP TABLE IF EXISTS `tasklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasklist` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(4) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasklist`
--

LOCK TABLES `tasklist` WRITE;
/*!40000 ALTER TABLE `tasklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `liste` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `liste` (`liste`),
  KEY `status` (`status`),
  KEY `end` (`end`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_assigned`
--

DROP TABLE IF EXISTS `tasks_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `task` (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_assigned`
--

LOCK TABLES `tasks_assigned` WRITE;
/*!40000 ALTER TABLE `tasks_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetracker`
--

DROP TABLE IF EXISTS `timetracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetracker` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `started` varchar(255) NOT NULL DEFAULT '',
  `ended` varchar(255) NOT NULL DEFAULT '',
  `hours` float NOT NULL DEFAULT '0',
  `pstatus` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`,`project`,`task`),
  KEY `started` (`started`),
  KEY `ended` (`ended`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetracker`
--

LOCK TABLES `timetracker` WRITE;
/*!40000 ALTER TABLE `timetracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT '',
  `company` varchar(255) DEFAULT '',
  `lastlogin` varchar(255) DEFAULT '',
  `zip` varchar(10) DEFAULT NULL,
  `gender` char(1) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `adress` varchar(255) DEFAULT '',
  `adress2` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `avatar` varchar(255) DEFAULT '',
  `rate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`),
  KEY `pass` (`pass`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','',NULL,NULL,'d033e22ae348aeb5660fc2140aec35850c4da997','0','1381267504',NULL,'','','','','','','','','','0'),(2,'peter','',NULL,NULL,'4b8373d016f277527198385ba72fda0feb5da015','','',NULL,'','','','','','','','en','','0'),(3,'alice','',NULL,NULL,'522b276a356bdf39013dfabea2cd43e141ecc9e8','','',NULL,'','','','','','','','en','','0'),(4,'bob','',NULL,NULL,'48181acd22b3edaebc8a447868a7df7ce629920a','','',NULL,'','','','','','','','en','','0'),(5,'ted','',NULL,NULL,'46ab578353b0478abc71fa54796a76c10bbe41a8','','',NULL,'','','','','','','','en','','0'),(6,'seed','',NULL,NULL,'92713d4709377111cf31f2a71986c411bd6cb5b0','','',NULL,'','','','','','','','en','','0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `sql_collabtive_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sql_collabtive_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sql_collabtive_db`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL DEFAULT '',
  `ufrom` varchar(255) NOT NULL DEFAULT '',
  `ufrom_id` int(10) NOT NULL DEFAULT '0',
  `userto` varchar(255) NOT NULL DEFAULT '',
  `userto_id` int(10) NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_assigned`
--

DROP TABLE IF EXISTS `company_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `company` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `company` (`company`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_assigned`
--

LOCK TABLES `company_assigned` WRITE;
/*!40000 ALTER TABLE `company_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `project` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  `user` int(10) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `added` varchar(255) NOT NULL DEFAULT '',
  `datei` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `folder` int(10) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `datei` (`datei`),
  KEY `added` (`added`),
  KEY `project` (`project`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_attached`
--

DROP TABLE IF EXISTS `files_attached`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_attached` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` int(10) unsigned NOT NULL DEFAULT '0',
  `message` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `file` (`file`,`message`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_attached`
--

LOCK TABLES `files_attached` WRITE;
/*!40000 ALTER TABLE `files_attached` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_attached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `action` int(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `datum` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `datum` (`datum`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  FULLTEXT KEY `username` (`username`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,0,'','admin','user',1,0,'1313337918'),(2,1,'admin','Users\\\' Account Information','projekt',1,1,'1313337939'),(3,1,'admin','admin','user',6,1,'1313337939'),(4,1,'admin','seed','user',1,0,'1313337951'),(5,1,'admin','bob','user',1,0,'1313337960'),(6,1,'admin','ted','user',1,0,'1313337985'),(7,1,'admin','peter','user',1,0,'1313337994'),(8,1,'admin','alice','user',1,0,'1313338004');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `posted` varchar(255) NOT NULL DEFAULT '',
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `replyto` int(11) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`),
  KEY `user` (`user`),
  KEY `replyto` (`replyto`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `end` (`end`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones_assigned`
--

DROP TABLE IF EXISTS `milestones_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones_assigned`
--

LOCK TABLES `milestones_assigned` WRITE;
/*!40000 ALTER TABLE `milestones_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectfolders`
--

DROP TABLE IF EXISTS `projectfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectfolders` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectfolders`
--

LOCK TABLES `projectfolders` WRITE;
/*!40000 ALTER TABLE `projectfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte`
--

DROP TABLE IF EXISTS `projekte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `budget` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte`
--

LOCK TABLES `projekte` WRITE;
/*!40000 ALTER TABLE `projekte` DISABLE KEYS */;
INSERT INTO `projekte` VALUES (1,'Users\' Account Information','Username:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; admin<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; seed<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; peter<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alice<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ted<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bob<br /><br />Password: same as the username.<br /><br />Notice: \'admin\' and \'seed\' are two administrators for this application. When doing the Lab, please leave one of them untouched for safety.','1313337939','0',1,0);
/*!40000 ALTER TABLE `projekte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte_assigned`
--

DROP TABLE IF EXISTS `projekte_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `projekt` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `projekt` (`projekt`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte_assigned`
--

LOCK TABLES `projekte_assigned` WRITE;
/*!40000 ALTER TABLE `projekte_assigned` DISABLE KEYS */;
INSERT INTO `projekte_assigned` VALUES (1,1,1);
/*!40000 ALTER TABLE `projekte_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `projects` text NOT NULL,
  `tasks` text NOT NULL,
  `milestones` text NOT NULL,
  `messages` text NOT NULL,
  `files` text NOT NULL,
  `chat` text NOT NULL,
  `timetracker` text NOT NULL,
  `admin` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:3:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:1;}','a:1:{s:3:\"add\";i:1;}'),(2,'User','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:3:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:0;}','a:1:{s:3:\"add\";i:0;}'),(3,'Client','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:3:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;}','a:1:{s:3:\"add\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:4:\"read\";i:0;}','a:1:{s:3:\"add\";i:0;}');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_assigned`
--

DROP TABLE IF EXISTS `roles_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL,
  `role` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_assigned`
--

LOCK TABLES `roles_assigned` WRITE;
/*!40000 ALTER TABLE `roles_assigned` DISABLE KEYS */;
INSERT INTO `roles_assigned` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,2),(6,6,2);
/*!40000 ALTER TABLE `roles_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `ID` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `subtitle` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `timezone` varchar(60) DEFAULT NULL,
  `dateformat` varchar(50) DEFAULT NULL,
  `template` varchar(255) DEFAULT '',
  `mailnotify` tinyint(1) DEFAULT '1',
  `mailfrom` varchar(255) DEFAULT NULL,
  `mailfromname` varchar(255) DEFAULT NULL,
  `mailmethod` varchar(5) DEFAULT NULL,
  `mailhost` varchar(255) DEFAULT NULL,
  `mailuser` varchar(255) DEFAULT NULL,
  `mailpass` varchar(255) DEFAULT NULL,
  `rssuser` varchar(255) DEFAULT NULL,
  `rsspass` varchar(255) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `name` (`name`),
  KEY `subtitle` (`subtitle`),
  KEY `locale` (`locale`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (0,'Collabtive','Projectmanagement','en','America/New_York','d.m.Y','standard',1,'collabtive@localhost',NULL,'mail',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasklist`
--

DROP TABLE IF EXISTS `tasklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasklist` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(4) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasklist`
--

LOCK TABLES `tasklist` WRITE;
/*!40000 ALTER TABLE `tasklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `liste` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `liste` (`liste`),
  KEY `status` (`status`),
  KEY `end` (`end`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_assigned`
--

DROP TABLE IF EXISTS `tasks_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `task` (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_assigned`
--

LOCK TABLES `tasks_assigned` WRITE;
/*!40000 ALTER TABLE `tasks_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetracker`
--

DROP TABLE IF EXISTS `timetracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetracker` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `started` varchar(255) NOT NULL DEFAULT '',
  `ended` varchar(255) NOT NULL DEFAULT '',
  `hours` float NOT NULL DEFAULT '0',
  `pstatus` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`,`project`,`task`),
  KEY `started` (`started`),
  KEY `ended` (`ended`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetracker`
--

LOCK TABLES `timetracker` WRITE;
/*!40000 ALTER TABLE `timetracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT '',
  `company` varchar(255) DEFAULT '',
  `lastlogin` varchar(255) DEFAULT '',
  `zip` varchar(10) DEFAULT NULL,
  `gender` char(1) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `adress` varchar(255) DEFAULT '',
  `adress2` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `avatar` varchar(255) DEFAULT '',
  `rate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`),
  KEY `pass` (`pass`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','',NULL,NULL,'d033e22ae348aeb5660fc2140aec35850c4da997','0','1381262237',NULL,'','','','','','','','','','0'),(2,'seed','',NULL,NULL,'92713d4709377111cf31f2a71986c411bd6cb5b0','','',NULL,'','','','','','','','en','','0'),(3,'bob','',NULL,NULL,'48181acd22b3edaebc8a447868a7df7ce629920a','','',NULL,'','','','','','','','en','','0'),(4,'ted','',NULL,NULL,'46ab578353b0478abc71fa54796a76c10bbe41a8','','1381262883',NULL,'','','','','','','','en','','0'),(5,'peter','',NULL,NULL,'4b8373d016f277527198385ba72fda0feb5da015','','',NULL,'','','','','','','','en','','0'),(6,'alice','',NULL,NULL,'522b276a356bdf39013dfabea2cd43e141ecc9e8','','1381267627',NULL,'','','','','','','','en','','0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

--
-- Current Database: `wt_elgg_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wt_elgg_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `wt_elgg_db`;

--
-- Table structure for table `elgg_access_collection_membership`
--

DROP TABLE IF EXISTS `elgg_access_collection_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collections`
--

DROP TABLE IF EXISTS `elgg_access_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_annotations`
--

DROP TABLE IF EXISTS `elgg_annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_api_users`
--

DROP TABLE IF EXISTS `elgg_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_config`
--

DROP TABLE IF EXISTS `elgg_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','s:0:\"\";',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_datalists`
--

DROP TABLE IF EXISTS `elgg_datalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('filestore_run_once','1410930686'),('plugin_run_once','1410930686'),('elgg_widget_run_once','1410930686'),('installed','1410930738'),('path','/var/www/webtracking/elgg/'),('dataroot','/home/seed/elggData/webtracking/'),('default_site','1'),('version','2014012000'),('simplecache_enabled','1'),('system_cache_enabled','1'),('processed_upgrades','a:45:{i:0;s:14:\"2008100701.php\";i:1;s:14:\"2008101303.php\";i:2;s:14:\"2009022701.php\";i:3;s:14:\"2009041701.php\";i:4;s:14:\"2009070101.php\";i:5;s:14:\"2009102801.php\";i:6;s:14:\"2010010501.php\";i:7;s:14:\"2010033101.php\";i:8;s:14:\"2010040201.php\";i:9;s:14:\"2010052601.php\";i:10;s:14:\"2010060101.php\";i:11;s:14:\"2010060401.php\";i:12;s:14:\"2010061501.php\";i:13;s:14:\"2010062301.php\";i:14;s:14:\"2010062302.php\";i:15;s:14:\"2010070301.php\";i:16;s:14:\"2010071001.php\";i:17;s:14:\"2010071002.php\";i:18;s:14:\"2010111501.php\";i:19;s:14:\"2010121601.php\";i:20;s:14:\"2010121602.php\";i:21;s:14:\"2010121701.php\";i:22;s:14:\"2010123101.php\";i:23;s:14:\"2011010101.php\";i:24;s:61:\"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php\";i:25;s:61:\"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php\";i:26;s:60:\"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php\";i:27;s:51:\"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php\";i:28;s:57:\"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php\";i:29;s:61:\"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php\";i:30;s:59:\"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php\";i:31;s:14:\"2011052801.php\";i:32;s:60:\"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php\";i:33;s:62:\"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php\";i:34;s:54:\"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php\";i:35;s:53:\"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php\";i:36;s:50:\"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php\";i:37;s:50:\"2012012100-1.8.3-system_cache-93100e7d55a24a11.php\";i:38;s:59:\"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php\";i:39;s:58:\"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php\";i:40;s:59:\"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php\";i:41;s:62:\"2013051700-1.8.15-add_missing_group_index-52a63a3a3ffaced2.php\";i:42;s:53:\"2013052900-1.8.15-ipv6_in_syslog-f5c2cc0196e9e731.php\";i:43;s:50:\"2013060900-1.8.15-site_secret-404fc165cf9e0ac9.php\";i:44;s:50:\"2014012000-1.8.18-remember_me-9a8a433685cf7be9.php\";}'),('admin_registered','1'),('simplecache_lastupdate_default','1410944014'),('simplecache_lastcached_default','1410944014'),('__site_secret__','zJAvRUl4DHm-GLBoK8aGn4vhjvJ3twwM'),('simplecache_lastupdate_failsafe','0'),('simplecache_lastcached_failsafe','0'),('simplecache_lastupdate_foaf','0'),('simplecache_lastcached_foaf','0'),('simplecache_lastupdate_ical','0'),('simplecache_lastcached_ical','0'),('simplecache_lastupdate_installation','0'),('simplecache_lastcached_installation','0'),('simplecache_lastupdate_json','0'),('simplecache_lastcached_json','0'),('simplecache_lastupdate_opendd','0'),('simplecache_lastcached_opendd','0'),('simplecache_lastupdate_php','0'),('simplecache_lastcached_php','0'),('simplecache_lastupdate_rss','0'),('simplecache_lastcached_rss','0'),('simplecache_lastupdate_xml','0'),('simplecache_lastcached_xml','0');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entities`
--

DROP TABLE IF EXISTS `elgg_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1410930738,1410930738,1410930738,'yes'),(2,'object',2,1,1,1,2,1410930738,1410930738,1410930738,'yes'),(3,'object',2,1,1,1,2,1410930738,1410930738,1410930738,'yes'),(4,'object',2,1,1,1,2,1410930738,1410930738,1410930738,'yes'),(5,'object',2,1,1,1,2,1410930738,1410930738,1410930738,'yes'),(6,'object',2,1,1,1,2,1410930738,1410930738,1410930738,'yes'),(7,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(8,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(9,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(10,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(11,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(12,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(13,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(14,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(15,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(16,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(17,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(18,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(19,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(20,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(21,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(22,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(23,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(24,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(25,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(26,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(27,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(28,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(29,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(30,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(31,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(32,'object',2,1,1,1,2,1410930739,1410930739,1410930739,'yes'),(33,'user',0,0,1,0,2,1410930764,1410962193,1410930764,'yes'),(34,'object',3,33,1,33,0,1410930764,1410930764,1410930764,'yes'),(35,'object',3,33,1,33,0,1410930764,1410930764,1410930764,'yes'),(36,'object',3,33,1,33,0,1410930764,1410930764,1410930764,'yes'),(37,'object',3,33,1,33,0,1410930764,1410930764,1410930764,'yes'),(38,'object',3,33,1,33,0,1410930764,1410930764,1410930764,'yes'),(39,'object',2,1,1,1,2,1410943932,1410943932,1410943932,'yes'),(40,'user',0,0,1,0,2,1410962003,1410962012,1410962003,'yes'),(41,'user',0,0,1,0,2,1410962065,1410962071,1410962065,'yes'),(42,'user',0,0,1,0,2,1410962113,1410962122,1410962113,'yes'),(43,'user',0,0,1,0,2,1410962164,1410962170,1410962164,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_relationships`
--

DROP TABLE IF EXISTS `elgg_entity_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (1,2,'active_plugin',1,1410930739),(2,3,'active_plugin',1,1410930739),(3,11,'active_plugin',1,1410930739),(4,12,'active_plugin',1,1410930739),(5,13,'active_plugin',1,1410930739),(24,39,'active_plugin',1,1410944014),(7,15,'active_plugin',1,1410930739),(8,16,'active_plugin',1,1410930739),(9,17,'active_plugin',1,1410930739),(10,18,'active_plugin',1,1410930739),(11,19,'active_plugin',1,1410930740),(12,20,'active_plugin',1,1410930740),(13,21,'active_plugin',1,1410930740),(14,22,'active_plugin',1,1410930740),(15,23,'active_plugin',1,1410930740),(16,24,'active_plugin',1,1410930740),(17,25,'active_plugin',1,1410930740),(18,26,'active_plugin',1,1410930740),(19,28,'active_plugin',1,1410930740),(20,29,'active_plugin',1,1410930740),(25,40,'member_of_site',1,1410962003),(22,32,'active_plugin',1,1410930740),(23,33,'member_of_site',1,1410930764),(26,41,'member_of_site',1,1410962065),(27,42,'member_of_site',1,1410962113),(28,43,'member_of_site',1,1410962164);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_subtypes`
--

DROP TABLE IF EXISTS `elgg_entity_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','file','ElggFile'),(2,'object','plugin','ElggPlugin'),(3,'object','widget','ElggWidget'),(4,'object','blog','ElggBlog'),(5,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_geocode_cache`
--

DROP TABLE IF EXISTS `elgg_geocode_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_groups_entity`
--

DROP TABLE IF EXISTS `elgg_groups_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_hmac_cache`
--

DROP TABLE IF EXISTS `elgg_hmac_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metadata`
--

DROP TABLE IF EXISTS `elgg_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (1,1,1,2,'text',0,2,1410930738,'yes'),(2,33,3,4,'text',33,2,1410930764,'yes'),(3,33,5,4,'text',0,2,1410930764,'yes'),(4,33,6,7,'text',0,2,1410930764,'yes'),(5,40,3,4,'text',40,2,1410962003,'yes'),(6,41,3,4,'text',41,2,1410962065,'yes'),(7,42,3,4,'text',42,2,1410962113,'yes'),(8,43,3,4,'text',43,2,1410962164,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metastrings`
--

DROP TABLE IF EXISTS `elgg_metastrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'info@wtelgg.com'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_objects_entity`
--

DROP TABLE IF EXISTS `elgg_objects_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'blog',''),(3,'bookmarks',''),(4,'categories',''),(5,'custom_index',''),(6,'dashboard',''),(7,'developers',''),(8,'diagnostics',''),(9,'embed',''),(10,'externalpages',''),(11,'file',''),(12,'garbagecollector',''),(13,'groups',''),(14,'htmlawed',''),(15,'invitefriends',''),(16,'likes',''),(17,'logbrowser',''),(18,'logrotate',''),(19,'members',''),(20,'messageboard',''),(21,'messages',''),(22,'notifications',''),(23,'pages',''),(24,'profile',''),(25,'reportedcontent',''),(26,'search',''),(27,'tagcloud',''),(28,'thewire',''),(29,'tinymce',''),(30,'twitter_api',''),(31,'uservalidationbyemail',''),(32,'zaudio',''),(34,'',''),(35,'',''),(36,'',''),(37,'',''),(38,'',''),(39,'edit_footer','');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_private_settings`
--

DROP TABLE IF EXISTS `elgg_private_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','1'),(2,3,'elgg:internal:priority','2'),(3,4,'elgg:internal:priority','3'),(4,5,'elgg:internal:priority','4'),(5,6,'elgg:internal:priority','5'),(6,7,'elgg:internal:priority','6'),(7,8,'elgg:internal:priority','7'),(8,9,'elgg:internal:priority','8'),(9,10,'elgg:internal:priority','9'),(10,11,'elgg:internal:priority','10'),(11,12,'elgg:internal:priority','11'),(12,13,'elgg:internal:priority','12'),(13,14,'elgg:internal:priority','13'),(14,15,'elgg:internal:priority','14'),(15,16,'elgg:internal:priority','15'),(16,17,'elgg:internal:priority','16'),(17,18,'elgg:internal:priority','17'),(18,19,'elgg:internal:priority','18'),(19,20,'elgg:internal:priority','19'),(20,21,'elgg:internal:priority','20'),(21,22,'elgg:internal:priority','21'),(22,23,'elgg:internal:priority','22'),(23,24,'elgg:internal:priority','23'),(24,25,'elgg:internal:priority','24'),(25,26,'elgg:internal:priority','25'),(26,27,'elgg:internal:priority','26'),(27,28,'elgg:internal:priority','27'),(28,29,'elgg:internal:priority','28'),(29,30,'elgg:internal:priority','29'),(30,31,'elgg:internal:priority','30'),(31,32,'elgg:internal:priority','31'),(32,34,'handler','control_panel'),(33,34,'context','admin'),(34,34,'column','1'),(35,34,'order','0'),(36,35,'handler','admin_welcome'),(37,35,'context','admin'),(38,35,'order','10'),(39,35,'column','1'),(40,36,'handler','online_users'),(41,36,'context','admin'),(42,36,'column','2'),(43,36,'order','0'),(44,37,'handler','new_users'),(45,37,'context','admin'),(46,37,'order','10'),(47,37,'column','2'),(48,38,'handler','content_stats'),(49,38,'context','admin'),(50,38,'order','20'),(51,38,'column','2'),(52,36,'num_display','8'),(53,37,'num_display','5'),(54,38,'num_display','8'),(55,39,'elgg:internal:priority','32'),(56,39,'footercontents','<iframe src=\"http://www.wtlabadserver.com/displayads.php\" width=300 height=350 noscroll></iframe>');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_river`
--

DROP TABLE IF EXISTS `elgg_river`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_sites_entity`
--

DROP TABLE IF EXISTS `elgg_sites_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'Webtracking Lab Site','','http://www.wtlabelgg.com/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_system_log`
--

DROP TABLE IF EXISTS `elgg_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930738,'127.0.0.1'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930738,'127.0.0.1'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930738,'127.0.0.1'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930738,'127.0.0.1'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930738,'127.0.0.1'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410930739,'127.0.0.1'),(32,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930739,'127.0.0.1'),(33,2,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930739,'127.0.0.1'),(34,3,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930739,'127.0.0.1'),(35,4,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930739,'127.0.0.1'),(36,5,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930739,'127.0.0.1'),(37,6,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930739,'127.0.0.1'),(38,11,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(39,12,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(40,13,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(41,14,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(42,15,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(43,16,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(44,17,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(45,18,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(46,19,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(47,20,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(48,21,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(49,22,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410930740,'127.0.0.1'),(50,23,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410930764,'127.0.0.1'),(51,33,'ElggUser','user','','create',0,0,2,'yes',1410930764,'127.0.0.1'),(52,2,'ElggMetadata','metadata','notification:method:email','create',0,33,2,'yes',1410930764,'127.0.0.1'),(53,34,'ElggWidget','object','widget','create',0,33,0,'yes',1410930764,'127.0.0.1'),(54,35,'ElggWidget','object','widget','create',0,33,0,'yes',1410930764,'127.0.0.1'),(55,36,'ElggWidget','object','widget','create',0,33,0,'yes',1410930764,'127.0.0.1'),(56,37,'ElggWidget','object','widget','create',0,33,0,'yes',1410930764,'127.0.0.1'),(57,38,'ElggWidget','object','widget','create',0,33,0,'yes',1410930764,'127.0.0.1'),(58,33,'ElggUser','user','','make_admin',0,0,2,'yes',1410930764,'127.0.0.1'),(59,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1410930764,'127.0.0.1'),(60,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1410930764,'127.0.0.1'),(61,33,'ElggUser','user','','update',33,0,2,'yes',1410930764,'127.0.0.1'),(62,33,'ElggUser','user','','login',33,0,2,'yes',1410930764,'127.0.0.1'),(63,21,'ElggRelationship','relationship','active_plugin','delete',33,0,2,'yes',1410930827,'127.0.0.1'),(64,6,'ElggRelationship','relationship','active_plugin','delete',33,0,2,'yes',1410930832,'127.0.0.1'),(65,33,'ElggUser','user','','logout',33,0,2,'yes',1410931025,'127.0.0.1'),(66,33,'ElggUser','user','','update',33,0,2,'yes',1410931025,'127.0.0.1'),(67,33,'ElggUser','user','','update',33,0,2,'yes',1410943681,'127.0.0.1'),(68,33,'ElggUser','user','','login',33,0,2,'yes',1410943681,'127.0.0.1'),(69,33,'ElggUser','user','','logout',33,0,2,'yes',1410943705,'127.0.0.1'),(70,33,'ElggUser','user','','update',33,0,2,'yes',1410943705,'127.0.0.1'),(71,33,'ElggUser','user','','update',33,0,2,'yes',1410943925,'127.0.0.1'),(72,33,'ElggUser','user','','login',33,0,2,'yes',1410943925,'127.0.0.1'),(73,39,'ElggPlugin','object','plugin','create',33,1,2,'yes',1410943932,'127.0.0.1'),(74,24,'ElggRelationship','relationship','active_plugin','create',33,0,2,'yes',1410944014,'127.0.0.1'),(75,33,'ElggUser','user','','logout',33,0,2,'yes',1410944203,'127.0.0.1'),(76,33,'ElggUser','user','','update',33,0,2,'yes',1410944203,'127.0.0.1'),(77,25,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410962003,'127.0.0.1'),(78,40,'ElggUser','user','','create',0,0,2,'yes',1410962003,'127.0.0.1'),(79,5,'ElggMetadata','metadata','notification:method:email','create',0,40,2,'yes',1410962003,'127.0.0.1'),(80,40,'ElggUser','user','','update',40,0,2,'yes',1410962003,'127.0.0.1'),(81,40,'ElggUser','user','','login',40,0,2,'yes',1410962003,'127.0.0.1'),(82,40,'ElggUser','user','','logout',40,0,2,'yes',1410962012,'127.0.0.1'),(83,40,'ElggUser','user','','update',40,0,2,'yes',1410962012,'127.0.0.1'),(84,26,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410962065,'127.0.0.1'),(85,41,'ElggUser','user','','create',0,0,2,'yes',1410962065,'127.0.0.1'),(86,6,'ElggMetadata','metadata','notification:method:email','create',0,41,2,'yes',1410962065,'127.0.0.1'),(87,41,'ElggUser','user','','update',41,0,2,'yes',1410962065,'127.0.0.1'),(88,41,'ElggUser','user','','login',41,0,2,'yes',1410962065,'127.0.0.1'),(89,41,'ElggUser','user','','logout',41,0,2,'yes',1410962071,'127.0.0.1'),(90,41,'ElggUser','user','','update',41,0,2,'yes',1410962071,'127.0.0.1'),(91,27,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410962113,'127.0.0.1'),(92,42,'ElggUser','user','','create',0,0,2,'yes',1410962113,'127.0.0.1'),(93,7,'ElggMetadata','metadata','notification:method:email','create',0,42,2,'yes',1410962113,'127.0.0.1'),(94,42,'ElggUser','user','','update',42,0,2,'yes',1410962113,'127.0.0.1'),(95,42,'ElggUser','user','','login',42,0,2,'yes',1410962113,'127.0.0.1'),(96,42,'ElggUser','user','','logout',42,0,2,'yes',1410962122,'127.0.0.1'),(97,42,'ElggUser','user','','update',42,0,2,'yes',1410962122,'127.0.0.1'),(98,28,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410962164,'127.0.0.1'),(99,43,'ElggUser','user','','create',0,0,2,'yes',1410962164,'127.0.0.1'),(100,8,'ElggMetadata','metadata','notification:method:email','create',0,43,2,'yes',1410962164,'127.0.0.1'),(101,43,'ElggUser','user','','update',43,0,2,'yes',1410962164,'127.0.0.1'),(102,43,'ElggUser','user','','login',43,0,2,'yes',1410962164,'127.0.0.1'),(103,43,'ElggUser','user','','logout',43,0,2,'yes',1410962170,'127.0.0.1'),(104,43,'ElggUser','user','','update',43,0,2,'yes',1410962170,'127.0.0.1'),(105,33,'ElggUser','user','','update',33,0,2,'yes',1410962178,'127.0.0.1'),(106,33,'ElggUser','user','','login',33,0,2,'yes',1410962178,'127.0.0.1'),(107,33,'ElggUser','user','','logout',33,0,2,'yes',1410962193,'127.0.0.1'),(108,33,'ElggUser','user','','update',33,0,2,'yes',1410962193,'127.0.0.1');
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_apisessions`
--

DROP TABLE IF EXISTS `elgg_users_apisessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_entity`
--

DROP TABLE IF EXISTS `elgg_users_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (33,'admin','admin','198782d969f7192ee143fa7f7463fd0b','WHfbkLYI','admin@wtelgg.com','en','','no','yes',1410962193,1410962187,1410962178,1410943925),(40,'Alice','alice','f3649d39306d3f82fbf38fa2fcb7ce9a','LFQkXM1t','alice@wtlab.com','en','','no','no',1410962011,1410962005,1410962003,0),(41,'Boby','boby','1f56800a2b4a6f786f396bec4aa60ec9','OkImn2y2','boby@wtlab.com','en','','no','no',1410962070,1410962066,1410962065,0),(42,'Charlie','charlie','72493b634b65be233aec808c5e7b0940','BoI9-MtU','charlie@wtlab.com','en','','no','no',1410962122,1410962114,1410962113,0),(43,'Samy','samy','b74ae2779d5c49595b493c016d3bb1b7','94iRlpQ-','samy@wtlab.com','en','','no','no',1410962169,1410962165,1410962164,0);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_sessions`
--

DROP TABLE IF EXISTS `elgg_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('tjefqadn12vifmpv40hl31f8f6',1410931026,'__elgg_session|s:32:\"43e580a86a62b673194c599880b94254\";msg|a:0:{}'),('sdni5upeh8uk1nbptv4ovunu64',1410943674,'__elgg_session|s:32:\"76e2ee85895a041f932ff07797612414\";msg|a:0:{}'),('q3qv8iultl9ibiq4rmqvdgm6n6',1410961051,'__elgg_session|s:32:\"bec9acd68e7261f1b70cf26bdedea9a9\";msg|a:0:{}'),('m6mtitpo9qoon3m549mhkkego3',1410961969,'__elgg_session|s:32:\"180a07baae058d2d16af3fbbe0cb3170\";msg|a:0:{}'),('qutg32rpoj15elprphsh250bc5',1411019852,'__elgg_session|s:32:\"7884d50e094664b5321e84bdad1d2c40\";msg|a:0:{}'),('fi8hf99jv5ofpvhopcs0c09ki5',1411020794,'__elgg_session|s:32:\"81fe4d6609ad8e8eedb3582b6024a05e\";msg|a:0:{}'),('ajvef1dhkt2hrd8fpip7bo23v6',1411020825,'__elgg_session|s:32:\"c14a8c5fc919c117b604f590429adc74\";msg|a:0:{}'),('0jbs4rjc6kk2ju55ad90s6stu2',1411020844,'__elgg_session|s:32:\"1f185584177f1a7c0230434e8f2f5277\";msg|a:0:{}'),('6g7g0mqce3pj99i4abniqv6s94',1411020876,'__elgg_session|s:32:\"82ef029be28b40030815cc035c24eb7c\";msg|a:0:{}'),('7s25mqqtt3t5ohhqk7ih36mqi4',1410943918,'__elgg_session|s:32:\"97d50a97d7d86db3fcd93ae72d81de3c\";msg|a:0:{}'),('72em570tsg48ge55bldeot5ae7',1411019766,'__elgg_session|s:32:\"65be091b22e8db0e3b94539be269bcc0\";msg|a:0:{}'),('263s8url6vjkeufsde2obhc951',1410944203,'__elgg_session|s:32:\"3a2f4878abeee570627b2c0843bf18af\";msg|a:0:{}'),('82c3c1qa0b7c9u4ohmm6tq9me1',1411019681,'__elgg_session|s:32:\"ee597d2e481c5314b81eb21f7c6883b5\";msg|a:0:{}'),('iofspf3l2prlij455qi82uug86',1410962023,'__elgg_session|s:32:\"ec94b4b750934e903e1c49b3190b906b\";msg|a:0:{}'),('9adp7sn0j0g29u8oc9vporsrh0',1411019174,'__elgg_session|s:32:\"661725c9fff93c2afe807df39235ba47\";msg|a:0:{}'),('qau4g3mkr5qggahu8hqp7hcuk7',1411019324,'__elgg_session|s:32:\"ef93c034417a51fe6c16d3312b9fee1e\";msg|a:0:{}'),('j7umtmm65r570apdb3ccdr5o94',1410962079,'__elgg_session|s:32:\"81bea69bfb30ddbc22a4dff9f0051423\";msg|a:0:{}'),('0l2c6gvd2ns23t6hv30utv5uh4',1410962127,'__elgg_session|s:32:\"def0435e705f4d1763168dc24185bb7b\";msg|a:0:{}'),('67srtkr45mo0jqrb40uihv2kl6',1410962170,'__elgg_session|s:32:\"df7759822e1746caf4ecafa08549a250\";msg|a:0:{}'),('51c62ki9lk02s2vctrbvu25492',1410962495,'__elgg_session|s:32:\"88abc04ed9a7d730ab7193063c65cf41\";msg|a:0:{}'),('ki4gk4k9jvnfigdegrglemnnv6',1411021336,'__elgg_session|s:32:\"870a08ae5940a2d0776e9123c4a130de\";msg|a:0:{}'),('f85m2ho020m0g06q4s1gmapt64',1411021386,'__elgg_session|s:32:\"8602e1e13e7748e46035311862edfb2a\";msg|a:0:{}'),('ob17b0fhp0hkvv97kg8pqckbr6',1411021401,'__elgg_session|s:32:\"e9d2968ea2067e47d5e9e132661821b8\";msg|a:0:{}'),('1536vp9jok3squ0e5aj44pl5v5',1411021435,'__elgg_session|s:32:\"2a11ae659ec20a3ab5ee104cc1b3ea05\";msg|a:0:{}'),('73js5745lsaptqmgpru3mmq052',1411021449,'__elgg_session|s:32:\"5ae47f74a91164cbeffef72282d40667\";msg|a:0:{}'),('8u3mcdrfgqr8figmo9drng8s55',1411021905,'__elgg_session|s:32:\"696da3c34f27ebe1894c3c210ea79c9d\";msg|a:0:{}'),('u7h7cm6mtm4t4485lq1ph9idl0',1411584534,'__elgg_session|s:32:\"325ad7d8d56e7574b9e05b78a66e2929\";msg|a:0:{}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `xss_collabtive_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `xss_collabtive_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `xss_collabtive_db`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL DEFAULT '',
  `ufrom` varchar(255) NOT NULL DEFAULT '',
  `ufrom_id` int(10) NOT NULL DEFAULT '0',
  `userto` varchar(255) NOT NULL DEFAULT '',
  `userto_id` int(10) NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_assigned`
--

DROP TABLE IF EXISTS `company_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `company` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `company` (`company`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_assigned`
--

LOCK TABLES `company_assigned` WRITE;
/*!40000 ALTER TABLE `company_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `project` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  `user` int(10) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `added` varchar(255) NOT NULL DEFAULT '',
  `datei` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `folder` int(10) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `datei` (`datei`),
  KEY `added` (`added`),
  KEY `project` (`project`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_attached`
--

DROP TABLE IF EXISTS `files_attached`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_attached` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` int(10) unsigned NOT NULL DEFAULT '0',
  `message` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `file` (`file`,`message`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_attached`
--

LOCK TABLES `files_attached` WRITE;
/*!40000 ALTER TABLE `files_attached` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_attached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `action` int(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `datum` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `datum` (`datum`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  FULLTEXT KEY `username` (`username`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,0,'','admin','user',1,0,'1313337918'),(2,1,'admin','Users\\\' Account Information','projekt',1,1,'1313337939'),(3,1,'admin','admin','user',6,1,'1313337939'),(4,1,'admin','seed','user',1,0,'1313337951'),(5,1,'admin','bob','user',1,0,'1313337960'),(6,1,'admin','ted','user',1,0,'1313337985'),(7,1,'admin','peter','user',1,0,'1313337994'),(8,1,'admin','alice','user',1,0,'1313338004');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `posted` varchar(255) NOT NULL DEFAULT '',
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `replyto` int(11) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`),
  KEY `user` (`user`),
  KEY `replyto` (`replyto`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `end` (`end`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones_assigned`
--

DROP TABLE IF EXISTS `milestones_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones_assigned`
--

LOCK TABLES `milestones_assigned` WRITE;
/*!40000 ALTER TABLE `milestones_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectfolders`
--

DROP TABLE IF EXISTS `projectfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectfolders` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectfolders`
--

LOCK TABLES `projectfolders` WRITE;
/*!40000 ALTER TABLE `projectfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte`
--

DROP TABLE IF EXISTS `projekte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `budget` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte`
--

LOCK TABLES `projekte` WRITE;
/*!40000 ALTER TABLE `projekte` DISABLE KEYS */;
INSERT INTO `projekte` VALUES (1,'Users\' Account Information','Username:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; admin<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; seed<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; peter<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alice<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ted<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bob<br /><br />Password: same as the username.<br /><br />Notice: \'admin\' and \'seed\' are two administrators for this application. When doing the Lab, please leave one of them untouched for safety.','1313337939','0',1,0);
/*!40000 ALTER TABLE `projekte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte_assigned`
--

DROP TABLE IF EXISTS `projekte_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `projekt` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `projekt` (`projekt`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte_assigned`
--

LOCK TABLES `projekte_assigned` WRITE;
/*!40000 ALTER TABLE `projekte_assigned` DISABLE KEYS */;
INSERT INTO `projekte_assigned` VALUES (1,1,1);
/*!40000 ALTER TABLE `projekte_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `projects` text NOT NULL,
  `tasks` text NOT NULL,
  `milestones` text NOT NULL,
  `messages` text NOT NULL,
  `files` text NOT NULL,
  `chat` text NOT NULL,
  `timetracker` text NOT NULL,
  `admin` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:3:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:1;}','a:1:{s:3:\"add\";i:1;}'),(2,'User','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;}','a:3:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:0;}','a:1:{s:3:\"add\";i:0;}'),(3,'Client','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;}','a:3:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;}','a:1:{s:3:\"add\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:4:\"read\";i:0;}','a:1:{s:3:\"add\";i:0;}');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_assigned`
--

DROP TABLE IF EXISTS `roles_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL,
  `role` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_assigned`
--

LOCK TABLES `roles_assigned` WRITE;
/*!40000 ALTER TABLE `roles_assigned` DISABLE KEYS */;
INSERT INTO `roles_assigned` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,2),(6,6,2);
/*!40000 ALTER TABLE `roles_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `ID` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `subtitle` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `timezone` varchar(60) DEFAULT NULL,
  `dateformat` varchar(50) DEFAULT NULL,
  `template` varchar(255) DEFAULT '',
  `mailnotify` tinyint(1) DEFAULT '1',
  `mailfrom` varchar(255) DEFAULT NULL,
  `mailfromname` varchar(255) DEFAULT NULL,
  `mailmethod` varchar(5) DEFAULT NULL,
  `mailhost` varchar(255) DEFAULT NULL,
  `mailuser` varchar(255) DEFAULT NULL,
  `mailpass` varchar(255) DEFAULT NULL,
  `rssuser` varchar(255) DEFAULT NULL,
  `rsspass` varchar(255) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `name` (`name`),
  KEY `subtitle` (`subtitle`),
  KEY `locale` (`locale`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (0,'Collabtive','Projectmanagement','en','America/New_York','d.m.Y','standard',1,'collabtive@localhost',NULL,'mail',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasklist`
--

DROP TABLE IF EXISTS `tasklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasklist` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(4) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasklist`
--

LOCK TABLES `tasklist` WRITE;
/*!40000 ALTER TABLE `tasklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `liste` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `liste` (`liste`),
  KEY `status` (`status`),
  KEY `end` (`end`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_assigned`
--

DROP TABLE IF EXISTS `tasks_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `task` (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_assigned`
--

LOCK TABLES `tasks_assigned` WRITE;
/*!40000 ALTER TABLE `tasks_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetracker`
--

DROP TABLE IF EXISTS `timetracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetracker` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `started` varchar(255) NOT NULL DEFAULT '',
  `ended` varchar(255) NOT NULL DEFAULT '',
  `hours` float NOT NULL DEFAULT '0',
  `pstatus` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`,`project`,`task`),
  KEY `started` (`started`),
  KEY `ended` (`ended`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetracker`
--

LOCK TABLES `timetracker` WRITE;
/*!40000 ALTER TABLE `timetracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT '',
  `company` varchar(255) DEFAULT '',
  `lastlogin` varchar(255) DEFAULT '',
  `zip` varchar(10) DEFAULT NULL,
  `gender` char(1) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `adress` varchar(255) DEFAULT '',
  `adress2` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `avatar` varchar(255) DEFAULT '',
  `rate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`),
  KEY `pass` (`pass`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','',NULL,NULL,'d033e22ae348aeb5660fc2140aec35850c4da997','0','1381263335',NULL,'','','','','','','','','','0'),(2,'seed','',NULL,NULL,'92713d4709377111cf31f2a71986c411bd6cb5b0','','',NULL,'','','','','','','','en','','0'),(3,'bob','',NULL,NULL,'48181acd22b3edaebc8a447868a7df7ce629920a','','',NULL,'','','','','','','','en','','0'),(4,'ted','',NULL,NULL,'46ab578353b0478abc71fa54796a76c10bbe41a8','','',NULL,'','','','','','','','en','','0'),(5,'peter','',NULL,NULL,'4b8373d016f277527198385ba72fda0feb5da015','','',NULL,'','','','','','','','en','','0'),(6,'alice','',NULL,NULL,'522b276a356bdf39013dfabea2cd43e141ecc9e8','','1313727237',NULL,'','','','','','','','en','','0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `xss_elgg_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `xss_elgg_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `xss_elgg_db`;

--
-- Table structure for table `elgg_access_collection_membership`
--

DROP TABLE IF EXISTS `elgg_access_collection_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collections`
--

DROP TABLE IF EXISTS `elgg_access_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_annotations`
--

DROP TABLE IF EXISTS `elgg_annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_api_users`
--

DROP TABLE IF EXISTS `elgg_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_config`
--

DROP TABLE IF EXISTS `elgg_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','s:0:\"\";',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_datalists`
--

DROP TABLE IF EXISTS `elgg_datalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('filestore_run_once','1410864078'),('plugin_run_once','1410864078'),('elgg_widget_run_once','1410864078'),('installed','1410864168'),('path','/var/www/XSS/elgg/'),('dataroot','/home/seed/elggData/XSS/'),('default_site','1'),('version','2014012000'),('simplecache_enabled','1'),('system_cache_enabled','1'),('processed_upgrades','a:45:{i:0;s:14:\"2008100701.php\";i:1;s:14:\"2008101303.php\";i:2;s:14:\"2009022701.php\";i:3;s:14:\"2009041701.php\";i:4;s:14:\"2009070101.php\";i:5;s:14:\"2009102801.php\";i:6;s:14:\"2010010501.php\";i:7;s:14:\"2010033101.php\";i:8;s:14:\"2010040201.php\";i:9;s:14:\"2010052601.php\";i:10;s:14:\"2010060101.php\";i:11;s:14:\"2010060401.php\";i:12;s:14:\"2010061501.php\";i:13;s:14:\"2010062301.php\";i:14;s:14:\"2010062302.php\";i:15;s:14:\"2010070301.php\";i:16;s:14:\"2010071001.php\";i:17;s:14:\"2010071002.php\";i:18;s:14:\"2010111501.php\";i:19;s:14:\"2010121601.php\";i:20;s:14:\"2010121602.php\";i:21;s:14:\"2010121701.php\";i:22;s:14:\"2010123101.php\";i:23;s:14:\"2011010101.php\";i:24;s:61:\"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php\";i:25;s:61:\"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php\";i:26;s:60:\"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php\";i:27;s:51:\"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php\";i:28;s:57:\"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php\";i:29;s:61:\"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php\";i:30;s:59:\"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php\";i:31;s:14:\"2011052801.php\";i:32;s:60:\"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php\";i:33;s:62:\"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php\";i:34;s:54:\"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php\";i:35;s:53:\"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php\";i:36;s:50:\"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php\";i:37;s:50:\"2012012100-1.8.3-system_cache-93100e7d55a24a11.php\";i:38;s:59:\"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php\";i:39;s:58:\"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php\";i:40;s:59:\"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php\";i:41;s:62:\"2013051700-1.8.15-add_missing_group_index-52a63a3a3ffaced2.php\";i:42;s:53:\"2013052900-1.8.15-ipv6_in_syslog-f5c2cc0196e9e731.php\";i:43;s:50:\"2013060900-1.8.15-site_secret-404fc165cf9e0ac9.php\";i:44;s:50:\"2014012000-1.8.18-remember_me-9a8a433685cf7be9.php\";}'),('admin_registered','1'),('simplecache_lastupdate_default','1410864370'),('simplecache_lastcached_default','1410864370'),('__site_secret__','zdKh3mnk74mm1oYoahCfbtUpYVuTZk7r'),('simplecache_lastupdate_failsafe','0'),('simplecache_lastcached_failsafe','0'),('simplecache_lastupdate_foaf','0'),('simplecache_lastcached_foaf','0'),('simplecache_lastupdate_ical','0'),('simplecache_lastcached_ical','0'),('simplecache_lastupdate_installation','0'),('simplecache_lastcached_installation','0'),('simplecache_lastupdate_json','0'),('simplecache_lastcached_json','0'),('simplecache_lastupdate_opendd','0'),('simplecache_lastcached_opendd','0'),('simplecache_lastupdate_php','0'),('simplecache_lastcached_php','0'),('simplecache_lastupdate_rss','0'),('simplecache_lastcached_rss','0'),('simplecache_lastupdate_xml','0'),('simplecache_lastcached_xml','0');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entities`
--

DROP TABLE IF EXISTS `elgg_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1410864168,1410864168,1410864168,'yes'),(2,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(3,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(4,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(5,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(6,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(7,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(8,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(9,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(10,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(11,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(12,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(13,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(14,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(15,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(16,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(17,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(18,'object',2,1,1,1,2,1410864168,1410864168,1410864168,'yes'),(19,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(20,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(21,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(22,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(23,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(24,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(25,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(26,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(27,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(28,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(29,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(30,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(31,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(32,'object',2,1,1,1,2,1410864169,1410864169,1410864169,'yes'),(33,'user',0,0,1,0,2,1410864198,1410961737,1410864198,'yes'),(34,'object',3,33,1,33,0,1410864198,1410864198,1410864198,'yes'),(35,'object',3,33,1,33,0,1410864198,1410864198,1410864198,'yes'),(36,'object',3,33,1,33,0,1410864198,1410864198,1410864198,'yes'),(37,'object',3,33,1,33,0,1410864198,1410864198,1410864198,'yes'),(38,'object',3,33,1,33,0,1410864199,1410864199,1410864199,'yes'),(39,'user',0,0,1,0,2,1410961457,1410961473,1410961457,'yes'),(40,'user',0,0,1,0,2,1410961532,1410961558,1410961532,'yes'),(41,'user',0,0,1,0,2,1410961635,1410961650,1410961635,'yes'),(42,'user',0,0,1,0,2,1410961685,1410961693,1410961685,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_relationships`
--

DROP TABLE IF EXISTS `elgg_entity_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (1,2,'active_plugin',1,1410864169),(2,3,'active_plugin',1,1410864169),(3,11,'active_plugin',1,1410864169),(4,12,'active_plugin',1,1410864169),(5,13,'active_plugin',1,1410864169),(24,39,'member_of_site',1,1410961457),(7,15,'active_plugin',1,1410864169),(8,16,'active_plugin',1,1410864169),(9,17,'active_plugin',1,1410864169),(10,18,'active_plugin',1,1410864169),(11,19,'active_plugin',1,1410864169),(12,20,'active_plugin',1,1410864169),(13,21,'active_plugin',1,1410864169),(14,22,'active_plugin',1,1410864169),(15,23,'active_plugin',1,1410864169),(16,24,'active_plugin',1,1410864169),(17,25,'active_plugin',1,1410864169),(18,26,'active_plugin',1,1410864169),(19,28,'active_plugin',1,1410864169),(20,29,'active_plugin',1,1410864169),(25,40,'member_of_site',1,1410961532),(22,32,'active_plugin',1,1410864169),(23,33,'member_of_site',1,1410864198),(26,41,'member_of_site',1,1410961635),(27,42,'member_of_site',1,1410961685);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_subtypes`
--

DROP TABLE IF EXISTS `elgg_entity_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','file','ElggFile'),(2,'object','plugin','ElggPlugin'),(3,'object','widget','ElggWidget'),(4,'object','blog','ElggBlog'),(5,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_geocode_cache`
--

DROP TABLE IF EXISTS `elgg_geocode_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_groups_entity`
--

DROP TABLE IF EXISTS `elgg_groups_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_hmac_cache`
--

DROP TABLE IF EXISTS `elgg_hmac_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metadata`
--

DROP TABLE IF EXISTS `elgg_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (1,1,1,2,'text',0,2,1410864168,'yes'),(2,33,3,4,'text',33,2,1410864198,'yes'),(3,33,5,4,'text',0,2,1410864199,'yes'),(4,33,6,7,'text',0,2,1410864199,'yes'),(5,39,3,4,'text',39,2,1410961457,'yes'),(6,40,3,4,'text',40,2,1410961532,'yes'),(7,41,3,4,'text',41,2,1410961635,'yes'),(8,42,3,4,'text',42,2,1410961685,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metastrings`
--

DROP TABLE IF EXISTS `elgg_metastrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'info@xsselgg.com'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_objects_entity`
--

DROP TABLE IF EXISTS `elgg_objects_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'blog',''),(3,'bookmarks',''),(4,'categories',''),(5,'custom_index',''),(6,'dashboard',''),(7,'developers',''),(8,'diagnostics',''),(9,'embed',''),(10,'externalpages',''),(11,'file',''),(12,'garbagecollector',''),(13,'groups',''),(14,'htmlawed',''),(15,'invitefriends',''),(16,'likes',''),(17,'logbrowser',''),(18,'logrotate',''),(19,'members',''),(20,'messageboard',''),(21,'messages',''),(22,'notifications',''),(23,'pages',''),(24,'profile',''),(25,'reportedcontent',''),(26,'search',''),(27,'tagcloud',''),(28,'thewire',''),(29,'tinymce',''),(30,'twitter_api',''),(31,'uservalidationbyemail',''),(32,'zaudio',''),(34,'',''),(35,'',''),(36,'',''),(37,'',''),(38,'','');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_private_settings`
--

DROP TABLE IF EXISTS `elgg_private_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','1'),(2,3,'elgg:internal:priority','2'),(3,4,'elgg:internal:priority','3'),(4,5,'elgg:internal:priority','4'),(5,6,'elgg:internal:priority','5'),(6,7,'elgg:internal:priority','6'),(7,8,'elgg:internal:priority','7'),(8,9,'elgg:internal:priority','8'),(9,10,'elgg:internal:priority','9'),(10,11,'elgg:internal:priority','10'),(11,12,'elgg:internal:priority','11'),(12,13,'elgg:internal:priority','12'),(13,14,'elgg:internal:priority','13'),(14,15,'elgg:internal:priority','14'),(15,16,'elgg:internal:priority','15'),(16,17,'elgg:internal:priority','16'),(17,18,'elgg:internal:priority','17'),(18,19,'elgg:internal:priority','18'),(19,20,'elgg:internal:priority','19'),(20,21,'elgg:internal:priority','20'),(21,22,'elgg:internal:priority','21'),(22,23,'elgg:internal:priority','22'),(23,24,'elgg:internal:priority','23'),(24,25,'elgg:internal:priority','24'),(25,26,'elgg:internal:priority','25'),(26,27,'elgg:internal:priority','26'),(27,28,'elgg:internal:priority','27'),(28,29,'elgg:internal:priority','28'),(29,30,'elgg:internal:priority','29'),(30,31,'elgg:internal:priority','30'),(31,32,'elgg:internal:priority','31'),(32,34,'handler','control_panel'),(33,34,'context','admin'),(34,34,'column','1'),(35,34,'order','0'),(36,35,'handler','admin_welcome'),(37,35,'context','admin'),(38,35,'order','10'),(39,35,'column','1'),(40,36,'handler','online_users'),(41,36,'context','admin'),(42,36,'column','2'),(43,36,'order','0'),(44,37,'handler','new_users'),(45,37,'context','admin'),(46,37,'order','10'),(47,37,'column','2'),(48,38,'handler','content_stats'),(49,38,'context','admin'),(50,38,'order','20'),(51,38,'column','2'),(52,36,'num_display','8'),(53,37,'num_display','5'),(54,38,'num_display','8');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_river`
--

DROP TABLE IF EXISTS `elgg_river`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_sites_entity`
--

DROP TABLE IF EXISTS `elgg_sites_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'XSS Lab Site','','http://www.xsslabelgg.com/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_system_log`
--

DROP TABLE IF EXISTS `elgg_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864168,'127.0.0.1'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1410864169,'127.0.0.1'),(32,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(33,2,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(34,3,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(35,4,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(36,5,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(37,6,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(38,7,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(39,8,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(40,9,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(41,10,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(42,11,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(43,12,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(44,13,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(45,14,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(46,15,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(47,16,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(48,17,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(49,18,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1410864169,'127.0.0.1'),(50,23,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410864198,'127.0.0.1'),(51,33,'ElggUser','user','','create',0,0,2,'yes',1410864198,'127.0.0.1'),(52,2,'ElggMetadata','metadata','notification:method:email','create',0,33,2,'yes',1410864198,'127.0.0.1'),(53,34,'ElggWidget','object','widget','create',0,33,0,'yes',1410864198,'127.0.0.1'),(54,35,'ElggWidget','object','widget','create',0,33,0,'yes',1410864198,'127.0.0.1'),(55,36,'ElggWidget','object','widget','create',0,33,0,'yes',1410864198,'127.0.0.1'),(56,37,'ElggWidget','object','widget','create',0,33,0,'yes',1410864198,'127.0.0.1'),(57,38,'ElggWidget','object','widget','create',0,33,0,'yes',1410864199,'127.0.0.1'),(58,33,'ElggUser','user','','make_admin',0,0,2,'yes',1410864199,'127.0.0.1'),(59,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1410864199,'127.0.0.1'),(60,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1410864199,'127.0.0.1'),(61,33,'ElggUser','user','','update',33,0,2,'yes',1410864199,'127.0.0.1'),(62,33,'ElggUser','user','','login',33,0,2,'yes',1410864199,'127.0.0.1'),(63,21,'ElggRelationship','relationship','active_plugin','delete',33,0,2,'yes',1410864218,'127.0.0.1'),(64,6,'ElggRelationship','relationship','active_plugin','delete',33,0,2,'yes',1410864369,'127.0.0.1'),(65,24,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410961457,'127.0.0.1'),(66,39,'ElggUser','user','','create',0,0,2,'yes',1410961457,'127.0.0.1'),(67,5,'ElggMetadata','metadata','notification:method:email','create',0,39,2,'yes',1410961457,'127.0.0.1'),(68,39,'ElggUser','user','','update',39,0,2,'yes',1410961457,'127.0.0.1'),(69,39,'ElggUser','user','','login',39,0,2,'yes',1410961457,'127.0.0.1'),(70,39,'ElggUser','user','','logout',39,0,2,'yes',1410961473,'127.0.0.1'),(71,39,'ElggUser','user','','update',39,0,2,'yes',1410961473,'127.0.0.1'),(72,25,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410961532,'127.0.0.1'),(73,40,'ElggUser','user','','create',0,0,2,'yes',1410961532,'127.0.0.1'),(74,6,'ElggMetadata','metadata','notification:method:email','create',0,40,2,'yes',1410961532,'127.0.0.1'),(75,40,'ElggUser','user','','update',40,0,2,'yes',1410961532,'127.0.0.1'),(76,40,'ElggUser','user','','login',40,0,2,'yes',1410961532,'127.0.0.1'),(77,40,'ElggUser','user','','logout',40,0,2,'yes',1410961558,'127.0.0.1'),(78,40,'ElggUser','user','','update',40,0,2,'yes',1410961558,'127.0.0.1'),(79,26,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410961635,'127.0.0.1'),(80,41,'ElggUser','user','','create',0,0,2,'yes',1410961635,'127.0.0.1'),(81,7,'ElggMetadata','metadata','notification:method:email','create',0,41,2,'yes',1410961635,'127.0.0.1'),(82,41,'ElggUser','user','','update',41,0,2,'yes',1410961635,'127.0.0.1'),(83,41,'ElggUser','user','','login',41,0,2,'yes',1410961635,'127.0.0.1'),(84,41,'ElggUser','user','','logout',41,0,2,'yes',1410961650,'127.0.0.1'),(85,41,'ElggUser','user','','update',41,0,2,'yes',1410961650,'127.0.0.1'),(86,27,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1410961685,'127.0.0.1'),(87,42,'ElggUser','user','','create',0,0,2,'yes',1410961685,'127.0.0.1'),(88,8,'ElggMetadata','metadata','notification:method:email','create',0,42,2,'yes',1410961685,'127.0.0.1'),(89,42,'ElggUser','user','','update',42,0,2,'yes',1410961685,'127.0.0.1'),(90,42,'ElggUser','user','','login',42,0,2,'yes',1410961685,'127.0.0.1'),(91,42,'ElggUser','user','','logout',42,0,2,'yes',1410961693,'127.0.0.1'),(92,42,'ElggUser','user','','update',42,0,2,'yes',1410961693,'127.0.0.1'),(93,33,'ElggUser','user','','update',33,0,2,'yes',1410961703,'127.0.0.1'),(94,33,'ElggUser','user','','login',33,0,2,'yes',1410961703,'127.0.0.1'),(95,33,'ElggUser','user','','logout',33,0,2,'yes',1410961737,'127.0.0.1'),(96,33,'ElggUser','user','','update',33,0,2,'yes',1410961737,'127.0.0.1');
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_apisessions`
--

DROP TABLE IF EXISTS `elgg_users_apisessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_entity`
--

DROP TABLE IF EXISTS `elgg_users_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (33,'admin','admin','3b8856fe614b752535af40be7c3fa563','Efv-ajkL','admin@xsselgg.com','en','','no','yes',1410961736,1410961709,1410961703,1410864199),(39,'Alice','alice','a86c1346624225ca497016c6a5677125','OxE3LpBf','alice@xsslab.com','en','','no','no',1410961473,1410961464,1410961457,0),(40,'Boby','boby','f1aab73a4b3670fb98a33b9ad6831d5c','46bdRjMs','boby@xsslab.com','en','','no','no',1410961558,1410961532,1410961532,0),(41,'Charlie','charlie','4f153bb7f72cc5ce83ac684f7798cf40','DtVK8tGs','charlie@xsslab.com','en','','no','no',1410961650,1410961636,1410961635,0),(42,'Samy','samy','39c954d138fbda721faf6dc56e9b9445','8APUh1uZ','samy@xsslab.com','en','','no','no',1410961693,1410961687,1410961685,0);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_sessions`
--

DROP TABLE IF EXISTS `elgg_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('at2h47b14r13fqsdq5sotdkls2',1410866938,'__elgg_session|s:32:\"56829adb83975fb970ab500c0c26b86c\";user|O:8:\"ElggUser\":8:{s:15:\"\0*\0url_override\";N;s:16:\"\0*\0icon_override\";N;s:16:\"\0*\0temp_metadata\";a:0:{}s:19:\"\0*\0temp_annotations\";a:0:{}s:24:\"\0*\0temp_private_settings\";a:0:{}s:11:\"\0*\0volatile\";a:0:{}s:13:\"\0*\0attributes\";a:25:{s:4:\"guid\";i:33;s:4:\"type\";s:4:\"user\";s:7:\"subtype\";s:1:\"0\";s:10:\"owner_guid\";s:1:\"0\";s:9:\"site_guid\";s:1:\"1\";s:14:\"container_guid\";s:1:\"0\";s:9:\"access_id\";s:1:\"2\";s:12:\"time_created\";s:10:\"1410864198\";s:12:\"time_updated\";s:10:\"1410864199\";s:11:\"last_action\";s:10:\"1410866638\";s:7:\"enabled\";s:3:\"yes\";s:12:\"tables_split\";i:2;s:13:\"tables_loaded\";i:2;s:4:\"name\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:32:\"3b8856fe614b752535af40be7c3fa563\";s:4:\"salt\";s:8:\"Efv-ajkL\";s:5:\"email\";s:17:\"admin@xsselgg.com\";s:8:\"language\";s:2:\"en\";s:4:\"code\";s:0:\"\";s:6:\"banned\";s:2:\"no\";s:5:\"admin\";s:3:\"yes\";s:16:\"prev_last_action\";s:10:\"1410866636\";s:10:\"last_login\";s:10:\"1410864199\";s:15:\"prev_last_login\";s:1:\"0\";}s:8:\"\0*\0valid\";b:0;}guid|i:33;id|i:33;username|s:5:\"admin\";name|s:5:\"admin\";msg|a:0:{}'),('qe3upsq3bdc5rqrkv4tdid7361',1410961029,'__elgg_session|s:32:\"3efe100ff8060e6fdf3b9c49a99bc54b\";msg|a:0:{}'),('panv7okcokpg79lc074po9keh4',1410961423,'__elgg_session|s:32:\"cb8812c60cc89adbff6a3f3f6aecfa81\";msg|a:0:{}'),('r3ca4omui5p2onfc3ipeteob74',1410961497,'__elgg_session|s:32:\"d06aa47dcd970c327764ce1c0dfac7d3\";msg|a:0:{}sticky_forms|a:0:{}'),('jtessue1oc72704clhh8qg6m11',1410961600,'__elgg_session|s:32:\"558729e333a450d72c650b84f1e1d535\";msg|a:0:{}'),('d5haabs17j80on7dvqb5f473r4',1410961654,'__elgg_session|s:32:\"1210634d197461d7d5083d2951b102d6\";msg|a:0:{}'),('dp8g4a0pgbqj75feljt0t7cgj3',1410961694,'__elgg_session|s:32:\"a02b07cdbd56762a0e86c1c91ce87fb3\";msg|a:0:{}'),('k7c2kb31q92ltp1u9b4h8onqq4',1410962338,'__elgg_session|s:32:\"5a45b8169216c1473cdf05d19c2f54cf\";msg|a:0:{}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-17 11:27:26
