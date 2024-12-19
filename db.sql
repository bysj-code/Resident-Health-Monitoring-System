/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - juminjiankangjiance
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`juminjiankangjiance` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `juminjiankangjiance`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gerentizheng_types','身体质量',1,'好',NULL,NULL,'2023-03-20 16:06:22'),(2,'gerentizheng_types','身体质量',2,'123',NULL,NULL,'2023-03-20 16:06:22'),(3,'gerentizheng_types','身体质量',3,'差',NULL,NULL,'2023-03-20 16:06:22'),(4,'kepuzhishi_types','科普类型',1,'科普类型1',NULL,NULL,'2023-03-20 16:06:22'),(5,'kepuzhishi_types','科普类型',2,'科普类型2',NULL,NULL,'2023-03-20 16:06:22'),(6,'kepuzhishi_types','科普类型',3,'科普类型3',NULL,NULL,'2023-03-20 16:06:22'),(7,'kepuzhishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-20 16:06:22'),(8,'kepuzhishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-20 16:06:22'),(9,'kepuzhishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-20 16:06:22'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-20 16:06:22'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-20 16:06:22'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-20 16:06:22'),(13,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-20 16:06:23'),(14,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-20 16:06:23'),(15,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-20 16:06:23'),(16,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-20 16:06:23');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',393,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(2,'帖子标题2',2,NULL,'发布内容2',164,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(3,'帖子标题3',2,NULL,'发布内容3',125,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(4,'帖子标题4',3,NULL,'发布内容4',429,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(5,'帖子标题5',1,NULL,'发布内容5',275,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(6,'帖子标题6',3,NULL,'发布内容6',455,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(7,'帖子标题7',3,NULL,'发布内容7',221,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(8,'帖子标题8',1,NULL,'发布内容8',412,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(9,'帖子标题9',3,NULL,'发布内容9',436,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(10,'帖子标题10',2,NULL,'发布内容10',268,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(11,'帖子标题11',1,NULL,'发布内容11',347,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(12,'帖子标题12',1,NULL,'发布内容12',13,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(13,'帖子标题13',1,NULL,'发布内容13',258,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(14,'帖子标题14',3,NULL,'发布内容14',82,1,'2023-03-20 16:06:37','2023-03-20 16:06:37','2023-03-20 16:06:37'),(15,NULL,1,NULL,'123123',14,2,'2023-03-20 16:28:34',NULL,'2023-03-20 16:28:34');

/*Table structure for table `gerentizheng` */

DROP TABLE IF EXISTS `gerentizheng`;

CREATE TABLE `gerentizheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gerentizheng_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `gerentizheng_xieya` int(11) DEFAULT NULL COMMENT '血压',
  `gerentizheng_xietang` decimal(10,2) DEFAULT NULL COMMENT '血糖',
  `gerentizheng_types` int(11) DEFAULT NULL COMMENT '身体质量 Search111',
  `gerentizheng_shengao` int(11) DEFAULT NULL COMMENT '身高',
  `gerentizheng_tizhong` int(11) DEFAULT NULL COMMENT '体重KG',
  `gerentizheng_tiwen` int(11) DEFAULT NULL COMMENT '体温',
  `gerentizheng_bushu` int(11) DEFAULT NULL COMMENT '步数',
  `gerentizheng_shilil` int(11) DEFAULT NULL COMMENT '视力L',
  `gerentizheng_shilir` int(11) DEFAULT NULL COMMENT '视力R',
  `gerentizheng_file` varchar(200) DEFAULT NULL COMMENT '体检报告',
  `gerentizheng_time` date DEFAULT NULL COMMENT '记录时间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gerentizheng_text` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `gerentizheng_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健康上报';

/*Data for the table `gerentizheng` */

insert  into `gerentizheng`(`id`,`gerentizheng_name`,`gerentizheng_xieya`,`gerentizheng_xietang`,`gerentizheng_types`,`gerentizheng_shengao`,`gerentizheng_tizhong`,`gerentizheng_tiwen`,`gerentizheng_bushu`,`gerentizheng_shilil`,`gerentizheng_shilir`,`gerentizheng_file`,`gerentizheng_time`,`yonghu_id`,`gerentizheng_text`,`insert_time`,`gerentizheng_delete`,`create_time`) values (1,'标题1',382,'134.00',1,215,261,497,118,158,123,'upload/file.rar','2023-03-20',2,'备注1','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(2,'标题2',157,'102.00',1,486,43,182,271,134,247,'upload/file.rar','2023-03-20',3,'备注2','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(3,'标题3',315,'95.00',1,159,363,119,472,391,286,'upload/file.rar','2023-03-20',2,'备注3','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(4,'标题4',453,'324.00',1,258,464,366,283,438,93,'upload/file.rar','2023-03-20',2,'备注4','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(5,'标题5',487,'500.00',2,19,323,428,12,399,13,'upload/file.rar','2023-03-20',2,'备注5','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(6,'标题6',87,'1.00',3,268,11,399,450,123,470,'upload/file.rar','2023-03-20',3,'备注6','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(7,'标题7',41,'3.80',2,378,227,19,68,217,159,'upload/file.rar','2023-03-20',1,'备注7','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(8,'标题8',80,'4.50',1,10,222,412,460,391,329,'upload/file.rar','2023-03-20',1,'备注8','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(9,'标题9',141,'7.90',3,281,268,445,280,189,148,'upload/file.rar','2023-03-20',1,'备注9','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(10,'标题10',327,'33.00',2,344,210,277,329,206,95,'upload/file.rar','2023-03-20',3,'备注10','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(11,'标题11',119,'360.00',2,338,166,124,358,461,349,'upload/file.rar','2023-03-20',3,'备注11','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(12,'标题12',252,'271.00',1,73,1,463,31,189,128,'upload/file.rar','2023-03-20',2,'备注12','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(13,'标题13',178,'469.00',1,468,121,228,192,205,492,'upload/file.rar','2023-03-20',3,'备注13','2023-03-20 16:06:37',1,'2023-03-20 16:06:37'),(14,'标题14',358,'169.00',2,369,285,235,162,4,199,'upload/file.rar','2023-03-20',3,'备注14','2023-03-20 16:06:37',1,'2023-03-20 16:06:37');

/*Table structure for table `kepuzhishi` */

DROP TABLE IF EXISTS `kepuzhishi`;

CREATE TABLE `kepuzhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kepuzhishi_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `kepuzhishi_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `kepuzhishi_types` int(11) DEFAULT NULL COMMENT '科普类型 Search111',
  `kepuzhishi_video` varchar(200) DEFAULT NULL COMMENT '科普视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `kepuzhishi_content` longtext COMMENT '科普介绍 ',
  `kepuzhishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健康科普';

/*Data for the table `kepuzhishi` */

insert  into `kepuzhishi`(`id`,`kepuzhishi_name`,`kepuzhishi_photo`,`kepuzhishi_types`,`kepuzhishi_video`,`zan_number`,`cai_number`,`kepuzhishi_content`,`kepuzhishi_delete`,`insert_time`,`create_time`) values (1,'标题1','upload/kepuzhishi1.jpg',3,'upload/video.mp4',475,432,'科普介绍1',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(2,'标题2','upload/kepuzhishi2.jpg',2,'upload/video.mp4',234,489,'科普介绍2',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(3,'标题3','upload/kepuzhishi3.jpg',3,'upload/video.mp4',252,358,'科普介绍3',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(4,'标题4','upload/kepuzhishi4.jpg',2,'upload/video.mp4',240,396,'科普介绍4',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(5,'标题5','upload/kepuzhishi5.jpg',3,'upload/video.mp4',235,21,'科普介绍5',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(6,'标题6','upload/kepuzhishi6.jpg',1,'upload/video.mp4',117,212,'科普介绍6',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(7,'标题7','upload/kepuzhishi7.jpg',3,'upload/video.mp4',379,127,'科普介绍7',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(8,'标题8','upload/kepuzhishi8.jpg',3,'upload/video.mp4',177,208,'科普介绍8',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(9,'标题9','upload/kepuzhishi9.jpg',1,'upload/video.mp4',496,274,'科普介绍9',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(10,'标题10','upload/kepuzhishi10.jpg',1,'upload/video.mp4',482,278,'科普介绍10',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(11,'标题11','upload/kepuzhishi11.jpg',3,'upload/video.mp4',351,273,'科普介绍11',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(12,'标题12','upload/kepuzhishi12.jpg',1,'upload/video.mp4',61,309,'科普介绍12',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(13,'标题13','upload/kepuzhishi13.jpg',3,'upload/video.mp4',27,27,'科普介绍13',1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(14,'标题14','upload/kepuzhishi14.jpg',1,'upload/video.mp4',322,137,'科普介绍14',1,'2023-03-20 16:06:37','2023-03-20 16:06:37');

/*Table structure for table `kepuzhishi_collection` */

DROP TABLE IF EXISTS `kepuzhishi_collection`;

CREATE TABLE `kepuzhishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kepuzhishi_id` int(11) DEFAULT NULL COMMENT '科普',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kepuzhishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='科普收藏';

/*Data for the table `kepuzhishi_collection` */

insert  into `kepuzhishi_collection`(`id`,`kepuzhishi_id`,`yonghu_id`,`kepuzhishi_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(2,2,2,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(3,3,2,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(4,4,2,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(5,5,2,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(6,6,2,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(7,7,2,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(8,8,1,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(9,9,3,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(10,10,3,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(11,11,2,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(12,12,1,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(13,13,1,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(14,14,3,1,'2023-03-20 16:06:37','2023-03-20 16:06:37'),(17,14,1,1,'2023-03-20 16:28:10','2023-03-20 16:28:10'),(18,10,1,2,'2023-03-20 16:28:17','2023-03-20 16:28:17');

/*Table structure for table `kepuzhishi_liuyan` */

DROP TABLE IF EXISTS `kepuzhishi_liuyan`;

CREATE TABLE `kepuzhishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kepuzhishi_id` int(11) DEFAULT NULL COMMENT '科普',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kepuzhishi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='科普留言';

/*Data for the table `kepuzhishi_liuyan` */

insert  into `kepuzhishi_liuyan`(`id`,`kepuzhishi_id`,`yonghu_id`,`kepuzhishi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-20 16:06:37','回复信息1','2023-03-20 16:06:37','2023-03-20 16:06:37'),(2,2,1,'留言内容2','2023-03-20 16:06:37','回复信息2','2023-03-20 16:06:37','2023-03-20 16:06:37'),(3,3,2,'留言内容3','2023-03-20 16:06:37','回复信息3','2023-03-20 16:06:37','2023-03-20 16:06:37'),(4,4,3,'留言内容4','2023-03-20 16:06:37','回复信息4','2023-03-20 16:06:37','2023-03-20 16:06:37'),(5,5,2,'留言内容5','2023-03-20 16:06:37','回复信息5','2023-03-20 16:06:37','2023-03-20 16:06:37'),(6,6,3,'留言内容6','2023-03-20 16:06:37','回复信息6','2023-03-20 16:06:37','2023-03-20 16:06:37'),(7,7,3,'留言内容7','2023-03-20 16:06:37','回复信息7','2023-03-20 16:06:37','2023-03-20 16:06:37'),(8,8,2,'留言内容8','2023-03-20 16:06:37','回复信息8','2023-03-20 16:06:37','2023-03-20 16:06:37'),(9,9,3,'留言内容9','2023-03-20 16:06:37','回复信息9','2023-03-20 16:06:37','2023-03-20 16:06:37'),(10,10,2,'留言内容10','2023-03-20 16:06:37','回复信息10','2023-03-20 16:06:37','2023-03-20 16:06:37'),(11,11,3,'留言内容11','2023-03-20 16:06:37','回复信息11','2023-03-20 16:06:37','2023-03-20 16:06:37'),(12,12,1,'留言内容12','2023-03-20 16:06:37','回复信息12','2023-03-20 16:06:37','2023-03-20 16:06:37'),(13,13,2,'留言内容13','2023-03-20 16:06:37','回复信息13','2023-03-20 16:06:37','2023-03-20 16:06:37'),(14,14,3,'留言内容14','2023-03-20 16:06:37','回复信息14','2023-03-20 16:06:37','2023-03-20 16:06:37'),(15,14,1,'123123','2023-03-20 16:28:07',NULL,NULL,'2023-03-20 16:28:07');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-03-20 16:06:37','公告详情1','2023-03-20 16:06:37'),(2,'公告标题2',2,'upload/news2.jpg','2023-03-20 16:06:37','公告详情2','2023-03-20 16:06:37'),(3,'公告标题3',1,'upload/news3.jpg','2023-03-20 16:06:37','公告详情3','2023-03-20 16:06:37'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-20 16:06:37','公告详情4','2023-03-20 16:06:37'),(5,'公告标题5',3,'upload/news5.jpg','2023-03-20 16:06:37','公告详情5','2023-03-20 16:06:37'),(6,'公告标题6',2,'upload/news6.jpg','2023-03-20 16:06:37','公告详情6','2023-03-20 16:06:37'),(7,'公告标题7',2,'upload/news7.jpg','2023-03-20 16:06:37','公告详情7','2023-03-20 16:06:37'),(8,'公告标题8',2,'upload/news8.jpg','2023-03-20 16:06:37','公告详情8','2023-03-20 16:06:37'),(9,'公告标题9',3,'upload/news9.jpg','2023-03-20 16:06:37','公告详情9','2023-03-20 16:06:37'),(10,'公告标题10',1,'upload/news10.jpg','2023-03-20 16:06:37','公告详情10','2023-03-20 16:06:37'),(11,'公告标题11',1,'upload/news11.jpg','2023-03-20 16:06:37','公告详情11','2023-03-20 16:06:37'),(12,'公告标题12',2,'upload/news12.jpg','2023-03-20 16:06:37','公告详情12','2023-03-20 16:06:37'),(13,'公告标题13',2,'upload/news13.jpg','2023-03-20 16:06:37','公告详情13','2023-03-20 16:06:37'),(14,'公告标题14',3,'upload/news14.jpg','2023-03-20 16:06:37','公告详情14','2023-03-20 16:06:37');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '医院id',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','j1s2dk218d4ykhg8x8wy8ov9gj19p7m2','2023-03-20 16:08:21','2023-03-20 17:34:10'),(2,1,'admin','users','管理员','mojqqrfjqsfw9d7spqdbj757620rb6qh','2023-03-20 16:08:57','2023-03-20 17:35:26');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-20 16:06:22');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-20 16:06:37'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-20 16:06:37'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-20 16:06:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
