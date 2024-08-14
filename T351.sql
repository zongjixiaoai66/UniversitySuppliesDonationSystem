/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t351`;
CREATE DATABASE IF NOT EXISTS `t351` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t351`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'qiuzhu_types', '类别', 1, '类别1', NULL, NULL, '2023-04-15 09:23:56'),
	(2, 'qiuzhu_types', '类别', 2, '类别2', NULL, NULL, '2023-04-15 09:23:56'),
	(3, 'qiuzhu_types', '类别', 3, '类别3', NULL, NULL, '2023-04-15 09:23:56'),
	(4, 'qiuzhu_yesno_types', '求助审核', 1, '类别1', NULL, NULL, '2023-04-15 09:23:56'),
	(5, 'qiuzhu_yesno_types', '求助审核', 2, '类别2', NULL, NULL, '2023-04-15 09:23:56'),
	(6, 'qiuzhu_yesno_types', '求助审核', 3, '类别3', NULL, NULL, '2023-04-15 09:23:56'),
	(7, 'qiuzhu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-15 09:23:56'),
	(8, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-15 09:23:56'),
	(9, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-15 09:23:56'),
	(10, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-04-15 09:23:56'),
	(11, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-15 09:23:56'),
	(12, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-15 09:23:56'),
	(13, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-15 09:23:57'),
	(14, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-15 09:23:57');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', 289, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(2, '帖子标题2', 1, NULL, '发布内容2', 127, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(3, '帖子标题3', 2, NULL, '发布内容3', 56, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(4, '帖子标题4', 1, NULL, '发布内容4', 75, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(5, '帖子标题5', 3, NULL, '发布内容5', 43, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(6, '帖子标题6', 1, NULL, '发布内容6', 34, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(7, '帖子标题7', 1, NULL, '发布内容7', 423, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(8, '帖子标题8', 2, NULL, '发布内容8', 143, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(9, '帖子标题9', 2, NULL, '发布内容9', 497, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(10, '帖子标题10', 1, NULL, '发布内容10', 419, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(11, '帖子标题11', 2, NULL, '发布内容11', 442, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(12, '帖子标题12', 2, NULL, '发布内容12', 189, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(13, '帖子标题13', 1, NULL, '发布内容13', 287, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(14, '帖子标题14', 2, NULL, '发布内容14', 299, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(15, NULL, 1, NULL, '登录后可以删除自己i发布的帖子和帖子评论', 14, 2, '2023-04-17 02:07:39', NULL, '2023-04-17 02:07:39'),
	(18, NULL, NULL, 1, '22222222222222222222', 14, 2, '2023-04-17 02:08:52', NULL, '2023-04-17 02:08:52'),
	(19, NULL, 1, NULL, '111', 10, 2, '2024-08-09 02:59:57', NULL, '2024-08-09 02:59:57');

DROP TABLE IF EXISTS `juanzheng`;
CREATE TABLE IF NOT EXISTS `juanzheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiuzhu_id` int DEFAULT NULL COMMENT '求助',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `juanzheng_num` int DEFAULT NULL COMMENT '捐赠数量',
  `juanzheng_text` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='捐赠信息';

DELETE FROM `juanzheng`;
INSERT INTO `juanzheng` (`id`, `qiuzhu_id`, `yonghu_id`, `juanzheng_num`, `juanzheng_text`, `insert_time`, `create_time`) VALUES
	(3, 3, 3, 211, '备注3', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(5, 5, 2, 492, '备注5', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(7, 7, 2, 232, '备注7', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(8, 8, 3, 384, '备注8', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(10, 10, 3, 438, '备注10', '2023-04-15 09:27:23', '2023-04-15 09:27:23');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告求助';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-04-15 09:27:23', '公告详情1', '2023-04-15 09:27:23'),
	(2, '公告标题2', 2, 'upload/news2.jpg', '2023-04-15 09:27:23', '公告详情2', '2023-04-15 09:27:23'),
	(3, '公告标题3', 2, 'upload/news3.jpg', '2023-04-15 09:27:23', '公告详情3', '2023-04-15 09:27:23'),
	(4, '公告标题4', 1, 'upload/news4.jpg', '2023-04-15 09:27:23', '公告详情4', '2023-04-15 09:27:23'),
	(5, '公告标题5', 1, 'upload/news5.jpg', '2023-04-15 09:27:23', '公告详情5', '2023-04-15 09:27:23'),
	(6, '公告标题6', 2, 'upload/news6.jpg', '2023-04-15 09:27:23', '公告详情6', '2023-04-15 09:27:23'),
	(7, '公告标题7', 3, 'upload/news7.jpg', '2023-04-15 09:27:23', '公告详情7', '2023-04-15 09:27:23'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-04-15 09:27:23', '公告详情8', '2023-04-15 09:27:23'),
	(9, '公告标题9', 3, 'upload/news9.jpg', '2023-04-15 09:27:23', '公告详情9', '2023-04-15 09:27:23'),
	(10, '公告标题10', 2, 'upload/news10.jpg', '2023-04-15 09:27:23', '公告详情10', '2023-04-15 09:27:23'),
	(11, '公告标题11', 3, 'upload/news11.jpg', '2023-04-15 09:27:23', '公告详情11', '2023-04-15 09:27:23'),
	(12, '公告标题12', 2, 'upload/news12.jpg', '2023-04-15 09:27:23', '公告详情12', '2023-04-15 09:27:23'),
	(13, '公告标题13', 1, 'upload/news13.jpg', '2023-04-15 09:27:23', '公告详情13', '2023-04-15 09:27:23'),
	(14, '公告标题14', 3, 'upload/news14.jpg', '2023-04-15 09:27:23', '公告详情14', '2023-04-15 09:27:23');

DROP TABLE IF EXISTS `qiuzhu`;
CREATE TABLE IF NOT EXISTS `qiuzhu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiuzhu_name` varchar(200) DEFAULT NULL COMMENT '求助标题  Search111 ',
  `qiuzhu_photo` varchar(200) DEFAULT NULL COMMENT '求助封面',
  `qiuzhu_types` int DEFAULT NULL COMMENT '类别 Search111',
  `qiuzhu_wupin` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `qiuzhu_num` int DEFAULT NULL COMMENT '所需数量',
  `qiuzhu_address` varchar(200) DEFAULT NULL COMMENT '地址',
  `qiuzhu_tihuo` varchar(200) DEFAULT NULL COMMENT '提货方式',
  `qiuzhu_clicknum` int DEFAULT NULL COMMENT '求助热度',
  `qiuzhu_content` longtext COMMENT '求助介绍',
  `qiuzhu_yesno_types` int DEFAULT NULL COMMENT '求助审核 Search111',
  `qiuzhu_yesno_text` longtext COMMENT '审核回复',
  `qiuzhu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='求助信息';

DELETE FROM `qiuzhu`;
INSERT INTO `qiuzhu` (`id`, `yonghu_id`, `qiuzhu_name`, `qiuzhu_photo`, `qiuzhu_types`, `qiuzhu_wupin`, `qiuzhu_num`, `qiuzhu_address`, `qiuzhu_tihuo`, `qiuzhu_clicknum`, `qiuzhu_content`, `qiuzhu_yesno_types`, `qiuzhu_yesno_text`, `qiuzhu_delete`, `insert_time`, `create_time`) VALUES
	(1, 2, '求助标题1', 'upload/qiuzhu1.jpg', 2, '物品名称1', 293, '地址1', '提货方式1', 491, '求助介绍1', 1, '', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(2, 1, '求助标题2', 'upload/qiuzhu2.jpg', 1, '物品名称2', 282, '地址2', '提货方式2', 212, '求助介绍2', 2, '同意', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(3, 3, '求助标题3', 'upload/qiuzhu3.jpg', 2, '物品名称3', 470, '地址3', '提货方式3', 242, '求助介绍3', 2, '同意', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(4, 1, '求助标题4', 'upload/qiuzhu4.jpg', 2, '物品名称4', 95, '地址4', '提货方式4', 458, '求助介绍4', 1, NULL, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(5, 2, '求助标题5', 'upload/qiuzhu5.jpg', 1, '物品名称5', 165, '地址5', '提货方式5', 108, '求助介绍5', 1, NULL, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(6, 3, '求助标题6', 'upload/qiuzhu6.jpg', 2, '物品名称6', 184, '地址6', '提货方式6', 110, '求助介绍6', 1, NULL, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(7, 3, '求助标题7', 'upload/qiuzhu7.jpg', 1, '物品名称7', 285, '地址7', '提货方式7', 31, '求助介绍7', 2, '	\n求助标题7', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(8, 3, '求助标题8', 'upload/qiuzhu8.jpg', 3, '物品名称8', 275, '地址8', '提货方式8', 292, '求助介绍8', 2, '123', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(9, 1, '求助标题9', 'upload/qiuzhu9.jpg', 2, '物品名称9', 486, '地址9', '提货方式9', 356, '求助介绍9', 2, '同意', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(10, 3, '求助标题10', 'upload/qiuzhu10.jpg', 1, '物品名称10', 92, '地址10', '提货方式10', 10, '求助介绍10', 2, '同意', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(11, 2, '求助标题11', 'upload/qiuzhu11.jpg', 3, '物品名称11', 268, '地址11', '提货方式11', 56, '求助介绍11', 2, '同意', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(12, 1, '求助标题12', 'upload/qiuzhu12.jpg', 2, '物品名称12', 344, '地址12', '提货方式12', 296, '求助介绍12', 2, '同意', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(13, 2, '求助标题13', 'upload/qiuzhu13.jpg', 2, '物品名称13', 222, '地址13', '提货方式13', 222, '求助介绍13', 2, '同意', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(14, 3, '求助标题14', 'upload/qiuzhu14.jpg', 2, '物品名称14', 453, '地址14', '提货方式14', 432, '求助介绍14', 2, '同意', 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(15, 1, '123', 'upload/1681697300525.jpeg', 3, '123', 123, '123', '123', 1, '123', 1, NULL, 2, '2023-04-17 02:08:26', '2023-04-17 02:08:26');

DROP TABLE IF EXISTS `qiuzhu_collection`;
CREATE TABLE IF NOT EXISTS `qiuzhu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiuzhu_id` int DEFAULT NULL COMMENT '求助',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiuzhu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='求助收藏';

DELETE FROM `qiuzhu_collection`;
INSERT INTO `qiuzhu_collection` (`id`, `qiuzhu_id`, `yonghu_id`, `qiuzhu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(2, 2, 2, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(3, 3, 3, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(4, 4, 3, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(5, 5, 1, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(6, 6, 2, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(7, 7, 3, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(8, 8, 3, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(10, 10, 2, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(11, 11, 2, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(15, 14, 1, 1, '2024-08-09 03:00:11', '2024-08-09 03:00:11');

DROP TABLE IF EXISTS `qiuzhu_liuyan`;
CREATE TABLE IF NOT EXISTS `qiuzhu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiuzhu_id` int DEFAULT NULL COMMENT '求助',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiuzhu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='求助留言';

DELETE FROM `qiuzhu_liuyan`;
INSERT INTO `qiuzhu_liuyan` (`id`, `qiuzhu_id`, `yonghu_id`, `qiuzhu_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-04-15 09:27:23', '回复信息1', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(2, 2, 3, '留言内容2', '2023-04-15 09:27:23', '回复信息2', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(3, 3, 3, '留言内容3', '2023-04-15 09:27:23', '回复信息3', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(4, 4, 2, '留言内容4', '2023-04-15 09:27:23', '回复信息4', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(5, 5, 3, '留言内容5', '2023-04-15 09:27:23', '回复信息5', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(6, 6, 2, '留言内容6', '2023-04-15 09:27:23', '回复信息6', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(7, 7, 1, '留言内容7', '2023-04-15 09:27:23', '回复信息7', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(8, 8, 1, '留言内容8', '2023-04-15 09:27:23', '回复信息8', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(9, 9, 2, '留言内容9', '2023-04-15 09:27:23', '回复信息9', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(10, 10, 2, '留言内容10', '2023-04-15 09:27:23', '回复信息10', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(11, 11, 3, '留言内容11', '2023-04-15 09:27:23', '回复信息11', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(12, 12, 2, '留言内容12', '2023-04-15 09:27:23', '回复信息12', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(13, 13, 3, '留言内容13', '2023-04-15 09:27:23', '回复信息13', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(14, 14, 2, '留言内容14', '2023-04-15 09:27:23', '回复信息14', '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(15, 12, 1, '登录后才能进入数据详情页', '2023-04-17 02:05:54', NULL, NULL, '2023-04-17 02:05:54');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '0wb36rqsdze9caf70nmrayvpeaoz7y1w', '2023-04-15 09:36:30', '2024-08-09 03:59:47'),
	(2, 1, 'admin', 'users', '管理员', '0yf5engz85siwzjomla86tliwziqkpor', '2023-04-17 01:17:44', '2024-08-09 03:58:42');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-15 09:23:56');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_jif` int DEFAULT NULL COMMENT '积分数量',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `yonghu_jif`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 365, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(2, '用户2', '123456', '用户名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 87, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23'),
	(3, '用户3', '123456', '用户名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 338, 1, '2023-04-15 09:27:23', '2023-04-15 09:27:23');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
