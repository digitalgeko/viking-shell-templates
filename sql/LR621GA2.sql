CREATE DATABASE  IF NOT EXISTS `${projectName}` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `${projectName}`;
-- MySQL dump 10.13  Distrib 5.5.16, for osx10.5 (i386)
--
-- Host: 127.0.0.1    Database: ${projectName}
-- ------------------------------------------------------
-- Server version 5.1.61

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
-- Table structure for table `bookmarksentry`
--

DROP TABLE IF EXISTS `bookmarksentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarksentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_1F90CA2D` (`companyId`),
  KEY `IX_276C8C13` (`companyId`,`status`),
  KEY `IX_5200100C` (`groupId`,`folderId`),
  KEY `IX_146382F2` (`groupId`,`folderId`,`status`),
  KEY `IX_416AD7D5` (`groupId`,`status`),
  KEY `IX_C78B61AC` (`groupId`,`userId`,`folderId`,`status`),
  KEY `IX_9D9CF70F` (`groupId`,`userId`,`status`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_B670BA39` (`uuid_`),
  KEY `IX_89BEDC4F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarksentry`
--

LOCK TABLES `bookmarksentry` WRITE;
/*!40000 ALTER TABLE `bookmarksentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutsetbranch`
--

DROP TABLE IF EXISTS `layoutsetbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutsetbranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`),
  UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`),
  KEY `IX_8FF5D6EA` (`groupId`),
  KEY `IX_C4079FD3` (`groupId`,`privateLayout`),
  KEY `IX_CCF0DA29` (`groupId`,`privateLayout`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutsetbranch`
--

LOCK TABLES `layoutsetbranch` WRITE;
/*!40000 ALTER TABLE `layoutsetbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutsetbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrulegroupinstance`
--

DROP TABLE IF EXISTS `mdrrulegroupinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrulegroupinstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`),
  UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`),
  UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`),
  KEY `IX_C95A08D8` (`classNameId`,`classPK`),
  KEY `IX_AFF28547` (`groupId`),
  KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_BF3E642B` (`ruleGroupId`),
  KEY `IX_B6A6BD91` (`uuid_`),
  KEY `IX_25C9D1F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrulegroupinstance`
--

LOCK TABLES `mdrrulegroupinstance` WRITE;
/*!40000 ALTER TABLE `mdrrulegroupinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroupinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QUARTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarksfolder`
--

DROP TABLE IF EXISTS `bookmarksfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarksfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_C27C9DBD` (`companyId`,`status`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_D16018A6` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_451E7AE3` (`uuid_`),
  KEY `IX_54F0ED65` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarksfolder`
--

LOCK TABLES `bookmarksfolder` WRITE;
/*!40000 ALTER TABLE `bookmarksfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbdiscussion`
--

DROP TABLE IF EXISTS `mbdiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbdiscussion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `discussionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  UNIQUE KEY `IX_F7AAC799` (`uuid_`,`groupId`),
  KEY `IX_79D0120B` (`classNameId`),
  KEY `IX_5477D431` (`uuid_`),
  KEY `IX_7E965757` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbdiscussion`
--

LOCK TABLES `mbdiscussion` WRITE;
/*!40000 ALTER TABLE `mbdiscussion` DISABLE KEYS */;
INSERT INTO `mbdiscussion` VALUES ('0cd7ba28-807e-428f-ab03-f27a94a520ea',10183,0,0,10161,'','2014-05-27 18:33:24','2014-05-27 18:33:24',10002,10178,10181),('c35223d1-72a2-4180-b2bc-e7e71449572f',10192,0,0,10161,'','2014-05-27 18:33:24','2014-05-27 18:33:24',10002,10187,10190),('9987f20f-966b-46d2-b52f-099db1672eb5',10329,0,0,10161,'','2014-05-27 18:33:29','2014-05-27 18:33:29',10002,10323,10326),('543f8d9a-92e0-43bc-b122-1672c5f5b460',10340,0,0,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',10002,10335,10338),('c449c9fd-34eb-4525-a8b9-f30c785c0566',10350,0,0,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',10002,10345,10348),('b51813bb-92c4-4909-98d6-ee7d0d203432',10369,0,0,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10002,10364,10367),('d5e6156a-5549-4dc1-b580-7a17890b57cf',10377,0,0,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10002,10372,10375),('5fa49750-6f33-4fa8-9107-bce62ddb3047',10395,0,0,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10002,10390,10393),('1c25b4cd-de57-46b8-8dfd-27d396ef8756',10404,0,0,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10002,10399,10402),('3b4f0b37-2b9e-4416-8132-4729780a277f',10412,0,0,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10002,10407,10410),('cbfd3b3c-f98c-48c1-a456-35952e3a02c2',10444,0,0,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',10002,10439,10442),('dc547ff8-df5f-44f0-b76a-ad40e1b7dbe0',10450,0,0,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',10002,10445,10448);
/*!40000 ALTER TABLE `mbdiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileshortcut`
--

DROP TABLE IF EXISTS `dlfileshortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileshortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_A4BB2E58` (`companyId`),
  KEY `IX_8571953E` (`companyId`,`status`),
  KEY `IX_B0051937` (`groupId`,`folderId`),
  KEY `IX_348DC3B2` (`groupId`,`folderId`,`active_`),
  KEY `IX_17EE3098` (`groupId`,`folderId`,`active_`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_4831EBE4` (`uuid_`),
  KEY `IX_29AE81C4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileshortcut`
--

LOCK TABLES `dlfileshortcut` WRITE;
/*!40000 ALTER TABLE `dlfileshortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileshortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingsstats`
--

DROP TABLE IF EXISTS `ratingsstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingsstats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingsstats`
--

LOCK TABLES `ratingsstats` WRITE;
/*!40000 ALTER TABLE `ratingsstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_orgs`
--

DROP TABLE IF EXISTS `users_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_orgs`
--

LOCK TABLES `users_orgs` WRITE;
/*!40000 ALTER TABLE `users_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsquestion`
--

DROP TABLE IF EXISTS `pollsquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsquestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_51F087F4` (`uuid_`),
  KEY `IX_F910BBB4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsquestion`
--

LOCK TABLES `pollsquestion` WRITE;
/*!40000 ALTER TABLE `pollsquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browsertracker`
--

DROP TABLE IF EXISTS `browsertracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `browsertracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browsertracker`
--

LOCK TABLES `browsertracker` WRITE;
/*!40000 ALTER TABLE `browsertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `browsertracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scframeworkversi_scproductvers`
--

DROP TABLE IF EXISTS `scframeworkversi_scproductvers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scframeworkversi_scproductvers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scframeworkversi_scproductvers`
--

LOCK TABLES `scframeworkversi_scproductvers` WRITE;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  UNIQUE KEY `IX_E118C537` (`uuid_`,`groupId`,`privateLayout`),
  KEY `IX_C7FBC998` (`companyId`),
  KEY `IX_C099D61A` (`groupId`),
  KEY `IX_705F5AA3` (`groupId`,`privateLayout`),
  KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`),
  KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`),
  KEY `IX_B529BFD3` (`layoutPrototypeUuid`),
  KEY `IX_39A18ECC` (`sourcePrototypeLayoutUuid`),
  KEY `IX_D0822724` (`uuid_`),
  KEY `IX_2CE4BE84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES ('46158109-4a0f-4d42-95f9-14df9763a7c5',10178,10175,10157,10161,'','2014-05-27 18:33:23','2014-05-27 18:33:23',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),('8e31e851-5b12-457b-8361-aec5b7fa86c6',10187,10184,10157,10161,'','2014-05-27 18:33:24','2014-05-27 18:33:24',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=47,\ncolumn-1=58,\n',0,'/home',0,0,'','','','','',0,'',0,''),('2b03d073-7479-465e-8d67-396383371231',10323,10320,10157,10161,'','2014-05-27 18:33:29','2014-05-27 18:33:29',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=148_INSTANCE_yiXdnmk60Fo1,114,\ncolumn-1=33,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('989e7288-1151-4c31-8387-6bf829f597c9',10335,10332,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_KTt1jET4YwVX\nlayout-template-id=2_columns_ii\ncolumn-2=3,101_INSTANCE_KTt1jET4YwVX,\ncolumn-1=141_INSTANCE_yIBnDDdGjH3B,122_INSTANCE_ptprDAyokEOf,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('54d0848d-3ee7-4fa6-9508-12cc139358b1',10345,10342,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_KTS1LefPiAlC,141_INSTANCE_wmY1vb7im0I2,\ncolumn-1=36,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('23691207-8113-4652-a4c6-1a6da7c4827e',10364,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=3,59_INSTANCE_Y7MRYkWzHvlj,180,101_INSTANCE_GqjYCYB6OpaH,\ncolumn-1=19,\n',0,'/home',0,0,'','','','','',0,'',0,''),('dc676455-e2af-4051-ae51-c033cf96eddf',10372,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_fXpzRlrXUwGr,148_INSTANCE_eAyHGCFOtVrg,\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',1,'',0,''),('db37002b-a87c-4306-a179-971d3bbf1d6d',10390,10379,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:32',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_4qjHCD615S28,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,''),('674b08c0-7d8c-4ed6-abdf-b24f5b21bc6f',10399,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-2=101_INSTANCE_CMQplGARDtvK,\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,''),('84869fc4-79d0-4efd-9d05-2d0826ba5bca',10407,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_TUNJpxgy39PK,\ncolumn-1=39_INSTANCE_4pVbMBL1LNCx,\n',0,'/news',0,0,'','','','','',2,'',0,''),('5407aba6-bb82-418a-9dda-b4e312117dc1',10439,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),('f92cadf2-fa88-43bb-a844-bfb55ff9287e',10445,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=82,3,\n',0,'/home',0,0,'','','','','',0,'',0,'');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_triggers`
--

DROP TABLE IF EXISTS `quartz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_triggers`
--

LOCK TABLES `quartz_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_C28B41DC` (`groupId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutset`
--

DROP TABLE IF EXISTS `layoutset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutset` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`),
  UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_A40B8BEC` (`groupId`),
  KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutset`
--

LOCK TABLES `layoutset` WRITE;
/*!40000 ALTER TABLE `layoutset` DISABLE KEYS */;
INSERT INTO `layoutset` VALUES (10176,10175,10157,'2014-05-27 18:33:23','2014-05-27 18:33:23',1,0,0,'classic','01','mobile','01','',1,'','',0),(10177,10175,10157,'2014-05-27 18:33:23','2014-05-27 18:33:23',0,0,0,'classic','01','mobile','01','',0,'','',0),(10185,10184,10157,'2014-05-27 18:33:24','2014-05-27 18:33:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(10186,10184,10157,'2014-05-27 18:33:24','2014-05-27 18:33:24',0,0,0,'classic','01','mobile','01','',1,'','',0),(10195,10194,10157,'2014-05-27 18:33:24','2014-05-27 18:33:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(10196,10194,10157,'2014-05-27 18:33:24','2014-05-27 18:33:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(10198,10197,10157,'2014-05-27 18:33:24','2014-05-27 18:33:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(10199,10197,10157,'2014-05-27 18:33:24','2014-05-27 18:33:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(10205,10204,10157,'2014-05-27 18:33:25','2014-05-27 18:36:21',1,0,0,'classic','01','mobile','01','',1,'','',0),(10206,10204,10157,'2014-05-27 18:33:25','2014-05-27 18:36:21',0,0,0,'classic','01','mobile','01','',1,'','',0),(10321,10320,10157,'2014-05-27 18:33:29','2014-05-27 18:33:29',1,0,0,'classic','01','mobile','01','',1,'','',0),(10322,10320,10157,'2014-05-27 18:33:29','2014-05-27 18:33:29',0,0,0,'classic','01','mobile','01','',0,'','',0),(10333,10332,10157,'2014-05-27 18:33:30','2014-05-27 18:33:30',1,0,0,'classic','01','mobile','01','',1,'','',0),(10334,10332,10157,'2014-05-27 18:33:30','2014-05-27 18:33:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10343,10342,10157,'2014-05-27 18:33:30','2014-05-27 18:33:30',1,0,0,'classic','01','mobile','01','',1,'','',0),(10344,10342,10157,'2014-05-27 18:33:30','2014-05-27 18:33:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10354,10353,10157,'2014-05-27 18:33:30','2014-05-27 18:33:31',1,0,0,'classic','01','mobile','01','',2,'','',0),(10355,10353,10157,'2014-05-27 18:33:30','2014-05-27 18:33:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10380,10379,10157,'2014-05-27 18:33:31','2014-05-27 18:33:32',1,0,0,'classic','01','mobile','01','',3,'','',0),(10381,10379,10157,'2014-05-27 18:33:31','2014-05-27 18:33:31',0,0,0,'classic','01','mobile','01','',0,'','',0);
/*!40000 ALTER TABLE `layoutset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentries_assettags`
--

DROP TABLE IF EXISTS `assetentries_assettags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentries_assettags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentries_assettags`
--

LOCK TABLES `assetentries_assettags` WRITE;
/*!40000 ALTER TABLE `assetentries_assettags` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assettags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmcontent`
--

DROP TABLE IF EXISTS `ddmcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmcontent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_AE4B50C2` (`uuid_`),
  KEY `IX_3A9C0626` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmcontent`
--

LOCK TABLES `ddmcontent` WRITE;
/*!40000 ALTER TABLE `ddmcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddmcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceblockpermission`
--

DROP TABLE IF EXISTS `resourceblockpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceblockpermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_4AB3756` (`resourceBlockId`),
  KEY `IX_20A2E3D9` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceblockpermission`
--

LOCK TABLES `resourceblockpermission` WRITE;
/*!40000 ALTER TABLE `resourceblockpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceblockpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileversion`
--

DROP TABLE IF EXISTS `dlfileversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileversion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_F389330E` (`companyId`),
  KEY `IX_A0A283F4` (`companyId`,`status`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_FFB3395C` (`mimeType`),
  KEY `IX_4BFABB9A` (`uuid_`),
  KEY `IX_95E9E44E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileversion`
--

LOCK TABLES `dlfileversion` WRITE;
/*!40000 ALTER TABLE `dlfileversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductscreenshot`
--

DROP TABLE IF EXISTS `scproductscreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductscreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_467956FD` (`productEntryId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductscreenshot`
--

LOCK TABLES `scproductscreenshot` WRITE;
/*!40000 ALTER TABLE `scproductscreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductscreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceaction`
--

DROP TABLE IF EXISTS `resourceaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceaction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`),
  KEY `IX_81F2DB09` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceaction`
--

LOCK TABLES `resourceaction` WRITE;
/*!40000 ALTER TABLE `resourceaction` DISABLE KEYS */;
INSERT INTO `resourceaction` VALUES (1,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(2,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(3,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(4,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(5,'com.liferay.portal.model.Team','DELETE',4),(6,'com.liferay.portal.model.Team','PERMISSIONS',8),(7,'com.liferay.portal.model.Team','UPDATE',16),(8,'com.liferay.portal.model.Team','VIEW',1),(9,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(10,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(11,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(12,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(13,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(14,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(15,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(16,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(17,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(18,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(19,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(20,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(21,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(22,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(23,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(24,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(25,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(26,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(27,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(28,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(29,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(30,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(31,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(32,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(33,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(34,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(35,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(36,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(37,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(38,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(39,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(40,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(41,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(42,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(43,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(44,'com.liferay.portlet.bookmarks','SUBSCRIBE',16),(45,'com.liferay.portlet.bookmarks','VIEW',1),(46,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(47,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(48,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(49,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(50,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(51,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(52,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(53,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(54,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(55,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(56,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(57,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(58,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(59,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(60,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(61,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(62,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(63,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(64,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(65,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(66,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(67,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(68,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(69,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(70,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(71,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(72,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(73,'com.liferay.portlet.documentlibrary','SUBSCRIBE',256),(74,'com.liferay.portlet.documentlibrary','UPDATE',512),(75,'com.liferay.portlet.documentlibrary','VIEW',1),(76,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(77,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(78,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(79,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(80,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(81,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(82,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(83,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(84,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(85,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(86,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(87,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(88,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(89,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',2),(90,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',4),(91,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',8),(92,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(93,'com.liferay.portlet.journal','ADD_ARTICLE',2),(94,'com.liferay.portlet.journal','ADD_FEED',4),(95,'com.liferay.portlet.journal','ADD_FOLDER',8),(96,'com.liferay.portlet.journal','ADD_STRUCTURE',16),(97,'com.liferay.portlet.journal','ADD_TEMPLATE',32),(98,'com.liferay.portlet.journal','SUBSCRIBE',64),(99,'com.liferay.portlet.journal','VIEW',1),(100,'com.liferay.portlet.journal','PERMISSIONS',128),(101,'com.liferay.portlet.calendar','ADD_EVENT',2),(102,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(103,'com.liferay.portlet.calendar','PERMISSIONS',8),(104,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(105,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(106,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(107,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(108,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(109,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(110,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(111,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(112,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(113,'com.liferay.portal.model.Organization','ADD_ORGANIZATION',2),(114,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',4),(115,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',8),(116,'com.liferay.portal.model.Organization','DELETE',16),(117,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',32),(118,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',64),(119,'com.liferay.portal.model.Organization','MANAGE_USERS',128),(120,'com.liferay.portal.model.Organization','PERMISSIONS',256),(121,'com.liferay.portal.model.Organization','UPDATE',512),(122,'com.liferay.portal.model.Organization','VIEW',1),(123,'com.liferay.portal.model.Organization','VIEW_MEMBERS',1024),(124,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(125,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(126,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(127,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(128,'com.liferay.portlet.journal.model.JournalFolder','ACCESS',2),(129,'com.liferay.portlet.journal.model.JournalFolder','ADD_ARTICLE',4),(130,'com.liferay.portlet.journal.model.JournalFolder','ADD_SUBFOLDER',8),(131,'com.liferay.portlet.journal.model.JournalFolder','DELETE',16),(132,'com.liferay.portlet.journal.model.JournalFolder','PERMISSIONS',32),(133,'com.liferay.portlet.journal.model.JournalFolder','UPDATE',64),(134,'com.liferay.portlet.journal.model.JournalFolder','VIEW',1),(135,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(136,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(137,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(138,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(139,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(140,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(141,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(142,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(143,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(144,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(145,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(146,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(147,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(148,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(149,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(150,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(151,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(152,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(153,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(154,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(155,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(156,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(157,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(158,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(159,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(160,'com.liferay.portlet.bookmarks.model.BookmarksFolder','SUBSCRIBE',64),(161,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',128),(162,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(163,'com.liferay.portal.model.Group','ADD_COMMUNITY',2),(164,'com.liferay.portal.model.Group','ADD_LAYOUT',4),(165,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',8),(166,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',16),(167,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',32),(168,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',64),(169,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',128),(170,'com.liferay.portal.model.Group','DELETE',256),(171,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',512),(172,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',1024),(173,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',2048),(174,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',4096),(175,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',8192),(176,'com.liferay.portal.model.Group','MANAGE_STAGING',16384),(177,'com.liferay.portal.model.Group','MANAGE_SUBGROUPS',32768),(178,'com.liferay.portal.model.Group','MANAGE_TEAMS',65536),(179,'com.liferay.portal.model.Group','PERMISSIONS',131072),(180,'com.liferay.portal.model.Group','PREVIEW_IN_DEVICE',262144),(181,'com.liferay.portal.model.Group','PUBLISH_STAGING',524288),(182,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',1048576),(183,'com.liferay.portal.model.Group','UPDATE',2097152),(184,'com.liferay.portal.model.Group','VIEW',1),(185,'com.liferay.portal.model.Group','VIEW_MEMBERS',4194304),(186,'com.liferay.portal.model.Group','VIEW_SITE_ADMINISTRATION',8388608),(187,'com.liferay.portal.model.Group','VIEW_STAGING',16777216),(188,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(189,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(190,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(191,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(192,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(193,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(194,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(195,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(196,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(197,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(198,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(199,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(200,'com.liferay.portal.model.Layout','DELETE',32),(201,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(202,'com.liferay.portal.model.Layout','PERMISSIONS',128),(203,'com.liferay.portal.model.Layout','UPDATE',256),(204,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(205,'com.liferay.portal.model.Layout','VIEW',1),(206,'com.liferay.portlet.asset','ADD_TAG',2),(207,'com.liferay.portlet.asset','PERMISSIONS',4),(208,'com.liferay.portlet.asset','ADD_CATEGORY',8),(209,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(210,'com.liferay.portal.model.LayoutBranch','DELETE',2),(211,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(212,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(213,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(214,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(215,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(216,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(217,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(218,'com.liferay.portlet.messageboards','ADD_FILE',4),(219,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(220,'com.liferay.portlet.messageboards','BAN_USER',16),(221,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(222,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(223,'com.liferay.portlet.messageboards','PERMISSIONS',128),(224,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(225,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(226,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(227,'com.liferay.portlet.messageboards','VIEW',1),(228,'com.liferay.portlet.polls','ADD_QUESTION',2),(229,'com.liferay.portlet.polls','PERMISSIONS',4),(230,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(231,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(232,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(233,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(234,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(235,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(236,'com.liferay.portlet.bookmarks.model.BookmarksEntry','SUBSCRIBE',8),(237,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',16),(238,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(239,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(240,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(241,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(242,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(243,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(244,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(245,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(246,'com.liferay.portal.model.User','DELETE',2),(247,'com.liferay.portal.model.User','IMPERSONATE',4),(248,'com.liferay.portal.model.User','PERMISSIONS',8),(249,'com.liferay.portal.model.User','UPDATE',16),(250,'com.liferay.portal.model.User','VIEW',1),(251,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(252,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(253,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(254,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(255,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(256,'com.liferay.portlet.shopping','ADD_ITEM',4),(257,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(258,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(259,'com.liferay.portlet.shopping','PERMISSIONS',32),(260,'com.liferay.portlet.shopping','VIEW',1),(261,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(262,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(263,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(264,'com.liferay.portlet.wiki','ADD_NODE',2),(265,'com.liferay.portlet.wiki','PERMISSIONS',4),(266,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(267,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(268,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(269,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(270,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(271,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(272,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(273,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(274,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(275,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(276,'com.liferay.portal.model.UserGroup','DELETE',4),(277,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(278,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(279,'com.liferay.portal.model.UserGroup','UPDATE',32),(280,'com.liferay.portal.model.UserGroup','VIEW',1),(281,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(282,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(283,'com.liferay.portal.model.Role','DELETE',8),(284,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(285,'com.liferay.portal.model.Role','PERMISSIONS',32),(286,'com.liferay.portal.model.Role','UPDATE',64),(287,'com.liferay.portal.model.Role','VIEW',1),(288,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(289,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(290,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(291,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(292,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(293,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(294,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(295,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(296,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(297,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(298,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(299,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(300,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(301,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(302,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(303,'com.liferay.portlet.mobiledevicerules','VIEW',1),(304,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(305,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(306,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(307,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(308,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(309,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(310,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(311,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(312,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(313,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(314,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(315,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(316,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(317,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(318,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(319,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(320,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(321,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(322,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(323,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(324,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(325,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(326,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(327,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(328,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(329,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(330,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(331,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(332,'com.liferay.portlet.messageboards.model.MBThread','VIEW',1),(333,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(334,'com.liferay.portlet.blogs','ADD_ENTRY',2),(335,'com.liferay.portlet.blogs','PERMISSIONS',4),(336,'com.liferay.portlet.blogs','SUBSCRIBE',8),(337,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(338,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(339,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(340,'com.liferay.portlet.documentlibrary.model.DLFileEntry','OVERRIDE_CHECKOUT',16),(341,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',32),(342,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',64),(343,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',128),(344,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(345,'98','ACCESS_IN_CONTROL_PANEL',2),(346,'98','ADD_TO_PAGE',4),(347,'98','CONFIGURATION',8),(348,'98','VIEW',1),(349,'98','PERMISSIONS',16),(350,'183','VIEW',1),(351,'183','ADD_TO_PAGE',2),(352,'183','ACCESS_IN_CONTROL_PANEL',4),(353,'183','CONFIGURATION',8),(354,'183','PERMISSIONS',16),(355,'66','VIEW',1),(356,'66','ADD_TO_PAGE',2),(357,'66','ACCESS_IN_CONTROL_PANEL',4),(358,'66','CONFIGURATION',8),(359,'66','PERMISSIONS',16),(360,'156','VIEW',1),(361,'156','ADD_TO_PAGE',2),(362,'156','ACCESS_IN_CONTROL_PANEL',4),(363,'156','CONFIGURATION',8),(364,'156','PERMISSIONS',16),(365,'180','VIEW',1),(366,'180','ADD_TO_PAGE',2),(367,'180','ACCESS_IN_CONTROL_PANEL',4),(368,'180','CONFIGURATION',8),(369,'180','PERMISSIONS',16),(370,'152','ACCESS_IN_CONTROL_PANEL',2),(371,'152','CONFIGURATION',4),(372,'152','VIEW',1),(373,'152','PERMISSIONS',8),(374,'27','VIEW',1),(375,'27','ADD_TO_PAGE',2),(376,'27','ACCESS_IN_CONTROL_PANEL',4),(377,'27','CONFIGURATION',8),(378,'27','PERMISSIONS',16),(379,'88','VIEW',1),(380,'88','ADD_TO_PAGE',2),(381,'88','ACCESS_IN_CONTROL_PANEL',4),(382,'88','CONFIGURATION',8),(383,'88','PERMISSIONS',16),(384,'134','ACCESS_IN_CONTROL_PANEL',2),(385,'134','CONFIGURATION',4),(386,'134','VIEW',1),(387,'134','PERMISSIONS',8),(388,'130','ACCESS_IN_CONTROL_PANEL',2),(389,'130','CONFIGURATION',4),(390,'130','VIEW',1),(391,'130','PERMISSIONS',8),(392,'122','ADD_PORTLET_DISPLAY_TEMPLATE',2),(393,'122','CONFIGURATION',4),(394,'122','VIEW',1),(395,'122','ADD_TO_PAGE',8),(396,'122','PERMISSIONS',16),(397,'122','ACCESS_IN_CONTROL_PANEL',32),(398,'36','ADD_PORTLET_DISPLAY_TEMPLATE',2),(399,'36','ADD_TO_PAGE',4),(400,'36','CONFIGURATION',8),(401,'36','VIEW',1),(402,'36','PERMISSIONS',16),(403,'36','ACCESS_IN_CONTROL_PANEL',32),(404,'26','VIEW',1),(405,'26','ADD_TO_PAGE',2),(406,'26','ACCESS_IN_CONTROL_PANEL',4),(407,'26','CONFIGURATION',8),(408,'26','PERMISSIONS',16),(409,'190','VIEW',1),(410,'190','ADD_TO_PAGE',2),(411,'190','ACCESS_IN_CONTROL_PANEL',4),(412,'190','CONFIGURATION',8),(413,'190','PERMISSIONS',16),(414,'175','VIEW',1),(415,'175','ADD_TO_PAGE',2),(416,'175','ACCESS_IN_CONTROL_PANEL',4),(417,'175','CONFIGURATION',8),(418,'175','PERMISSIONS',16),(419,'64','VIEW',1),(420,'64','ADD_TO_PAGE',2),(421,'64','ACCESS_IN_CONTROL_PANEL',4),(422,'64','CONFIGURATION',8),(423,'64','PERMISSIONS',16),(424,'153','ACCESS_IN_CONTROL_PANEL',2),(425,'153','ADD_TO_PAGE',4),(426,'153','CONFIGURATION',8),(427,'153','VIEW',1),(428,'153','PERMISSIONS',16),(429,'182','VIEW',1),(430,'182','ADD_TO_PAGE',2),(431,'182','ACCESS_IN_CONTROL_PANEL',4),(432,'182','CONFIGURATION',8),(433,'182','PERMISSIONS',16),(434,'129','ACCESS_IN_CONTROL_PANEL',2),(435,'129','CONFIGURATION',4),(436,'129','VIEW',1),(437,'129','PERMISSIONS',8),(438,'179','ACCESS_IN_CONTROL_PANEL',2),(439,'179','CONFIGURATION',4),(440,'179','VIEW',1),(441,'179','PERMISSIONS',8),(442,'173','VIEW',1),(443,'173','ADD_TO_PAGE',2),(444,'173','ACCESS_IN_CONTROL_PANEL',4),(445,'173','CONFIGURATION',8),(446,'173','PERMISSIONS',16),(447,'100','VIEW',1),(448,'100','ADD_TO_PAGE',2),(449,'100','ACCESS_IN_CONTROL_PANEL',4),(450,'100','CONFIGURATION',8),(451,'100','PERMISSIONS',16),(452,'157','ACCESS_IN_CONTROL_PANEL',2),(453,'157','CONFIGURATION',4),(454,'157','VIEW',1),(455,'157','PERMISSIONS',8),(456,'19','ADD_TO_PAGE',2),(457,'19','CONFIGURATION',4),(458,'19','VIEW',1),(459,'19','PERMISSIONS',8),(460,'19','ACCESS_IN_CONTROL_PANEL',16),(461,'160','VIEW',1),(462,'160','ADD_TO_PAGE',2),(463,'160','ACCESS_IN_CONTROL_PANEL',4),(464,'160','CONFIGURATION',8),(465,'160','PERMISSIONS',16),(466,'181','VIEW',1),(467,'181','ADD_TO_PAGE',2),(468,'181','ACCESS_IN_CONTROL_PANEL',4),(469,'181','CONFIGURATION',8),(470,'181','PERMISSIONS',16),(471,'128','ACCESS_IN_CONTROL_PANEL',2),(472,'128','CONFIGURATION',4),(473,'128','VIEW',1),(474,'128','PERMISSIONS',8),(475,'86','VIEW',1),(476,'86','ADD_TO_PAGE',2),(477,'86','ACCESS_IN_CONTROL_PANEL',4),(478,'86','CONFIGURATION',8),(479,'86','PERMISSIONS',16),(480,'154','ACCESS_IN_CONTROL_PANEL',2),(481,'154','CONFIGURATION',4),(482,'154','VIEW',1),(483,'154','PERMISSIONS',8),(484,'148','VIEW',1),(485,'148','ADD_TO_PAGE',2),(486,'148','ACCESS_IN_CONTROL_PANEL',4),(487,'148','CONFIGURATION',8),(488,'148','PERMISSIONS',16),(489,'11','ADD_TO_PAGE',2),(490,'11','CONFIGURATION',4),(491,'11','VIEW',1),(492,'11','PERMISSIONS',8),(493,'11','ACCESS_IN_CONTROL_PANEL',16),(494,'29','ADD_TO_PAGE',2),(495,'29','CONFIGURATION',4),(496,'29','VIEW',1),(497,'29','PERMISSIONS',8),(498,'29','ACCESS_IN_CONTROL_PANEL',16),(499,'174','VIEW',1),(500,'174','ADD_TO_PAGE',2),(501,'174','ACCESS_IN_CONTROL_PANEL',4),(502,'174','CONFIGURATION',8),(503,'174','PERMISSIONS',16),(504,'158','ACCESS_IN_CONTROL_PANEL',2),(505,'158','ADD_TO_PAGE',4),(506,'158','CONFIGURATION',8),(507,'158','VIEW',1),(508,'158','PERMISSIONS',16),(509,'178','CONFIGURATION',2),(510,'178','VIEW',1),(511,'178','ADD_TO_PAGE',4),(512,'178','PERMISSIONS',8),(513,'178','ACCESS_IN_CONTROL_PANEL',16),(514,'124','VIEW',1),(515,'124','ADD_TO_PAGE',2),(516,'124','ACCESS_IN_CONTROL_PANEL',4),(517,'124','CONFIGURATION',8),(518,'124','PERMISSIONS',16),(519,'58','ADD_TO_PAGE',2),(520,'58','CONFIGURATION',4),(521,'58','VIEW',1),(522,'58','PERMISSIONS',8),(523,'58','ACCESS_IN_CONTROL_PANEL',16),(524,'97','VIEW',1),(525,'97','ADD_TO_PAGE',2),(526,'97','ACCESS_IN_CONTROL_PANEL',4),(527,'97','CONFIGURATION',8),(528,'97','PERMISSIONS',16),(529,'71','ADD_TO_PAGE',2),(530,'71','CONFIGURATION',4),(531,'71','VIEW',1),(532,'71','PERMISSIONS',8),(533,'71','ACCESS_IN_CONTROL_PANEL',16),(534,'39','VIEW',1),(535,'39','ADD_TO_PAGE',2),(536,'39','ACCESS_IN_CONTROL_PANEL',4),(537,'39','CONFIGURATION',8),(538,'39','PERMISSIONS',16),(539,'185','VIEW',1),(540,'185','ADD_TO_PAGE',2),(541,'185','ACCESS_IN_CONTROL_PANEL',4),(542,'185','CONFIGURATION',8),(543,'185','PERMISSIONS',16),(544,'170','VIEW',1),(545,'170','ADD_TO_PAGE',2),(546,'170','ACCESS_IN_CONTROL_PANEL',4),(547,'170','CONFIGURATION',8),(548,'170','PERMISSIONS',16),(549,'85','ADD_TO_PAGE',2),(550,'85','CONFIGURATION',4),(551,'85','VIEW',1),(552,'85','PERMISSIONS',8),(553,'85','ADD_PORTLET_DISPLAY_TEMPLATE',16),(554,'85','ACCESS_IN_CONTROL_PANEL',32),(555,'118','VIEW',1),(556,'118','ADD_TO_PAGE',2),(557,'118','ACCESS_IN_CONTROL_PANEL',4),(558,'118','CONFIGURATION',8),(559,'118','PERMISSIONS',16),(560,'107','VIEW',1),(561,'107','ADD_TO_PAGE',2),(562,'107','ACCESS_IN_CONTROL_PANEL',4),(563,'107','CONFIGURATION',8),(564,'107','PERMISSIONS',16),(565,'30','VIEW',1),(566,'30','ADD_TO_PAGE',2),(567,'30','ACCESS_IN_CONTROL_PANEL',4),(568,'30','CONFIGURATION',8),(569,'30','PERMISSIONS',16),(570,'184','ADD_TO_PAGE',2),(571,'184','CONFIGURATION',4),(572,'184','VIEW',1),(573,'184','PERMISSIONS',8),(574,'184','ACCESS_IN_CONTROL_PANEL',16),(575,'147','ACCESS_IN_CONTROL_PANEL',2),(576,'147','CONFIGURATION',4),(577,'147','VIEW',1),(578,'147','PERMISSIONS',8),(579,'48','VIEW',1),(580,'48','ADD_TO_PAGE',2),(581,'48','ACCESS_IN_CONTROL_PANEL',4),(582,'48','CONFIGURATION',8),(583,'48','PERMISSIONS',16),(584,'125','ACCESS_IN_CONTROL_PANEL',2),(585,'125','CONFIGURATION',4),(586,'125','EXPORT_USER',8),(587,'125','VIEW',1),(588,'125','PERMISSIONS',16),(589,'161','ACCESS_IN_CONTROL_PANEL',2),(590,'161','CONFIGURATION',4),(591,'161','VIEW',1),(592,'161','PERMISSIONS',8),(593,'146','ACCESS_IN_CONTROL_PANEL',2),(594,'146','CONFIGURATION',4),(595,'146','VIEW',1),(596,'146','PERMISSIONS',8),(597,'62','VIEW',1),(598,'62','ADD_TO_PAGE',2),(599,'62','ACCESS_IN_CONTROL_PANEL',4),(600,'62','CONFIGURATION',8),(601,'62','PERMISSIONS',16),(602,'162','ACCESS_IN_CONTROL_PANEL',2),(603,'162','CONFIGURATION',4),(604,'162','VIEW',1),(605,'162','PERMISSIONS',8),(606,'176','VIEW',1),(607,'176','ADD_TO_PAGE',2),(608,'176','ACCESS_IN_CONTROL_PANEL',4),(609,'176','CONFIGURATION',8),(610,'176','PERMISSIONS',16),(611,'172','VIEW',1),(612,'172','ADD_TO_PAGE',2),(613,'172','ACCESS_IN_CONTROL_PANEL',4),(614,'172','CONFIGURATION',8),(615,'172','PERMISSIONS',16),(616,'187','ADD_TO_PAGE',2),(617,'187','CONFIGURATION',4),(618,'187','VIEW',1),(619,'187','PERMISSIONS',8),(620,'187','ACCESS_IN_CONTROL_PANEL',16),(621,'108','VIEW',1),(622,'108','ADD_TO_PAGE',2),(623,'108','ACCESS_IN_CONTROL_PANEL',4),(624,'108','CONFIGURATION',8),(625,'108','PERMISSIONS',16),(626,'139','ACCESS_IN_CONTROL_PANEL',2),(627,'139','ADD_EXPANDO',4),(628,'139','CONFIGURATION',8),(629,'139','VIEW',1),(630,'139','PERMISSIONS',16),(631,'84','ADD_ENTRY',2),(632,'84','ADD_TO_PAGE',4),(633,'84','CONFIGURATION',8),(634,'84','VIEW',1),(635,'84','PERMISSIONS',16),(636,'84','ACCESS_IN_CONTROL_PANEL',32),(637,'101','ADD_PORTLET_DISPLAY_TEMPLATE',2),(638,'101','ADD_TO_PAGE',4),(639,'101','CONFIGURATION',8),(640,'101','SUBSCRIBE',16),(641,'101','VIEW',1),(642,'101','PERMISSIONS',32),(643,'101','ACCESS_IN_CONTROL_PANEL',64),(644,'121','VIEW',1),(645,'121','ADD_TO_PAGE',2),(646,'121','ACCESS_IN_CONTROL_PANEL',4),(647,'121','CONFIGURATION',8),(648,'121','PERMISSIONS',16),(649,'49','VIEW',1),(650,'49','ADD_TO_PAGE',2),(651,'49','ACCESS_IN_CONTROL_PANEL',4),(652,'49','CONFIGURATION',8),(653,'49','PERMISSIONS',16),(654,'143','VIEW',1),(655,'143','ADD_TO_PAGE',2),(656,'143','ACCESS_IN_CONTROL_PANEL',4),(657,'143','CONFIGURATION',8),(658,'143','PERMISSIONS',16),(659,'167','ACCESS_IN_CONTROL_PANEL',2),(660,'167','ADD_TO_PAGE',4),(661,'167','CONFIGURATION',8),(662,'167','VIEW',1),(663,'167','PERMISSIONS',16),(664,'77','VIEW',1),(665,'77','ADD_TO_PAGE',2),(666,'77','ACCESS_IN_CONTROL_PANEL',4),(667,'77','CONFIGURATION',8),(668,'77','PERMISSIONS',16),(669,'115','VIEW',1),(670,'115','ADD_TO_PAGE',2),(671,'115','ACCESS_IN_CONTROL_PANEL',4),(672,'115','CONFIGURATION',8),(673,'115','PERMISSIONS',16),(674,'56','ADD_TO_PAGE',2),(675,'56','CONFIGURATION',4),(676,'56','VIEW',1),(677,'56','PERMISSIONS',8),(678,'56','ACCESS_IN_CONTROL_PANEL',16),(679,'142','VIEW',1),(680,'142','ADD_TO_PAGE',2),(681,'142','ACCESS_IN_CONTROL_PANEL',4),(682,'142','CONFIGURATION',8),(683,'142','PERMISSIONS',16),(684,'16','PREFERENCES',2),(685,'16','GUEST_PREFERENCES',4),(686,'16','VIEW',1),(687,'16','ADD_TO_PAGE',8),(688,'16','ACCESS_IN_CONTROL_PANEL',16),(689,'16','CONFIGURATION',32),(690,'16','PERMISSIONS',64),(691,'3','VIEW',1),(692,'3','ADD_TO_PAGE',2),(693,'3','ACCESS_IN_CONTROL_PANEL',4),(694,'3','CONFIGURATION',8),(695,'3','PERMISSIONS',16),(696,'23','VIEW',1),(697,'23','ADD_TO_PAGE',2),(698,'23','ACCESS_IN_CONTROL_PANEL',4),(699,'23','CONFIGURATION',8),(700,'23','PERMISSIONS',16),(701,'20','ACCESS_IN_CONTROL_PANEL',2),(702,'20','ADD_PORTLET_DISPLAY_TEMPLATE',4),(703,'20','ADD_TO_PAGE',8),(704,'20','CONFIGURATION',16),(705,'20','VIEW',1),(706,'20','PERMISSIONS',32),(707,'145','VIEW',1),(708,'145','ADD_TO_PAGE',2),(709,'145','ACCESS_IN_CONTROL_PANEL',4),(710,'145','CONFIGURATION',8),(711,'145','PERMISSIONS',16),(712,'83','ADD_ENTRY',2),(713,'83','ADD_TO_PAGE',4),(714,'83','CONFIGURATION',8),(715,'83','VIEW',1),(716,'83','PERMISSIONS',16),(717,'83','ACCESS_IN_CONTROL_PANEL',32),(718,'194','VIEW',1),(719,'194','ADD_TO_PAGE',2),(720,'194','ACCESS_IN_CONTROL_PANEL',4),(721,'194','CONFIGURATION',8),(722,'194','PERMISSIONS',16),(723,'186','ADD_TO_PAGE',2),(724,'186','CONFIGURATION',4),(725,'186','VIEW',1),(726,'186','PERMISSIONS',8),(727,'186','ACCESS_IN_CONTROL_PANEL',16),(728,'164','VIEW',1),(729,'164','ADD_TO_PAGE',2),(730,'164','ACCESS_IN_CONTROL_PANEL',4),(731,'164','CONFIGURATION',8),(732,'164','PERMISSIONS',16),(733,'99','ACCESS_IN_CONTROL_PANEL',2),(734,'99','CONFIGURATION',4),(735,'99','VIEW',1),(736,'99','PERMISSIONS',8),(737,'70','VIEW',1),(738,'70','ADD_TO_PAGE',2),(739,'70','ACCESS_IN_CONTROL_PANEL',4),(740,'70','CONFIGURATION',8),(741,'70','PERMISSIONS',16),(742,'141','ADD_PORTLET_DISPLAY_TEMPLATE',2),(743,'141','CONFIGURATION',4),(744,'141','VIEW',1),(745,'141','ADD_TO_PAGE',8),(746,'141','PERMISSIONS',16),(747,'141','ACCESS_IN_CONTROL_PANEL',32),(748,'9','VIEW',1),(749,'9','ADD_TO_PAGE',2),(750,'9','ACCESS_IN_CONTROL_PANEL',4),(751,'9','CONFIGURATION',8),(752,'9','PERMISSIONS',16),(753,'137','ACCESS_IN_CONTROL_PANEL',2),(754,'137','CONFIGURATION',4),(755,'137','VIEW',1),(756,'137','PERMISSIONS',8),(757,'28','ACCESS_IN_CONTROL_PANEL',2),(758,'28','ADD_TO_PAGE',4),(759,'28','CONFIGURATION',8),(760,'28','VIEW',1),(761,'28','PERMISSIONS',16),(762,'133','VIEW',1),(763,'133','ADD_TO_PAGE',2),(764,'133','ACCESS_IN_CONTROL_PANEL',4),(765,'133','CONFIGURATION',8),(766,'133','PERMISSIONS',16),(767,'116','VIEW',1),(768,'116','ADD_TO_PAGE',2),(769,'116','ACCESS_IN_CONTROL_PANEL',4),(770,'116','CONFIGURATION',8),(771,'116','PERMISSIONS',16),(772,'47','VIEW',1),(773,'47','ADD_TO_PAGE',2),(774,'47','ACCESS_IN_CONTROL_PANEL',4),(775,'47','CONFIGURATION',8),(776,'47','PERMISSIONS',16),(777,'15','ACCESS_IN_CONTROL_PANEL',2),(778,'15','ADD_TO_PAGE',4),(779,'15','CONFIGURATION',8),(780,'15','VIEW',1),(781,'15','PERMISSIONS',16),(782,'82','VIEW',1),(783,'82','ADD_TO_PAGE',2),(784,'82','ACCESS_IN_CONTROL_PANEL',4),(785,'82','CONFIGURATION',8),(786,'82','PERMISSIONS',16),(787,'103','VIEW',1),(788,'103','ADD_TO_PAGE',2),(789,'103','ACCESS_IN_CONTROL_PANEL',4),(790,'103','CONFIGURATION',8),(791,'103','PERMISSIONS',16),(792,'151','ACCESS_IN_CONTROL_PANEL',2),(793,'151','CONFIGURATION',4),(794,'151','VIEW',1),(795,'151','PERMISSIONS',8),(796,'140','ACCESS_IN_CONTROL_PANEL',2),(797,'140','CONFIGURATION',4),(798,'140','VIEW',1),(799,'140','PERMISSIONS',8),(800,'54','VIEW',1),(801,'54','ADD_TO_PAGE',2),(802,'54','ACCESS_IN_CONTROL_PANEL',4),(803,'54','CONFIGURATION',8),(804,'54','PERMISSIONS',16),(805,'169','VIEW',1),(806,'169','ADD_TO_PAGE',2),(807,'169','ACCESS_IN_CONTROL_PANEL',4),(808,'169','CONFIGURATION',8),(809,'169','PERMISSIONS',16),(810,'132','ACCESS_IN_CONTROL_PANEL',2),(811,'132','CONFIGURATION',4),(812,'132','VIEW',1),(813,'132','PERMISSIONS',8),(814,'34','ADD_TO_PAGE',2),(815,'34','CONFIGURATION',4),(816,'34','VIEW',1),(817,'34','PERMISSIONS',8),(818,'34','ACCESS_IN_CONTROL_PANEL',16),(819,'61','VIEW',1),(820,'61','ADD_TO_PAGE',2),(821,'61','ACCESS_IN_CONTROL_PANEL',4),(822,'61','CONFIGURATION',8),(823,'61','PERMISSIONS',16),(824,'73','ADD_TO_PAGE',2),(825,'73','CONFIGURATION',4),(826,'73','VIEW',1),(827,'73','PERMISSIONS',8),(828,'73','ACCESS_IN_CONTROL_PANEL',16),(829,'193','VIEW',1),(830,'193','ADD_TO_PAGE',2),(831,'193','ACCESS_IN_CONTROL_PANEL',4),(832,'193','CONFIGURATION',8),(833,'193','PERMISSIONS',16),(834,'127','VIEW',1),(835,'127','ADD_TO_PAGE',2),(836,'127','ACCESS_IN_CONTROL_PANEL',4),(837,'127','CONFIGURATION',8),(838,'127','PERMISSIONS',16),(839,'50','VIEW',1),(840,'50','ADD_TO_PAGE',2),(841,'50','ACCESS_IN_CONTROL_PANEL',4),(842,'50','CONFIGURATION',8),(843,'50','PERMISSIONS',16),(844,'31','VIEW',1),(845,'31','ADD_TO_PAGE',2),(846,'31','ACCESS_IN_CONTROL_PANEL',4),(847,'31','CONFIGURATION',8),(848,'31','PERMISSIONS',16),(849,'165','VIEW',1),(850,'165','ADD_TO_PAGE',2),(851,'165','ACCESS_IN_CONTROL_PANEL',4),(852,'165','CONFIGURATION',8),(853,'165','PERMISSIONS',16),(854,'25','ACCESS_IN_CONTROL_PANEL',2),(855,'25','CONFIGURATION',4),(856,'25','VIEW',1),(857,'25','PERMISSIONS',8),(858,'192','VIEW',1),(859,'192','ADD_TO_PAGE',2),(860,'192','ACCESS_IN_CONTROL_PANEL',4),(861,'192','CONFIGURATION',8),(862,'192','PERMISSIONS',16),(863,'166','ACCESS_IN_CONTROL_PANEL',2),(864,'166','ADD_TO_PAGE',4),(865,'166','CONFIGURATION',8),(866,'166','VIEW',1),(867,'166','PERMISSIONS',16),(868,'90','ADD_COMMUNITY',2),(869,'90','ADD_GENERAL_ANNOUNCEMENTS',4),(870,'90','ADD_LAYOUT_PROTOTYPE',8),(871,'90','ADD_LAYOUT_SET_PROTOTYPE',16),(872,'90','ADD_LICENSE',32),(873,'90','ADD_ORGANIZATION',64),(874,'90','ADD_PASSWORD_POLICY',128),(875,'90','ADD_ROLE',256),(876,'90','ADD_USER',512),(877,'90','ADD_USER_GROUP',1024),(878,'90','CONFIGURATION',2048),(879,'90','EXPORT_USER',4096),(880,'90','IMPERSONATE',8192),(881,'90','UNLINK_LAYOUT_SET_PROTOTYPE',16384),(882,'90','VIEW_CONTROL_PANEL',32768),(883,'90','ADD_TO_PAGE',65536),(884,'90','ACCESS_IN_CONTROL_PANEL',131072),(885,'90','PERMISSIONS',262144),(886,'90','VIEW',1),(887,'150','ACCESS_IN_CONTROL_PANEL',2),(888,'150','CONFIGURATION',4),(889,'150','VIEW',1),(890,'150','PERMISSIONS',8),(891,'113','VIEW',1),(892,'113','ADD_TO_PAGE',2),(893,'113','ACCESS_IN_CONTROL_PANEL',4),(894,'113','CONFIGURATION',8),(895,'113','PERMISSIONS',16),(896,'33','ADD_PORTLET_DISPLAY_TEMPLATE',2),(897,'33','ADD_TO_PAGE',4),(898,'33','CONFIGURATION',8),(899,'33','VIEW',1),(900,'33','PERMISSIONS',16),(901,'33','ACCESS_IN_CONTROL_PANEL',32),(902,'2','ACCESS_IN_CONTROL_PANEL',2),(903,'2','CONFIGURATION',4),(904,'2','VIEW',1),(905,'2','PERMISSIONS',8),(906,'191','VIEW',1),(907,'191','ADD_TO_PAGE',2),(908,'191','ACCESS_IN_CONTROL_PANEL',4),(909,'191','CONFIGURATION',8),(910,'191','PERMISSIONS',16),(911,'119','VIEW',1),(912,'119','ADD_TO_PAGE',2),(913,'119','ACCESS_IN_CONTROL_PANEL',4),(914,'119','CONFIGURATION',8),(915,'119','PERMISSIONS',16),(916,'114','VIEW',1),(917,'114','ADD_TO_PAGE',2),(918,'114','ACCESS_IN_CONTROL_PANEL',4),(919,'114','CONFIGURATION',8),(920,'114','PERMISSIONS',16),(921,'149','ACCESS_IN_CONTROL_PANEL',2),(922,'149','CONFIGURATION',4),(923,'149','VIEW',1),(924,'149','PERMISSIONS',8),(925,'67','VIEW',1),(926,'67','ADD_TO_PAGE',2),(927,'67','ACCESS_IN_CONTROL_PANEL',4),(928,'67','CONFIGURATION',8),(929,'67','PERMISSIONS',16),(930,'110','VIEW',1),(931,'110','ADD_TO_PAGE',2),(932,'110','ACCESS_IN_CONTROL_PANEL',4),(933,'110','CONFIGURATION',8),(934,'110','PERMISSIONS',16),(935,'135','ACCESS_IN_CONTROL_PANEL',2),(936,'135','CONFIGURATION',4),(937,'135','VIEW',1),(938,'135','PERMISSIONS',8),(939,'59','VIEW',1),(940,'59','ADD_TO_PAGE',2),(941,'59','ACCESS_IN_CONTROL_PANEL',4),(942,'59','CONFIGURATION',8),(943,'59','PERMISSIONS',16),(944,'188','ADD_TO_PAGE',2),(945,'188','CONFIGURATION',4),(946,'188','VIEW',1),(947,'188','PERMISSIONS',8),(948,'188','ACCESS_IN_CONTROL_PANEL',16),(949,'131','ACCESS_IN_CONTROL_PANEL',2),(950,'131','CONFIGURATION',4),(951,'131','VIEW',1),(952,'131','PERMISSIONS',8),(953,'102','VIEW',1),(954,'102','ADD_TO_PAGE',2),(955,'102','CONFIGURATION',4),(956,'102','PERMISSIONS',8),(957,'102','ACCESS_IN_CONTROL_PANEL',16);
/*!40000 ALTER TABLE `resourceaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstructurelink`
--

DROP TABLE IF EXISTS `ddmstructurelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstructurelink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstructurelink`
--

LOCK TABLES `ddmstructurelink` WRITE;
/*!40000 ALTER TABLE `ddmstructurelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddmstructurelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductentry`
--

DROP TABLE IF EXISTS `scproductentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductentry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_72F87291` (`groupId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductentry`
--

LOCK TABLES `scproductentry` WRITE;
/*!40000 ALTER TABLE `scproductentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceblock`
--

DROP TABLE IF EXISTS `resourceblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceblock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_DA30B086` (`companyId`,`groupId`,`name`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceblock`
--

LOCK TABLES `resourceblock` WRITE;
/*!40000 ALTER TABLE `resourceblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Account_`
--

DROP TABLE IF EXISTS `Account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account_`
--

LOCK TABLES `Account_` WRITE;
/*!40000 ALTER TABLE `Account_` DISABLE KEYS */;
INSERT INTO `Account_` VALUES (10159,10157,0,'','2014-05-27 18:33:22','2014-05-27 18:33:22',0,'Liferay','','','','','','','','');
/*!40000 ALTER TABLE `Account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `IX_B2468446` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutfriendlyurl`
--

DROP TABLE IF EXISTS `layoutfriendlyurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutfriendlyurl` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutFriendlyURLId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`layoutFriendlyURLId`),
  UNIQUE KEY `IX_A6FC2B28` (`groupId`,`privateLayout`,`friendlyURL`,`languageId`),
  UNIQUE KEY `IX_C5762E72` (`plid`,`languageId`),
  UNIQUE KEY `IX_326525D6` (`uuid_`,`groupId`),
  KEY `IX_EAB317C8` (`companyId`),
  KEY `IX_742EF04A` (`groupId`),
  KEY `IX_CA713461` (`groupId`,`privateLayout`,`friendlyURL`),
  KEY `IX_83AE56AB` (`plid`),
  KEY `IX_59051329` (`plid`,`friendlyURL`),
  KEY `IX_9F80D54` (`uuid_`),
  KEY `IX_F4321A54` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutfriendlyurl`
--

LOCK TABLES `layoutfriendlyurl` WRITE;
/*!40000 ALTER TABLE `layoutfriendlyurl` DISABLE KEYS */;
INSERT INTO `layoutfriendlyurl` VALUES ('2e1783ef-cfba-422b-9243-ee0a602b5cab',10179,10175,10157,10161,'','2014-05-27 18:33:23','2014-05-27 18:33:23',10178,1,'/manage','en_US'),('1466fa2c-de50-4631-9736-d93e4e5f5638',10188,10184,10157,10161,'','2014-05-27 18:33:24','2014-05-27 18:33:24',10187,0,'/home','en_US'),('00dc685f-69d4-458f-ba6f-9e25586063a1',10324,10320,10157,10161,'','2014-05-27 18:33:29','2014-05-27 18:33:29',10323,1,'/layout','en_US'),('9e0ecb3c-acff-4bf0-bb9b-787bc5f75580',10336,10332,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',10335,1,'/layout','en_US'),('d6bd21d8-8ccf-42f9-bcef-afa0f9875f68',10346,10342,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',10345,1,'/layout','en_US'),('eda37cfc-fc02-4286-866c-0f28cdd27046',10365,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10364,1,'/home','en_US'),('7cee82c1-2393-434c-8b26-741aa6195b53',10373,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10372,1,'/wiki','en_US'),('eab88e9d-96a3-4b7c-9883-b88e3a6f7c94',10391,10379,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10390,1,'/home','en_US'),('9df7d62f-ad9e-4f70-b6da-de20dc216519',10400,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10399,1,'/documents','en_US'),('ce2f7e71-4e83-43ce-8f1c-3925ad6fbb50',10408,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10407,1,'/news','en_US'),('5705a351-0642-477f-a9e1-f83a5c7d598c',10440,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',10439,1,'/home','en_US'),('e781ff2f-0713-4048-b3e9-e4ba142446c7',10446,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',10445,0,'/home','en_US');
/*!40000 ALTER TABLE `layoutfriendlyurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SCHEDULER_STATE`
--

LOCK TABLES `QUARTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsentry`
--

DROP TABLE IF EXISTS `announcementsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `IX_A6EF0B81` (`classNameId`,`classPK`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_1AFBDE08` (`uuid_`),
  KEY `IX_F2949120` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsentry`
--

LOCK TABLES `announcementsentry` WRITE;
/*!40000 ALTER TABLE `announcementsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orggrouprole`
--

DROP TABLE IF EXISTS `orggrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orggrouprole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orggrouprole`
--

LOCK TABLES `orggrouprole` WRITE;
/*!40000 ALTER TABLE `orggrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutsetprototype`
--

DROP TABLE IF EXISTS `layoutsetprototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutsetprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_55F63D98` (`companyId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_C5D69B24` (`uuid_`),
  KEY `IX_D9FFCA84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutsetprototype`
--

LOCK TABLES `layoutsetprototype` WRITE;
/*!40000 ALTER TABLE `layoutsetprototype` DISABLE KEYS */;
INSERT INTO `layoutsetprototype` VALUES ('7c35276f-6c16-416b-ba6e-c2f39a760953',10352,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:31','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums and Wiki','layoutsUpdateable=true\n',1),('1c58816c-bf96-4b13-8062-5d8949006c5d',10378,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:32','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents and News','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `layoutsetprototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsdelivery`
--

DROP TABLE IF EXISTS `announcementsdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsdelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`),
  KEY `IX_6EDB9600` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsdelivery`
--

LOCK TABLES `announcementsdelivery` WRITE;
/*!40000 ALTER TABLE `announcementsdelivery` DISABLE KEYS */;
INSERT INTO `announcementsdelivery` VALUES (10436,10157,10201,'general',0,0,1),(10437,10157,10201,'news',0,0,1),(10438,10157,10201,'test',0,0,1);
/*!40000 ALTER TABLE `announcementsdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webdavprops`
--

DROP TABLE IF EXISTS `webdavprops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webdavprops` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webdavprops`
--

LOCK TABLES `webdavprops` WRITE;
/*!40000 ALTER TABLE `webdavprops` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdavprops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandocolumn`
--

DROP TABLE IF EXISTS `expandocolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandocolumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`),
  UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`),
  KEY `IX_A8C0CBE8` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandocolumn`
--

LOCK TABLES `expandocolumn` WRITE;
/*!40000 ALTER TABLE `expandocolumn` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandocolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstoragelink`
--

DROP TABLE IF EXISTS `ddmstoragelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstoragelink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstoragelink`
--

LOCK TABLES `ddmstoragelink` WRITE;
/*!40000 ALTER TABLE `ddmstoragelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddmstoragelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `IX_143DC786` (`groupId`,`name`),
  KEY `IX_AE6E9907` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlcontent`
--

DROP TABLE IF EXISTS `dlcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlcontent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`),
  KEY `IX_6A83A66A` (`companyId`,`repositoryId`),
  KEY `IX_EB531760` (`companyId`,`repositoryId`,`path_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlcontent`
--

LOCK TABLES `dlcontent` WRITE;
/*!40000 ALTER TABLE `dlcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstructure`
--

DROP TABLE IF EXISTS `ddmstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentStructureId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_C8785130` (`groupId`,`classNameId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_4FBAC092` (`companyId`,`classNameId`),
  KEY `IX_C8419FBE` (`groupId`),
  KEY `IX_B6ED5E50` (`groupId`,`classNameId`),
  KEY `IX_43395316` (`groupId`,`parentStructureId`),
  KEY `IX_657899A8` (`parentStructureId`),
  KEY `IX_20FDE04C` (`structureKey`),
  KEY `IX_E61809C8` (`uuid_`),
  KEY `IX_F9FB8D60` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstructure`
--

LOCK TABLES `ddmstructure` WRITE;
/*!40000 ALTER TABLE `ddmstructure` DISABLE KEYS */;
INSERT INTO `ddmstructure` VALUES ('6899d488-038a-4a57-96d6-40d5cd839e46',10306,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28',0,10091,'LEARNING MODULE METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select2235\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select3212\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4115\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select5069\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('f298f9d2-ad99-4cee-80a8-6046e6b50773',10307,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28',0,10091,'MARKETING CAMPAIGN THEME METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2305\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3229\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4282\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('bb62bf85-3ae6-49ea-98dd-214c999b6a8a',10308,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28',0,10091,'MEETING METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date3054\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2217\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text4569\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text5638\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea6584\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea7502\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('66f2e850-5ae3-415d-9c03-196f1d22be08',10310,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28',0,10091,'AUTO_0F7204A5-11E1-43BC-B5CE-26F127272D58','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date18949\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date20127\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select10264\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4893\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text14822\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text17700\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2087\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('600935b7-d17a-4c39-9eb2-ae685d569914',10312,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28',0,10091,'AUTO_B1200E6A-F654-4945-8F0A-6BA14D412F7F','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"radio5547\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2033\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea2873\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('1fd662ee-8f3a-4a60-9c69-1a96468503c2',10314,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28',0,10091,'AUTO_FD8568C2-7C90-41E6-A7C1-BC6865707B14','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2082\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2979\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('7dccd00e-b247-4bdb-8a45-7c388e9576d0',10316,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28',0,10091,'AUTO_F4895D33-82BA-4EED-BE20-5FB705A31C21','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2890\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3864\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4831\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select5929\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text1993\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('391c4fe9-601d-4703-9890-5933fd165ee9',10318,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28',0,10317,'TIKARAWMETADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TIKARAWMETADATA</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TIKARAWMETADATA</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('cac335fc-b5f3-4099-a72a-65388a12f2ff',10415,10184,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',0,10098,'CONTACTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"imService\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('5a9afb66-f537-4ac0-90a2-d6c9babd008c',10416,10184,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',0,10098,'EVENTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('9222f8c2-edf3-45b2-b492-f9e9b23d7fbc',10417,10184,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',0,10098,'INVENTORY','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('1a91cef2-4a57-49bd-bb4c-04c72a196b6e',10418,10184,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',0,10098,'ISSUES TRACKING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('eeac0249-0e67-45d9-87d4-1d75eedf1b3f',10419,10184,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',0,10098,'MEETING MINUTES','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('e5ecd975-03ca-4c9b-97bd-cb4a0fd0fc51',10420,10184,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',0,10098,'TO DO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" required=\"false\" showLabel=\"true\" type=\"ddm-integer\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `ddmstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivityachievement`
--

DROP TABLE IF EXISTS `socialactivityachievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivityachievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`),
  UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`),
  KEY `IX_E14B1F1` (`groupId`),
  KEY `IX_83E16F2F` (`groupId`,`firstInGroup`),
  KEY `IX_8F6408F0` (`groupId`,`name`),
  KEY `IX_C8FD892B` (`groupId`,`userId`),
  KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivityachievement`
--

LOCK TABLES `socialactivityachievement` WRITE;
/*!40000 ALTER TABLE `socialactivityachievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivityachievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_job_details`
--

DROP TABLE IF EXISTS `quartz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_job_details`
--

LOCK TABLES `quartz_job_details` WRITE;
/*!40000 ALTER TABLE `quartz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotificationevent`
--

DROP TABLE IF EXISTS `usernotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernotificationevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3E5D78C4` (`userId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_24F1BF0` (`userId`,`delivered`),
  KEY `IX_ECD8CFEA` (`uuid_`),
  KEY `IX_A6BAFDFE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotificationevent`
--

LOCK TABLES `usernotificationevent` WRITE;
/*!40000 ALTER TABLE `usernotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_`
--

DROP TABLE IF EXISTS `contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `IX_B8C28C53` (`accountId`),
  KEY `IX_791914FA` (`classNameId`,`classPK`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_`
--

LOCK TABLES `contact_` WRITE;
/*!40000 ALTER TABLE `contact_` DISABLE KEYS */;
INSERT INTO `contact_` VALUES (10162,10157,10161,'','2014-05-27 18:33:21','2014-05-27 18:33:21',10005,10161,10159,0,'default@liferay.com','','','',0,0,1,'2014-05-27 18:33:21','','','','','','','','','','','','','','',''),(10202,10157,10201,'','2014-05-27 18:33:25','2014-05-27 18:36:19',10005,10201,10159,0,'test@liferay.com','Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scframeworkversion`
--

DROP TABLE IF EXISTS `scframeworkversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scframeworkversion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_272991FA` (`groupId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scframeworkversion`
--

LOCK TABLES `scframeworkversion` WRITE;
/*!40000 ALTER TABLE `scframeworkversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowinstancelink`
--

DROP TABLE IF EXISTS `workflowinstancelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowinstancelink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`),
  KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowinstancelink`
--

LOCK TABLES `workflowinstancelink` WRITE;
/*!40000 ALTER TABLE `workflowinstancelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowinstancelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergrouprole`
--

DROP TABLE IF EXISTS `usergrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergrouprole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergrouprole`
--

LOCK TABLES `usergrouprole` WRITE;
/*!40000 ALTER TABLE `usergrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialrequest`
--

DROP TABLE IF EXISTS `socialrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialrequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`),
  KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_32292ED1` (`receiverUserId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_80F7A9C2` (`userId`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_49D5872C` (`uuid_`),
  KEY `IX_8D42897C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialrequest`
--

LOCK TABLES `socialrequest` WRITE;
/*!40000 ALTER TABLE `socialrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertrackerpath`
--

DROP TABLE IF EXISTS `usertrackerpath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertrackerpath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertrackerpath`
--

LOCK TABLES `usertrackerpath` WRITE;
/*!40000 ALTER TABLE `usertrackerpath` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertrackerpath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikipage`
--

DROP TABLE IF EXISTS `wikipage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikipage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`),
  UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_16E99B0A` (`groupId`,`nodeId`,`head`),
  KEY `IX_BA72B89A` (`groupId`,`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_E0092FF0` (`groupId`,`nodeId`,`head`,`status`),
  KEY `IX_941E429C` (`groupId`,`nodeId`,`status`),
  KEY `IX_5FF21CE6` (`groupId`,`nodeId`,`title`,`head`),
  KEY `IX_CAA451D6` (`groupId`,`userId`,`nodeId`,`status`),
  KEY `IX_C8A9C476` (`nodeId`),
  KEY `IX_E7F635CA` (`nodeId`,`head`),
  KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`),
  KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_40F94F68` (`nodeId`,`head`,`redirectTitle`,`status`),
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_85E7CC76` (`resourcePrimKey`),
  KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`),
  KEY `IX_E1F55FB` (`resourcePrimKey`,`nodeId`,`head`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_1725355C` (`resourcePrimKey`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_9C0E478F` (`uuid_`),
  KEY `IX_5DC4BD39` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikipage`
--

LOCK TABLES `wikipage` WRITE;
/*!40000 ALTER TABLE `wikipage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingorder`
--

DROP TABLE IF EXISTS `shoppingorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingorder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_1D15553E` (`groupId`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingorder`
--

LOCK TABLES `shoppingorder` WRITE;
/*!40000 ALTER TABLE `shoppingorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductversion`
--

DROP TABLE IF EXISTS `scproductversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductversion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`),
  KEY `IX_7020130F` (`directDownloadURL`(255)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductversion`
--

LOCK TABLES `scproductversion` WRITE;
/*!40000 ALTER TABLE `scproductversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginsetting`
--

DROP TABLE IF EXISTS `pluginsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginsetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`),
  KEY `IX_B9746445` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginsetting`
--

LOCK TABLES `pluginsetting` WRITE;
/*!40000 ALTER TABLE `pluginsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluginsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettag`
--

DROP TABLE IF EXISTS `assettag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  KEY `IX_7C9E46BA` (`groupId`),
  KEY `IX_D63322F9` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettag`
--

LOCK TABLES `assettag` WRITE;
/*!40000 ALTER TABLE `assettag` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemevent`
--

DROP TABLE IF EXISTS `systemevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemevent` (
  `systemEventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `referrerClassNameId` bigint(20) DEFAULT NULL,
  `parentSystemEventId` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  PRIMARY KEY (`systemEventId`),
  KEY `IX_72D73D39` (`groupId`),
  KEY `IX_7A2F0ECE` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_FFCBB747` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_A19C89FF` (`groupId`,`systemEventSetKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemevent`
--

LOCK TABLES `systemevent` WRITE;
/*!40000 ALTER TABLE `systemevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutprototype`
--

DROP TABLE IF EXISTS `layoutprototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`),
  KEY `IX_63ED2532` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutprototype`
--

LOCK TABLES `layoutprototype` WRITE;
/*!40000 ALTER TABLE `layoutprototype` DISABLE KEYS */;
INSERT INTO `layoutprototype` VALUES ('6e4f7345-ec99-4f6b-bbf9-2691d5074a26',10319,10157,10161,'','2014-05-27 18:33:29','2014-05-27 18:33:29','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('31c56659-0f8c-45a6-8471-2226b5bf0b2c',10331,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('a95674e3-150b-4786-88a0-146499c95801',10341,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
/*!40000 ALTER TABLE `layoutprototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositoryentry`
--

DROP TABLE IF EXISTS `repositoryentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositoryentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_B7034B27` (`repositoryId`),
  KEY `IX_B9B1506` (`uuid_`),
  KEY `IX_D3B9AF62` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositoryentry`
--

LOCK TABLES `repositoryentry` WRITE;
/*!40000 ALTER TABLE `repositoryentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositoryentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QUARTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingorderitem`
--

DROP TABLE IF EXISTS `shoppingorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingorderitem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingorderitem`
--

LOCK TABLES `shoppingorderitem` WRITE;
/*!40000 ALTER TABLE `shoppingorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogsentry`
--

DROP TABLE IF EXISTS `blogsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`),
  KEY `IX_72EF6041` (`companyId`),
  KEY `IX_430D791F` (`companyId`,`displayDate`),
  KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`),
  KEY `IX_EB2DCE27` (`companyId`,`status`),
  KEY `IX_8CACE77B` (`companyId`,`userId`),
  KEY `IX_A5F57B61` (`companyId`,`userId`,`status`),
  KEY `IX_2672F77F` (`displayDate`,`status`),
  KEY `IX_81A50303` (`groupId`),
  KEY `IX_621E19D` (`groupId`,`displayDate`),
  KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`),
  KEY `IX_1EFD8EE9` (`groupId`,`status`),
  KEY `IX_FBDE0AA3` (`groupId`,`userId`,`displayDate`),
  KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`),
  KEY `IX_49E15A23` (`groupId`,`userId`,`status`),
  KEY `IX_69157A4D` (`uuid_`),
  KEY `IX_5E8307BB` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogsentry`
--

LOCK TABLES `blogsentry` WRITE;
/*!40000 ALTER TABLE `blogsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcategory`
--

DROP TABLE IF EXISTS `shoppingcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`),
  KEY `IX_5F615D3E` (`groupId`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcategory`
--

LOCK TABLES `shoppingcategory` WRITE;
/*!40000 ALTER TABLE `shoppingcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbmailinglist`
--

DROP TABLE IF EXISTS `mbmailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbmailinglist` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`),
  UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`),
  UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`),
  KEY `IX_BFEB984F` (`active_`),
  KEY `IX_4115EC7A` (`uuid_`),
  KEY `IX_FC61676E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbmailinglist`
--

LOCK TABLES `mbmailinglist` WRITE;
/*!40000 ALTER TABLE `mbmailinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbmailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository`
--

DROP TABLE IF EXISTS `repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(200) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_60C8634C` (`groupId`,`name`,`portletId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_5253B1FA` (`groupId`),
  KEY `IX_74C17B04` (`uuid_`),
  KEY `IX_F543EA4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetlink`
--

DROP TABLE IF EXISTS `assetlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetlink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`),
  UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`),
  KEY `IX_128516C8` (`entryId1`),
  KEY `IX_56E0AB21` (`entryId1`,`entryId2`),
  KEY `IX_14D5A20D` (`entryId1`,`type_`),
  KEY `IX_12851A89` (`entryId2`),
  KEY `IX_91F132C` (`entryId2`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetlink`
--

LOCK TABLES `assetlink` WRITE;
/*!40000 ALTER TABLE `assetlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrule`
--

DROP TABLE IF EXISTS `mdrrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`),
  UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`),
  KEY `IX_4F4293F1` (`ruleGroupId`),
  KEY `IX_EA63B9D7` (`uuid_`),
  KEY `IX_7DEA8DF1` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrule`
--

LOCK TABLES `mdrrule` WRITE;
/*!40000 ALTER TABLE `mdrrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Counter`
--

LOCK TABLES `Counter` WRITE;
/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` VALUES ('com.liferay.counter.model.Counter',10500),('com.liferay.portal.model.Layout#10175#true',1),('com.liferay.portal.model.Layout#10184#false',1),('com.liferay.portal.model.Layout#10204#false',1),('com.liferay.portal.model.Layout#10204#true',1),('com.liferay.portal.model.Layout#10320#true',1),('com.liferay.portal.model.Layout#10332#true',1),('com.liferay.portal.model.Layout#10342#true',1),('com.liferay.portal.model.Layout#10353#true',2),('com.liferay.portal.model.Layout#10379#true',3),('com.liferay.portal.model.ResourceAction',1000),('com.liferay.portal.model.ResourcePermission',600);
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitylimit`
--

DROP TABLE IF EXISTS `socialactivitylimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitylimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`),
  UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`),
  KEY `IX_B15863FA` (`classNameId`,`classPK`),
  KEY `IX_18D4BAE5` (`groupId`),
  KEY `IX_6F9EDE9F` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitylimit`
--

LOCK TABLES `socialactivitylimit` WRITE;
/*!40000 ALTER TABLE `socialactivitylimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitylimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandorow`
--

DROP TABLE IF EXISTS `expandorow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandorow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_49EB3118` (`classPK`),
  KEY `IX_D3F5D7AE` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandorow`
--

LOCK TABLES `expandorow` WRITE;
/*!40000 ALTER TABLE `expandorow` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandorow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `uuid_` varchar(75) DEFAULT NULL,
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `IX_93D5AD4E` (`companyId`),
  KEY `IX_ABD7DAC0` (`companyId`,`classNameId`),
  KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`),
  KEY `IX_381E55DA` (`uuid_`),
  KEY `IX_8FCB620E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletpreferences`
--

DROP TABLE IF EXISTS `portletpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletpreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_C9A3FCE2` (`ownerId`,`ownerType`,`portletId`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_A3B2A80C` (`ownerType`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`),
  KEY `IX_8E6DA3A1` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletpreferences`
--

LOCK TABLES `portletpreferences` WRITE;
/*!40000 ALTER TABLE `portletpreferences` DISABLE KEYS */;
INSERT INTO `portletpreferences` VALUES (10330,0,3,10323,'148_INSTANCE_yiXdnmk60Fo1','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>10007</value></preference><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>maxAssetTags</name><value>10</value></preference></portlet-preferences>'),(10351,0,3,10345,'141_INSTANCE_wmY1vb7im0I2','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>10016</value></preference></portlet-preferences>'),(10370,0,3,10364,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10371,0,3,10364,'101_INSTANCE_GqjYCYB6OpaH','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10396,0,3,10390,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10397,0,3,10390,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(10398,0,3,10390,'101_INSTANCE_4qjHCD615S28','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(10405,0,3,10399,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10406,0,3,10399,'101_INSTANCE_CMQplGARDtvK','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10413,0,3,10407,'39_INSTANCE_4pVbMBL1LNCx','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),(10414,0,3,10407,'39_INSTANCE_TUNJpxgy39PK','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),(10452,0,3,10439,'145','<portlet-preferences />'),(10453,0,3,10187,'145','<portlet-preferences />');
/*!40000 ALTER TABLE `portletpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orglabor`
--

DROP TABLE IF EXISTS `orglabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orglabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orglabor`
--

LOCK TABLES `orglabor` WRITE;
/*!40000 ALTER TABLE `orglabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `orglabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclicense`
--

DROP TABLE IF EXISTS `sclicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sclicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclicense`
--

LOCK TABLES `sclicense` WRITE;
/*!40000 ALTER TABLE `sclicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcepermission`
--

DROP TABLE IF EXISTS `resourcepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcepermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  UNIQUE KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_60B99860` (`companyId`,`name`,`scope`),
  KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcepermission`
--

LOCK TABLES `resourcepermission` WRITE;
/*!40000 ALTER TABLE `resourcepermission` DISABLE KEYS */;
INSERT INTO `resourcepermission` VALUES (1,10157,'2',1,'10157',10168,0,2),(2,10157,'140',1,'10157',10168,0,2),(3,10157,'158',1,'10157',10168,0,6),(4,10157,'153',1,'10157',10168,0,6),(5,10157,'com.liferay.portal.model.Layout',4,'10178',10166,10161,1023),(6,10157,'com.liferay.portal.model.Layout',4,'10178',10173,0,19),(7,10157,'com.liferay.portal.model.Layout',4,'10178',10165,0,1),(8,10157,'com.liferay.portal.model.Layout',4,'10187',10166,10161,1023),(9,10157,'com.liferay.portal.model.Layout',4,'10187',10173,0,19),(10,10157,'com.liferay.portal.model.Layout',4,'10187',10165,0,1),(11,10157,'98',2,'10194',10168,0,1),(12,10157,'183',2,'10194',10168,0,1),(13,10157,'66',2,'10194',10168,0,1),(14,10157,'180',2,'10194',10168,0,1),(15,10157,'27',2,'10194',10168,0,1),(16,10157,'152',2,'10194',10168,0,1),(17,10157,'134',2,'10194',10168,0,1),(18,10157,'130',2,'10194',10168,0,1),(19,10157,'122',2,'10194',10168,0,1),(20,10157,'36',2,'10194',10168,0,1),(21,10157,'26',2,'10194',10168,0,1),(22,10157,'175',2,'10194',10168,0,1),(23,10157,'153',2,'10194',10168,0,1),(24,10157,'64',2,'10194',10168,0,1),(25,10157,'129',2,'10194',10168,0,1),(26,10157,'182',2,'10194',10168,0,1),(27,10157,'179',2,'10194',10168,0,1),(28,10157,'173',2,'10194',10168,0,1),(29,10157,'100',2,'10194',10168,0,1),(30,10157,'19',2,'10194',10168,0,1),(31,10157,'157',2,'10194',10168,0,1),(32,10157,'181',2,'10194',10168,0,1),(33,10157,'128',2,'10194',10168,0,1),(34,10157,'154',2,'10194',10168,0,1),(35,10157,'148',2,'10194',10168,0,1),(36,10157,'11',2,'10194',10168,0,1),(37,10157,'29',2,'10194',10168,0,1),(38,10157,'158',2,'10194',10168,0,1),(39,10157,'178',2,'10194',10168,0,1),(40,10157,'58',2,'10194',10168,0,1),(41,10157,'71',2,'10194',10168,0,1),(42,10157,'97',2,'10194',10168,0,1),(43,10157,'39',2,'10194',10168,0,1),(44,10157,'85',2,'10194',10168,0,1),(45,10157,'118',2,'10194',10168,0,1),(46,10157,'107',2,'10194',10168,0,1),(47,10157,'30',2,'10194',10168,0,1),(48,10157,'184',2,'10194',10168,0,1),(49,10157,'147',2,'10194',10168,0,1),(50,10157,'48',2,'10194',10168,0,1),(51,10157,'125',2,'10194',10168,0,1),(52,10157,'161',2,'10194',10168,0,1),(53,10157,'146',2,'10194',10168,0,1),(54,10157,'62',2,'10194',10168,0,1),(55,10157,'162',2,'10194',10168,0,1),(56,10157,'176',2,'10194',10168,0,1),(57,10157,'108',2,'10194',10168,0,1),(58,10157,'187',2,'10194',10168,0,1),(59,10157,'84',2,'10194',10168,0,1),(60,10157,'101',2,'10194',10168,0,1),(61,10157,'121',2,'10194',10168,0,1),(62,10157,'143',2,'10194',10168,0,1),(63,10157,'77',2,'10194',10168,0,1),(64,10157,'167',2,'10194',10168,0,1),(65,10157,'115',2,'10194',10168,0,1),(66,10157,'56',2,'10194',10168,0,1),(67,10157,'16',2,'10194',10168,0,1),(68,10157,'3',2,'10194',10168,0,1),(69,10157,'20',2,'10194',10168,0,1),(70,10157,'23',2,'10194',10168,0,1),(71,10157,'83',2,'10194',10168,0,1),(72,10157,'99',2,'10194',10168,0,1),(73,10157,'186',2,'10194',10168,0,1),(74,10157,'194',2,'10194',10168,0,1),(75,10157,'70',2,'10194',10168,0,1),(76,10157,'164',2,'10194',10168,0,1),(77,10157,'141',2,'10194',10168,0,1),(78,10157,'9',2,'10194',10168,0,1),(79,10157,'28',2,'10194',10168,0,1),(80,10157,'137',2,'10194',10168,0,1),(81,10157,'15',2,'10194',10168,0,1),(82,10157,'47',2,'10194',10168,0,1),(83,10157,'116',2,'10194',10168,0,1),(84,10157,'82',2,'10194',10168,0,1),(85,10157,'151',2,'10194',10168,0,1),(86,10157,'54',2,'10194',10168,0,1),(87,10157,'34',2,'10194',10168,0,1),(88,10157,'132',2,'10194',10168,0,1),(89,10157,'169',2,'10194',10168,0,1),(90,10157,'61',2,'10194',10168,0,1),(91,10157,'73',2,'10194',10168,0,1),(92,10157,'50',2,'10194',10168,0,1),(93,10157,'127',2,'10194',10168,0,1),(94,10157,'193',2,'10194',10168,0,1),(95,10157,'31',2,'10194',10168,0,1),(96,10157,'25',2,'10194',10168,0,1),(97,10157,'166',2,'10194',10168,0,1),(98,10157,'33',2,'10194',10168,0,1),(99,10157,'150',2,'10194',10168,0,1),(100,10157,'114',2,'10194',10168,0,1),(101,10157,'149',2,'10194',10168,0,1),(102,10157,'67',2,'10194',10168,0,1),(103,10157,'110',2,'10194',10168,0,1),(104,10157,'59',2,'10194',10168,0,1),(105,10157,'135',2,'10194',10168,0,1),(106,10157,'188',2,'10194',10168,0,1),(107,10157,'131',2,'10194',10168,0,1),(108,10157,'102',2,'10194',10168,0,1),(109,10157,'com.liferay.portal.model.Layout',2,'10194',10168,0,1),(110,10157,'com.liferay.portlet.blogs',2,'10194',10168,0,14),(111,10157,'98',2,'10194',10167,0,2),(112,10157,'183',2,'10194',10167,0,4),(113,10157,'152',2,'10194',10167,0,2),(114,10157,'182',2,'10194',10167,0,4),(115,10157,'179',2,'10194',10167,0,2),(116,10157,'173',2,'10194',10167,0,4),(117,10157,'154',2,'10194',10167,0,2),(118,10157,'178',2,'10194',10167,0,16),(119,10157,'147',2,'10194',10167,0,2),(120,10157,'161',2,'10194',10167,0,2),(121,10157,'162',2,'10194',10167,0,2),(122,10157,'167',2,'10194',10167,0,2),(123,10157,'20',2,'10194',10167,0,2),(124,10157,'99',2,'10194',10167,0,2),(125,10157,'28',2,'10194',10167,0,2),(126,10157,'15',2,'10194',10167,0,2),(127,10157,'25',2,'10194',10167,0,2),(128,10157,'com.liferay.portal.model.Group',2,'10194',10167,0,8396800),(129,10157,'com.liferay.portlet.asset',2,'10194',10167,0,30),(130,10157,'com.liferay.portlet.blogs',2,'10194',10167,0,14),(131,10157,'com.liferay.portlet.bookmarks',2,'10194',10167,0,31),(132,10157,'com.liferay.portlet.documentlibrary',2,'10194',10167,0,1023),(133,10157,'com.liferay.portlet.journal',2,'10194',10167,0,255),(134,10157,'com.liferay.portlet.messageboards',2,'10194',10167,0,2047),(135,10157,'com.liferay.portlet.polls',2,'10194',10167,0,6),(136,10157,'com.liferay.portlet.wiki',2,'10194',10167,0,6),(137,10157,'com.liferay.portal.model.User',4,'10201',10166,10201,31),(138,10157,'98',1,'10157',10167,0,4),(139,10157,'98',1,'10157',10168,0,4),(140,10157,'183',1,'10157',10164,0,2),(141,10157,'66',1,'10157',10167,0,2),(142,10157,'66',1,'10157',10168,0,2),(143,10157,'180',1,'10157',10165,0,2),(144,10157,'180',1,'10157',10167,0,2),(145,10157,'180',1,'10157',10168,0,2),(146,10157,'27',1,'10157',10167,0,2),(147,10157,'27',1,'10157',10168,0,2),(148,10157,'122',1,'10157',10165,0,8),(149,10157,'122',1,'10157',10167,0,8),(150,10157,'122',1,'10157',10168,0,8),(151,10157,'36',1,'10157',10167,0,4),(152,10157,'36',1,'10157',10168,0,4),(153,10157,'26',1,'10157',10167,0,2),(154,10157,'26',1,'10157',10168,0,2),(155,10157,'175',1,'10157',10165,0,2),(156,10157,'175',1,'10157',10167,0,2),(157,10157,'175',1,'10157',10168,0,2),(158,10157,'153',1,'10157',10167,0,4),(159,10157,'64',1,'10157',10165,0,2),(160,10157,'64',1,'10157',10167,0,2),(161,10157,'64',1,'10157',10168,0,2),(162,10157,'182',1,'10157',10167,0,2),(163,10157,'182',1,'10157',10168,0,2),(164,10157,'173',1,'10157',10165,0,2),(165,10157,'173',1,'10157',10167,0,2),(166,10157,'173',1,'10157',10168,0,2),(167,10157,'100',1,'10157',10167,0,2),(168,10157,'100',1,'10157',10168,0,2),(169,10157,'19',1,'10157',10167,0,2),(170,10157,'19',1,'10157',10168,0,2),(171,10157,'181',1,'10157',10165,0,2),(172,10157,'181',1,'10157',10167,0,2),(173,10157,'181',1,'10157',10168,0,2),(174,10157,'148',1,'10157',10165,0,2),(175,10157,'148',1,'10157',10167,0,2),(176,10157,'148',1,'10157',10168,0,2),(177,10157,'11',1,'10157',10167,0,2),(178,10157,'11',1,'10157',10168,0,2),(179,10157,'29',1,'10157',10167,0,2),(180,10157,'29',1,'10157',10168,0,2),(181,10157,'158',1,'10157',10167,0,4),(182,10157,'178',1,'10157',10167,0,4),(183,10157,'178',1,'10157',10168,0,4),(184,10157,'58',1,'10157',10165,0,2),(185,10157,'58',1,'10157',10167,0,2),(186,10157,'58',1,'10157',10168,0,2),(187,10157,'71',1,'10157',10165,0,2),(188,10157,'71',1,'10157',10167,0,2),(189,10157,'71',1,'10157',10168,0,2),(190,10157,'97',1,'10157',10167,0,2),(191,10157,'97',1,'10157',10168,0,2),(192,10157,'39',1,'10157',10167,0,2),(193,10157,'39',1,'10157',10168,0,2),(194,10157,'85',1,'10157',10165,0,2),(195,10157,'85',1,'10157',10167,0,2),(196,10157,'85',1,'10157',10168,0,2),(197,10157,'118',1,'10157',10165,0,2),(198,10157,'118',1,'10157',10167,0,2),(199,10157,'118',1,'10157',10168,0,2),(200,10157,'107',1,'10157',10167,0,2),(201,10157,'107',1,'10157',10168,0,2),(202,10157,'30',1,'10157',10167,0,2),(203,10157,'30',1,'10157',10168,0,2),(204,10157,'184',1,'10157',10165,0,2),(205,10157,'184',1,'10157',10167,0,2),(206,10157,'184',1,'10157',10168,0,2),(207,10157,'48',1,'10157',10167,0,2),(208,10157,'48',1,'10157',10168,0,2),(209,10157,'62',1,'10157',10167,0,2),(210,10157,'62',1,'10157',10168,0,2),(211,10157,'176',1,'10157',10164,0,2),(212,10157,'108',1,'10157',10167,0,2),(213,10157,'108',1,'10157',10168,0,2),(214,10157,'187',1,'10157',10167,0,2),(215,10157,'187',1,'10157',10168,0,2),(216,10157,'84',1,'10157',10167,0,4),(217,10157,'84',1,'10157',10168,0,4),(218,10157,'101',1,'10157',10165,0,4),(219,10157,'101',1,'10157',10167,0,4),(220,10157,'101',1,'10157',10168,0,4),(221,10157,'121',1,'10157',10165,0,2),(222,10157,'121',1,'10157',10167,0,2),(223,10157,'121',1,'10157',10168,0,2),(224,10157,'143',1,'10157',10165,0,2),(225,10157,'143',1,'10157',10167,0,2),(226,10157,'143',1,'10157',10168,0,2),(227,10157,'77',1,'10157',10165,0,2),(228,10157,'77',1,'10157',10167,0,2),(229,10157,'77',1,'10157',10168,0,2),(230,10157,'167',1,'10157',10167,0,4),(231,10157,'167',1,'10157',10168,0,4),(232,10157,'115',1,'10157',10165,0,2),(233,10157,'115',1,'10157',10167,0,2),(234,10157,'115',1,'10157',10168,0,2),(235,10157,'56',1,'10157',10165,0,2),(236,10157,'56',1,'10157',10167,0,2),(237,10157,'56',1,'10157',10168,0,2),(238,10157,'16',1,'10157',10167,0,8),(239,10157,'16',1,'10157',10168,0,8),(240,10157,'3',1,'10157',10165,0,2),(241,10157,'3',1,'10157',10167,0,2),(242,10157,'3',1,'10157',10168,0,2),(243,10157,'20',1,'10157',10165,0,8),(244,10157,'20',1,'10157',10167,0,8),(245,10157,'20',1,'10157',10168,0,8),(246,10157,'23',1,'10157',10167,0,2),(247,10157,'23',1,'10157',10168,0,2),(248,10157,'83',1,'10157',10167,0,4),(249,10157,'83',1,'10157',10168,0,4),(250,10157,'186',1,'10157',10167,0,2),(251,10157,'186',1,'10157',10168,0,2),(252,10157,'194',1,'10157',10165,0,2),(253,10157,'194',1,'10157',10167,0,2),(254,10157,'194',1,'10157',10168,0,2),(255,10157,'70',1,'10157',10167,0,2),(256,10157,'70',1,'10157',10168,0,2),(257,10157,'164',1,'10157',10165,0,2),(258,10157,'164',1,'10157',10167,0,2),(259,10157,'164',1,'10157',10168,0,2),(260,10157,'141',1,'10157',10165,0,8),(261,10157,'141',1,'10157',10167,0,8),(262,10157,'141',1,'10157',10168,0,8),(263,10157,'9',1,'10157',10164,0,2),(264,10157,'28',1,'10157',10167,0,4),(265,10157,'28',1,'10157',10168,0,4),(266,10157,'15',1,'10157',10167,0,4),(267,10157,'15',1,'10157',10168,0,4),(268,10157,'47',1,'10157',10165,0,2),(269,10157,'47',1,'10157',10167,0,2),(270,10157,'47',1,'10157',10168,0,2),(271,10157,'116',1,'10157',10165,0,2),(272,10157,'116',1,'10157',10167,0,2),(273,10157,'116',1,'10157',10168,0,2),(274,10157,'82',1,'10157',10165,0,2),(275,10157,'82',1,'10157',10167,0,2),(276,10157,'82',1,'10157',10168,0,2),(277,10157,'54',1,'10157',10167,0,2),(278,10157,'54',1,'10157',10168,0,2),(279,10157,'34',1,'10157',10167,0,2),(280,10157,'34',1,'10157',10168,0,2),(281,10157,'169',1,'10157',10167,0,2),(282,10157,'169',1,'10157',10168,0,2),(283,10157,'61',1,'10157',10167,0,2),(284,10157,'61',1,'10157',10168,0,2),(285,10157,'73',1,'10157',10165,0,2),(286,10157,'73',1,'10157',10167,0,2),(287,10157,'73',1,'10157',10168,0,2),(288,10157,'50',1,'10157',10165,0,2),(289,10157,'50',1,'10157',10167,0,2),(290,10157,'50',1,'10157',10168,0,2),(291,10157,'127',1,'10157',10164,0,2),(292,10157,'193',1,'10157',10165,0,2),(293,10157,'193',1,'10157',10167,0,2),(294,10157,'193',1,'10157',10168,0,2),(295,10157,'31',1,'10157',10165,0,2),(296,10157,'31',1,'10157',10167,0,2),(297,10157,'31',1,'10157',10168,0,2),(298,10157,'166',1,'10157',10167,0,4),(299,10157,'166',1,'10157',10168,0,4),(300,10157,'33',1,'10157',10165,0,4),(301,10157,'33',1,'10157',10167,0,4),(302,10157,'33',1,'10157',10168,0,4),(303,10157,'114',1,'10157',10165,0,2),(304,10157,'114',1,'10157',10167,0,2),(305,10157,'114',1,'10157',10168,0,2),(306,10157,'67',1,'10157',10167,0,2),(307,10157,'67',1,'10157',10168,0,2),(308,10157,'110',1,'10157',10167,0,2),(309,10157,'110',1,'10157',10168,0,2),(310,10157,'59',1,'10157',10167,0,2),(311,10157,'59',1,'10157',10168,0,2),(312,10157,'188',1,'10157',10167,0,2),(313,10157,'188',1,'10157',10168,0,2),(314,10157,'102',1,'10157',10165,0,2),(315,10157,'102',1,'10157',10167,0,2),(316,10157,'102',1,'10157',10168,0,2),(317,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10306',10166,10161,15),(318,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10306',10168,0,1),(319,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10306',10165,0,1),(320,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10166,10161,15),(321,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10168,0,1),(322,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10165,0,1),(323,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10166,10161,15),(324,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10168,0,1),(325,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10165,0,1),(326,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10310',10166,10161,15),(327,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10310',10168,0,1),(328,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10310',10165,0,1),(329,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10309',10166,10161,15),(330,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10309',10168,0,1),(331,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10309',10165,0,1),(332,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10312',10166,10161,15),(333,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10312',10168,0,1),(334,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10312',10165,0,1),(335,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10311',10166,10161,15),(336,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10311',10168,0,1),(337,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10311',10165,0,1),(338,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10314',10166,10161,15),(339,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10314',10168,0,1),(340,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10314',10165,0,1),(341,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10313',10166,10161,15),(342,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10313',10168,0,1),(343,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10313',10165,0,1),(344,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10316',10166,10161,15),(345,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10316',10168,0,1),(346,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10316',10165,0,1),(347,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10315',10166,10161,15),(348,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10315',10168,0,1),(349,10157,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10315',10165,0,1),(350,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10318',10166,10161,15),(351,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10318',10168,0,1),(352,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10318',10165,0,1),(353,10157,'com.liferay.portal.model.LayoutPrototype',4,'10319',10166,10161,15),(354,10157,'com.liferay.portal.model.Layout',4,'10323',10166,10161,1023),(355,10157,'com.liferay.portal.model.Layout',4,'10323',10173,0,19),(356,10157,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10327',10166,10161,15),(357,10157,'33',4,'10323_LAYOUT_33',10166,0,63),(358,10157,'33',4,'10323_LAYOUT_33',10173,0,1),(359,10157,'33',4,'10323_LAYOUT_33',10165,0,1),(360,10157,'com.liferay.portlet.blogs',4,'10320',10166,0,14),(361,10157,'148',4,'10323_LAYOUT_148_INSTANCE_yiXdnmk60Fo1',10166,0,31),(362,10157,'148',4,'10323_LAYOUT_148_INSTANCE_yiXdnmk60Fo1',10173,0,1),(363,10157,'148',4,'10323_LAYOUT_148_INSTANCE_yiXdnmk60Fo1',10165,0,1),(364,10157,'114',4,'10323_LAYOUT_114',10166,0,31),(365,10157,'114',4,'10323_LAYOUT_114',10173,0,1),(366,10157,'114',4,'10323_LAYOUT_114',10165,0,1),(367,10157,'com.liferay.portal.model.LayoutPrototype',4,'10331',10166,10161,15),(368,10157,'com.liferay.portal.model.Layout',4,'10335',10166,10161,1023),(369,10157,'com.liferay.portal.model.Layout',4,'10335',10173,0,19),(370,10157,'141',4,'10335_LAYOUT_141_INSTANCE_yIBnDDdGjH3B',10166,0,63),(371,10157,'141',4,'10335_LAYOUT_141_INSTANCE_yIBnDDdGjH3B',10173,0,1),(372,10157,'141',4,'10335_LAYOUT_141_INSTANCE_yIBnDDdGjH3B',10165,0,1),(373,10157,'122',4,'10335_LAYOUT_122_INSTANCE_ptprDAyokEOf',10166,0,63),(374,10157,'122',4,'10335_LAYOUT_122_INSTANCE_ptprDAyokEOf',10173,0,1),(375,10157,'122',4,'10335_LAYOUT_122_INSTANCE_ptprDAyokEOf',10165,0,1),(376,10157,'3',4,'10335_LAYOUT_3',10166,0,31),(377,10157,'3',4,'10335_LAYOUT_3',10173,0,1),(378,10157,'3',4,'10335_LAYOUT_3',10165,0,1),(379,10157,'101',4,'10335_LAYOUT_101_INSTANCE_KTt1jET4YwVX',10166,0,127),(380,10157,'101',4,'10335_LAYOUT_101_INSTANCE_KTt1jET4YwVX',10173,0,17),(381,10157,'101',4,'10335_LAYOUT_101_INSTANCE_KTt1jET4YwVX',10165,0,1),(382,10157,'com.liferay.portal.model.LayoutPrototype',4,'10341',10166,10161,15),(383,10157,'com.liferay.portal.model.Layout',4,'10345',10166,10161,1023),(384,10157,'com.liferay.portal.model.Layout',4,'10345',10173,0,19),(385,10157,'36',4,'10345_LAYOUT_36',10166,0,63),(386,10157,'36',4,'10345_LAYOUT_36',10173,0,1),(387,10157,'36',4,'10345_LAYOUT_36',10165,0,1),(388,10157,'com.liferay.portlet.wiki',4,'10342',10166,0,6),(389,10157,'122',4,'10345_LAYOUT_122_INSTANCE_KTS1LefPiAlC',10166,0,63),(390,10157,'122',4,'10345_LAYOUT_122_INSTANCE_KTS1LefPiAlC',10173,0,1),(391,10157,'122',4,'10345_LAYOUT_122_INSTANCE_KTS1LefPiAlC',10165,0,1),(392,10157,'141',4,'10345_LAYOUT_141_INSTANCE_wmY1vb7im0I2',10166,0,63),(393,10157,'141',4,'10345_LAYOUT_141_INSTANCE_wmY1vb7im0I2',10173,0,1),(394,10157,'141',4,'10345_LAYOUT_141_INSTANCE_wmY1vb7im0I2',10165,0,1),(395,10157,'com.liferay.portal.model.LayoutSetPrototype',4,'10352',10166,10161,15),(399,10157,'com.liferay.portal.model.Layout',4,'10364',10166,10161,1023),(400,10157,'com.liferay.portal.model.Layout',4,'10364',10173,0,19),(401,10157,'com.liferay.portal.model.Layout',4,'10364',10165,0,1),(402,10157,'19',4,'10364_LAYOUT_19',10166,0,31),(403,10157,'19',4,'10364_LAYOUT_19',10173,0,1),(404,10157,'19',4,'10364_LAYOUT_19',10165,0,1),(405,10157,'com.liferay.portlet.messageboards',4,'10353',10166,0,2047),(406,10157,'com.liferay.portlet.messageboards',4,'10353',10173,0,781),(407,10157,'com.liferay.portlet.messageboards',4,'10353',10165,0,1),(408,10157,'3',4,'10364_LAYOUT_3',10166,0,31),(409,10157,'3',4,'10364_LAYOUT_3',10173,0,1),(410,10157,'3',4,'10364_LAYOUT_3',10165,0,1),(411,10157,'59',4,'10364_LAYOUT_59_INSTANCE_Y7MRYkWzHvlj',10166,0,31),(412,10157,'59',4,'10364_LAYOUT_59_INSTANCE_Y7MRYkWzHvlj',10173,0,1),(413,10157,'59',4,'10364_LAYOUT_59_INSTANCE_Y7MRYkWzHvlj',10165,0,1),(414,10157,'com.liferay.portlet.polls',4,'10353',10166,0,6),(415,10157,'180',4,'10364_LAYOUT_180',10166,0,31),(416,10157,'180',4,'10364_LAYOUT_180',10173,0,1),(417,10157,'180',4,'10364_LAYOUT_180',10165,0,1),(418,10157,'101',4,'10364_LAYOUT_101_INSTANCE_GqjYCYB6OpaH',10166,0,127),(419,10157,'101',4,'10364_LAYOUT_101_INSTANCE_GqjYCYB6OpaH',10173,0,17),(420,10157,'101',4,'10364_LAYOUT_101_INSTANCE_GqjYCYB6OpaH',10165,0,1),(421,10157,'com.liferay.portal.model.Layout',4,'10372',10166,10161,1023),(422,10157,'com.liferay.portal.model.Layout',4,'10372',10173,0,19),(423,10157,'com.liferay.portal.model.Layout',4,'10372',10165,0,1),(424,10157,'36',4,'10372_LAYOUT_36',10166,0,63),(425,10157,'36',4,'10372_LAYOUT_36',10173,0,1),(426,10157,'36',4,'10372_LAYOUT_36',10165,0,1),(427,10157,'com.liferay.portlet.wiki',4,'10353',10166,0,6),(428,10157,'122',4,'10372_LAYOUT_122_INSTANCE_fXpzRlrXUwGr',10166,0,63),(429,10157,'122',4,'10372_LAYOUT_122_INSTANCE_fXpzRlrXUwGr',10173,0,1),(430,10157,'122',4,'10372_LAYOUT_122_INSTANCE_fXpzRlrXUwGr',10165,0,1),(431,10157,'148',4,'10372_LAYOUT_148_INSTANCE_eAyHGCFOtVrg',10166,0,31),(432,10157,'148',4,'10372_LAYOUT_148_INSTANCE_eAyHGCFOtVrg',10173,0,1),(433,10157,'148',4,'10372_LAYOUT_148_INSTANCE_eAyHGCFOtVrg',10165,0,1),(434,10157,'com.liferay.portal.model.LayoutSetPrototype',4,'10378',10166,10161,15),(438,10157,'com.liferay.portal.model.Layout',4,'10390',10166,10161,1023),(439,10157,'com.liferay.portal.model.Layout',4,'10390',10173,0,19),(440,10157,'com.liferay.portal.model.Layout',4,'10390',10165,0,1),(441,10157,'116',4,'10390_LAYOUT_116',10166,0,31),(442,10157,'116',4,'10390_LAYOUT_116',10173,0,1),(443,10157,'116',4,'10390_LAYOUT_116',10165,0,1),(444,10157,'3',4,'10390_LAYOUT_3',10166,0,31),(445,10157,'3',4,'10390_LAYOUT_3',10173,0,1),(446,10157,'3',4,'10390_LAYOUT_3',10165,0,1),(447,10157,'82',4,'10390_LAYOUT_82',10166,0,31),(448,10157,'82',4,'10390_LAYOUT_82',10173,0,1),(449,10157,'82',4,'10390_LAYOUT_82',10165,0,1),(450,10157,'101',4,'10390_LAYOUT_101_INSTANCE_4qjHCD615S28',10166,0,127),(451,10157,'101',4,'10390_LAYOUT_101_INSTANCE_4qjHCD615S28',10173,0,17),(452,10157,'101',4,'10390_LAYOUT_101_INSTANCE_4qjHCD615S28',10165,0,1),(453,10157,'com.liferay.portal.model.Layout',4,'10399',10166,10161,1023),(454,10157,'com.liferay.portal.model.Layout',4,'10399',10173,0,19),(455,10157,'com.liferay.portal.model.Layout',4,'10399',10165,0,1),(456,10157,'20',4,'10399_LAYOUT_20',10166,0,63),(457,10157,'20',4,'10399_LAYOUT_20',10173,0,1),(458,10157,'20',4,'10399_LAYOUT_20',10165,0,1),(459,10157,'com.liferay.portlet.documentlibrary',4,'10379',10166,0,1023),(460,10157,'com.liferay.portlet.documentlibrary',4,'10379',10173,0,331),(461,10157,'com.liferay.portlet.documentlibrary',4,'10379',10165,0,1),(462,10157,'101',4,'10399_LAYOUT_101_INSTANCE_CMQplGARDtvK',10166,0,127),(463,10157,'101',4,'10399_LAYOUT_101_INSTANCE_CMQplGARDtvK',10173,0,17),(464,10157,'101',4,'10399_LAYOUT_101_INSTANCE_CMQplGARDtvK',10165,0,1),(465,10157,'com.liferay.portal.model.Layout',4,'10407',10166,10161,1023),(466,10157,'com.liferay.portal.model.Layout',4,'10407',10173,0,19),(467,10157,'com.liferay.portal.model.Layout',4,'10407',10165,0,1),(468,10157,'39',4,'10407_LAYOUT_39_INSTANCE_4pVbMBL1LNCx',10166,0,31),(469,10157,'39',4,'10407_LAYOUT_39_INSTANCE_4pVbMBL1LNCx',10173,0,1),(470,10157,'39',4,'10407_LAYOUT_39_INSTANCE_4pVbMBL1LNCx',10165,0,1),(471,10157,'39',4,'10407_LAYOUT_39_INSTANCE_TUNJpxgy39PK',10166,0,31),(472,10157,'39',4,'10407_LAYOUT_39_INSTANCE_TUNJpxgy39PK',10173,0,1),(473,10157,'39',4,'10407_LAYOUT_39_INSTANCE_TUNJpxgy39PK',10165,0,1),(474,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10415',10166,10161,15),(475,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10416',10166,10161,15),(476,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10417',10166,10161,15),(477,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10418',10166,10161,15),(478,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10419',10166,10161,15),(479,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10420',10166,10161,15),(480,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10421',10166,10161,15),(481,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10423',10166,10161,15),(482,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10425',10166,10161,15),(483,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10427',10166,10161,15),(484,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10429',10166,10161,15),(485,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10431',10166,10161,15),(486,10157,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10433',10166,10161,15),(487,10157,'com.liferay.portal.model.Layout',4,'10439',10166,10201,1023),(488,10157,'com.liferay.portal.model.Layout',4,'10445',10166,10201,1023),(489,10157,'com.liferay.portal.model.Layout',4,'10445',10167,0,19),(490,10157,'com.liferay.portal.model.Layout',4,'10445',10165,0,1),(491,10157,'145',4,'10439_LAYOUT_145',10166,0,31),(492,10157,'145',4,'10439_LAYOUT_145',10167,0,1),(493,10157,'58',4,'10439_LAYOUT_58',10166,0,31),(494,10157,'58',4,'10439_LAYOUT_58',10167,0,1),(495,10157,'47',4,'10187_LAYOUT_47',10166,0,31),(496,10157,'58',4,'10187_LAYOUT_58',10166,0,31),(497,10157,'58',4,'10187_LAYOUT_58',10173,0,1),(498,10157,'47',4,'10187_LAYOUT_47',10173,0,1),(499,10157,'47',4,'10187_LAYOUT_47',10165,0,1),(500,10157,'58',4,'10187_LAYOUT_58',10165,0,1),(501,10157,'145',4,'10187_LAYOUT_145',10166,0,31),(502,10157,'145',4,'10187_LAYOUT_145',10173,0,1),(503,10157,'145',4,'10187_LAYOUT_145',10165,0,1);
/*!40000 ALTER TABLE `resourcepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbthreadflag`
--

DROP TABLE IF EXISTS `mbthreadflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbthreadflag` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadFlagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  UNIQUE KEY `IX_33781904` (`userId`,`threadId`),
  UNIQUE KEY `IX_FEB0FC87` (`uuid_`,`groupId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_A28004B` (`userId`),
  KEY `IX_F36BBB83` (`uuid_`),
  KEY `IX_DCE308C5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbthreadflag`
--

LOCK TABLES `mbthreadflag` WRITE;
/*!40000 ALTER TABLE `mbthreadflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbthreadflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentries_assetcategories`
--

DROP TABLE IF EXISTS `assetentries_assetcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentries_assetcategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentries_assetcategories`
--

LOCK TABLES `assetentries_assetcategories` WRITE;
/*!40000 ALTER TABLE `assetentries_assetcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assetcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`),
  UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_16D87CA7` (`countryId`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comté',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','Île-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyrénées',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),(3025,3,'RE','Réunion',1),(3026,3,'V','Rhône-Alpes',1),(4001,4,'BW','Baden-Württemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BR','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Thüringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MZ','Monza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potosí',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Østfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','Møre of Romsdal',1),(164015,164,'16','Sør-Trøndelag',1),(164016,164,'17','Nord-Trøndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graubünden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuchâtel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandovalue`
--

DROP TABLE IF EXISTS `expandovalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandovalue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`),
  UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_F7DD0987` (`columnId`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_F0566A77` (`tableId`),
  KEY `IX_1BD3F4C` (`tableId`,`classPK`),
  KEY `IX_CA9AFB7C` (`tableId`,`columnId`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandovalue`
--

LOCK TABLES `expandovalue` WRITE;
/*!40000 ALTER TABLE `expandovalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandovalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowdefinitionlink`
--

DROP TABLE IF EXISTS `workflowdefinitionlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowdefinitionlink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`),
  KEY `IX_A8B0D276` (`companyId`),
  KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`),
  KEY `IX_B6EE8C9E` (`groupId`,`companyId`,`classNameId`),
  KEY `IX_1E5B9905` (`groupId`,`companyId`,`classNameId`,`classPK`),
  KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowdefinitionlink`
--

LOCK TABLES `workflowdefinitionlink` WRITE;
/*!40000 ALTER TABLE `workflowdefinitionlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowdefinitionlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitemfield`
--

DROP TABLE IF EXISTS `shoppingitemfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitemfield` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitemfield`
--

LOCK TABLES `shoppingitemfield` WRITE;
/*!40000 ALTER TABLE `shoppingitemfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticleresource`
--

DROP TABLE IF EXISTS `journalarticleresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticleresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_DCD1FAC1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticleresource`
--

LOCK TABLES `journalarticleresource` WRITE;
/*!40000 ALTER TABLE `journalarticleresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticleresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_`
--

DROP TABLE IF EXISTS `group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `manualMembership` tinyint(4) DEFAULT NULL,
  `membershipRestriction` int(11) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `remoteStagingGroupCount` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  UNIQUE KEY `IX_754FBB1C` (`uuid_`,`groupId`),
  KEY `IX_ABA5CEC2` (`companyId`),
  KEY `IX_B584B5CC` (`companyId`,`classNameId`),
  KEY `IX_ABE2D54` (`companyId`,`classNameId`,`parentGroupId`),
  KEY `IX_5D75499E` (`companyId`,`parentGroupId`),
  KEY `IX_6C499099` (`companyId`,`parentGroupId`,`site`),
  KEY `IX_63A2AABD` (`companyId`,`site`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`),
  KEY `IX_F981514E` (`uuid_`),
  KEY `IX_26CC761A` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_`
--

LOCK TABLES `group_` WRITE;
/*!40000 ALTER TABLE `group_` DISABLE KEYS */;
INSERT INTO `group_` VALUES ('01ef4863-9b67-4ed5-b506-75a0b653d25a',10175,10157,10161,10001,10175,0,0,'/10175/','Control Panel','',3,'',1,0,'/control_panel',0,0,1),('7f7bac4e-3cd6-4ac4-a13d-0c6bcb7f72a9',10184,10157,10161,10001,10184,0,0,'/10184/','${projectName}','',1,'',1,0,'/${projectName.toLowerCase()}',1,0,1),('5efcf989-c229-4f99-b88f-580ce2152638',10194,10157,10161,10193,10161,0,0,'/10194/','User Personal Site','',3,'',1,0,'/personal_site',0,0,1),('39c05cbb-49f2-40cf-a25d-6ddb209783b2',10197,10157,10161,10025,10157,0,0,'/10197/','10157','',0,'',1,0,'/global',1,0,1),('3d7cd077-604f-4653-8cd6-c7f3fa16285f',10204,10157,10201,10005,10201,0,0,'/10204/','10201','',0,'',1,0,'/test',0,0,1),('b3dcacbb-f404-4391-8fc7-f1d96cff3a18',10320,10157,10161,10032,10319,0,0,'/10320/','10319','',0,'',1,0,'/template-10319',0,0,1),('46085b0b-46d6-47b6-8e31-2cedc1b3ed2e',10332,10157,10161,10032,10331,0,0,'/10332/','10331','',0,'',1,0,'/template-10331',0,0,1),('e45f97ec-48e7-43bd-baf2-24223e5ff6e5',10342,10157,10161,10032,10341,0,0,'/10342/','10341','',0,'',1,0,'/template-10341',0,0,1),('d6029c09-f685-4d31-9ee2-1f4666869ecf',10353,10157,10161,10036,10352,0,0,'/10353/','10352','',0,'',1,0,'/template-10352',0,0,1),('2c46ee24-1bd4-464f-a89c-00d8d66671f6',10379,10157,10161,10036,10378,0,0,'/10379/','10378','',0,'',1,0,'/template-10378',0,0,1);
/*!40000 ALTER TABLE `group_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutbranch`
--

DROP TABLE IF EXISTS `layoutbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutbranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`),
  UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`),
  KEY `IX_6C226433` (`layoutSetBranchId`),
  KEY `IX_2C42603E` (`layoutSetBranchId`,`plid`),
  KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutbranch`
--

LOCK TABLES `layoutbranch` WRITE;
/*!40000 ALTER TABLE `layoutbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_usergroups`
--

DROP TABLE IF EXISTS `groups_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_usergroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_usergroups`
--

LOCK TABLES `groups_usergroups` WRITE;
/*!40000 ALTER TABLE `groups_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdraction`
--

DROP TABLE IF EXISTS `mdraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdraction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`),
  KEY `IX_FD90786C` (`ruleGroupInstanceId`),
  KEY `IX_77BB5E9D` (`uuid_`),
  KEY `IX_C58A516B` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdraction`
--

LOCK TABLES `mdraction` WRITE;
/*!40000 ALTER TABLE `mdraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalfolder`
--

DROP TABLE IF EXISTS `journalfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_65026705` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_E002061` (`uuid_`,`groupId`),
  KEY `IX_E6E2725D` (`companyId`),
  KEY `IX_C36B0443` (`companyId`,`status`),
  KEY `IX_742DEC1F` (`groupId`),
  KEY `IX_E988689E` (`groupId`,`name`),
  KEY `IX_190483C6` (`groupId`,`parentFolderId`),
  KEY `IX_EFD9CAC` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_63BDFA69` (`uuid_`),
  KEY `IX_54F89E1F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalfolder`
--

LOCK TABLES `journalfolder` WRITE;
/*!40000 ALTER TABLE `journalfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusUser`
--

DROP TABLE IF EXISTS `CyrusUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusUser` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusUser`
--

LOCK TABLES `CyrusUser` WRITE;
/*!40000 ALTER TABLE `CyrusUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikipageresource`
--

DROP TABLE IF EXISTS `wikipageresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikipageresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikipageresource`
--

LOCK TABLES `wikipageresource` WRITE;
/*!40000 ALTER TABLE `wikipageresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipageresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsflag`
--

DROP TABLE IF EXISTS `announcementsflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsflag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsflag`
--

LOCK TABLES `announcementsflag` WRITE;
/*!40000 ALTER TABLE `announcementsflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`),
  KEY `IX_5F1DD85A` (`uuid_`),
  KEY `IX_72394F8E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcoupon`
--

DROP TABLE IF EXISTS `shoppingcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  UNIQUE KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcoupon`
--

LOCK TABLES `shoppingcoupon` WRITE;
/*!40000 ALTER TABLE `shoppingcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfilerank`
--

DROP TABLE IF EXISTS `dlfilerank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfilerank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_BAFB116E` (`groupId`,`userId`),
  KEY `IX_4E96195B` (`groupId`,`userId`,`active_`),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfilerank`
--

LOCK TABLES `dlfilerank` WRITE;
/*!40000 ALTER TABLE `dlfilerank` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfilerank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotificationdelivery`
--

DROP TABLE IF EXISTS `usernotificationdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernotificationdelivery` (
  `userNotificationDeliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `notificationType` int(11) DEFAULT NULL,
  `deliveryType` int(11) DEFAULT NULL,
  `deliver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationDeliveryId`),
  UNIQUE KEY `IX_8B6E3ACE` (`userId`,`portletId`,`classNameId`,`notificationType`,`deliveryType`),
  KEY `IX_C648700A` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotificationdelivery`
--

LOCK TABLES `usernotificationdelivery` WRITE;
/*!40000 ALTER TABLE `usernotificationdelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotificationdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_fired_triggers`
--

DROP TABLE IF EXISTS `quartz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_fired_triggers`
--

LOCK TABLES `quartz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettagproperty`
--

DROP TABLE IF EXISTS `assettagproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettagproperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`),
  UNIQUE KEY `IX_2C944354` (`tagId`,`key_`),
  KEY `IX_DFF1F063` (`companyId`),
  KEY `IX_13805BF7` (`companyId`,`key_`),
  KEY `IX_3269E180` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettagproperty`
--

LOCK TABLES `assettagproperty` WRITE;
/*!40000 ALTER TABLE `assettagproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_orgs`
--

DROP TABLE IF EXISTS `groups_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_orgs`
--

LOCK TABLES `groups_orgs` WRITE;
/*!40000 ALTER TABLE `groups_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trashentry`
--

DROP TABLE IF EXISTS `trashentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trashentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B35F73D5` (`classNameId`,`classPK`),
  KEY `IX_2674F2A8` (`companyId`),
  KEY `IX_526A032A` (`groupId`),
  KEY `IX_FC4EEA64` (`groupId`,`classNameId`),
  KEY `IX_6CAAE2E8` (`groupId`,`createDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trashentry`
--

LOCK TABLES `trashentry` WRITE;
/*!40000 ALTER TABLE `trashentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `trashentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordpolicy`
--

DROP TABLE IF EXISTS `passwordpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordpolicy` (
  `uuid_` varchar(75) DEFAULT NULL,
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `regex` varchar(75) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`),
  UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`),
  KEY `IX_8FEE65F5` (`companyId`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`),
  KEY `IX_51437A01` (`uuid_`),
  KEY `IX_E4D7EF87` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordpolicy`
--

LOCK TABLES `passwordpolicy` WRITE;
/*!40000 ALTER TABLE `passwordpolicy` DISABLE KEYS */;
INSERT INTO `passwordpolicy` VALUES ('3e4b6c2d-8314-4dc5-aa5e-bf22088e8897',10200,10157,10161,'','2014-05-27 18:33:25','2014-05-27 18:33:25',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,'(?=.{4})(?:[a-zA-Z0-9]*)',0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `passwordpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailaddress`
--

DROP TABLE IF EXISTS `emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailaddress` (
  `uuid_` varchar(75) DEFAULT NULL,
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`),
  KEY `IX_1BB072CA` (`companyId`),
  KEY `IX_49D2DEC4` (`companyId`,`classNameId`),
  KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`),
  KEY `IX_D24F3956` (`uuid_`),
  KEY `IX_F74AB912` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailaddress`
--

LOCK TABLES `emailaddress` WRITE;
/*!40000 ALTER TABLE `emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytype`
--

DROP TABLE IF EXISTS `dlfileentrytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileEntryTypeKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_5B6BEF5F` (`groupId`,`fileEntryTypeKey`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_4501FD9C` (`groupId`),
  KEY `IX_90724726` (`uuid_`),
  KEY `IX_5B03E942` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytype`
--

LOCK TABLES `dlfileentrytype` WRITE;
/*!40000 ALTER TABLE `dlfileentrytype` DISABLE KEYS */;
INSERT INTO `dlfileentrytype` VALUES ('b63b68dc-103e-47ef-92ac-91392f6a9b42',0,0,0,0,'','2014-05-27 18:33:06','2014-05-27 18:33:06','BASIC-DOCUMENT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">basic-document</Name></root>',''),('0f7204a5-11e1-43bc-b5ce-26f127272d58',10309,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28','CONTRACT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>'),('b1200e6a-f654-4945-8f0a-6ba14d412f7f',10311,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28','MARKETING BANNER','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>'),('fd8568c2-7c90-41e6-a7c1-bc6865707b14',10313,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28','ONLINE TRAINING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>'),('f4895d33-82ba-4eed-be20-5fb705a31c21',10315,10197,10157,10161,'','2014-05-27 18:33:28','2014-05-27 18:33:28','SALES PRESENTATION','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>');
/*!40000 ALTER TABLE `dlfileentrytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (10164,10201),(10165,10161),(10167,10201),(10168,10201);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettagstats`
--

DROP TABLE IF EXISTS `assettagstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettagstats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`),
  KEY `IX_9464CA` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettagstats`
--

LOCK TABLES `assettagstats` WRITE;
/*!40000 ALTER TABLE `assettagstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrymetadata`
--

DROP TABLE IF EXISTS `dlfileentrymetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrymetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`),
  UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`),
  KEY `IX_4F40FE5E` (`fileEntryId`),
  KEY `IX_A44636C9` (`fileEntryId`,`fileVersionId`),
  KEY `IX_F8E90438` (`fileEntryTypeId`),
  KEY `IX_1FE9C04` (`fileVersionId`),
  KEY `IX_D49AB5D1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrymetadata`
--

LOCK TABLES `dlfileentrymetadata` WRITE;
/*!40000 ALTER TABLE `dlfileentrymetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentrymetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecordset`
--

DROP TABLE IF EXISTS `ddlrecordset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecordset` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`),
  UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`),
  UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`),
  KEY `IX_4FA5969F` (`groupId`),
  KEY `IX_561E44E9` (`uuid_`),
  KEY `IX_5938C39F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecordset`
--

LOCK TABLES `ddlrecordset` WRITE;
/*!40000 ALTER TABLE `ddlrecordset` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backgroundtask`
--

DROP TABLE IF EXISTS `backgroundtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backgroundtask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext,
  PRIMARY KEY (`backgroundTaskId`),
  KEY `IX_C5A6C78F` (`companyId`),
  KEY `IX_5A09E5D1` (`groupId`),
  KEY `IX_98CC0AAB` (`groupId`,`name`,`taskExecutorClassName`),
  KEY `IX_579C63B0` (`groupId`,`name`,`taskExecutorClassName`,`completed`),
  KEY `IX_C71C3B7` (`groupId`,`status`),
  KEY `IX_A73B688A` (`groupId`,`taskExecutorClassName`),
  KEY `IX_7A9FF471` (`groupId`,`taskExecutorClassName`,`completed`),
  KEY `IX_7E757D70` (`groupId`,`taskExecutorClassName`,`status`),
  KEY `IX_C07CC7F8` (`name`),
  KEY `IX_75638CDF` (`status`),
  KEY `IX_2FCFE748` (`taskExecutorClassName`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backgroundtask`
--

LOCK TABLES `backgroundtask` WRITE;
/*!40000 ALTER TABLE `backgroundtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `backgroundtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website` (
  `uuid_` varchar(75) DEFAULT NULL,
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`),
  KEY `IX_96F07007` (`companyId`),
  KEY `IX_4F0F0CA7` (`companyId`,`classNameId`),
  KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`),
  KEY `IX_76F15D13` (`uuid_`),
  KEY `IX_712BCD35` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershiprequest`
--

DROP TABLE IF EXISTS `membershiprequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membershiprequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`),
  KEY `IX_8A1CC4B` (`groupId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershiprequest`
--

LOCK TABLES `membershiprequest` WRITE;
/*!40000 ALTER TABLE `membershiprequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `membershiprequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbmessage`
--

DROP TABLE IF EXISTS `mbmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbmessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`),
  KEY `IX_51A8D44D` (`classNameId`,`classPK`),
  KEY `IX_F6687633` (`classNameId`,`classPK`,`status`),
  KEY `IX_B1432D30` (`companyId`),
  KEY `IX_1AD93C16` (`companyId`,`status`),
  KEY `IX_5B153FB2` (`groupId`),
  KEY `IX_1073AB9F` (`groupId`,`categoryId`),
  KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`),
  KEY `IX_B674AB58` (`groupId`,`categoryId`,`threadId`),
  KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`),
  KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`),
  KEY `IX_ED39AC98` (`groupId`,`status`),
  KEY `IX_8EB8C5EC` (`groupId`,`userId`),
  KEY `IX_377858D2` (`groupId`,`userId`,`status`),
  KEY `IX_75B95071` (`threadId`),
  KEY `IX_9D7C3B23` (`threadId`,`answer`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_9DC8E57` (`threadId`,`status`),
  KEY `IX_7A040C32` (`userId`),
  KEY `IX_59F9CE5C` (`userId`,`classNameId`),
  KEY `IX_ABEB6D07` (`userId`,`classNameId`,`classPK`),
  KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`),
  KEY `IX_3321F142` (`userId`,`classNameId`,`status`),
  KEY `IX_C57B16BC` (`uuid_`),
  KEY `IX_57CA9FEC` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbmessage`
--

LOCK TABLES `mbmessage` WRITE;
/*!40000 ALTER TABLE `mbmessage` DISABLE KEYS */;
INSERT INTO `mbmessage` VALUES ('e8d21046-6d66-4d47-900f-fa772ca58a56',10180,10175,10157,10161,'','2014-05-27 18:33:23','2014-05-27 18:33:23',10002,10178,-1,10181,10180,0,'10178','10178','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:23'),('0236f3b0-1dd9-47f4-b0d3-34f073d6ac86',10189,10184,10157,10161,'','2014-05-27 18:33:24','2014-05-27 18:33:24',10002,10187,-1,10190,10189,0,'10187','10187','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:24'),('10348bf1-ce2c-468a-b334-fba9233ae6a6',10325,10320,10157,10161,'','2014-05-27 18:33:29','2014-05-27 18:33:29',10002,10323,-1,10326,10325,0,'10323','10323','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:29'),('d87a6ca8-0bdb-4299-8f99-0d26a2f24a54',10337,10332,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',10002,10335,-1,10338,10337,0,'10335','10335','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:30'),('96bf76fd-512a-480b-979d-2459ea22cfc1',10347,10342,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',10002,10345,-1,10348,10347,0,'10345','10345','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:30'),('30855e1d-8ade-4f5c-8940-0ded760d60e6',10366,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10002,10364,-1,10367,10366,0,'10364','10364','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:31'),('7356ead5-fd73-4be5-8250-e2f4b131c198',10374,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10002,10372,-1,10375,10374,0,'10372','10372','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:31'),('faf9ccd9-1c3f-450f-9414-80c0946ace3f',10392,10379,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10002,10390,-1,10393,10392,0,'10390','10390','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:31'),('d7eed1bb-b49b-47c2-a49e-935d5b376826',10401,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10002,10399,-1,10402,10401,0,'10399','10399','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:32'),('fb629f03-ddc9-45cb-aa27-317c1527e638',10409,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10002,10407,-1,10410,10409,0,'10407','10407','bbcode',1,0,0,0,0,10161,'','2014-05-27 18:33:32'),('8db19c1a-d638-45e4-ab50-fdc687c3e558',10441,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',10002,10439,-1,10442,10441,0,'10439','10439','bbcode',0,0,0,0,0,10201,'Test Test','2014-05-27 18:36:21'),('39dece45-fdec-457c-9fce-ec165ca98402',10447,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',10002,10445,-1,10448,10447,0,'10445','10445','bbcode',0,0,0,0,0,10201,'Test Test','2014-05-27 18:36:21');
/*!40000 ALTER TABLE `mbmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CALENDARS`
--

LOCK TABLES `QUARTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitysetting`
--

DROP TABLE IF EXISTS `socialactivitysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitysetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_8BE5F230` (`groupId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_9D22151E` (`groupId`,`classNameId`),
  KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitysetting`
--

LOCK TABLES `socialactivitysetting` WRITE;
/*!40000 ALTER TABLE `socialactivitysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `QUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_LOCKS`
--

LOCK TABLES `QUARTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `IX_EC00543C` (`webId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_35E3E7C6` (`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (10157,10159,'liferay.com','rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABABHQYy07j8KawpeCcaJXZM','liferay.com','',0,0,0,1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbstatsuser`
--

DROP TABLE IF EXISTS `mbstatsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_A00A898F` (`groupId`),
  KEY `IX_D33A5445` (`groupId`,`userId`,`messageCount`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbstatsuser`
--

LOCK TABLES `mbstatsuser` WRITE;
/*!40000 ALTER TABLE `mbstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbstatsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_`
--

DROP TABLE IF EXISTS `organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`),
  KEY `IX_396D6B42` (`uuid_`),
  KEY `IX_A9D85BA6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_`
--

LOCK TABLES `organization_` WRITE;
/*!40000 ALTER TABLE `organization_` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikinode`
--

DROP TABLE IF EXISTS `wikinode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikinode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B54332D6` (`companyId`,`status`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_23325358` (`groupId`,`status`),
  KEY `IX_6C112D7C` (`uuid_`),
  KEY `IX_E0E6D12C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikinode`
--

LOCK TABLES `wikinode` WRITE;
/*!40000 ALTER TABLE `wikinode` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikinode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `uuid_` varchar(75) DEFAULT NULL,
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`),
  KEY `IX_9F704A14` (`companyId`),
  KEY `IX_A2E4AFBA` (`companyId`,`classNameId`),
  KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`),
  KEY `IX_EA6245A0` (`uuid_`),
  KEY `IX_B271FA88` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calevent`
--

DROP TABLE IF EXISTS `calevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`),
  KEY `IX_D6FD9496` (`companyId`),
  KEY `IX_12EE4898` (`groupId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FCD7C63D` (`groupId`,`type_`),
  KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`),
  KEY `IX_F6006202` (`remindBy`),
  KEY `IX_C1AD2122` (`uuid_`),
  KEY `IX_299639C6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calevent`
--

LOCK TABLES `calevent` WRITE;
/*!40000 ALTER TABLE `calevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `calevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingsentry`
--

DROP TABLE IF EXISTS `ratingsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingsentry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`),
  KEY `IX_16184D57` (`classNameId`,`classPK`),
  KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingsentry`
--

LOCK TABLES `ratingsentry` WRITE;
/*!40000 ALTER TABLE `ratingsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialrelation`
--

DROP TABLE IF EXISTS `socialrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialrelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_61171E99` (`companyId`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_5A40CDCC` (`userId1`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_B5C9C690` (`userId1`,`userId2`),
  KEY `IX_5A40D18D` (`userId2`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_F0CA24A5` (`uuid_`),
  KEY `IX_5B30F663` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialrelation`
--

LOCK TABLES `socialrelation` WRITE;
/*!40000 ALTER TABLE `socialrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroupgrouprole`
--

DROP TABLE IF EXISTS `usergroupgrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroupgrouprole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CCBE4063` (`groupId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_DCDED558` (`userGroupId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroupgrouprole`
--

LOCK TABLES `usergroupgrouprole` WRITE;
/*!40000 ALTER TABLE `usergroupgrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroupgrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivity`
--

DROP TABLE IF EXISTS `socialactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `activitySetId` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentClassNameId` bigint(20) DEFAULT NULL,
  `parentClassPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_F542E9BC` (`activitySetId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_D0E9029E` (`classNameId`,`classPK`,`type_`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivity`
--

LOCK TABLES `socialactivity` WRITE;
/*!40000 ALTER TABLE `socialactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_54243AFD` (`userId`),
  KEY `IX_E8F34171` (`userId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrulegroup`
--

DROP TABLE IF EXISTS `mdrrulegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrulegroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`),
  UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`),
  KEY `IX_5849891C` (`groupId`),
  KEY `IX_7F26B2A6` (`uuid_`),
  KEY `IX_CC14DC2` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrulegroup`
--

LOCK TABLES `mdrrulegroup` WRITE;
/*!40000 ALTER TABLE `mdrrulegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentry`
--

DROP TABLE IF EXISTS `dlfileentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_772ECDE7` (`fileEntryTypeId`),
  KEY `IX_8F6C75D0` (`folderId`,`name`),
  KEY `IX_F4AF5636` (`groupId`),
  KEY `IX_93CF8193` (`groupId`,`folderId`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_43261870` (`groupId`,`userId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_D9492CF6` (`mimeType`),
  KEY `IX_64F0FE40` (`uuid_`),
  KEY `IX_31079DE8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentry`
--

LOCK TABLES `dlfileentry` WRITE;
/*!40000 ALTER TABLE `dlfileentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetcategoryproperty`
--

DROP TABLE IF EXISTS `assetcategoryproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetcategoryproperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`),
  UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`),
  KEY `IX_99DA856` (`categoryId`),
  KEY `IX_8654719F` (`companyId`),
  KEY `IX_52340033` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetcategoryproperty`
--

LOCK TABLES `assetcategoryproperty` WRITE;
/*!40000 ALTER TABLE `assetcategoryproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategoryproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_`
--

DROP TABLE IF EXISTS `release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`),
  UNIQUE KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release_`
--

LOCK TABLES `release_` WRITE;
/*!40000 ALTER TABLE `release_` DISABLE KEYS */;
INSERT INTO `release_` VALUES (1,'2014-05-27 12:32:49','2014-05-27 18:33:06','portal',6201,'2014-03-20 00:00:00',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.');
/*!40000 ALTER TABLE `release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbcategory`
--

DROP TABLE IF EXISTS `mbcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_E15A5DB5` (`companyId`,`status`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C295DBEE` (`groupId`,`parentCategoryId`,`status`),
  KEY `IX_DA84A9F7` (`groupId`,`status`),
  KEY `IX_C2626EDB` (`uuid_`),
  KEY `IX_13DF4E6D` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbcategory`
--

LOCK TABLES `mbcategory` WRITE;
/*!40000 ALTER TABLE `mbcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalcontentsearch`
--

DROP TABLE IF EXISTS `journalcontentsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalcontentsearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`),
  UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`),
  KEY `IX_9207CB31` (`articleId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_20962903` (`groupId`,`privateLayout`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`),
  KEY `IX_8DAF8A35` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalcontentsearch`
--

LOCK TABLES `journalcontentsearch` WRITE;
/*!40000 ALTER TABLE `journalcontentsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalcontentsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogsstatsuser`
--

DROP TABLE IF EXISTS `blogsstatsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogsstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_43840EEB` (`groupId`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_BB51F1D9` (`userId`),
  KEY `IX_507BA031` (`userId`,`lastPostDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogsstatsuser`
--

LOCK TABLES `blogsstatsuser` WRITE;
/*!40000 ALTER TABLE `blogsstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsstatsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfolder`
--

DROP TABLE IF EXISTS `dlfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `hidden_` tinyint(4) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_E79BE432` (`companyId`,`status`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_F78286C5` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`),
  KEY `IX_C88430AB` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_CE360BF6` (`groupId`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`),
  KEY `IX_DA448450` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfolder`
--

LOCK TABLES `dlfolder` WRITE;
/*!40000 ALTER TABLE `dlfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `IX_717B97E1` (`a2`),
  UNIQUE KEY `IX_717B9BA2` (`a3`),
  UNIQUE KEY `IX_19DA007B` (`name`),
  KEY `IX_25D734CD` (`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'canada','CA','CAN','124','001',1,1),(2,'china','CN','CHN','156','086',1,1),(3,'france','FR','FRA','250','033',1,1),(4,'germany','DE','DEU','276','049',1,1),(5,'hong-kong','HK','HKG','344','852',1,1),(6,'hungary','HU','HUN','348','036',1,1),(7,'israel','IL','ISR','376','972',1,1),(8,'italy','IT','ITA','380','039',1,1),(9,'japan','JP','JPN','392','081',0,1),(10,'south-korea','KR','KOR','410','082',1,1),(11,'netherlands','NL','NLD','528','031',1,1),(12,'portugal','PT','PRT','620','351',1,1),(13,'russia','RU','RUS','643','007',1,1),(14,'singapore','SG','SGP','702','065',1,1),(15,'spain','ES','ESP','724','034',1,1),(16,'turkey','TR','TUR','792','090',1,1),(17,'vietnam','VN','VNM','704','084',1,1),(18,'united-kingdom','GB','GBR','826','044',1,1),(19,'united-states','US','USA','840','001',1,1),(20,'afghanistan','AF','AFG','4','093',1,1),(21,'albania','AL','ALB','8','355',1,1),(22,'algeria','DZ','DZA','12','213',1,1),(23,'american-samoa','AS','ASM','16','684',1,1),(24,'andorra','AD','AND','20','376',1,1),(25,'angola','AO','AGO','24','244',0,1),(26,'anguilla','AI','AIA','660','264',1,1),(27,'antarctica','AQ','ATA','10','672',1,1),(28,'antigua-barbuda','AG','ATG','28','268',0,1),(29,'argentina','AR','ARG','32','054',1,1),(30,'armenia','AM','ARM','51','374',1,1),(31,'aruba','AW','ABW','533','297',0,1),(32,'australia','AU','AUS','36','061',1,1),(33,'austria','AT','AUT','40','043',1,1),(34,'azerbaijan','AZ','AZE','31','994',1,1),(35,'bahamas','BS','BHS','44','242',0,1),(36,'bahrain','BH','BHR','48','973',1,1),(37,'bangladesh','BD','BGD','50','880',1,1),(38,'barbados','BB','BRB','52','246',1,1),(39,'belarus','BY','BLR','112','375',1,1),(40,'belgium','BE','BEL','56','032',1,1),(41,'belize','BZ','BLZ','84','501',0,1),(42,'benin','BJ','BEN','204','229',0,1),(43,'bermuda','BM','BMU','60','441',1,1),(44,'bhutan','BT','BTN','64','975',1,1),(45,'bolivia','BO','BOL','68','591',1,1),(46,'bosnia-herzegovina','BA','BIH','70','387',1,1),(47,'botswana','BW','BWA','72','267',0,1),(48,'brazil','BR','BRA','76','055',1,1),(49,'british-virgin-islands','VG','VGB','92','284',1,1),(50,'brunei','BN','BRN','96','673',1,1),(51,'bulgaria','BG','BGR','100','359',1,1),(52,'burkina-faso','BF','BFA','854','226',0,1),(53,'burma-myanmar','MM','MMR','104','095',1,1),(54,'burundi','BI','BDI','108','257',0,1),(55,'cambodia','KH','KHM','116','855',1,1),(56,'cameroon','CM','CMR','120','237',1,1),(57,'cape-verde-island','CV','CPV','132','238',1,1),(58,'cayman-islands','KY','CYM','136','345',1,1),(59,'central-african-republic','CF','CAF','140','236',0,1),(60,'chad','TD','TCD','148','235',1,1),(61,'chile','CL','CHL','152','056',1,1),(62,'christmas-island','CX','CXR','162','061',1,1),(63,'cocos-islands','CC','CCK','166','061',1,1),(64,'colombia','CO','COL','170','057',1,1),(65,'comoros','KM','COM','174','269',0,1),(66,'republic-of-congo','CD','COD','180','242',0,1),(67,'democratic-republic-of-congo','CG','COG','178','243',0,1),(68,'cook-islands','CK','COK','184','682',0,1),(69,'costa-rica','CR','CRI','188','506',1,1),(70,'croatia','HR','HRV','191','385',1,1),(71,'cuba','CU','CUB','192','053',1,1),(72,'cyprus','CY','CYP','196','357',1,1),(73,'czech-republic','CZ','CZE','203','420',1,1),(74,'denmark','DK','DNK','208','045',1,1),(75,'djibouti','DJ','DJI','262','253',0,1),(76,'dominica','DM','DMA','212','767',0,1),(77,'dominican-republic','DO','DOM','214','809',1,1),(78,'ecuador','EC','ECU','218','593',1,1),(79,'egypt','EG','EGY','818','020',1,1),(80,'el-salvador','SV','SLV','222','503',1,1),(81,'equatorial-guinea','GQ','GNQ','226','240',0,1),(82,'eritrea','ER','ERI','232','291',0,1),(83,'estonia','EE','EST','233','372',1,1),(84,'ethiopia','ET','ETH','231','251',1,1),(85,'faeroe-islands','FO','FRO','234','298',1,1),(86,'falkland-islands','FK','FLK','238','500',1,1),(87,'fiji-islands','FJ','FJI','242','679',0,1),(88,'finland','FI','FIN','246','358',1,1),(89,'french-guiana','GF','GUF','254','594',1,1),(90,'french-polynesia','PF','PYF','258','689',1,1),(91,'gabon','GA','GAB','266','241',1,1),(92,'gambia','GM','GMB','270','220',0,1),(93,'georgia','GE','GEO','268','995',1,1),(94,'ghana','GH','GHA','288','233',0,1),(95,'gibraltar','GI','GIB','292','350',1,1),(96,'greece','GR','GRC','300','030',1,1),(97,'greenland','GL','GRL','304','299',1,1),(98,'grenada','GD','GRD','308','473',0,1),(99,'guadeloupe','GP','GLP','312','590',1,1),(100,'guam','GU','GUM','316','671',1,1),(101,'guatemala','GT','GTM','320','502',1,1),(102,'guinea','GN','GIN','324','224',0,1),(103,'guinea-bissau','GW','GNB','624','245',1,1),(104,'guyana','GY','GUY','328','592',0,1),(105,'haiti','HT','HTI','332','509',1,1),(106,'honduras','HN','HND','340','504',1,1),(107,'iceland','IS','ISL','352','354',1,1),(108,'india','IN','IND','356','091',1,1),(109,'indonesia','ID','IDN','360','062',1,1),(110,'iran','IR','IRN','364','098',1,1),(111,'iraq','IQ','IRQ','368','964',1,1),(112,'ireland','IE','IRL','372','353',0,1),(113,'ivory-coast','CI','CIV','384','225',1,1),(114,'jamaica','JM','JAM','388','876',1,1),(115,'jordan','JO','JOR','400','962',1,1),(116,'kazakhstan','KZ','KAZ','398','007',1,1),(117,'kenya','KE','KEN','404','254',1,1),(118,'kiribati','KI','KIR','408','686',0,1),(119,'kuwait','KW','KWT','414','965',1,1),(120,'north-korea','KP','PRK','408','850',0,1),(121,'kyrgyzstan','KG','KGZ','471','996',1,1),(122,'laos','LA','LAO','418','856',1,1),(123,'latvia','LV','LVA','428','371',1,1),(124,'lebanon','LB','LBN','422','961',1,1),(125,'lesotho','LS','LSO','426','266',1,1),(126,'liberia','LR','LBR','430','231',1,1),(127,'libya','LY','LBY','434','218',1,1),(128,'liechtenstein','LI','LIE','438','423',1,1),(129,'lithuania','LT','LTU','440','370',1,1),(130,'luxembourg','LU','LUX','442','352',1,1),(131,'macau','MO','MAC','446','853',0,1),(132,'macedonia','MK','MKD','807','389',1,1),(133,'madagascar','MG','MDG','450','261',1,1),(134,'malawi','MW','MWI','454','265',0,1),(135,'malaysia','MY','MYS','458','060',1,1),(136,'maldives','MV','MDV','462','960',1,1),(137,'mali','ML','MLI','466','223',0,1),(138,'malta','MT','MLT','470','356',1,1),(139,'marshall-islands','MH','MHL','584','692',1,1),(140,'martinique','MQ','MTQ','474','596',1,1),(141,'mauritania','MR','MRT','478','222',0,1),(142,'mauritius','MU','MUS','480','230',0,1),(143,'mayotte-island','YT','MYT','175','269',1,1),(144,'mexico','MX','MEX','484','052',1,1),(145,'micronesia','FM','FSM','583','691',1,1),(146,'moldova','MD','MDA','498','373',1,1),(147,'monaco','MC','MCO','492','377',1,1),(148,'mongolia','MN','MNG','496','976',1,1),(149,'montenegro','ME','MNE','499','382',1,1),(150,'montserrat','MS','MSR','500','664',0,1),(151,'morocco','MA','MAR','504','212',1,1),(152,'mozambique','MZ','MOZ','508','258',1,1),(153,'namibia','NA','NAM','516','264',1,1),(154,'nauru','NR','NRU','520','674',0,1),(155,'nepal','NP','NPL','524','977',1,1),(156,'netherlands-antilles','AN','ANT','530','599',1,1),(157,'new-caledonia','NC','NCL','540','687',1,1),(158,'new-zealand','NZ','NZL','554','064',1,1),(159,'nicaragua','NI','NIC','558','505',1,1),(160,'niger','NE','NER','562','227',1,1),(161,'nigeria','NG','NGA','566','234',1,1),(162,'niue','NU','NIU','570','683',0,1),(163,'norfolk-island','NF','NFK','574','672',1,1),(164,'norway','NO','NOR','578','047',1,1),(165,'oman','OM','OMN','512','968',1,1),(166,'pakistan','PK','PAK','586','092',1,1),(167,'palau','PW','PLW','585','680',1,1),(168,'palestine','PS','PSE','275','970',1,1),(169,'panama','PA','PAN','591','507',1,1),(170,'papua-new-guinea','PG','PNG','598','675',1,1),(171,'paraguay','PY','PRY','600','595',1,1),(172,'peru','PE','PER','604','051',1,1),(173,'philippines','PH','PHL','608','063',1,1),(174,'poland','PL','POL','616','048',1,1),(175,'puerto-rico','PR','PRI','630','787',1,1),(176,'qatar','QA','QAT','634','974',0,1),(177,'reunion-island','RE','REU','638','262',1,1),(178,'romania','RO','ROU','642','040',1,1),(179,'rwanda','RW','RWA','646','250',0,1),(180,'st-helena','SH','SHN','654','290',1,1),(181,'st-kitts','KN','KNA','659','869',0,1),(182,'st-lucia','LC','LCA','662','758',0,1),(183,'st-pierre-miquelon','PM','SPM','666','508',1,1),(184,'st-vincent','VC','VCT','670','784',1,1),(185,'san-marino','SM','SMR','674','378',1,1),(186,'sao-tome-principe','ST','STP','678','239',0,1),(187,'saudi-arabia','SA','SAU','682','966',1,1),(188,'senegal','SN','SEN','686','221',1,1),(189,'serbia','RS','SRB','688','381',1,1),(190,'seychelles','SC','SYC','690','248',0,1),(191,'sierra-leone','SL','SLE','694','249',0,1),(192,'slovakia','SK','SVK','703','421',1,1),(193,'slovenia','SI','SVN','705','386',1,1),(194,'solomon-islands','SB','SLB','90','677',0,1),(195,'somalia','SO','SOM','706','252',0,1),(196,'south-africa','ZA','ZAF','710','027',1,1),(197,'sri-lanka','LK','LKA','144','094',1,1),(198,'sudan','SD','SDN','736','095',1,1),(199,'suriname','SR','SUR','740','597',0,1),(200,'swaziland','SZ','SWZ','748','268',1,1),(201,'sweden','SE','SWE','752','046',1,1),(202,'switzerland','CH','CHE','756','041',1,1),(203,'syria','SY','SYR','760','963',0,1),(204,'taiwan','TW','TWN','158','886',1,1),(205,'tajikistan','TJ','TJK','762','992',1,1),(206,'tanzania','TZ','TZA','834','255',0,1),(207,'thailand','TH','THA','764','066',1,1),(208,'togo','TG','TGO','768','228',1,1),(209,'tonga','TO','TON','776','676',0,1),(210,'trinidad-tobago','TT','TTO','780','868',0,1),(211,'tunisia','TN','TUN','788','216',1,1),(212,'turkmenistan','TM','TKM','795','993',1,1),(213,'turks-caicos','TC','TCA','796','649',1,1),(214,'tuvalu','TV','TUV','798','688',0,1),(215,'uganda','UG','UGA','800','256',0,1),(216,'ukraine','UA','UKR','804','380',1,1),(217,'united-arab-emirates','AE','ARE','784','971',0,1),(218,'uruguay','UY','URY','858','598',1,1),(219,'uzbekistan','UZ','UZB','860','998',1,1),(220,'vanuatu','VU','VUT','548','678',0,1),(221,'vatican-city','VA','VAT','336','039',1,1),(222,'venezuela','VE','VEN','862','058',1,1),(223,'wallis-futuna','WF','WLF','876','681',1,1),(224,'western-samoa','WS','WSM','882','685',1,1),(225,'yemen','YE','YEM','887','967',0,1),(226,'zambia','ZM','ZMB','894','260',1,1),(227,'zimbabwe','ZW','ZWE','716','263',0,1),(228,'aland-islands','AX','ALA','248','359',1,1),(229,'bonaire-st-eustatius-saba','BQ','BES','535','599',1,1),(230,'bouvet-island','BV','BVT','74','047',1,1),(231,'british-indian-ocean-territory','IO','IOT','86','246',1,1),(232,'curacao','CW','CUW','531','599',1,1),(233,'french-southern-territories','TF','ATF','260','033',0,1),(234,'guernsey','GG','GGY','831','044',1,1),(235,'heard-island-mcdonald-islands','HM','HMD','334','061',1,1),(236,'isle-of-man','IM','IMN','833','044',1,1),(237,'jersey','JE','JEY','832','044',1,1),(238,'northern-mariana-islands','MP','MNP','580','670',1,1),(239,'pitcairn','PN','PCN','612','649',1,1),(240,'south-georgia-south-sandwich-islands','GS','SGS','239','044',1,1),(241,'south-sudan','SS','SSD','728','211',1,1),(242,'sint-maarten','SX','SXM','534','721',1,1),(243,'st-barthelemy','BL','BLM','652','590',1,1),(244,'st-martin','MF','MAF','663','590',1,1),(245,'tokelau','TK','TKL','772','690',0,1),(246,'timor-leste','TL','TLS','626','670',1,1),(247,'united-states-minor-outlying-islands','UM','UMI','581','699',1,1),(248,'united-states-virgin-islands','VI','VIR','850','340',1,1),(249,'western-sahara','EH','ESH','732','212',1,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlsyncevent`
--

DROP TABLE IF EXISTS `dlsyncevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlsyncevent` (
  `syncEventId` bigint(20) NOT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`syncEventId`),
  UNIQUE KEY `IX_57D82B06` (`typePK`),
  KEY `IX_3D8E1607` (`modifiedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlsyncevent`
--

LOCK TABLES `dlsyncevent` WRITE;
/*!40000 ALTER TABLE `dlsyncevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlsyncevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecord`
--

DROP TABLE IF EXISTS `ddlrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`),
  KEY `IX_6A6C1C85` (`companyId`),
  KEY `IX_87A6B599` (`recordSetId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_8BC2F891` (`uuid_`),
  KEY `IX_384AB6F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecord`
--

LOCK TABLES `ddlrecord` WRITE;
/*!40000 ALTER TABLE `ddlrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclicenses_scproductentries`
--

DROP TABLE IF EXISTS `sclicenses_scproductentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sclicenses_scproductentries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclicenses_scproductentries`
--

LOCK TABLES `sclicenses_scproductentries` WRITE;
/*!40000 ALTER TABLE `sclicenses_scproductentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicenses_scproductentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_roles`
--

DROP TABLE IF EXISTS `groups_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_roles`
--

LOCK TABLES `groups_roles` WRITE;
/*!40000 ALTER TABLE `groups_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordpolicyrel`
--

DROP TABLE IF EXISTS `passwordpolicyrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordpolicyrel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  UNIQUE KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordpolicyrel`
--

LOCK TABLES `passwordpolicyrel` WRITE;
/*!40000 ALTER TABLE `passwordpolicyrel` DISABLE KEYS */;
INSERT INTO `passwordpolicyrel` VALUES (10203,10200,10005,10201);
/*!40000 ALTER TABLE `passwordpolicyrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticle`
--

DROP TABLE IF EXISTS `journalarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`),
  KEY `IX_DFF98523` (`companyId`),
  KEY `IX_323DF109` (`companyId`,`status`),
  KEY `IX_3D070845` (`companyId`,`version`),
  KEY `IX_E82F322B` (`companyId`,`version`,`status`),
  KEY `IX_EA05E9E1` (`displayDate`,`status`),
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_5CD17502` (`groupId`,`folderId`),
  KEY `IX_F35391E8` (`groupId`,`folderId`,`status`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_22882D02` (`groupId`,`urlTitle`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_D19C1B9F` (`groupId`,`userId`),
  KEY `IX_43A0F80F` (`groupId`,`userId`,`classNameId`),
  KEY `IX_3F1EA19E` (`layoutUuid`),
  KEY `IX_33F49D16` (`resourcePrimKey`),
  KEY `IX_89FF8B06` (`resourcePrimKey`,`indexable`),
  KEY `IX_451D63EC` (`resourcePrimKey`,`indexable`,`status`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_F029602F` (`uuid_`),
  KEY `IX_71520099` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticle`
--

LOCK TABLES `journalarticle` WRITE;
/*!40000 ALTER TABLE `journalarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmtemplate`
--

DROP TABLE IF EXISTS `ddmtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_E6DFAB84` (`groupId`,`classNameId`,`templateKey`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_B6356F93` (`classNameId`,`classPK`,`type_`),
  KEY `IX_32F83D16` (`classPK`),
  KEY `IX_DB24DDDD` (`groupId`),
  KEY `IX_BD9A4A91` (`groupId`,`classNameId`),
  KEY `IX_824ADC72` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_90800923` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_F0C3449` (`groupId`,`classNameId`,`classPK`,`type_`,`mode_`),
  KEY `IX_B1C33EA6` (`groupId`,`classPK`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_127A35B0` (`smallImageId`),
  KEY `IX_CAE41A28` (`templateKey`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_F2A243A7` (`uuid_`),
  KEY `IX_D4C2C221` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmtemplate`
--

LOCK TABLES `ddmtemplate` WRITE;
/*!40000 ALTER TABLE `ddmtemplate` DISABLE KEYS */;
INSERT INTO `ddmtemplate` VALUES ('a88306d4-fdce-4306-8aa1-745586242c45',10421,10197,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10016,0,'WIKI-SOCIAL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#assign wikiPageClassName = \"com.liferay.portlet.wiki.model.WikiPage\" />\n\n<#assign assetRenderer = assetEntry.getAssetRenderer() />\n\n<div class=\"taglib-header\">\n	<h1 class=\"header-title\">\${entry.getTitle()}</h1>\n</div>\n\n<div style=\"float: right;\">\n	<@getEditIcon />\n\n	<@getPageDetailsIcon />\n\n	<@getPrintIcon />\n</div>\n\n<div class=\"wiki-body\">\n	<div class=\"wiki-info\">\n		<span class=\"stats\">\${assetEntry.getViewCount()} <@liferay.language key=\"views\" /></span> |\n\n		<span class=\"date\"><@liferay.language key=\"last-modified\" /> \${dateUtil.getDate(entry.getModifiedDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}</span>\n\n		<span class=\"author\"><@liferay.language key=\"by\" /> \${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>\n	</div>\n\n	<div class=\"wiki-content\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"normal\"\n			target=\"_blank\"\n			title=entry.getTitle()\n			url=viewURL\n		/>\n\n		\${formattedContent}\n	</div>\n\n	<div class=\"page-actions\">\n		<div class=\"article-actions\">\n			<@getAddChildPageIcon />\n\n			<@getAttatchmentsIcon />\n		</div>\n	</div>\n\n	 <br />\n\n	<@getRatings cssClass=\"page-ratings\" entry=entry />\n\n	<@getRelatedAssets />\n</div>\n\n<div class=\"page-categorization\">\n	<div class=\"page-categories\">\n		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />\n\n		\${viewCategorizedPagesURL.setParameter(\"struts_action\", \"/wiki/view_categorized_pages\")}\n		\${viewCategorizedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-categories-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewCategorizedPagesURL\n		/>\n	</div>\n\n	<div class=\"page-tags\">\n		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />\n\n		\${viewTaggedPagesURL.setParameter(\"struts_action\", \"/wiki/view_tagged_pages\")}\n		\${viewTaggedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-tags-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewTaggedPagesURL\n		/>\n	</div>\n</div>\n\n<#assign childPages = entry.getChildPages() />\n\n<#if (childPages?has_content)>\n	<div class=\"child-pages\">\n		<h2><@liferay.language key=\"children-pages\" /></h2>\n\n		<table class=\"taglib-search-iterator\">\n			<tr class=\"portlet-section-header results-header\">\n				<th>\n					<@liferay.language key=\"page\" />\n				</th>\n				<th>\n					<@liferay.language key=\"last-modified\" />\n				</th>\n				<th>\n					<@liferay.language key=\"ratings\" />\n				</th>\n			</tr>\n\n			<#list childPages as childPage>\n				<tr class=\"results-row\">\n					<#assign viewPageURL = renderResponse.createRenderURL() />\n\n					\${viewPageURL.setParameter(\"struts_action\", \"/wiki/view\")}\n\n					<#assign childNode = childPage.getNode() />\n\n					\${viewPageURL.setParameter(\"nodeName\", childNode.getName())}\n					\${viewPageURL.setParameter(\"title\", childPage.getTitle())}\n\n					<td>\n						<a href=\"\${viewPageURL}\">\${childPage.getTitle()}</a>\n					</td>\n					<td>\n						<a href=\"\${viewPageURL}\">\${dateUtil.getDate(childPage.getModifiedDate(),\"dd MMM yyyy - HH:mm:ss\", locale)} <@liferay.language key=\"by\" /> \${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>\n					</td>\n					<td>\n						<@getRatings cssClass=\"child-ratings\" entry=childPage />\n					</td>\n				</tr>\n			</#list>\n		</table>\n	</div>\n</#if>\n\n<@getDiscussion />\n\n<#macro getAddChildPageIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign addPageURL = renderResponse.createRenderURL() />\n\n		\${addPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		\${addPageURL.setParameter(\"redirect\", currentURL)}\n		\${addPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		\${addPageURL.setParameter(\"title\", \"\")}\n		\${addPageURL.setParameter(\"editTitle\", \"1\")}\n		\${addPageURL.setParameter(\"parentTitle\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"add_article\"\n			label=true\n			message=\"add-child-page\"\n			url=addPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getAttatchmentsIcon>\n	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />\n\n	\${viewPageAttachmentsURL.setParameter(\"struts_action\", \"/wiki/view_page_attachments\") }\n\n	<@liferay_ui[\"icon\"]\n		image=\"clip\"\n		label=true\n		message=\'\${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, \"attachments\")}\'\n		url=viewPageAttachmentsURL?string\n	/>\n</#macro>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		\${discussionURL.setParameter(\"struts_action\", \"/wiki/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			formAction=discussionURL?string\n			formName=\"fm2\"\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=currentURL\n			subject=assetRenderer.getTitle(locale)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign editPageURL = renderResponse.createRenderURL() />\n\n		\${editPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		\${editPageURL.setParameter(\"redirect\", currentURL)}\n		\${editPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		\${editPageURL.setParameter(\"title\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"edit\"\n			message=entry.getTitle()\n			url=editPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getPageDetailsIcon>\n	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />\n\n	\${viewPageDetailsURL.setParameter(\"struts_action\", \"/wiki/view_page_details\")}\n	\${viewPageDetailsURL.setParameter(\"redirect\", currentURL)}\n\n	<@liferay_ui[\"icon\"]\n		image=\"history\"\n		message=\"details\"\n		url=viewPageDetailsURL?string\n	/>\n</#macro>\n\n<#macro getPrintIcon>\n	<#assign printURL = renderResponse.createRenderURL() />\n\n	\${printURL.setParameter(\"viewMode\", \"print\")}\n	\${printURL.setWindowState(\"pop_up\")}\n\n	<#assign title = languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", htmlUtil.escape(assetRenderer.getTitle(locale))]) />\n	<#assign taglibPrintURL = \"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + title + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\" />\n\n	<@liferay_ui[\"icon\"]\n		image=\"print\"\n		message=\"print\"\n		url=taglibPrintURL\n	/>\n</#macro>\n\n<#macro getRatings\n	cssClass\n	entry\n>\n	<#if enablePageRatings == \"true\">\n		<div class=\"\${cssClass}\">\n			<@liferay_ui[\"ratings\"]\n				className=wikiPageClassName\n				classPK=entry.getResourcePrimKey()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if assetEntry?? && (enableRelatedAssets == \"true\")>\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=assetEntry.getEntryId()\n		/>\n	</#if>\n</#macro>',0,0,10422,''),('568ff35e-4c98-46fd-b50c-757b13cbf8db',10423,10197,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10081,0,'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary\'s top level categories listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n			<@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						\${entry.getName()}\n					</h3>\n				</div>\n\n				<#assign categories = entry.getCategories()>\n\n				<@displayCategories categories=categories />\n			</@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayCategories\n	categories\n>\n	<#if categories?has_content>\n		<ul class=\"categories\">\n			<#list categories as category>\n				<li>\n					<#assign categoryURL = renderResponse.createRenderURL()>\n\n					\${categoryURL.setParameter(\"resetCur\", \"true\")}\n					\${categoryURL.setParameter(\"categoryId\", category.getCategoryId()?string)}\n\n					<a href=\"\${categoryURL}\">\${category.getName()}</a>\n\n					<#if serviceLocator??>\n						<#assign assetCategoryService = serviceLocator.findService(\"com.liferay.portlet.asset.service.AssetCategoryService\")>\n\n						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>\n\n						<@displayCategories categories=childCategories />\n					</#if>\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,10424,''),('989d37d5-236a-47fa-b8ba-9a76fb06f89e',10425,10197,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10155,0,'DOCUMENTLIBRARY-CAROUSEL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays images in a carousel.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n<#assign liferay_portlet = taglibLiferayHash[\"/WEB-INF/tld/liferay-portlet.tld\"] />\n\n<#if entries?has_content>\n	<style>\n		#<@liferay_portlet.namespace />carousel .carousel-item {\n			background-color: #000;\n			height: 250px;\n			overflow: hidden;\n			text-align: center;\n			width: 700px;\n		}\n\n		#<@liferay_portlet.namespace />carousel .carousel-item img {\n			max-height: 250px;\n			max-width: 700px;\n		}\n	</style>\n\n	<div id=\"<@liferay_portlet.namespace />carousel\">\n		<#assign imageMimeTypes = propsUtil.getArray(\"dl.file.entry.preview.image.mime.types\") />\n\n		<#list entries as entry>\n			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >\n				<div class=\"carousel-item\">\n					<img src=\"\${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, \"\")}\" />\n				</div>\n			</#if>\n		</#list>\n	</div>\n\n	<@aui.script use=\"aui-carousel\">\n		new A.Carousel(\n			{\n				contentBox: \'#<@liferay_portlet.namespace />carousel\',\n				height: 250,\n				intervalTime: 2,\n				width: 700\n			}\n		).render();\n	</@aui.script>\n</#if>',0,0,10426,''),('b27021d1-c3d4-4bda-8010-5a4d93847307',10427,10197,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10083,0,'ASSET-PUBLISHER-RICH-SUMMARY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Rich Summary</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<#assign entry = entry />\n\n	<#assign assetRenderer = entry.getAssetRenderer() />\n\n	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />\n\n	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />\n\n	<#if assetLinkBehavior != \"showFullContent\">\n		<#assign viewURL = assetRenderer.getURLViewInContext(renderRequest, renderResponse, viewURL) />\n	</#if>\n\n	<div class=\"asset-abstract\">\n		<div class=\"lfr-meta-actions asset-actions\">\n			<@getPrintIcon />\n\n			<@getFlagsIcon />\n\n			<@getEditIcon />\n		</div>\n\n		<h3 class=\"asset-title\">\n			<a href=\"\${viewURL}\"><img alt=\"\" src=\"\${assetRenderer.getIconPath(renderRequest)}\" />\${entryTitle}</a>\n		</h3>\n\n		<@getMetadataField fieldName=\"tags\" />\n\n		<@getMetadataField fieldName=\"create-date\" />\n\n		<@getMetadataField fieldName=\"view-count\" />\n\n		<div class=\"asset-content\">\n			<@getSocialBookmarks />\n\n			<div class=\"asset-summary\">\n				<@getMetadataField fieldName=\"author\" />\n\n				\${htmlUtil.escape(assetRenderer.getSummary(locale))}\n\n				<a href=\"\${viewURL}\"><@liferay.language key=\"read-more\" /><span class=\"hide-accessible\"><@liferay.language key=\"about\" />\${entryTitle}</span> &raquo;</a>\n			</div>\n\n			<@getRatings />\n\n			<@getRelatedAssets />\n\n			<@getDiscussion />\n		</div>\n	</div>\n\n</#list>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		\${discussionURL.setParameter(\"struts_action\", \"/asset_publisher/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			formAction=discussionURL?string\n			formName=\"fm\" + entry.getClassPK()\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=portalUtil.getCurrentURL(request)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign redirectURL = renderResponse.createRenderURL() />\n\n		\${redirectURL.setParameter(\"struts_action\", \"/asset_publisher/add_asset_redirect\")}\n		\${redirectURL.setWindowState(\"pop_up\")}\n\n		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState(\"pop_up\"), redirectURL)!\"\" />\n\n		<#if validator.isNotNull(editPortletURL)>\n			<#assign title = languageUtil.format(locale, \"edit-x\", entryTitle) />\n\n			<@liferay_ui[\"icon\"]\n				image=\"edit\"\n				message=title\n				url=\"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"editAsset\', title: \'\" + title + \"\', uri:\'\" + htmlUtil.escapeURL(editPortletURL.toString()) + \"\'});\"\n			/>\n		</#if>\n	</#if>\n</#macro>\n\n<#macro getFlagsIcon>\n	<#if enableFlags == \"true\">\n		<@liferay_ui[\"flags\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			contentTitle=entry.getTitle(locale)\n			label=false\n			reportedUserId=entry.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getMetadataField\n	fieldName\n>\n	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>\n		<span class=\"metadata-entry metadata-\"\${fieldName}\">\n			<#assign dateFormat = \"dd MMM yyyy - HH:mm:ss\" />\n\n			<#if fieldName == \"author\">\n				<@liferay.language key=\"by\" /> \${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}\n			<#elseif fieldName == \"categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"create-date\">\n				\${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}\n			<#elseif fieldName == \"expiration-date\">\n				\${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}\n			<#elseif fieldName == \"modified-date\">\n				\${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}\n			<#elseif fieldName == \"priority\">\n				\${entry.getPriority()}\n			<#elseif fieldName == \"publish-date\">\n				\${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}\n			<#elseif fieldName == \"tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"view-count\">\n				<@liferay_ui[\"icon\"]\n					image=\"history\"\n				/>\n\n				\${entry.getViewCount()} <@liferay.language key=\"views\" />\n			</#if>\n		</span>\n	</#if>\n</#macro>\n\n<#macro getPrintIcon>\n	<#if enablePrint == \"true\" >\n		<#assign printURL = renderResponse.createRenderURL() />\n\n		\${printURL.setParameter(\"struts_action\", \"/asset_publisher/view_content\")}\n		\${printURL.setParameter(\"assetEntryId\", entry.getEntryId()?string)}\n		\${printURL.setParameter(\"viewMode\", \"print\")}\n		\${printURL.setParameter(\"type\", entry.getAssetRendererFactory().getType())}\n\n		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>\n			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>\n				\${printURL.setParameter(\"groupId\", assetRenderer.getGroupId()?string)}\n			</#if>\n\n			\${printURL.setParameter(\"urlTitle\", assetRenderer.getUrlTitle())}\n		</#if>\n\n		\${printURL.setWindowState(\"pop_up\")}\n\n		<@liferay_ui[\"icon\"]\n			image=\"print\"\n			message=\"print\"\n			url=\"javascript:Liferay.Util.openWindow({id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", entryTitle]) + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\"\n		/>\n	</#if>\n</#macro>\n\n<#macro getRatings>\n	<#if (enableRatings == \"true\")>\n		<div class=\"asset-ratings\">\n			<@liferay_ui[\"ratings\"]\n				className=entry.getClassName()\n				classPK=entry.getClassPK()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if enableRelatedAssets == \"true\">\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=entry.getEntryId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getSocialBookmarks>\n	<#if enableSocialBookmarks == \"true\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"\${socialBookmarksDisplayStyle}\"\n			target=\"_blank\"\n			title=entry.getTitle(locale)\n			url=viewURL\n		/>\n	</#if>\n</#macro>',0,0,10428,''),('61243f3d-4e11-48d9-9d3e-da17b737fe06',10429,10197,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10034,0,'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each top level page. Each column includes the name of a top level page with the page\'s immediate children listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n		    <@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>\n\n						<a href=\"\${layoutURL}\">\${entry.getName(locale)}</a>\n					</h3>\n				</div>\n\n				<#assign pages = entry.getChildren()>\n\n				<@displayPages pages = pages />\n		    </@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayPages\n	pages\n>\n	<#if pages?has_content>\n		<ul class=\"child-pages\">\n			<#list pages as page>\n				<li>\n					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>\n\n					<a href=\"\${pageLayoutURL}\">\${page.getName(locale)}</a>\n\n					<#assign childPages = page.getChildren()>\n\n					<@displayPages pages = childPages />\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,10430,''),('a36e9319-1585-4258-99ef-3f3fa7d8b03f',10431,10197,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10085,0,'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Color by Popularity</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>','display','','ftl','<#if entries?has_content>\n	<ul class=\"tag-items tag-list\">\n		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />\n		<#assign classNameId = getterUtil.getLong(classNameId, 0) />\n\n		<#assign maxCount = 1 />\n		<#assign minCount = 1 />\n\n		<#list entries as entry>\n			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />\n			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />\n		</#list>\n\n		<#assign multiplier = 1 />\n\n		<#if maxCount != minCount>\n			<#assign multiplier = 3 / (maxCount - minCount) />\n		</#if>\n\n		<#list entries as entry>\n			<li class=\"taglib-asset-tags-summary\">\n				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />\n\n				<#if popularity < 1>\n					<#assign color = \"green\" />\n				<#elseif (popularity >= 1) && (popularity < 2)>\n					<#assign color = \"orange\" />\n				<#else>\n					<#assign color = \"red\" />\n				</#if>\n\n				<#assign tagURL = renderResponse.createRenderURL() />\n\n				\${tagURL.setParameter(\"resetCur\", \"true\")}\n				\${tagURL.setParameter(\"tag\", entry.getName())}\n\n				<a class =\"tag\" style=\"color: \${color};\" href=\"\${tagURL}\">\n					\${entry.getName()}\n\n					<#if (showAssetCount == \"true\")>\n						<span class=\"tag-asset-count\">(\${count})</span>\n					</#if>\n				</a>\n			</li>\n		</#list>\n	</ul>\n\n	<br style=\"clear: both;\" />\n</#if>',0,0,10432,''),('6137ba76-d653-4de8-970e-35458be98d6d',10433,10197,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10007,0,'BLOGS-BASIC-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<div class=\"entry\">\n		<#assign viewURL = renderResponse.createRenderURL() />\n\n		\${viewURL.setParameter(\"struts_action\", \"/blogs/view_entry\")}\n		\${viewURL.setParameter(\"redirect\", currentURL)}\n		\${viewURL.setParameter(\"urlTitle\", entry.getUrlTitle())}\n\n		<div class=\"entry-content\">\n			<div class=\"entry-title\">\n				<h2><a href=\"\${viewURL}\">\${htmlUtil.escape(entry.getTitle())}</a></h2>\n			</div>\n		</div>\n\n		<div class=\"entry-body\">\n			<div class=\"entry-author\">\n				<@liferay.language key=\"written-by\" /> \${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}\n			</div>\n\n			<#assign summary = entry.getDescription() />\n\n			<#if (validator.isNull(summary))>\n				<#assign summary = entry.getContent() />\n			</#if>\n\n			\${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}\n\n			<a href=\"\${viewURL}\"><@liferay.language key=\"read-more\" /> <span class=\"hide-accessible\"><@liferay.language key=\"about\"/>\${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>\n		</div>\n\n		<div class=\"entry-footer\">\n			<span class=\"entry-date\">\n				\${dateUtil.getDate(entry.getCreateDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}\n			</span>\n\n			<#assign blogsEntryClassName = \"com.liferay.portlet.blogs.model.BlogsEntry\" />\n\n			<#if (enableFlags == \"true\")>\n				<@liferay_ui[\"flags\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					contentTitle=entry.getTitle()\n					reportedUserId=entry.getUserId()\n				/>\n			</#if>\n\n			<span class=\"entry-categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n\n			<span class=\"entry-tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n		</div>\n	</div>\n\n	<div class=\"separator\"><!-- --></div>\n</#list>',0,0,10434,'');
/*!40000 ALTER TABLE `ddmtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticleimage`
--

DROP TABLE IF EXISTS `journalarticleimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticleimage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`),
  UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`),
  KEY `IX_3B51BB68` (`groupId`),
  KEY `IX_158B526F` (`groupId`,`articleId`,`version`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticleimage`
--

LOCK TABLES `journalarticleimage` WRITE;
/*!40000 ALTER TABLE `journalarticleimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticleimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertracker`
--

DROP TABLE IF EXISTS `usertracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertracker`
--

LOCK TABLES `usertracker` WRITE;
/*!40000 ALTER TABLE `usertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (10184,10201);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shard`
--

DROP TABLE IF EXISTS `shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shard`
--

LOCK TABLES `shard` WRITE;
/*!40000 ALTER TABLE `shard` DISABLE KEYS */;
INSERT INTO `shard` VALUES (10158,10025,10157,'default');
/*!40000 ALTER TABLE `shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbthread`
--

DROP TABLE IF EXISTS `mbthread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbthread` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`),
  UNIQUE KEY `IX_3A200B7B` (`uuid_`,`groupId`),
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_95C0EA45` (`groupId`),
  KEY `IX_9A2D11B2` (`groupId`,`categoryId`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`),
  KEY `IX_7E264A0F` (`uuid_`),
  KEY `IX_F8CA2AB9` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbthread`
--

LOCK TABLES `mbthread` WRITE;
/*!40000 ALTER TABLE `mbthread` DISABLE KEYS */;
INSERT INTO `mbthread` VALUES ('fb86022b-f61b-447c-9d8d-8569f01f3681',10181,10175,10157,10161,'','2014-05-27 18:33:23','2014-05-27 18:33:23',-1,10180,10161,1,0,0,'2014-05-27 18:33:23',0,0,0,10161,'','2014-05-27 18:33:23'),('f8f1f7f9-33c7-4794-8cb6-bc7bf3f6bcfb',10190,10184,10157,10161,'','2014-05-27 18:33:24','2014-05-27 18:33:24',-1,10189,10161,1,0,0,'2014-05-27 18:33:24',0,0,0,10161,'','2014-05-27 18:33:24'),('aa7c3333-33b2-4e5e-a3f2-f77837ff38bb',10326,10320,10157,10161,'','2014-05-27 18:33:29','2014-05-27 18:33:29',-1,10325,10161,1,0,0,'2014-05-27 18:33:29',0,0,0,10161,'','2014-05-27 18:33:29'),('7d65883f-dd60-4715-b2ad-9e8a13c310cc',10338,10332,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',-1,10337,10161,1,0,0,'2014-05-27 18:33:30',0,0,0,10161,'','2014-05-27 18:33:30'),('1b912f33-71e5-448e-87f8-c6bfa957b98a',10348,10342,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',-1,10347,10161,1,0,0,'2014-05-27 18:33:30',0,0,0,10161,'','2014-05-27 18:33:30'),('93f6dc20-9b1c-4e9a-82c0-a88af2268e8e',10367,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',-1,10366,10161,1,0,0,'2014-05-27 18:33:31',0,0,0,10161,'','2014-05-27 18:33:31'),('115bcef0-3cd6-4b6b-b96b-309db3ee08a5',10375,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',-1,10374,10161,1,0,0,'2014-05-27 18:33:31',0,0,0,10161,'','2014-05-27 18:33:31'),('e9cc4785-466b-4484-af4d-27af1029c687',10393,10379,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',-1,10392,10161,1,0,0,'2014-05-27 18:33:31',0,0,0,10161,'','2014-05-27 18:33:31'),('618e219a-1bb7-4f2b-b098-be2cb6fd9627',10402,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',-1,10401,10161,1,0,0,'2014-05-27 18:33:32',0,0,0,10161,'','2014-05-27 18:33:32'),('1df746a4-b721-467b-964e-bae2a15b7464',10410,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',-1,10409,10161,1,0,0,'2014-05-27 18:33:32',0,0,0,10161,'','2014-05-27 18:33:32'),('7efe4379-e3c5-42ba-8189-47c9e01bbac5',10442,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',-1,10441,10201,1,0,10201,'2014-05-27 18:36:21',0,0,0,10201,'Test Test','2014-05-27 18:36:21'),('229e2c7b-9d7b-4c08-a9f5-9a8552eda4fd',10448,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',-1,10447,10201,1,0,10201,'2014-05-27 18:36:21',0,0,0,10201,'Test Test','2014-05-27 18:36:21');
/*!40000 ALTER TABLE `mbthread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecordversion`
--

DROP TABLE IF EXISTS `ddlrecordversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecordversion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`),
  UNIQUE KEY `IX_C79E347` (`recordId`,`version`),
  KEY `IX_2F4DDFE1` (`recordId`),
  KEY `IX_762ADC7` (`recordId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecordversion`
--

LOCK TABLES `ddlrecordversion` WRITE;
/*!40000 ALTER TABLE `ddlrecordversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsvote`
--

DROP TABLE IF EXISTS `pollsvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsvote` (
  `uuid_` varchar(75) DEFAULT NULL,
  `voteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`),
  UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`),
  UNIQUE KEY `IX_A88C673A` (`uuid_`,`groupId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`),
  KEY `IX_FD32EB70` (`uuid_`),
  KEY `IX_7D8E92B8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsvote`
--

LOCK TABLES `pollsvote` WRITE;
/*!40000 ALTER TABLE `pollsvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portalpreferences`
--

DROP TABLE IF EXISTS `portalpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portalpreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portalpreferences`
--

LOCK TABLES `portalpreferences` WRITE;
/*!40000 ALTER TABLE `portalpreferences` DISABLE KEYS */;
INSERT INTO `portalpreferences` VALUES (10154,0,1,'<portlet-preferences />'),(10163,10157,1,'<portlet-preferences />'),(10435,10161,4,'<portlet-preferences />'),(10451,10201,4,'<portlet-preferences />');
/*!40000 ALTER TABLE `portalpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listtype`
--

DROP TABLE IF EXISTS `listtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listtype` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listtype`
--

LOCK TABLES `listtype` WRITE;
/*!40000 ALTER TABLE `listtype` DISABLE KEYS */;
INSERT INTO `listtype` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `listtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitemprice`
--

DROP TABLE IF EXISTS `shoppingitemprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitemprice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitemprice`
--

LOCK TABLES `shoppingitemprice` WRITE;
/*!40000 ALTER TABLE `shoppingitemprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutrevision`
--

DROP TABLE IF EXISTS `layoutrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutrevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`),
  KEY `IX_43E8286A` (`head`,`plid`),
  KEY `IX_314B621A` (`layoutSetBranchId`),
  KEY `IX_A9AC086E` (`layoutSetBranchId`,`head`),
  KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`),
  KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`),
  KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`),
  KEY `IX_B7B914E5` (`layoutSetBranchId`,`plid`),
  KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`),
  KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`),
  KEY `IX_9329C9D6` (`plid`),
  KEY `IX_8EC3D2BC` (`plid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutrevision`
--

LOCK TABLES `layoutrevision` WRITE;
/*!40000 ALTER TABLE `layoutrevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytypes_ddmstructures`
--

DROP TABLE IF EXISTS `dlfileentrytypes_ddmstructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytypes_ddmstructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytypes_ddmstructures`
--

LOCK TABLES `dlfileentrytypes_ddmstructures` WRITE;
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` DISABLE KEYS */;
INSERT INTO `dlfileentrytypes_ddmstructures` VALUES (10310,10309),(10307,10311),(10312,10311),(10306,10313),(10314,10313),(10308,10315),(10316,10315);
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentry`
--

DROP TABLE IF EXISTS `assetentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`),
  KEY `IX_FC1F9C7B` (`classUuid`),
  KEY `IX_7306C60` (`companyId`),
  KEY `IX_75D42FF9` (`expirationDate`),
  KEY `IX_1EBA6821` (`groupId`,`classUuid`),
  KEY `IX_FEC4A201` (`layoutUuid`),
  KEY `IX_2E4E3885` (`publishDate`),
  KEY `IX_9029E15A` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentry`
--

LOCK TABLES `assetentry` WRITE;
/*!40000 ALTER TABLE `assetentry` DISABLE KEYS */;
INSERT INTO `assetentry` VALUES (10182,10175,10157,10161,'','2014-05-27 18:33:23','2014-05-27 18:33:23',10116,10180,'e8d21046-6d66-4d47-900f-fa772ca58a56',0,0,NULL,NULL,NULL,NULL,'text/html','10178','','','','',0,0,0,0),(10191,10184,10157,10161,'','2014-05-27 18:33:24','2014-05-27 18:33:24',10116,10189,'0236f3b0-1dd9-47f4-b0d3-34f073d6ac86',0,0,NULL,NULL,NULL,NULL,'text/html','10187','','','','',0,0,0,0),(10207,10197,10157,10201,'Test Test','2014-05-27 18:33:25','2014-05-27 18:36:19',10005,10201,'29d42b93-ea02-4e33-9ff3-7d02d4889091',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(10328,10320,10157,10161,'','2014-05-27 18:33:29','2014-05-27 18:33:29',10116,10325,'10348bf1-ce2c-468a-b334-fba9233ae6a6',0,0,NULL,NULL,NULL,NULL,'text/html','10323','','','','',0,0,0,0),(10339,10332,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',10116,10337,'d87a6ca8-0bdb-4299-8f99-0d26a2f24a54',0,0,NULL,NULL,NULL,NULL,'text/html','10335','','','','',0,0,0,0),(10349,10342,10157,10161,'','2014-05-27 18:33:30','2014-05-27 18:33:30',10116,10347,'96bf76fd-512a-480b-979d-2459ea22cfc1',0,0,NULL,NULL,NULL,NULL,'text/html','10345','','','','',0,0,0,0),(10368,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10116,10366,'30855e1d-8ade-4f5c-8940-0ded760d60e6',0,0,NULL,NULL,NULL,NULL,'text/html','10364','','','','',0,0,0,0),(10376,10353,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10116,10374,'7356ead5-fd73-4be5-8250-e2f4b131c198',0,0,NULL,NULL,NULL,NULL,'text/html','10372','','','','',0,0,0,0),(10394,10379,10157,10161,'','2014-05-27 18:33:31','2014-05-27 18:33:31',10116,10392,'faf9ccd9-1c3f-450f-9414-80c0946ace3f',0,0,NULL,NULL,NULL,NULL,'text/html','10390','','','','',0,0,0,0),(10403,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10116,10401,'d7eed1bb-b49b-47c2-a49e-935d5b376826',0,0,NULL,NULL,NULL,NULL,'text/html','10399','','','','',0,0,0,0),(10411,10379,10157,10161,'','2014-05-27 18:33:32','2014-05-27 18:33:32',10116,10409,'fb629f03-ddc9-45cb-aa27-317c1527e638',0,0,NULL,NULL,NULL,NULL,'text/html','10407','','','','',0,0,0,0),(10443,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',10116,10441,'8db19c1a-d638-45e4-ab50-fdc687c3e558',0,0,NULL,NULL,NULL,NULL,'text/html','10439','','','','',0,0,0,0),(10449,10204,10157,10201,'Test Test','2014-05-27 18:36:21','2014-05-27 18:36:21',10116,10447,'39dece45-fdec-457c-9fce-ec165ca98402',0,0,NULL,NULL,NULL,NULL,'text/html','10445','','','','',0,0,0,0);
/*!40000 ALTER TABLE `assetentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcetypepermission`
--

DROP TABLE IF EXISTS `resourcetypepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcetypepermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`),
  UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`),
  KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`),
  KEY `IX_A82690E2` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcetypepermission`
--

LOCK TABLES `resourcetypepermission` WRITE;
/*!40000 ALTER TABLE `resourcetypepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcetypepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalfeed`
--

DROP TABLE IF EXISTS `journalfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalfeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedFormat` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_50C36D79` (`uuid_`),
  KEY `IX_CB37A10F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalfeed`
--

LOCK TABLES `journalfeed` WRITE;
/*!40000 ALTER TABLE `journalfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterGroup`
--

DROP TABLE IF EXISTS `ClusterGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterGroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterGroup`
--

LOCK TABLES `ClusterGroup` WRITE;
/*!40000 ALTER TABLE `ClusterGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_teams`
--

DROP TABLE IF EXISTS `users_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teams`
--

LOCK TABLES `users_teams` WRITE;
/*!40000 ALTER TABLE `users_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_usergroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_usergroups`
--

LOCK TABLES `users_usergroups` WRITE;
/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivityset`
--

DROP TABLE IF EXISTS `socialactivityset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivityset` (
  `activitySetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `activityCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitySetId`),
  KEY `IX_4460FA14` (`classNameId`,`classPK`,`type_`),
  KEY `IX_9E13F2DE` (`groupId`),
  KEY `IX_9BE30DDF` (`groupId`,`userId`,`classNameId`,`type_`),
  KEY `IX_F71071BD` (`groupId`,`userId`,`type_`),
  KEY `IX_F80C4386` (`userId`),
  KEY `IX_62AC101A` (`userId`,`classNameId`,`classPK`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivityset`
--

LOCK TABLES `socialactivityset` WRITE;
/*!40000 ALTER TABLE `socialactivityset` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivityset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetvocabulary`
--

DROP TABLE IF EXISTS `assetvocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetvocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_B6B8CA0E` (`groupId`),
  KEY `IX_C0AAD74D` (`groupId`,`name`),
  KEY `IX_55F58818` (`uuid_`),
  KEY `IX_C4E6FD10` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetvocabulary`
--

LOCK TABLES `assetvocabulary` WRITE;
/*!40000 ALTER TABLE `assetvocabulary` DISABLE KEYS */;
INSERT INTO `assetvocabulary` VALUES ('6594e909-5e73-46f3-9ee4-4949424703ec',10327,10197,10157,10161,'','2014-05-27 18:33:29','2014-05-27 18:33:29','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `assetvocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useridmapper`
--

DROP TABLE IF EXISTS `useridmapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useridmapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`),
  KEY `IX_E60EA987` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useridmapper`
--

LOCK TABLES `useridmapper` WRITE;
/*!40000 ALTER TABLE `useridmapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `useridmapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock_`
--

DROP TABLE IF EXISTS `lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`),
  UNIQUE KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_13C5CD3A` (`uuid_`),
  KEY `IX_2C418EAE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_`
--

LOCK TABLES `lock_` WRITE;
/*!40000 ALTER TABLE `lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups_teams`
--

DROP TABLE IF EXISTS `usergroups_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups_teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups_teams`
--

LOCK TABLES `usergroups_teams` WRITE;
/*!40000 ALTER TABLE `usergroups_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetcategory`
--

DROP TABLE IF EXISTS `assetcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`),
  UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`),
  KEY `IX_E639E2F6` (`groupId`),
  KEY `IX_C7F39FCA` (`groupId`,`name`,`vocabularyId`),
  KEY `IX_852EA801` (`groupId`,`parentCategoryId`,`name`,`vocabularyId`),
  KEY `IX_87603842` (`groupId`,`parentCategoryId`,`vocabularyId`),
  KEY `IX_2008FACB` (`groupId`,`vocabularyId`),
  KEY `IX_D61ABE08` (`name`,`vocabularyId`),
  KEY `IX_7BB1826B` (`parentCategoryId`),
  KEY `IX_9DDD15EA` (`parentCategoryId`,`name`),
  KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`),
  KEY `IX_4D37BB00` (`uuid_`),
  KEY `IX_BBAF6928` (`uuid_`,`companyId`),
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetcategory`
--

LOCK TABLES `assetcategory` WRITE;
/*!40000 ALTER TABLE `assetcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet`
--

DROP TABLE IF EXISTS `portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet`
--

LOCK TABLES `portlet` WRITE;
/*!40000 ALTER TABLE `portlet` DISABLE KEYS */;
INSERT INTO `portlet` VALUES (10208,10157,'98','',0),(10209,10157,'183','',1),(10210,10157,'66','',1),(10211,10157,'180','',1),(10212,10157,'27','',1),(10213,10157,'152','',1),(10214,10157,'134','',1),(10215,10157,'130','',1),(10216,10157,'122','',1),(10217,10157,'36','',1),(10218,10157,'26','',1),(10219,10157,'175','',1),(10220,10157,'153','',1),(10221,10157,'64','',1),(10222,10157,'129','',1),(10223,10157,'182','',1),(10224,10157,'179','',1),(10225,10157,'173','',0),(10226,10157,'100','',1),(10227,10157,'19','',1),(10228,10157,'157','',1),(10229,10157,'181','',1),(10230,10157,'128','',1),(10231,10157,'154','',1),(10232,10157,'148','',1),(10233,10157,'11','',1),(10234,10157,'29','',1),(10235,10157,'158','',1),(10236,10157,'178','',1),(10237,10157,'58','',1),(10238,10157,'71','',1),(10239,10157,'97','',1),(10240,10157,'39','',1),(10241,10157,'85','',1),(10242,10157,'118','',1),(10243,10157,'107','',1),(10244,10157,'30','',1),(10245,10157,'184','',1),(10246,10157,'147','',1),(10247,10157,'48','',1),(10248,10157,'125','',1),(10249,10157,'161','',1),(10250,10157,'146','',1),(10251,10157,'62','',0),(10252,10157,'162','',1),(10253,10157,'176','',1),(10254,10157,'108','',1),(10255,10157,'187','',1),(10256,10157,'84','',1),(10257,10157,'101','',1),(10258,10157,'121','',1),(10259,10157,'143','',1),(10260,10157,'77','',1),(10261,10157,'167','',1),(10262,10157,'115','',1),(10263,10157,'56','',1),(10264,10157,'16','',1),(10265,10157,'3','',1),(10266,10157,'20','',1),(10267,10157,'23','',1),(10268,10157,'83','',1),(10269,10157,'99','',1),(10270,10157,'186','',1),(10271,10157,'194','',1),(10272,10157,'70','',1),(10273,10157,'164','',1),(10274,10157,'141','',1),(10275,10157,'9','',1),(10276,10157,'28','',1),(10277,10157,'137','',1),(10278,10157,'15','',1),(10279,10157,'47','',1),(10280,10157,'116','',1),(10281,10157,'82','',1),(10282,10157,'151','',1),(10283,10157,'54','',1),(10284,10157,'34','',1),(10285,10157,'132','',1),(10286,10157,'169','',1),(10287,10157,'61','',1),(10288,10157,'73','',1),(10289,10157,'50','',1),(10290,10157,'127','',1),(10291,10157,'193','',1),(10292,10157,'31','',1),(10293,10157,'25','',1),(10294,10157,'166','',1),(10295,10157,'33','',1),(10296,10157,'150','',1),(10297,10157,'114','',1),(10298,10157,'149','',1),(10299,10157,'67','',1),(10300,10157,'110','',1),(10301,10157,'59','',1),(10302,10157,'135','',1),(10303,10157,'188','',1),(10304,10157,'131','',1),(10305,10157,'102','',1);
/*!40000 ALTER TABLE `portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollschoice`
--

DROP TABLE IF EXISTS `pollschoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollschoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  UNIQUE KEY `IX_C222BD31` (`uuid_`,`groupId`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_6660B399` (`uuid_`),
  KEY `IX_8AE746EF` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollschoice`
--

LOCK TABLES `pollschoice` WRITE;
/*!40000 ALTER TABLE `pollschoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollschoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandotable`
--

DROP TABLE IF EXISTS `expandotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandotable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`),
  KEY `IX_B5AE8A85` (`companyId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandotable`
--

LOCK TABLES `expandotable` WRITE;
/*!40000 ALTER TABLE `expandotable` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandotable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_`
--

DROP TABLE IF EXISTS `role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_F3E1C6FC` (`companyId`,`type_`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_F92B66E6` (`type_`),
  KEY `IX_CBE204` (`type_`,`subtype`),
  KEY `IX_26DB26C5` (`uuid_`),
  KEY `IX_B9FF6043` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_`
--

LOCK TABLES `role_` WRITE;
/*!40000 ALTER TABLE `role_` DISABLE KEYS */;
INSERT INTO `role_` VALUES ('fe7e860e-cc26-4555-940a-7423238485e8',10164,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10164,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),('071d2ed6-1d72-40eb-88ea-f4d59428b803',10165,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10165,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),('ffc6686f-12c4-4061-bf11-13482ae23bca',10166,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10166,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),('645af77b-798f-4b47-b485-94251a0e85c5',10167,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10167,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),('ca3be13d-33f4-4183-a3e4-9d545ba006ca',10168,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10168,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),('cacc507b-6c24-4f1e-a682-823443dd8160',10169,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10169,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),('e2d46cb2-7429-416d-91e0-387f62c232a3',10170,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10170,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),('0979984b-74e0-4fa9-9782-143adad36bf1',10171,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10171,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),('51a323b9-c9f9-470e-bcdd-d916c7c8e507',10172,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10172,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),('0791b59d-fe59-4bac-a13f-54960e904b5a',10173,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10173,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),('5d396761-da92-4153-9bda-cf26a257651f',10174,10157,10161,'','2014-05-27 18:33:22','2014-05-27 18:33:22',10004,10174,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,'');
/*!40000 ALTER TABLE `role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordtracker`
--

DROP TABLE IF EXISTS `passwordtracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordtracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordtracker`
--

LOCK TABLES `passwordtracker` WRITE;
/*!40000 ALTER TABLE `passwordtracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordtracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytypes_dlfolders`
--

DROP TABLE IF EXISTS `dlfileentrytypes_dlfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytypes_dlfolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytypes_dlfolders`
--

LOCK TABLES `dlfileentrytypes_dlfolders` WRITE;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classname_`
--

DROP TABLE IF EXISTS `classname_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classname_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classname_`
--

LOCK TABLES `classname_` WRITE;
/*!40000 ALTER TABLE `classname_` DISABLE KEYS */;
INSERT INTO `classname_` VALUES (10017,'com.liferay.counter.model.Counter'),(10155,'com.liferay.portal.kernel.repository.model.FileEntry'),(10156,'com.liferay.portal.kernel.repository.model.Folder'),(10018,'com.liferay.portal.kernel.workflow.WorkflowTask'),(10019,'com.liferay.portal.model.Account'),(10020,'com.liferay.portal.model.Address'),(10021,'com.liferay.portal.model.BackgroundTask'),(10022,'com.liferay.portal.model.BrowserTracker'),(10023,'com.liferay.portal.model.ClassName'),(10024,'com.liferay.portal.model.ClusterGroup'),(10025,'com.liferay.portal.model.Company'),(10026,'com.liferay.portal.model.Contact'),(10027,'com.liferay.portal.model.Country'),(10028,'com.liferay.portal.model.EmailAddress'),(10001,'com.liferay.portal.model.Group'),(10029,'com.liferay.portal.model.Image'),(10002,'com.liferay.portal.model.Layout'),(10030,'com.liferay.portal.model.LayoutBranch'),(10031,'com.liferay.portal.model.LayoutFriendlyURL'),(10032,'com.liferay.portal.model.LayoutPrototype'),(10033,'com.liferay.portal.model.LayoutRevision'),(10034,'com.liferay.portal.model.LayoutSet'),(10035,'com.liferay.portal.model.LayoutSetBranch'),(10036,'com.liferay.portal.model.LayoutSetPrototype'),(10037,'com.liferay.portal.model.ListType'),(10038,'com.liferay.portal.model.Lock'),(10039,'com.liferay.portal.model.MembershipRequest'),(10003,'com.liferay.portal.model.Organization'),(10040,'com.liferay.portal.model.OrgGroupRole'),(10041,'com.liferay.portal.model.OrgLabor'),(10042,'com.liferay.portal.model.PasswordPolicy'),(10043,'com.liferay.portal.model.PasswordPolicyRel'),(10044,'com.liferay.portal.model.PasswordTracker'),(10045,'com.liferay.portal.model.Phone'),(10046,'com.liferay.portal.model.PluginSetting'),(10047,'com.liferay.portal.model.PortalPreferences'),(10048,'com.liferay.portal.model.Portlet'),(10049,'com.liferay.portal.model.PortletItem'),(10050,'com.liferay.portal.model.PortletPreferences'),(10051,'com.liferay.portal.model.Region'),(10052,'com.liferay.portal.model.Release'),(10053,'com.liferay.portal.model.Repository'),(10054,'com.liferay.portal.model.RepositoryEntry'),(10055,'com.liferay.portal.model.ResourceAction'),(10056,'com.liferay.portal.model.ResourceBlock'),(10057,'com.liferay.portal.model.ResourceBlockPermission'),(10058,'com.liferay.portal.model.ResourcePermission'),(10059,'com.liferay.portal.model.ResourceTypePermission'),(10004,'com.liferay.portal.model.Role'),(10060,'com.liferay.portal.model.ServiceComponent'),(10061,'com.liferay.portal.model.Shard'),(10062,'com.liferay.portal.model.Subscription'),(10063,'com.liferay.portal.model.SystemEvent'),(10064,'com.liferay.portal.model.Team'),(10065,'com.liferay.portal.model.Ticket'),(10005,'com.liferay.portal.model.User'),(10006,'com.liferay.portal.model.UserGroup'),(10066,'com.liferay.portal.model.UserGroupGroupRole'),(10067,'com.liferay.portal.model.UserGroupRole'),(10068,'com.liferay.portal.model.UserIdMapper'),(10069,'com.liferay.portal.model.UserNotificationDelivery'),(10070,'com.liferay.portal.model.UserNotificationEvent'),(10193,'com.liferay.portal.model.UserPersonalSite'),(10071,'com.liferay.portal.model.UserTracker'),(10072,'com.liferay.portal.model.UserTrackerPath'),(10073,'com.liferay.portal.model.VirtualHost'),(10074,'com.liferay.portal.model.WebDAVProps'),(10075,'com.liferay.portal.model.Website'),(10076,'com.liferay.portal.model.WorkflowDefinitionLink'),(10077,'com.liferay.portal.model.WorkflowInstanceLink'),(10078,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(10079,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(10080,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(10081,'com.liferay.portlet.asset.model.AssetCategory'),(10082,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(10083,'com.liferay.portlet.asset.model.AssetEntry'),(10084,'com.liferay.portlet.asset.model.AssetLink'),(10085,'com.liferay.portlet.asset.model.AssetTag'),(10086,'com.liferay.portlet.asset.model.AssetTagProperty'),(10087,'com.liferay.portlet.asset.model.AssetTagStats'),(10088,'com.liferay.portlet.asset.model.AssetVocabulary'),(10007,'com.liferay.portlet.blogs.model.BlogsEntry'),(10089,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(10008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(10009,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(10010,'com.liferay.portlet.calendar.model.CalEvent'),(10090,'com.liferay.portlet.documentlibrary.model.DLContent'),(10011,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(10091,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(10092,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(10093,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(10094,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(10095,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(10012,'com.liferay.portlet.documentlibrary.model.DLFolder'),(10096,'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),(10317,'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),(10097,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(10098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(10099,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(10100,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(10101,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(10102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(10103,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(10104,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(10105,'com.liferay.portlet.expando.model.ExpandoColumn'),(10106,'com.liferay.portlet.expando.model.ExpandoRow'),(10107,'com.liferay.portlet.expando.model.ExpandoTable'),(10108,'com.liferay.portlet.expando.model.ExpandoValue'),(10109,'com.liferay.portlet.journal.model.JournalArticle'),(10110,'com.liferay.portlet.journal.model.JournalArticleImage'),(10111,'com.liferay.portlet.journal.model.JournalArticleResource'),(10112,'com.liferay.portlet.journal.model.JournalContentSearch'),(10113,'com.liferay.portlet.journal.model.JournalFeed'),(10013,'com.liferay.portlet.journal.model.JournalFolder'),(10114,'com.liferay.portlet.messageboards.model.MBBan'),(10115,'com.liferay.portlet.messageboards.model.MBCategory'),(10116,'com.liferay.portlet.messageboards.model.MBDiscussion'),(10117,'com.liferay.portlet.messageboards.model.MBMailingList'),(10014,'com.liferay.portlet.messageboards.model.MBMessage'),(10118,'com.liferay.portlet.messageboards.model.MBStatsUser'),(10015,'com.liferay.portlet.messageboards.model.MBThread'),(10119,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(10120,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(10121,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(10122,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(10123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(10124,'com.liferay.portlet.polls.model.PollsChoice'),(10125,'com.liferay.portlet.polls.model.PollsQuestion'),(10126,'com.liferay.portlet.polls.model.PollsVote'),(10127,'com.liferay.portlet.ratings.model.RatingsEntry'),(10128,'com.liferay.portlet.ratings.model.RatingsStats'),(10129,'com.liferay.portlet.shopping.model.ShoppingCart'),(10130,'com.liferay.portlet.shopping.model.ShoppingCategory'),(10131,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(10132,'com.liferay.portlet.shopping.model.ShoppingItem'),(10133,'com.liferay.portlet.shopping.model.ShoppingItemField'),(10134,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(10135,'com.liferay.portlet.shopping.model.ShoppingOrder'),(10136,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(10137,'com.liferay.portlet.social.model.SocialActivity'),(10138,'com.liferay.portlet.social.model.SocialActivityAchievement'),(10139,'com.liferay.portlet.social.model.SocialActivityCounter'),(10140,'com.liferay.portlet.social.model.SocialActivityLimit'),(10141,'com.liferay.portlet.social.model.SocialActivitySet'),(10142,'com.liferay.portlet.social.model.SocialActivitySetting'),(10143,'com.liferay.portlet.social.model.SocialRelation'),(10144,'com.liferay.portlet.social.model.SocialRequest'),(10145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(10146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(10147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(10148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(10149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(10150,'com.liferay.portlet.trash.model.TrashEntry'),(10151,'com.liferay.portlet.trash.model.TrashVersion'),(10152,'com.liferay.portlet.wiki.model.WikiNode'),(10016,'com.liferay.portlet.wiki.model.WikiPage'),(10153,'com.liferay.portlet.wiki.model.WikiPageResource');
/*!40000 ALTER TABLE `classname_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CRON_TRIGGERS`
--

LOCK TABLES `QUARTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_`
--

DROP TABLE IF EXISTS `user_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `ldapServerId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`),
  UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`),
  UNIQUE KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_3A1E834E` (`companyId`),
  KEY `IX_740C4D0C` (`companyId`,`createDate`),
  KEY `IX_BCFDA257` (`companyId`,`createDate`,`modifiedDate`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_1D731F03` (`companyId`,`facebookId`),
  KEY `IX_EE8ABD19` (`companyId`,`modifiedDate`),
  KEY `IX_89509087` (`companyId`,`openId`(255)),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`),
  KEY `IX_405CC0E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_`
--

LOCK TABLES `user_` WRITE;
/*!40000 ALTER TABLE `user_` DISABLE KEYS */;
INSERT INTO `user_` VALUES ('f8a01732-bd4e-4666-9efc-6d8a62291d9c',10161,10157,'2014-05-27 18:33:21','2014-05-27 18:33:21',1,10162,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,851ce4a13a5b0a0025437f763ca13bcb,851ce4a13a5b0a0025437f763ca13bcb','','',0,'10161','default@liferay.com',0,0,'',0,'en_US','UTC','Welcome!','','','','','','2014-05-27 18:33:21','',NULL,'',NULL,0,0,NULL,1,0,0),('29d42b93-ea02-4e33-9ff3-7d02d4889091',10201,10157,'2014-05-27 18:33:25','2014-05-27 18:36:19',0,10202,'AAAAoAAB9AArxUv+LnZqwvda3Gwo5OOZO8cKePYummIR0R94',1,0,'2014-05-27 18:36:34','','','',0,'test','test@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test Test!','','Test','','Test','','2014-05-27 18:33:25','','2014-05-27 18:33:25','',NULL,0,0,NULL,0,1,0);
/*!40000 ALTER TABLE `user_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecomponent`
--

DROP TABLE IF EXISTS `servicecomponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicecomponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`),
  KEY `IX_7338606F` (`buildNamespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecomponent`
--

LOCK TABLES `servicecomponent` WRITE;
/*!40000 ALTER TABLE `servicecomponent` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicecomponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitycounter`
--

DROP TABLE IF EXISTS `socialactivitycounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitycounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_D6666704` (`groupId`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitycounter`
--

LOCK TABLES `socialactivitycounter` WRITE;
/*!40000 ALTER TABLE `socialactivitycounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitycounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualhost`
--

DROP TABLE IF EXISTS `virtualhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualhost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualhost`
--

LOCK TABLES `virtualhost` WRITE;
/*!40000 ALTER TABLE `virtualhost` DISABLE KEYS */;
INSERT INTO `virtualhost` VALUES (10160,10157,0,'localhost');
/*!40000 ALTER TABLE `virtualhost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trashversion`
--

DROP TABLE IF EXISTS `trashversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trashversion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`versionId`),
  UNIQUE KEY `IX_D639348C` (`entryId`,`classNameId`,`classPK`),
  KEY `IX_630A643B` (`classNameId`,`classPK`),
  KEY `IX_55D44577` (`entryId`),
  KEY `IX_72D58D37` (`entryId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trashversion`
--

LOCK TABLES `trashversion` WRITE;
/*!40000 ALTER TABLE `trashversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `trashversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusVirtual`
--

DROP TABLE IF EXISTS `CyrusVirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusVirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusVirtual`
--

LOCK TABLES `CyrusVirtual` WRITE;
/*!40000 ALTER TABLE `CyrusVirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusVirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitem`
--

DROP TABLE IF EXISTS `shoppingitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_FEFE7D76` (`groupId`,`categoryId`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitem`
--

LOCK TABLES `shoppingitem` WRITE;
/*!40000 ALTER TABLE `shoppingitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbban`
--

DROP TABLE IF EXISTS `mbban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbban` (
  `uuid_` varchar(75) DEFAULT NULL,
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`),
  UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  UNIQUE KEY `IX_2A3B68F6` (`uuid_`,`groupId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_48814BBA` (`userId`),
  KEY `IX_8A13C634` (`uuid_`),
  KEY `IX_4F841574` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbban`
--

LOCK TABLES `mbban` WRITE;
/*!40000 ALTER TABLE `mbban` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletitem`
--

DROP TABLE IF EXISTS `portletitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletitem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletitem`
--

LOCK TABLES `portletitem` WRITE;
/*!40000 ALTER TABLE `portletitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `portletitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-27 12:37:06
