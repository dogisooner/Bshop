/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.23 : Database - beb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`beb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `beb`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(30) NOT NULL AUTO_INCREMENT COMMENT '书籍的id号',
  `owner` varchar(50) NOT NULL COMMENT '卖家',
  `bookname` varchar(50) NOT NULL COMMENT '书名',
  `press` varchar(50) DEFAULT NULL COMMENT '出版社',
  `credit` double DEFAULT NULL COMMENT '价格',
  `ISBN` varchar(50) DEFAULT NULL COMMENT 'ISBN号',
  `type` varchar(50) DEFAULT NULL COMMENT '书籍类型',
  `uptime` date DEFAULT NULL COMMENT '上架时间',
  `prtime` date DEFAULT NULL COMMENT '出版时间',
  `page` varchar(50) DEFAULT NULL COMMENT '页数',
  `size` varchar(50) DEFAULT NULL COMMENT '书页大小',
  `status` varchar(50) DEFAULT NULL COMMENT '书记状态',
  `delivery` varchar(50) DEFAULT NULL COMMENT '配送方式',
  `img` longblob COMMENT '书记图片',
  `writer` varchar(50) DEFAULT NULL COMMENT '作者',
  `translator` varchar(50) DEFAULT NULL COMMENT '译者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`id`,`owner`,`bookname`,`press`,`credit`,`ISBN`,`type`,`uptime`,`prtime`,`page`,`size`,`status`,`delivery`,`img`,`writer`,`translator`) values (2,'hmj','王者归来','',0,'353453','',NULL,NULL,'','',NULL,'面送',NULL,'',''),(3,'杜雨霏','看见','77',20,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'猴子','生猴子','花果山',0,'020','动物',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'hmj','java程序设计','',3,'123','教材',NULL,NULL,'332','2',NULL,'物流工程',NULL,'xiaoliu','xiaoliu'),(6,'hmj','数据结构','清华大学出版社',2,'1322','技术类',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'hmj','软件开发的技术基础','机械工业出版社',2,'43252','教材类',NULL,NULL,'433','26com*15cm',NULL,'面送','5170599_152928389000_2 (2).jpg','骆斌','无'),(10,'hmj','大王派我来巡山','民大',3,'5435','',NULL,NULL,'','',NULL,'','8952533_164223473001_2.jpg','',''),(11,'hmj','HelloKitty','',2,'9999','娱乐类',NULL,NULL,'232','',NULL,'',NULL,'',''),(12,'æœ•','奏折','donggong',23,'34','政治类',NULL,NULL,'','',NULL,'',NULL,'',''),(13,'hmj','大刘和小刘','刘',3,'3432','娱乐类',NULL,NULL,'54','',NULL,'',NULL,'',''),(14,'hmj','android自学视频教程','',4,'546','技术类',NULL,NULL,'','',NULL,'',NULL,'不知道',''),(15,'hmj','思想政治品德','民大',333,'3432','',NULL,NULL,'','',NULL,'',NULL,'',''),(16,'hmj','大盘和小盘','',324,'435','几毛呀',NULL,NULL,'','',NULL,'',NULL,'','');

/*Table structure for table `shoporder` */

DROP TABLE IF EXISTS `shoporder`;

CREATE TABLE `shoporder` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `saler` varchar(50) DEFAULT NULL,
  `buyerID` int(50) NOT NULL,
  `bookID` int(50) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK651874EF38B02FF` (`bookID`),
  KEY `FK651874E54AAF02B` (`buyerID`),
  KEY `FK651874EB51CC183` (`saler`),
  KEY `FK837C1618F38B02FF` (`bookID`),
  KEY `FK837C161854AAF02B` (`buyerID`),
  CONSTRAINT `FK651874EF38B02FF` FOREIGN KEY (`bookID`) REFERENCES `book` (`id`),
  CONSTRAINT `FK837C161854AAF02B` FOREIGN KEY (`buyerID`) REFERENCES `user` (`id`),
  CONSTRAINT `FK837C1618F38B02FF` FOREIGN KEY (`bookID`) REFERENCES `book` (`id`),
  CONSTRAINT `shoporder_ibfk_3` FOREIGN KEY (`bookID`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shoporder_ibfk_4` FOREIGN KEY (`buyerID`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `shoporder` */

insert  into `shoporder`(`id`,`saler`,`buyerID`,`bookID`,`price`) values (3,'dskkfds',2,3,45),(4,'erwet',2,3,54),(5,'杜雨霏',1,3,20),(6,'猴子',1,4,0),(7,'hmj',1,6,2),(8,'杜雨霏',1,3,20),(9,'hmj',1,5,3),(10,'hmj',1,9,2),(11,'hmj',1,2,0),(12,'hmj',1,2,0),(13,'杜雨霏',1,3,20),(14,'hmj',1,2,0),(15,'hmj',22,2,0),(16,'杜雨霏',22,3,20),(17,'杜雨霏',22,3,20),(18,'杜雨霏',22,3,20),(19,'猴子',22,4,0),(20,'hmj',1,2,0),(21,'hmj',1,2,0),(22,'杜雨霏',1,3,20);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `stunum` int(50) NOT NULL COMMENT '学号或学工号',
  `password` varchar(50) NOT NULL,
  `usertype` int(11) DEFAULT NULL COMMENT '用户种类',
  `nickname` varchar(50) DEFAULT NULL,
  `phonenum` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `academy` varchar(50) DEFAULT NULL COMMENT '学院',
  `major` varchar(50) DEFAULT NULL COMMENT '专业',
  `wealth` varchar(50) DEFAULT NULL COMMENT '积分',
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL COMMENT '用户头像存储路径',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK36EBCB1BF3585C` (`usertype`),
  CONSTRAINT `FK36EBCB1BF3585C` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`stunum`,`password`,`usertype`,`nickname`,`phonenum`,`school`,`academy`,`major`,`wealth`,`email`,`address`,`picture`) values (1,'hmj',14047021,'111111',NULL,'','','','','软件工程','35345','','家',NULL),(2,'hah',14047002,'haha',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'haha',14047003,'hahaha',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'9999',9999,'9999',NULL,'','',NULL,'',NULL,NULL,'','',NULL),(6,'aaaa',1444,'aaaa',NULL,'','',NULL,'',NULL,NULL,'','',NULL),(14,'9999',9999,'9999',NULL,'g\'h\'f\'g','h\'g\'h\'j',NULL,'',NULL,NULL,'','',NULL),(15,'aaaa',2342435,'aaaa',NULL,'','9999999999',NULL,'99999',NULL,NULL,'','',NULL),(16,'xiaoqi',14047007,'duyufei',NULL,'','','','',NULL,NULL,'','',NULL),(17,'xiaoxiao',14047008,'xiaoxiao',NULL,'dada','13661275778','??','??',NULL,NULL,'','','23.jpg'),(18,'xiaohouzi',14047030,'14047030',NULL,'haha','','','',NULL,NULL,'','','IMG_1031.JPG'),(19,'xiao',14,'xiao',NULL,'dao','122','MUC','xg','se',NULL,'Mv','ss',NULL),(20,'mnmn',11111,'11111',NULL,'mm','12345','M','X','软件工程','','1512339883@qq.com','1号',NULL),(21,'nn',123321,'123321',NULL,'nnn','12345678','n','n','n',NULL,'152346546qq.com','dwd','201292372316109.jpg'),(22,'刘高云',123321,'199325',NULL,'nnn','12345678','n','n','计算机科学与技术','22','152346546qq.com','dwd',NULL),(23,'daliu',123,'123',NULL,'xiaoliu','12345678','MUC','n','n','','152346546qq.com','MUC',NULL),(24,'xiaoliu',14047007,'xiaoliu',NULL,'xiaoliu','12345678','MUC','X','软降工程',NULL,'2324','M','5170599_152928389000_2.jpg'),(25,'朕',123,'zhe',NULL,'dear','2321','','','软工','','','',NULL),(26,'hehe',123,'hehe',NULL,'hehe','2334','','','',NULL,'','',NULL);

/*Table structure for table `usertype` */

DROP TABLE IF EXISTS `usertype`;

CREATE TABLE `usertype` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `grade` int(10) NOT NULL COMMENT '用户等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `usertype` */

insert  into `usertype`(`id`,`name`,`grade`) values (1,'student',2),(2,'admin',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
