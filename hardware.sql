/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.27 : Database - hardware
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hardware` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hardware`;

/*Table structure for table `assembleStation` */

DROP TABLE IF EXISTS `assembleStation`;

CREATE TABLE `assembleStation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsNumber` int NOT NULL,
  `comingTime` bigint NOT NULL,
  `leavingTime` bigint NOT NULL,
  `stayTime` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `assembleStation` */

insert  into `assembleStation`(`id`,`goodsNumber`,`comingTime`,`leavingTime`,`stayTime`) values (2,1,1697173574,1697173583,9),(3,1,1697173612,1697173617,5),(4,1,1697173691,1697173692,1),(5,1,1697175910,1697175911,1),(6,1,1697175960,1697175961,1),(7,1,1697175961,1697175967,6),(8,1,1697175962,1697175964,2),(9,1,1697175963,1697175969,6),(10,1,1697175964,1697175967,3),(11,1,1697178133,1697178141,8),(12,1,1697178134,1697178137,3),(13,1,1697178135,1697178137,2),(14,1,1697178136,1697178142,6),(15,1,1697178137,1697178147,10),(16,1,1697178138,1697178140,2),(17,1,1697178139,1697178140,1),(18,1,1697185487,1697185497,10),(19,2,1697185488,1697185497,9),(20,3,1697185489,1697185499,10),(21,4,1697185490,1697185498,8),(22,5,1697185491,1697185495,4),(23,6,1697185492,1697185497,5),(24,7,1697185493,1697185498,5),(25,8,1697185494,1697185500,6),(26,9,1697185495,1697185498,3),(27,10,1697185497,1697185498,1),(28,11,1697185498,1697185500,2),(29,12,1697185499,1697185505,6),(30,13,1697185500,1697185504,4),(31,14,1697185501,1697185505,4),(32,15,1697185502,1697185509,7),(33,16,1697185503,1697185510,7),(34,17,1697185504,1697185510,6),(35,18,1697185505,1697185508,3),(36,19,1697185506,1697185509,3),(37,20,1697185507,1697185511,4),(38,21,1697185508,1697185510,2),(39,22,1697185509,1697185513,4),(40,23,1697185510,1697185513,3),(41,24,1697185511,1697185519,8),(42,25,1697185512,1697185520,8),(43,26,1697185513,1697185515,2),(44,27,1697185514,1697185516,2),(45,1,1697186790,1697186798,8),(46,2,1697186791,1697186800,9),(47,3,1697186792,1697186795,3),(48,4,1697186793,1697186794,1),(49,5,1697186794,1697186795,1),(50,6,1697186795,1697186800,5),(51,7,1697186796,1697186800,4),(52,8,1697186797,1697186798,1),(53,9,1697186798,1697186803,5),(54,10,1697186799,1697186803,4),(55,11,1697186800,1697186805,5),(56,12,1697186801,1697186811,10),(57,13,1697186802,1697186811,9),(58,14,1697186803,1697186804,1);

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cutting station',7,'add_cuttingstation'),(26,'Can change cutting station',7,'change_cuttingstation'),(27,'Can delete cutting station',7,'delete_cuttingstation'),(28,'Can view cutting station',7,'view_cuttingstation');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `cuttingStation` */

DROP TABLE IF EXISTS `cuttingStation`;

CREATE TABLE `cuttingStation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsNumber` int NOT NULL,
  `comingTime` bigint NOT NULL,
  `leavingTime` bigint NOT NULL,
  `stayTime` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cuttingStation` */

insert  into `cuttingStation`(`id`,`goodsNumber`,`comingTime`,`leavingTime`,`stayTime`) values (1,1,1697170399,1697170404,0),(2,1,1697173486,1697173496,10),(3,1,1697173574,1697173577,3),(4,1,1697173612,1697173615,3),(5,1,1697173691,1697173695,4),(6,1,1697175910,1697175920,10),(7,1,1697175960,1697175968,8),(8,1,1697175961,1697175970,9),(9,1,1697175962,1697175963,1),(10,1,1697175963,1697175972,9),(11,1,1697175964,1697175970,6),(12,1,1697178133,1697178138,5),(13,1,1697178134,1697178135,1),(14,1,1697178135,1697178137,2),(15,1,1697178136,1697178141,5),(16,1,1697178137,1697178140,3),(17,1,1697178138,1697178141,3),(18,1,1697178139,1697178145,6),(19,1,1697185487,1697185496,9),(20,2,1697185488,1697185491,3),(21,3,1697185489,1697185490,1),(22,4,1697185490,1697185493,3),(23,5,1697185491,1697185496,5),(24,6,1697185492,1697185494,2),(25,7,1697185493,1697185494,1),(26,8,1697185494,1697185502,8),(27,9,1697185495,1697185503,8),(28,10,1697185497,1697185507,10),(29,11,1697185498,1697185500,2),(30,12,1697185499,1697185507,8),(31,13,1697185500,1697185509,9),(32,14,1697185501,1697185511,10),(33,15,1697185502,1697185506,4),(34,16,1697185503,1697185505,2),(35,17,1697185504,1697185507,3),(36,18,1697185505,1697185510,5),(37,19,1697185506,1697185508,2),(38,20,1697185507,1697185510,3),(39,21,1697185508,1697185517,9),(40,22,1697185509,1697185510,1),(41,23,1697185510,1697185511,1),(42,24,1697185511,1697185513,2),(43,25,1697185512,1697185518,6),(44,26,1697185513,1697185521,8),(45,27,1697185514,1697185519,5),(46,1,1697186790,1697186793,3),(47,2,1697186791,1697186794,3),(48,3,1697186792,1697186793,1),(49,4,1697186793,1697186794,1),(50,5,1697186794,1697186803,9),(51,6,1697186795,1697186803,8),(52,7,1697186796,1697186805,9),(53,8,1697186797,1697186799,2),(54,9,1697186798,1697186804,6),(55,10,1697186799,1697186804,5),(56,11,1697186800,1697186805,5),(57,12,1697186801,1697186802,1),(58,13,1697186802,1697186804,2),(59,14,1697186803,1697186810,7);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'begin','cuttingstation'),(5,'contenttypes','contenttype'),(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2023-10-13 04:44:28.700008'),(2,'auth','0001_initial','2023-10-13 04:44:29.055271'),(3,'admin','0001_initial','2023-10-13 04:44:29.152162'),(4,'admin','0002_logentry_remove_auto_add','2023-10-13 04:44:29.163878'),(5,'admin','0003_logentry_add_action_flag_choices','2023-10-13 04:44:29.171710'),(6,'contenttypes','0002_remove_content_type_name','2023-10-13 04:44:29.245862'),(7,'auth','0002_alter_permission_name_max_length','2023-10-13 04:44:29.292705'),(8,'auth','0003_alter_user_email_max_length','2023-10-13 04:44:29.335649'),(9,'auth','0004_alter_user_username_opts','2023-10-13 04:44:29.347362'),(10,'auth','0005_alter_user_last_login_null','2023-10-13 04:44:29.398139'),(11,'auth','0006_require_contenttypes_0002','2023-10-13 04:44:29.402020'),(12,'auth','0007_alter_validators_add_error_messages','2023-10-13 04:44:29.409849'),(13,'auth','0008_alter_user_username_max_length','2023-10-13 04:44:29.464163'),(14,'auth','0009_alter_user_last_name_max_length','2023-10-13 04:44:29.517701'),(15,'auth','0010_alter_group_name_max_length','2023-10-13 04:44:29.538002'),(16,'auth','0011_update_proxy_permissions','2023-10-13 04:44:29.550218'),(17,'auth','0012_alter_user_first_name_max_length','2023-10-13 04:44:29.598866'),(18,'sessions','0001_initial','2023-10-13 04:44:29.629337');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

/*Table structure for table `packStation` */

DROP TABLE IF EXISTS `packStation`;

CREATE TABLE `packStation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsNumber` int NOT NULL,
  `comingTime` bigint NOT NULL,
  `leavingTime` bigint NOT NULL,
  `stayTime` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `packStation` */

insert  into `packStation`(`id`,`goodsNumber`,`comingTime`,`leavingTime`,`stayTime`) values (1,1,1697173612,1697173618,6),(2,1,1697173691,1697173699,8),(3,1,1697175910,1697175911,1),(4,1,1697175960,1697175962,2),(5,1,1697175961,1697175971,10),(6,1,1697175962,1697175963,1),(7,1,1697175963,1697175972,9),(8,1,1697175964,1697175966,2),(9,1,1697178133,1697178135,2),(10,1,1697178134,1697178143,9),(11,1,1697178135,1697178143,8),(12,1,1697178136,1697178139,3),(13,1,1697178137,1697178143,6),(14,1,1697178138,1697178145,7),(15,1,1697178139,1697178149,10),(16,1,1697185487,1697185490,3),(17,2,1697185488,1697185490,2),(18,3,1697185489,1697185492,3),(19,4,1697185490,1697185496,6),(20,5,1697185491,1697185494,3),(21,6,1697185492,1697185498,6),(22,7,1697185493,1697185501,8),(23,8,1697185494,1697185500,6),(24,9,1697185495,1697185502,7),(25,10,1697185497,1697185507,10),(26,11,1697185498,1697185503,5),(27,12,1697185499,1697185501,2),(28,13,1697185500,1697185503,3),(29,14,1697185501,1697185503,2),(30,15,1697185502,1697185504,2),(31,16,1697185503,1697185504,1),(32,17,1697185504,1697185507,3),(33,18,1697185505,1697185506,1),(34,19,1697185506,1697185509,3),(35,20,1697185507,1697185517,10),(36,21,1697185508,1697185509,1),(37,22,1697185509,1697185512,3),(38,23,1697185510,1697185513,3),(39,24,1697185511,1697185519,8),(40,25,1697185512,1697185522,10),(41,26,1697185513,1697185517,4),(42,27,1697185514,1697185517,3),(43,1,1697186790,1697186791,1),(44,2,1697186791,1697186795,4),(45,3,1697186792,1697186802,10),(46,4,1697186793,1697186801,8),(47,5,1697186794,1697186804,10),(48,6,1697186795,1697186805,10),(49,7,1697186796,1697186801,5),(50,8,1697186797,1697186803,6),(51,9,1697186798,1697186805,7),(52,10,1697186799,1697186803,4),(53,11,1697186800,1697186802,2),(54,12,1697186801,1697186803,2),(55,13,1697186802,1697186804,2),(56,14,1697186803,1697186812,9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
