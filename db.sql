/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmuizhd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmuizhd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmuizhd`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmuizhd/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmuizhd/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmuizhd/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusswenzhangxinxi` */

DROP TABLE IF EXISTS `discusswenzhangxinxi`;

CREATE TABLE `discusswenzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='文章信息评论表';

/*Data for the table `discusswenzhangxinxi` */

insert  into `discusswenzhangxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-17 23:52:28',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-17 23:52:28',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-17 23:52:28',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-17 23:52:28',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-17 23:52:28',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-17 23:52:28',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-04-17 23:52:28',1,'用户名1','留言内容1','回复内容1'),(72,'2021-04-17 23:52:28',2,'用户名2','留言内容2','回复内容2'),(73,'2021-04-17 23:52:28',3,'用户名3','留言内容3','回复内容3'),(74,'2021-04-17 23:52:28',4,'用户名4','留言内容4','回复内容4'),(75,'2021-04-17 23:52:28',5,'用户名5','留言内容5','回复内容5'),(76,'2021-04-17 23:52:28',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='资讯信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-04-17 23:52:28','标题1','简介1','http://localhost:8080/ssmuizhd/upload/news_picture1.jpg','内容1'),(62,'2021-04-17 23:52:28','标题2','简介2','http://localhost:8080/ssmuizhd/upload/news_picture2.jpg','内容2'),(63,'2021-04-17 23:52:28','标题3','简介3','http://localhost:8080/ssmuizhd/upload/news_picture3.jpg','内容3'),(64,'2021-04-17 23:52:28','标题4','简介4','http://localhost:8080/ssmuizhd/upload/news_picture4.jpg','内容4'),(65,'2021-04-17 23:52:28','标题5','简介5','http://localhost:8080/ssmuizhd/upload/news_picture5.jpg','内容5'),(66,'2021-04-17 23:52:28','标题6','简介6','http://localhost:8080/ssmuizhd/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','uwclumw0lwsa85r6hz6mugcc4ojvdu3w','2021-04-17 23:53:40','2021-04-18 00:53:40'),(2,11,'1','yonghu','用户','mocejtcqw2hj0iw4f5qecnyvm5j4hu6e','2021-04-17 23:53:44','2021-04-18 00:53:44');

/*Table structure for table `toupiaoxinxi` */

DROP TABLE IF EXISTS `toupiaoxinxi`;

CREATE TABLE `toupiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `wenzhangleixing` varchar(200) DEFAULT NULL COMMENT '文章类型',
  `piaoshu` int(11) NOT NULL COMMENT '票数',
  `toupiaoriqi` date DEFAULT NULL COMMENT '投票日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='投票信息';

/*Data for the table `toupiaoxinxi` */

insert  into `toupiaoxinxi`(`id`,`addtime`,`biaoti`,`wenzhangleixing`,`piaoshu`,`toupiaoriqi`) values (41,'2021-04-17 23:52:28','标题1','文章类型1',1,'2021-04-17'),(42,'2021-04-17 23:52:28','标题2','文章类型2',1,'2021-04-17'),(43,'2021-04-17 23:52:28','标题3','文章类型3',1,'2021-04-17'),(44,'2021-04-17 23:52:28','标题4','文章类型4',1,'2021-04-17'),(45,'2021-04-17 23:52:28','标题5','文章类型5',1,'2021-04-17'),(46,'2021-04-17 23:52:28','标题6','文章类型6',1,'2021-04-17');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 23:52:28');

/*Table structure for table `wenzhangleixing` */

DROP TABLE IF EXISTS `wenzhangleixing`;

CREATE TABLE `wenzhangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangleixing` varchar(200) NOT NULL COMMENT '文章类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='文章类型';

/*Data for the table `wenzhangleixing` */

insert  into `wenzhangleixing`(`id`,`addtime`,`wenzhangleixing`) values (21,'2021-04-17 23:52:28','文章类型1'),(22,'2021-04-17 23:52:28','文章类型2'),(23,'2021-04-17 23:52:28','文章类型3'),(24,'2021-04-17 23:52:28','文章类型4'),(25,'2021-04-17 23:52:28','文章类型5'),(26,'2021-04-17 23:52:28','文章类型6');

/*Table structure for table `wenzhangxinxi` */

DROP TABLE IF EXISTS `wenzhangxinxi`;

CREATE TABLE `wenzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `wenzhangleixing` varchar(200) NOT NULL COMMENT '文章类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianshu` varchar(200) DEFAULT NULL COMMENT '简述',
  `piaoshu` int(11) NOT NULL COMMENT '票数',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='文章信息';

/*Data for the table `wenzhangxinxi` */

insert  into `wenzhangxinxi`(`id`,`addtime`,`biaoti`,`wenzhangleixing`,`tupian`,`jianshu`,`piaoshu`,`fabushijian`,`wenzhangneirong`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-04-17 23:52:28','标题1','文章类型1','http://localhost:8080/ssmuizhd/upload/wenzhangxinxi_tupian1.jpg','简述1',1,'2021-04-17','文章内容1',1,1,'2021-04-17 23:52:28',1),(32,'2021-04-17 23:52:28','标题2','文章类型2','http://localhost:8080/ssmuizhd/upload/wenzhangxinxi_tupian2.jpg','简述2',2,'2021-04-17','文章内容2',2,2,'2021-04-17 23:52:28',2),(33,'2021-04-17 23:52:28','标题3','文章类型3','http://localhost:8080/ssmuizhd/upload/wenzhangxinxi_tupian3.jpg','简述3',3,'2021-04-17','文章内容3',3,3,'2021-04-17 23:52:28',3),(34,'2021-04-17 23:52:28','标题4','文章类型4','http://localhost:8080/ssmuizhd/upload/wenzhangxinxi_tupian4.jpg','简述4',4,'2021-04-17','文章内容4',4,4,'2021-04-17 23:52:28',4),(35,'2021-04-17 23:52:28','标题5','文章类型5','http://localhost:8080/ssmuizhd/upload/wenzhangxinxi_tupian5.jpg','简述5',5,'2021-04-17','文章内容5',5,5,'2021-04-17 23:52:28',5),(36,'2021-04-17 23:52:28','标题6','文章类型6','http://localhost:8080/ssmuizhd/upload/wenzhangxinxi_tupian6.jpg','简述6',6,'2021-04-17','文章内容6',6,6,'2021-04-17 23:52:28',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (11,'2021-04-17 23:52:28','1','1','姓名1','男','http://localhost:8080/ssmuizhd/upload/yonghu_touxiang1.jpg','773890001@qq.com','13823888881'),(12,'2021-04-17 23:52:28','用户2','123456','姓名2','男','http://localhost:8080/ssmuizhd/upload/yonghu_touxiang2.jpg','773890002@qq.com','13823888882'),(13,'2021-04-17 23:52:28','用户3','123456','姓名3','男','http://localhost:8080/ssmuizhd/upload/yonghu_touxiang3.jpg','773890003@qq.com','13823888883'),(14,'2021-04-17 23:52:28','用户4','123456','姓名4','男','http://localhost:8080/ssmuizhd/upload/yonghu_touxiang4.jpg','773890004@qq.com','13823888884'),(15,'2021-04-17 23:52:28','用户5','123456','姓名5','男','http://localhost:8080/ssmuizhd/upload/yonghu_touxiang5.jpg','773890005@qq.com','13823888885'),(16,'2021-04-17 23:52:28','用户6','123456','姓名6','男','http://localhost:8080/ssmuizhd/upload/yonghu_touxiang6.jpg','773890006@qq.com','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
