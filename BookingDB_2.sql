-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: BookingDB_2
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB-6

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add hotel',7,'add_hotel'),(20,'Can change hotel',7,'change_hotel'),(21,'Can delete hotel',7,'delete_hotel'),(22,'Can add prenotazioni',8,'add_prenotazioni'),(23,'Can change prenotazioni',8,'change_prenotazioni'),(24,'Can delete prenotazioni',8,'delete_prenotazioni'),(25,'Can add stanza',9,'add_stanza'),(26,'Can change stanza',9,'change_stanza'),(27,'Can delete stanza',9,'delete_stanza');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$LcI22nYp4JVS$m85jGswE6BcGYORAw6zED7utlXCZGaThvn9shngmXlk=','2018-01-22 12:38:32.100183',1,'admin','','','ma.mezzetti@gmail.com',1,1,'2018-01-22 11:52:38.289406');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-01-22 11:55:07.524033','1','Hotel object',1,'[{\"added\": {}}]',7,1),(2,'2018-01-22 12:01:50.125526','2','Hotel object',1,'[{\"added\": {}}]',7,1),(3,'2018-01-22 12:04:42.670441','3','Hotel object',1,'[{\"added\": {}}]',7,1),(4,'2018-01-22 12:05:34.333523','1','Stanza object',1,'[{\"added\": {}}]',9,1),(5,'2018-01-22 12:05:52.992232','2','Stanza object',1,'[{\"added\": {}}]',9,1),(6,'2018-01-22 12:06:09.755308','3','Stanza object',1,'[{\"added\": {}}]',9,1),(7,'2018-01-22 12:09:39.143978','4','Stanza object',1,'[{\"added\": {}}]',9,1),(8,'2018-01-22 12:09:55.416340','5','Stanza object',1,'[{\"added\": {}}]',9,1),(9,'2018-01-22 12:10:16.699340','6','Stanza object',1,'[{\"added\": {}}]',9,1),(10,'2018-01-22 12:10:40.556818','7','Stanza object',1,'[{\"added\": {}}]',9,1),(11,'2018-01-22 12:10:59.562327','8','Stanza object',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'myBookingApp_2','hotel'),(8,'myBookingApp_2','prenotazioni'),(9,'myBookingApp_2','stanza'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-01-21 20:30:31.752825'),(2,'auth','0001_initial','2018-01-21 20:30:32.141680'),(3,'admin','0001_initial','2018-01-21 20:30:32.256168'),(4,'admin','0002_logentry_remove_auto_add','2018-01-21 20:30:32.281034'),(5,'contenttypes','0002_remove_content_type_name','2018-01-21 20:30:32.364624'),(6,'auth','0002_alter_permission_name_max_length','2018-01-21 20:30:32.408879'),(7,'auth','0003_alter_user_email_max_length','2018-01-21 20:30:32.458889'),(8,'auth','0004_alter_user_username_opts','2018-01-21 20:30:32.478392'),(9,'auth','0005_alter_user_last_login_null','2018-01-21 20:30:32.512617'),(10,'auth','0006_require_contenttypes_0002','2018-01-21 20:30:32.517694'),(11,'auth','0007_alter_validators_add_error_messages','2018-01-21 20:30:32.536407'),(12,'auth','0008_alter_user_username_max_length','2018-01-21 20:30:32.633134'),(13,'auth','0009_alter_user_last_name_max_length','2018-01-21 20:30:32.687313'),(14,'auth','0010_auto_20180118_2120','2018-01-21 20:30:32.746384'),(15,'myBookingApp_2','0001_initial','2018-01-21 20:30:32.783726'),(16,'sessions','0001_initial','2018-01-21 20:30:32.821321'),(17,'myBookingApp_2','0002_auto_20180121_2040','2018-01-21 20:40:37.980341');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myBookingApp_2_hotel`
--

DROP TABLE IF EXISTS `myBookingApp_2_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myBookingApp_2_hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `indirizzo` varchar(300) NOT NULL,
  `città` varchar(200) NOT NULL,
  `stato` varchar(200) NOT NULL,
  `piscina` tinyint(1) NOT NULL,
  `WiFi` tinyint(1) NOT NULL,
  `accesso_disabili` tinyint(1) NOT NULL,
  `ristorante` tinyint(1) NOT NULL,
  `parcheggio` tinyint(1) NOT NULL,
  `palestra` tinyint(1) NOT NULL,
  `bar` tinyint(1) NOT NULL,
  `spa` tinyint(1) NOT NULL,
  `descrizione` varchar(1000) NOT NULL,
  `sito` varchar(600) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `num_telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myBookingApp_2_hotel`
--

LOCK TABLES `myBookingApp_2_hotel` WRITE;
/*!40000 ALTER TABLE `myBookingApp_2_hotel` DISABLE KEYS */;
INSERT INTO `myBookingApp_2_hotel` VALUES (1,'Luxury Hotel','Via fasulla 123','Montreal','Canada',1,1,0,1,1,0,1,1,'Hotel molto bello','www.luxuryhotel.com','2018-01-09 11:54:26.000000','3754896254'),(2,'Mondial','Via Duca della Vittoria, 129/131','MArina di Pietrasanta','Italia',1,1,1,1,1,1,1,1,'Hotel di lusso','http://www.mondialresort.it/','2018-01-10 11:58:22.000000','+390584745911'),(3,'Hotel Glories','C/PADILLA, 173 - 08013 BARCELONA','Barcellona','Spagna',0,1,1,1,0,0,1,0,'molto bello','http://www.hotelglories.com','2018-01-09 12:03:37.000000','+39932650808');
/*!40000 ALTER TABLE `myBookingApp_2_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myBookingApp_2_prenotazioni`
--

DROP TABLE IF EXISTS `myBookingApp_2_prenotazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myBookingApp_2_prenotazioni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `check_in` datetime(6) NOT NULL,
  `check_out` datetime(6) NOT NULL,
  `id_stanza_id` int(11) NOT NULL,
  `id_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myBookingApp_2_preno_id_stanza_id_1fa98c6e_fk_myBooking` (`id_stanza_id`),
  KEY `myBookingApp_2_prenotazioni_id_user_id_6d0dffd9_fk_auth_user_id` (`id_user_id`),
  CONSTRAINT `myBookingApp_2_preno_id_stanza_id_1fa98c6e_fk_myBooking` FOREIGN KEY (`id_stanza_id`) REFERENCES `myBookingApp_2_stanza` (`id`),
  CONSTRAINT `myBookingApp_2_prenotazioni_id_user_id_6d0dffd9_fk_auth_user_id` FOREIGN KEY (`id_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myBookingApp_2_prenotazioni`
--

LOCK TABLES `myBookingApp_2_prenotazioni` WRITE;
/*!40000 ALTER TABLE `myBookingApp_2_prenotazioni` DISABLE KEYS */;
/*!40000 ALTER TABLE `myBookingApp_2_prenotazioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myBookingApp_2_stanza`
--

DROP TABLE IF EXISTS `myBookingApp_2_stanza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myBookingApp_2_stanza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_camera` int(10) unsigned NOT NULL,
  `prezzo` double NOT NULL,
  `prezzo_festività` double NOT NULL,
  `num_persone` int(10) unsigned NOT NULL,
  `aria_condizionata` tinyint(1) NOT NULL,
  `camera_fumatori` tinyint(1) NOT NULL,
  `animali` tinyint(1) NOT NULL,
  `id_hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myBookingApp_2_stanza_id_hotel_id_num_camera_69643015_uniq` (`id_hotel_id`,`num_camera`),
  CONSTRAINT `myBookingApp_2_stanz_id_hotel_id_3eb172a3_fk_myBooking` FOREIGN KEY (`id_hotel_id`) REFERENCES `myBookingApp_2_hotel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myBookingApp_2_stanza`
--

LOCK TABLES `myBookingApp_2_stanza` WRITE;
/*!40000 ALTER TABLE `myBookingApp_2_stanza` DISABLE KEYS */;
INSERT INTO `myBookingApp_2_stanza` VALUES (1,1,95,120,3,1,0,1,1),(2,2,65,80,1,0,1,0,1),(3,3,150,200,2,1,1,1,1),(4,1,25,32,1,0,0,0,2),(5,2,50,60,2,0,0,0,2),(6,3,75,90,3,1,0,0,2),(7,1,100,115,4,1,0,1,3),(8,2,39,50,1,1,0,0,3);
/*!40000 ALTER TABLE `myBookingApp_2_stanza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-22 16:40:39
