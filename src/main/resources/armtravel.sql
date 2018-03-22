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
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`id`,`name`,`description`) values (6,'asdasd','asdasd');

/*Table structure for table `city_pic` */

DROP TABLE IF EXISTS `city_pic`;

CREATE TABLE `city_pic` (
  `city_id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  PRIMARY KEY (`city_id`,`pic_id`),
  KEY `FK3mro2x5xrrx0jvuy1eihntcso` (`pic_id`),
  CONSTRAINT `FK1w0l7h1jav63m3tneyynoshrs` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `FK3mro2x5xrrx0jvuy1eihntcso` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`),
  CONSTRAINT `city_pic_ibfk_4` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `city_pic_ibfk_5` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city_pic` */

/*Table structure for table `city_post` */

DROP TABLE IF EXISTS `city_post`;

CREATE TABLE `city_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg0ksc8xhsvy34jvco4g240nm6` (`city_id`),
  KEY `FKhhi46riemuyluls2x1lg8xtov` (`user_id`),
  CONSTRAINT `FKg0ksc8xhsvy34jvco4g240nm6` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `FKhhi46riemuyluls2x1lg8xtov` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `city_post_ibfk_6` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `city_post_ibfk_7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `city_post` */

insert  into `city_post`(`id`,`title`,`description`,`picture`,`city_id`,`user_id`) values (7,'asdas','asda',NULL,6,29);

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
  KEY `FKe3op7sdgoab89lxrwe3tuitig` (`city_post_id`),
  KEY `FK4dqmhjnh7xd2sj288aut7igkv` (`user_id`),
  CONSTRAINT `FK4dqmhjnh7xd2sj288aut7igkv` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKe3op7sdgoab89lxrwe3tuitig` FOREIGN KEY (`city_post_id`) REFERENCES `city_post` (`id`),
  CONSTRAINT `city_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `city_post_comment_ibfk_2` FOREIGN KEY (`city_post_id`) REFERENCES `city_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city_post_comment` */

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc9jh3nbbokytkx1lgd3k3wlte` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `food` */

/*Table structure for table `food_pic` */

DROP TABLE IF EXISTS `food_pic`;

CREATE TABLE `food_pic` (
  `food_id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  PRIMARY KEY (`food_id`,`pic_id`),
  KEY `food_pic_ibfk_2` (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_pic` */

/*Table structure for table `food_post` */

DROP TABLE IF EXISTS `food_post`;

CREATE TABLE `food_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `food_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `food_id` (`food_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  KEY `FKa6h8668w0ekc70e3ybg10be0b` (`user_id`),
  KEY `food_post_id` (`food_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_post_comment` */

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `hotel` */

/*Table structure for table `hotel_pic` */

DROP TABLE IF EXISTS `hotel_pic`;

CREATE TABLE `hotel_pic` (
  `hotel_id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  PRIMARY KEY (`hotel_id`,`pic_id`),
  KEY `pic_id` (`pic_id`),
  CONSTRAINT `hotel_pic_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hotel_pic_ibfk_3` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hotel_pic` */

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`id`,`pic_url`) values (8,'1521724736632_'),(9,'1521724779398_');

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `region` */

insert  into `region`(`id`,`name`,`description`) values (12,'asdsa','asdsad'),(13,'qwswqs','wqqws');

/*Table structure for table `region_pic` */

DROP TABLE IF EXISTS `region_pic`;

CREATE TABLE `region_pic` (
  `region_id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  PRIMARY KEY (`region_id`,`pic_id`),
  KEY `FKbrr3dniain6a07t6aoas1wswb` (`pic_id`),
  CONSTRAINT `FKbrr3dniain6a07t6aoas1wswb` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`),
  CONSTRAINT `FKnk3kygjfnpox34js2xkggnyy9` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  CONSTRAINT `region_pic_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `region_pic_ibfk_2` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `region_pic` */

insert  into `region_pic`(`region_id`,`pic_id`) values (12,8),(13,9);

/*Table structure for table `region_post` */

DROP TABLE IF EXISTS `region_post`;

CREATE TABLE `region_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `region_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK39secf1hj6hwqf886jcrwtkqx` (`region_id`),
  KEY `FKbt6c2foxepqlu0pfxgm3ilyig` (`user_id`),
  CONSTRAINT `FK39secf1hj6hwqf886jcrwtkqx` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  CONSTRAINT `FKbt6c2foxepqlu0pfxgm3ilyig` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `region_post_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  CONSTRAINT `region_post_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `region_post` */

insert  into `region_post`(`id`,`title`,`description`,`picture`,`region_id`,`user_id`) values (7,'asdsas','sadas','1521724812791_',12,29);

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
  KEY `region_post_comment_ibfk_1` (`user_id`),
  KEY `region_post_comment_ibfk_2` (`region_post_id`),
  CONSTRAINT `FKfbnn1d02idimcov06tsaoul7s` FOREIGN KEY (`region_post_id`) REFERENCES `region_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKp5leh17r4mn4g8mjm7qf118p4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `region_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `region_post_comment_ibfk_2` FOREIGN KEY (`region_post_id`) REFERENCES `region_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `region_post_comment` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `type` enum('USER','ADMIN') DEFAULT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`pic_url`,`type`,`verify`,`token`) values (29,'ani','ani','am8219@mail.ru','$2a$10$QYocy9vs5/1QAlbdlM7.cuDyG.nB9uBYONTzuJ5H.5BTPJZ4a/Yme',NULL,'USER',1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
