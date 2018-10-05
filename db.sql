-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `codename` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,2,'add_permission','Can add permission'),(5,2,'change_permission','Can change permission'),(6,2,'delete_permission','Can delete permission'),(7,3,'add_group','Can add group'),(8,3,'change_group','Can change group'),(9,3,'delete_group','Can delete group'),(10,4,'add_user','Can add user'),(11,4,'change_user','Can change user'),(12,4,'delete_user','Can delete user'),(13,5,'add_contenttype','Can add content type'),(14,5,'change_contenttype','Can change content type'),(15,5,'delete_contenttype','Can delete content type'),(16,6,'add_session','Can add session'),(17,6,'change_session','Can change session'),(18,6,'delete_session','Can delete session'),(19,7,'add_course','Can add course'),(20,7,'change_course','Can change course'),(21,7,'delete_course','Can delete course');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` text,
  `username` varchar(150) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` text,
  `is_active` text,
  `date_joined` datetime DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$FD1CF7qmTBuw$jCo2VFwInr4OPuUO6mZb6WiupJusbrbhZQJR6nJf9Dk=','2018-05-04 00:00:00','1','admin','','','1','1','2018-03-28 00:00:00',''),(7,'pbkdf2_sha256$100000$Kle8KS3TxPQ5$uQT8bBJFChQRR1RZ9DfwsVP981M3Oi/roaj+4b4usxo=','2018-05-04 00:00:00','0','jdoucette','John','jdoucette@ncf.edu','0','1','2018-05-02 00:00:00','Doucette'),(8,'pbkdf2_sha256$100000$FAhUYU2BFSco$UCapmNv+J0PkUtSVL6kYle44SDtM18S3bv034HYSizc=','2018-09-03 00:00:00','0','Ralf','ralf','rebecca.phillips14@ncf.edu','0','1','2018-09-03 00:00:00','rudd'),(9,'pbkdf2_sha256$100000$070OPTgbmTaG$pukJzi51I2OX2SJFxkrA8Rvk5VnatgeRsB1CKjtOBgA=','2018-09-14 00:00:00','0','IsItWorking','','pxygycdg@sharklasers.com','0','1','2018-09-14 00:00:00','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_course` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `decription` text,
  `date` datetime DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `professor_id` int(11) DEFAULT NULL,
  `room1` varchar(20) DEFAULT NULL,
  `ucs_time_date1` varchar(10) DEFAULT NULL,
  `room2` varchar(20) DEFAULT NULL,
  `room3` varchar(20) DEFAULT NULL,
  `ucs_time_date2` varchar(10) DEFAULT NULL,
  `ucs_time_date3` varchar(10) DEFAULT NULL,
  `assigned_room` varchar(20) DEFAULT NULL,
  `assigned_time` varchar(100) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `has_conflict` text,
  `enemies` varchar(3000) DEFAULT NULL,
  `prerequisite` varchar(300) DEFAULT NULL,
  `term_length` varchar(30) DEFAULT NULL,
  `Gender_Studies` text,
  `Interdisciplinary` text,
  `LAC` text,
  `cap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (2,'Software Engineering','decription','2018-05-04 00:00:00','software-engineering',7,'room1','ucs_time_d','room2','room3','ucs_time_d','ucs_time_d','','','Intermediate','Computer Science','0','','none','Full Term','0','0','0',40),(3,'Command Line Help (ATTN: STUDENTS WITH LINUX)','tednxvbxfn','2018-09-03 00:00:00','command-line-help-attn-students-with-linux',8,'LBR 259','MWF10','HCL 8','LBR 209','MWF10','TR910','','','Advanced','Literature','0','','none','Full Term','1','1','1',20);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) DEFAULT NULL,
  `object_id` text,
  `object_repr` varchar(200) DEFAULT NULL,
  `action_flag` text,
  `change_message` text,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2','silver smithing','2','[{\"changed\": {\"fields\": [\"ucs_time_date\"]}}]',7,1,'2018-03-29 00:00:00'),(2,'3','Databases','3','',7,1,'2018-03-29 00:00:00'),(3,'2','silver smithing','3','',7,1,'2018-03-29 00:00:00'),(4,'1','Software Engineering','3','',7,1,'2018-03-29 00:00:00'),(5,'4','hello world','2','[{\"changed\": {\"fields\": [\"ucs_time_date\", \"room\"]}}]',7,1,'2018-03-29 00:00:00'),(6,'4','hello world','2','[]',7,1,'2018-03-29 00:00:00'),(7,'6','hello world','3','',7,1,'2018-03-29 00:00:00'),(8,'5','beep-boop','3','',7,1,'2018-03-29 00:00:00'),(9,'4','hello world','3','',7,1,'2018-03-29 00:00:00'),(10,'8','Databases','3','',7,1,'2018-03-29 00:00:00'),(11,'7','Software Engineering','3','',7,1,'2018-03-29 00:00:00'),(12,'11','Software Engineering','3','',7,1,'2018-03-30 00:00:00'),(13,'15','new course','3','',7,1,'2018-03-30 00:00:00'),(14,'14','new course','3','',7,1,'2018-03-30 00:00:00'),(15,'13','new course','3','',7,1,'2018-03-30 00:00:00'),(16,'12','new course','3','',7,1,'2018-03-30 00:00:00'),(17,'18','Computer Hardware','3','',7,1,'2018-05-02 00:00:00'),(18,'17','Advanced transmission dynamics and biochemical pathways','3','',7,1,'2018-05-02 00:00:00'),(19,'16','Object Oriented Design','3','',7,1,'2018-05-02 00:00:00'),(20,'10','beep-boop','3','',7,1,'2018-05-02 00:00:00'),(21,'9','Software Engineering','3','',7,1,'2018-05-02 00:00:00'),(22,'5','Hmiller','3','',4,1,'2018-05-02 00:00:00'),(23,'4','dgilman','3','',4,1,'2018-05-02 00:00:00'),(24,'2','jdoucette','3','',4,1,'2018-05-02 00:00:00'),(25,'6','johnD','3','',4,1,'2018-05-02 00:00:00'),(26,'3','mlepinski','3','',4,1,'2018-05-02 00:00:00');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) DEFAULT NULL,
  `app_label` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'courses','course'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) DEFAULT NULL,
  `app` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `applied` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-03-28 00:00:00'),(2,'auth','0001_initial','2018-03-28 00:00:00'),(3,'admin','0001_initial','2018-03-28 00:00:00'),(4,'admin','0002_logentry_remove_auto_add','2018-03-28 00:00:00'),(5,'contenttypes','0002_remove_content_type_name','2018-03-28 00:00:00'),(6,'auth','0002_alter_permission_name_max_length','2018-03-28 00:00:00'),(7,'auth','0003_alter_user_email_max_length','2018-03-28 00:00:00'),(8,'auth','0004_alter_user_username_opts','2018-03-28 00:00:00'),(9,'auth','0005_alter_user_last_login_null','2018-03-28 00:00:00'),(10,'auth','0006_require_contenttypes_0002','2018-03-28 00:00:00'),(11,'auth','0007_alter_validators_add_error_messages','2018-03-28 00:00:00'),(12,'auth','0008_alter_user_username_max_length','2018-03-28 00:00:00'),(13,'auth','0009_alter_user_last_name_max_length','2018-03-28 00:00:00'),(14,'courses','0001_initial','2018-03-28 00:00:00'),(15,'courses','0002_course_slug','2018-03-28 00:00:00'),(16,'courses','0003_auto_20180325_2123','2018-03-28 00:00:00'),(17,'courses','0004_auto_20180326_0026','2018-03-28 00:00:00'),(18,'courses','0005_auto_20180327_1255','2018-03-28 00:00:00'),(19,'courses','0006_auto_20180327_1300','2018-03-28 00:00:00'),(20,'courses','0007_auto_20180327_1302','2018-03-28 00:00:00'),(21,'courses','0008_auto_20180327_1340','2018-03-28 00:00:00'),(22,'courses','0009_course_room','2018-03-28 00:00:00'),(23,'sessions','0001_initial','2018-03-28 00:00:00'),(24,'courses','0010_auto_20180329_1758','2018-03-29 00:00:00'),(25,'courses','0011_auto_20180329_1826','2018-03-29 00:00:00'),(26,'courses','0012_auto_20180329_1830','2018-03-29 00:00:00'),(27,'courses','0013_auto_20180329_1841','2018-03-29 00:00:00'),(28,'courses','0014_auto_20180329_1928','2018-03-29 00:00:00'),(29,'courses','0015_auto_20180405_1752','2018-04-19 00:00:00'),(30,'courses','0016_auto_20180405_1806','2018-04-19 00:00:00'),(31,'courses','0017_course_level','2018-04-19 00:00:00'),(32,'courses','0018_course_department','2018-04-19 00:00:00'),(33,'courses','0019_auto_20180430_1104','2018-05-01 00:00:00'),(34,'courses','0020_course_enemies','2018-05-02 00:00:00'),(35,'courses','0021_auto_20180502_1736','2018-05-04 00:00:00'),(36,'courses','0022_remove_course_class_size','2018-05-04 00:00:00'),(37,'courses','0021_course_class_size','2018-05-04 00:00:00'),(38,'courses','0023_merge_20180503_1034','2018-05-04 00:00:00'),(39,'courses','0024_auto_20180503_2058','2018-05-04 00:00:00'),(40,'courses','0025_auto_20180503_2100','2018-05-04 00:00:00'),(41,'courses','0026_auto_20180503_2101','2018-05-04 00:00:00'),(42,'courses','0027_auto_20180503_2125','2018-05-04 00:00:00'),(43,'courses','0028_auto_20180503_2133','2018-05-04 00:00:00'),(44,'courses','0029_auto_20180503_2135','2018-05-04 00:00:00'),(45,'courses','0030_auto_20180503_2205','2018-05-04 00:00:00'),(46,'courses','0024_auto_20180503_2245','2018-09-03 00:00:00'),(47,'courses','0025_auto_20180503_2303','2018-09-03 00:00:00'),(48,'courses','0026_auto_20180503_2312','2018-09-03 00:00:00');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) DEFAULT NULL,
  `session_data` text,
  `expire_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('msga94ym7f8tqbk6ay78ib5einolbogv','Y2RhMzg4MWZlMjM3NmQ2MWVhNWViMjA0ZTYyZjUyNzg3ZWU5YzlmYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDRkOTExZDlmZTkwNmZiNjA1MjkwMzE2NDA2OWE3NzkzNTQ5NzVmIn0=','2018-04-13 00:00:00'),('gt4qqpoiw1f0hpvd4m7htic58onksvhu','Y2RhMzg4MWZlMjM3NmQ2MWVhNWViMjA0ZTYyZjUyNzg3ZWU5YzlmYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDRkOTExZDlmZTkwNmZiNjA1MjkwMzE2NDA2OWE3NzkzNTQ5NzVmIn0=','2018-05-15 00:00:00'),('dql3nkyvoq8ybk8ft250cr0qdwt3v1hk','ZjNkNzY4ZmFiZjIwMDBjYzU4ODM1NzU1ODVhNTFlMTAzMzczZjQwOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDc2M2ZkMDA2YmQ0YjkxNThlNTdiMTVjNTUzMGZkNWQzYTJmMWQ5In0=','2018-05-16 00:00:00'),('u622c9p629yzsl2z0ixdjzx07w7lwx2v','ZjNkNzY4ZmFiZjIwMDBjYzU4ODM1NzU1ODVhNTFlMTAzMzczZjQwOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDc2M2ZkMDA2YmQ0YjkxNThlNTdiMTVjNTUzMGZkNWQzYTJmMWQ5In0=','2018-05-18 00:00:00'),('jwx7kfmzp00wqfwdk89a0nje6u8tmw6r','NDgwYTJiM2YxMjQ0N2ZhMDFkNWFlZjc2YWEwNDg4Nzg0NGE3ZWU3ZTp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYmQ5ODZhYTI5NGYzNjY0M2NjMmMxNDQ5MjM1YjFhZWNmMWY2ODljIn0=','2018-09-17 00:00:00');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` blob,
  `seq` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations','48'),('django_admin_log','26'),('django_content_type','7'),('auth_permission','21'),('auth_user','9'),('courses_course','3');
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-08 22:53:55
