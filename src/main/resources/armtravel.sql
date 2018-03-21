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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`id`,`name`,`description`) values (1,'p,lpl','pl,p'),(2,'qaxaq','fff'),(3,'qweqw','qwe'),(4,'asd','asd');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `city_post` */

insert  into `city_post`(`id`,`title`,`description`,`picture`,`city_id`,`user_id`) values (1,'werwe','weqwe','1521575157622_',1,26),(2,'ljl','jij','1521576739181_',1,26),(3,'ASa','ASa','1521576938632_',1,26),(4,'ASa','ASas','1521577006165_',1,26),(5,'werwer','erwer','1521578074700_',1,26);

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
  KEY `FKc9jh3nbbokytkx1lgd3k3wlte` (`region_id`),
  CONSTRAINT `FKc9jh3nbbokytkx1lgd3k3wlte` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `food` */

insert  into `food`(`id`,`name`,`description`,`region_id`) values (1,'uojip;','',NULL),(2,'ewe','',NULL),(3,'wqewqwew','werew',NULL),(4,'ASA','Asa',NULL),(5,'ewrwe','werwe',NULL);

/*Table structure for table `food_pic` */

DROP TABLE IF EXISTS `food_pic`;

CREATE TABLE `food_pic` (
  `food_id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  PRIMARY KEY (`food_id`,`pic_id`),
  KEY `FKn0rxxg25ycqr2fbodob4cxffj` (`pic_id`),
  CONSTRAINT `FKn0rxxg25ycqr2fbodob4cxffj` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`id`),
  CONSTRAINT `FKorns3nrb7940o87b6wrp3sa0i` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_pic` */

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
  KEY `FKpufk7nt81k4e2s2l0kvucjy96` (`food_id`),
  KEY `FK144r3nhg7sxvcb0kr0cw7w4r6` (`user_id`),
  CONSTRAINT `FK144r3nhg7sxvcb0kr0cw7w4r6` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKpufk7nt81k4e2s2l0kvucjy96` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`),
  CONSTRAINT `food_post_ibfk_4` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`),
  CONSTRAINT `food_post_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `food_post` */

insert  into `food_post`(`id`,`title`,`description`,`picture`,`food_id`,`user_id`) values (1,'sadas','asdas','1521577189976_',1,26),(2,'werwe','werwe','1521578085387_',1,26),(3,'aaa','dfdgf','1521625560774_8.jpg',1,27);

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
  KEY `FKtqurbb2y5vdn9wujcsrcdny4e` (`food_post_id`),
  KEY `FKa6h8668w0ekc70e3ybg10be0b` (`user_id`),
  CONSTRAINT `FKa6h8668w0ekc70e3ybg10be0b` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKtqurbb2y5vdn9wujcsrcdny4e` FOREIGN KEY (`food_post_id`) REFERENCES `food_post` (`id`),
  CONSTRAINT `food_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `food_post_comment_ibfk_2` FOREIGN KEY (`food_post_id`) REFERENCES `food_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_post_comment` */

/*Table structure for table `food_post_pic` */

DROP TABLE IF EXISTS `food_post_pic`;

CREATE TABLE `food_post_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) DEFAULT NULL,
  `food_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmd0aom9valkhc50luwudcd4w` (`food_post_id`),
  CONSTRAINT `FKmd0aom9valkhc50luwudcd4w` FOREIGN KEY (`food_post_id`) REFERENCES `food_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_post_pic` */

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `hotel` */

insert  into `hotel`(`id`,`name`,`pic_url`,`description`,`rating`,`city_id`) values (1,'ararat',NULL,'hvv',45,0),(2,'qwe',NULL,'qweqw',12,0),(3,'asd',NULL,'asd',1,0);

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`id`,`pic_url`) values (1,'1521630914196_2.jpg'),(2,'1521630914297_1.jpg');

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `region` */

insert  into `region`(`id`,`name`,`description`) values (1,'asdsa','asdasd'),(2,'jjjljklj','ij'),(3,'l,l,','lpp'),(4,'hrashq jan','vhvhvh'),(5,'werew','wewe'),(6,'asd','asd'),(7,'Shirak','asasasasasa');

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

insert  into `region_pic`(`region_id`,`pic_id`) values (7,1),(7,2);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `region_post` */

insert  into `region_post`(`id`,`title`,`description`,`picture`,`region_id`,`user_id`) values (1,'ioiu','iiouo','1521576745231_',1,26),(2,'werewr','ewrewrwer','1521576754929_',1,26),(3,'aSa','ASas','1521576932918_',1,26),(4,'SADAS','SDASD','1521577015552_',1,26),(5,'jjlk','ewrwer','1521578069047_',1,26);

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
  KEY `FKfbnn1d02idimcov06tsaoul7s` (`region_post_id`),
  KEY `FKp5leh17r4mn4g8mjm7qf118p4` (`user_id`),
  CONSTRAINT `FKfbnn1d02idimcov06tsaoul7s` FOREIGN KEY (`region_post_id`) REFERENCES `region_post` (`id`),
  CONSTRAINT `FKp5leh17r4mn4g8mjm7qf118p4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `region_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `region_post_comment_ibfk_2` FOREIGN KEY (`region_post_id`) REFERENCES `region_post` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`pic_url`,`type`,`verify`,`token`) values (26,'ani','ani','am8219@mail.ru','$2a$10$NOwGoTmDd8sznFvU0DRrEOapyUpG9m13iAjTUkeMOw8l4XoAX2B3y',NULL,'ADMIN',1,NULL),(27,'Zara','Harutyunyan','zara.harutyunyan97@mail.ru','$2a$10$cwDUutDCn0zG7tA/ujscb.H3pJop6XDLqZFeNEi5kS0pmXjuAyE.a',NULL,'USER',1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
