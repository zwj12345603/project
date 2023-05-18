-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.33 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 hotel_manage 的数据库结构
CREATE DATABASE IF NOT EXISTS `hotel_manage` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel_manage`;

-- 导出  表 hotel_manage.check_in 结构
DROP TABLE IF EXISTS `check_in`;
CREATE TABLE IF NOT EXISTS `check_in` (
  `check_in_id` int NOT NULL AUTO_INCREMENT COMMENT '入住id',
  `order_id` int DEFAULT NULL COMMENT '订单号',
  `room_id` int DEFAULT NULL,
  `room_number` int DEFAULT NULL COMMENT '房间号',
  `persons` varchar(255) DEFAULT NULL COMMENT '入住人',
  `ids` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `check_in_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '入住时间',
  PRIMARY KEY (`check_in_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.check_in 的数据：~3 rows (大约)
REPLACE INTO `check_in` (`check_in_id`, `order_id`, `room_id`, `room_number`, `persons`, `ids`, `check_in_time`) VALUES
	(2, 1, 2, 202, '测试1', '320684111111114410', '2021-04-15 13:47:03'),
	(3, 3, 3, 301, '测试1', '320684111111114410', '2021-04-26 11:49:46'),
	(4, 9, 2, 202, 'cyy', '320822199908762315', '2021-05-17 06:58:28');

-- 导出  表 hotel_manage.comment 结构
DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `commnet_content` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `comment_account` varchar(64) DEFAULT NULL COMMENT '留言账号',
  `comment_grade` int DEFAULT '0' COMMENT '留言等级0-普通1-精选',
  `comment_create_time` datetime DEFAULT NULL COMMENT '留言创建时间',
  `comment_last_modify_time` datetime DEFAULT NULL COMMENT '留言最后修改时间',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='留言表\n';

-- 正在导出表  hotel_manage.comment 的数据：~4 rows (大约)
REPLACE INTO `comment` (`comment_id`, `commnet_content`, `comment_account`, `comment_grade`, `comment_create_time`, `comment_last_modify_time`) VALUES
	(1, '测试留言', 'user', 0, '2021-01-17 22:06:48', '2021-01-17 22:06:48'),
	(2, '测试留言111111111111111111111111', 'user', 1, '2021-01-17 22:07:38', '2021-01-17 22:07:38'),
	(3, 'CSDN是全球知名中文IT技术交流平台,创建于1999年,包含原创博客、精品问答、职业培训、技术论坛、资源下载等产品服务,提供原创、优质、完整内容的专业IT技术开发社区.', 'user', 0, '2021-01-17 23:30:41', '2021-01-17 23:30:41'),
	(4, 'rnighreijhgoi', 'cyy', 0, '2021-05-17 14:57:26', '2021-05-17 14:57:26');

-- 导出  表 hotel_manage.customer 结构
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `customer_login_name` varchar(64) DEFAULT NULL COMMENT '客户登录账号',
  `customer_login_password` char(32) DEFAULT NULL COMMENT '客户登录密码',
  `customer_name` varchar(32) DEFAULT NULL COMMENT '客户姓名',
  `customer_phone` varchar(32) DEFAULT NULL COMMENT '客户手机号',
  `customer_card_number` varchar(32) DEFAULT NULL COMMENT '客户身份证号',
  `customer_create_time` datetime DEFAULT NULL COMMENT '客户创建时间',
  `customer_last_modify_time` datetime DEFAULT NULL COMMENT '客户最后修改时间',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='客户表\n';

-- 正在导出表  hotel_manage.customer 的数据：~3 rows (大约)

-- 导出  表 hotel_manage.log 结构
DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_user_name` varchar(64) DEFAULT NULL,
  `log_user_role` varchar(64) DEFAULT NULL,
  `log_operate_content` varchar(64) DEFAULT NULL,
  `log_ip_address` varchar(64) DEFAULT NULL,
  `log_ip_location` varchar(32) DEFAULT NULL,
  `log_system_type` varchar(64) DEFAULT NULL,
  `log_browser_type` varchar(64) DEFAULT NULL,
  `log_create_time` datetime DEFAULT NULL,
  `log_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.log 的数据：~137 rows (大约)
REPLACE INTO `log` (`log_id`, `log_user_name`, `log_user_role`, `log_operate_content`, `log_ip_address`, `log_ip_location`, `log_system_type`, `log_browser_type`, `log_create_time`, `log_note`) VALUES
	(251, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-07 15:48:18', NULL),
	(252, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:09:34', NULL),
	(253, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:11:07', NULL),
	(254, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:11:45', NULL),
	(255, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:11:47', NULL),
	(256, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:12:24', NULL),
	(257, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:12:28', NULL),
	(258, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 21:05:51', NULL),
	(259, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 21:18:54', NULL),
	(260, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 21:19:38', NULL),
	(261, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:12:02', NULL),
	(262, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:12:05', NULL),
	(263, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:12:09', NULL),
	(264, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:19:48', NULL),
	(265, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:22:27', NULL),
	(266, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:22:34', NULL),
	(267, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:51:12', NULL),
	(268, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 23:36:00', NULL),
	(269, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 23:46:15', NULL),
	(270, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 23:53:16', NULL),
	(271, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-12 00:07:03', NULL),
	(272, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-12 16:58:04', NULL),
	(273, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-12 17:02:06', NULL),
	(274, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-12 17:02:10', NULL),
	(275, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 15:15:13', NULL),
	(276, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 21:52:17', NULL),
	(277, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:12:43', NULL),
	(278, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:13:27', NULL),
	(279, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:13:31', NULL),
	(280, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:20:37', NULL),
	(281, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:21:48', NULL),
	(282, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:22:56', NULL),
	(283, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:24:14', NULL),
	(284, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:37:14', NULL),
	(285, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:41:08', NULL),
	(286, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:45:23', NULL),
	(287, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 23:16:11', NULL),
	(288, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 23:32:37', NULL),
	(289, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-22 09:56:33', NULL),
	(290, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-25 14:15:42', NULL),
	(291, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-25 14:19:50', NULL),
	(292, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-25 14:30:57', NULL),
	(293, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-25 14:31:42', NULL),
	(294, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-03-15 17:50:58', NULL),
	(295, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-03-15 17:56:55', NULL),
	(296, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 18:01:12', NULL),
	(297, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 19:51:35', NULL),
	(298, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 20:12:42', NULL),
	(299, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 20:12:47', NULL),
	(300, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 20:14:14', NULL),
	(301, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 21:04:30', NULL),
	(302, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 21:26:04', NULL),
	(303, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 21:43:03', NULL),
	(304, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:17:46', NULL),
	(305, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:18:14', NULL),
	(306, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:18:19', NULL),
	(307, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:24:12', NULL),
	(308, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:26:01', NULL),
	(309, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:33:38', NULL),
	(310, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:36:08', NULL),
	(311, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:41:57', NULL),
	(312, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:46:11', NULL),
	(313, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:55:05', NULL),
	(314, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:59:57', NULL),
	(315, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 23:02:53', NULL),
	(316, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 23:06:17', NULL),
	(317, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 23:09:20', NULL),
	(318, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 23:09:24', NULL),
	(319, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-14 23:10:11', NULL),
	(320, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-14 23:12:08', NULL),
	(321, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-14 23:12:13', NULL),
	(322, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-14 23:13:30', NULL),
	(323, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:36:04', NULL),
	(324, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:41:04', NULL),
	(325, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:45:18', NULL),
	(326, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:45:51', NULL),
	(327, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:45:54', NULL),
	(328, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:46:30', NULL),
	(329, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:14:56', NULL),
	(330, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:17:57', NULL),
	(331, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:48:04', NULL),
	(332, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:50:23', NULL),
	(333, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:52:45', NULL),
	(334, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:57:28', NULL),
	(335, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:58:57', NULL),
	(336, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:01:35', NULL),
	(337, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:26:42', NULL),
	(338, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:43:36', NULL),
	(339, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:46:36', NULL),
	(340, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:52:23', NULL),
	(341, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:01:23', NULL),
	(342, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:03:15', NULL),
	(343, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:14:56', NULL),
	(344, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:21:20', NULL),
	(345, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:28:59', NULL),
	(346, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:31:26', NULL),
	(347, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:31:31', NULL),
	(348, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:32:11', NULL),
	(349, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:32:31', NULL),
	(350, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:33:09', NULL),
	(351, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:33:49', NULL),
	(352, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:33:53', NULL),
	(353, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:40:26', NULL),
	(354, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:48:29', NULL),
	(355, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 9', '2021-04-26 19:29:57', NULL),
	(356, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 9', '2021-04-26 19:36:21', NULL),
	(357, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 9', '2021-04-26 19:42:48', NULL),
	(358, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 9', '2021-04-26 19:46:13', NULL),
	(359, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 9', '2021-04-26 19:49:20', NULL),
	(360, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 9', '2021-05-11 13:14:22', NULL),
	(361, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 8', '2021-05-12 00:51:35', NULL),
	(362, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X (iPhone)', 'Mobile Safari', '2021-05-12 21:12:29', NULL),
	(363, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Mac OS X (iPhone)', 'Mobile Safari', '2021-05-12 21:12:55', NULL),
	(364, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 08:21:00', NULL),
	(365, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 08:40:50', NULL),
	(366, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 08:41:11', NULL),
	(367, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 13:57:36', NULL),
	(368, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 14:36:35', NULL),
	(369, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:38:23', NULL),
	(370, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:43:20', NULL),
	(371, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:44:31', NULL),
	(372, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 14:45:06', NULL),
	(373, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:45:54', NULL),
	(374, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:46:25', NULL),
	(375, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:46:59', NULL),
	(376, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:47:13', NULL),
	(377, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:48:31', NULL),
	(378, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:50:34', NULL),
	(379, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:52:04', NULL),
	(380, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 15:00:46', NULL),
	(381, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 18:54:59', NULL),
	(382, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 18:57:18', NULL),
	(383, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-17 11:03:47', NULL),
	(384, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-17 11:11:37', NULL),
	(385, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Safari', '2021-05-17 14:57:44', NULL),
	(386, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Safari', '2021-05-17 14:58:42', NULL),
	(387, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Safari', '2021-05-17 15:00:59', NULL),
	(388, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome', '2023-05-16 20:24:06', NULL);

-- 导出  表 hotel_manage.order_info 结构
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE IF NOT EXISTS `order_info` (
  `order_id` int NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(16) DEFAULT NULL COMMENT '客户手机',
  `room_type_id` int DEFAULT NULL COMMENT '房间类型ID',
  `room_type` varchar(16) DEFAULT NULL COMMENT '房间类型',
  `order_date` date DEFAULT NULL COMMENT '预定日期',
  `order_days` int DEFAULT NULL COMMENT '预定天数',
  `order_status` int DEFAULT '0' COMMENT '订单状态',
  `order_cost` double DEFAULT NULL COMMENT '订单费用',
  `user_id` int DEFAULT NULL COMMENT '客户ID',
  `idcard` varchar(32) DEFAULT NULL COMMENT '客户身份证号',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.order_info 的数据：~6 rows (大约)
REPLACE INTO `order_info` (`order_id`, `name`, `phone`, `room_type_id`, `room_type`, `order_date`, `order_days`, `order_status`, `order_cost`, `user_id`, `idcard`) VALUES
	(1, '测试1', '13572777279', 1, '商务单人大床房', '2021-04-14', 2, 3, 400, 4, '320684111111114410'),
	(3, '测试1', '13572777279', 2, '商务双人标间', '2021-04-26', 6, 3, 1800, 4, '320684111111114410'),
	(6, 'admin', '13193830520', 2, '商务双人标间', '2021-05-27', 27, 0, 8100, 7, '434567876543234567'),
	(7, 'admin', '13193830520', 2, '商务双人标间', '2021-05-17', 4, 0, 1200, 7, '434567876543234567'),
	(8, 'admin', '13193830520', 2, '商务双人标间', '2021-05-28', 1, 0, 300, 7, '434567876543234567'),
	(9, 'cyy', '17765434567', 1, '商务单人大床房', '2021-05-17', 36, 1, 7200, 8, '320822199908762315');

-- 导出  表 hotel_manage.permission 结构
DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(64) NOT NULL,
  `permission_url` varchar(256) DEFAULT NULL,
  `permission_parent_id` int DEFAULT NULL,
  `permission_icon` varchar(256) DEFAULT NULL,
  `permission_create_time` datetime DEFAULT NULL,
  `permission_last_modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE,
  KEY `fk_permission` (`permission_parent_id`) USING BTREE,
  CONSTRAINT `fk_permission` FOREIGN KEY (`permission_parent_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.permission 的数据：~14 rows (大约)
REPLACE INTO `permission` (`permission_id`, `permission_name`, `permission_url`, `permission_parent_id`, `permission_icon`, `permission_create_time`, `permission_last_modify_time`) VALUES
	(1, '系统菜单', NULL, NULL, 'fa fa-desktop', '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(2, '系统管理', '', 1, 'fa fa-cog', '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(3, '工作人员管理', '/admin/user', 2, 'fa fa-user', '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(4, '角色管理', '/admin/role', 2, 'fa fa-list', '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(7, '应用管理', '/admin/permission', 2, 'fa fa-tasks', '2019-04-10 18:37:00', '2019-04-10 18:37:00'),
	(16, '日志管理', '/admin/log', 2, 'fa fa-file-text', '2019-11-04 18:37:00', '2019-11-04 18:37:00'),
	(17, '客户管理', '/admin/customer', 18, 'fa fa-users', '2021-01-11 18:37:00', '2021-01-11 18:37:00'),
	(18, '业务管理', '', 1, 'fa fa-diamond', '2021-01-17 18:37:00', '2021-01-17 18:37:00'),
	(19, '留言管理', '/admin/comment', 18, 'fa fa-comments', '2021-01-17 22:37:00', '2021-01-17 22:37:00'),
	(20, '房型管理', '/admin/roomtype', 18, 'fa fa-diamond', '2021-01-17 22:37:00', '2021-01-17 22:37:00'),
	(21, '房间管理', '/admin/roominfo', 18, 'fa fa-hotel', '2021-01-17 22:37:00', '2021-01-17 22:37:00'),
	(22, '预约订单管理', '/admin/orderinfo', 18, 'fa fa-reorder', '2021-01-17 22:37:00', '2021-01-17 22:37:00'),
	(23, '入住管理', '/admin/checkin', 18, 'fa fa-id-card', '2021-01-17 22:37:00', '2021-01-17 22:37:00'),
	(24, '统计分析管理', '/admin/home', 18, 'fa fa-snowflake-o', '2021-01-17 22:37:00', '2021-01-17 22:37:00');

-- 导出  表 hotel_manage.role 结构
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) NOT NULL,
  `role_create_time` datetime DEFAULT NULL,
  `role_last_modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.role 的数据：~0 rows (大约)
REPLACE INTO `role` (`role_id`, `role_name`, `role_create_time`, `role_last_modify_time`) VALUES
	(1, '超级管理员', '2019-03-28 00:00:00', '2020-12-27 01:12:00');

-- 导出  表 hotel_manage.role_permission 结构
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_permission_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`role_permission_id`) USING BTREE,
  KEY `fk_role_permission_rs1` (`role_id`) USING BTREE,
  KEY `fk_role_permission_rs2` (`permission_id`) USING BTREE,
  CONSTRAINT `fk_role_permission_rs1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_role_permission_rs2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.role_permission 的数据：~14 rows (大约)
REPLACE INTO `role_permission` (`role_permission_id`, `role_id`, `permission_id`) VALUES
	(331, 1, 1),
	(332, 1, 2),
	(333, 1, 3),
	(334, 1, 4),
	(335, 1, 7),
	(336, 1, 16),
	(337, 1, 18),
	(338, 1, 17),
	(339, 1, 19),
	(340, 1, 20),
	(341, 1, 21),
	(342, 1, 22),
	(343, 1, 23),
	(344, 1, 24);

-- 导出  表 hotel_manage.role_user 结构
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_user_id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`role_user_id`) USING BTREE,
  KEY `fk_role_user_rs1` (`role_id`) USING BTREE,
  KEY `fk_role_user_rs2` (`user_id`) USING BTREE,
  CONSTRAINT `fk_role_user_rs1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_role_user_rs2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.role_user 的数据：~0 rows (大约)
REPLACE INTO `role_user` (`role_user_id`, `user_id`, `role_id`) VALUES
	(38, 155479343250980, 1);

-- 导出  表 hotel_manage.room_info 结构
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE IF NOT EXISTS `room_info` (
  `room_id` int NOT NULL AUTO_INCREMENT COMMENT '房间ID',
  `room_number` int DEFAULT NULL COMMENT '房间号码',
  `type_id` int DEFAULT NULL COMMENT '房间类型ID',
  `room_type` varchar(16) DEFAULT NULL COMMENT '房间类型',
  `room_price` double DEFAULT NULL COMMENT '房间价格',
  `room_status` int DEFAULT '0' COMMENT '房间状态',
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.room_info 的数据：~3 rows (大约)
REPLACE INTO `room_info` (`room_id`, `room_number`, `type_id`, `room_type`, `room_price`, `room_status`) VALUES
	(1, 201, 1, '商务单人大床房', 200, 0),
	(2, 202, 1, '商务单人大床房', 200, 1),
	(3, 301, 2, '商务双人标间', 300, 0);

-- 导出  表 hotel_manage.room_type 结构
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE IF NOT EXISTS `room_type` (
  `type_id` int NOT NULL AUTO_INCREMENT COMMENT '房型编号',
  `type_name` varchar(16) DEFAULT NULL COMMENT '房型名称',
  `price` double DEFAULT NULL COMMENT '房型价格',
  `area` int DEFAULT NULL COMMENT '房型面积',
  `bed_num` int DEFAULT NULL COMMENT '房型床数量',
  `bed_size` varchar(16) DEFAULT NULL COMMENT '房型床大小',
  `window` int DEFAULT NULL COMMENT '房型窗数量',
  `rest` int DEFAULT '10' COMMENT '房型剩余数量',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.room_type 的数据：~4 rows (大约)
REPLACE INTO `room_type` (`type_id`, `type_name`, `price`, `area`, `bed_num`, `bed_size`, `window`, `rest`) VALUES
	(1, '商务单人大床房', 200, 30, 1, '1.8m', 2, 10),
	(2, '商务双人标间', 300, 35, 2, '1.5m', 2, 10),
	(3, '家庭房', 500, 50, 3, '1.8m', 3, 10),
	(4, '商务单人间', 300, 30, 1, '1.8m', 2, 10);

-- 导出  表 hotel_manage.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_password` char(32) NOT NULL,
  `user_phone` varchar(32) NOT NULL,
  `user_state` int NOT NULL DEFAULT '1',
  `user_create_time` datetime DEFAULT NULL,
  `user_last_modify_time` datetime DEFAULT NULL,
  `user_true_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  hotel_manage.user 的数据：~1 rows (大约)
REPLACE INTO `user` (`user_id`, `user_name`, `user_password`, `user_phone`, `user_state`, `user_create_time`, `user_last_modify_time`, `user_true_name`) VALUES
	(155479343250980, 'admin', 'ba3873f74a5b46a4f93816721dad7345', '13515107277', 1, '2019-10-28 13:52:48', '2021-05-14 14:49:57', '超级管理员');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
