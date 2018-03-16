/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18-log : Database - arm_travel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`arm_travel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `arm_travel`;

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_ibfk_1` (`region_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

/*Table structure for table `city_post` */

DROP TABLE IF EXISTS `city_post`;

CREATE TABLE `city_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varbinary(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `city_post_ibfk_4` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `city_post_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city_post` */

/*Table structure for table `city_post_comment` */

DROP TABLE IF EXISTS `city_post_comment`;

CREATE TABLE `city_post_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `city_post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `city_post_id` (`city_post_id`),
  CONSTRAINT `city_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `city_post_comment_ibfk_2` FOREIGN KEY (`city_post_id`) REFERENCES `city_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city_post_comment` */

/*Table structure for table `city_post_pic` */

DROP TABLE IF EXISTS `city_post_pic`;

CREATE TABLE `city_post_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  `city_post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_post_pic_ibfk_1` (`city_post_id`),
  CONSTRAINT `city_post_pic_ibfk_1` FOREIGN KEY (`city_post_id`) REFERENCES `city_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city_post_pic` */

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food` */

/*Table structure for table `food_post` */

DROP TABLE IF EXISTS `food_post`;

CREATE TABLE `food_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `food_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `food_id` (`food_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `food_post_ibfk_4` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`),
  CONSTRAINT `food_post_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_post` */

/*Table structure for table `food_post_comment` */

DROP TABLE IF EXISTS `food_post_comment`;

CREATE TABLE `food_post_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `food_post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `food_post_id` (`food_post_id`),
  CONSTRAINT `food_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `food_post_comment_ibfk_2` FOREIGN KEY (`food_post_id`) REFERENCES `food_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_post_comment` */

/*Table structure for table `food_post_pic` */

DROP TABLE IF EXISTS `food_post_pic`;

CREATE TABLE `food_post_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  `food_post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `food_post_id` (`food_post_id`),
  CONSTRAINT `food_post_pic_ibfk_1` FOREIGN KEY (`food_post_id`) REFERENCES `food_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_post_pic` */

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hotel` */

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `region` */

/*Table structure for table `region_post` */

DROP TABLE IF EXISTS `region_post`;

CREATE TABLE `region_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `region_post_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  CONSTRAINT `region_post_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `region_post` */

/*Table structure for table `region_post_comment` */

DROP TABLE IF EXISTS `region_post_comment`;

CREATE TABLE `region_post_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `region_post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `region_post_id` (`region_post_id`),
  CONSTRAINT `region_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `region_post_comment_ibfk_2` FOREIGN KEY (`region_post_id`) REFERENCES `region_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `region_post_comment` */

/*Table structure for table `region_post_pic` */

DROP TABLE IF EXISTS `region_post_pic`;

CREATE TABLE `region_post_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  `region_post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_post_id` (`region_post_id`),
  CONSTRAINT `region_post_pic_ibfk_2` FOREIGN KEY (`region_post_id`) REFERENCES `region_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `region_post_pic` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `type` enum('USER','ADMIN') NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`pic_url`,`type`,`verify`,`token`) values (2,'anun','azganun','am8219@mail.ru','$2a$10$JztOOWe9TJ4HQcvXtjeMJumBHfrakDbRI25gXewptF6FAQzqGxidi',NULL,'USER',0,'d7a00335-292d-4dbc-8187-1daa50c820c8');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
