-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: ruoyi
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (108,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-03 18:34:04'),(109,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-03 18:46:40'),(111,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-03 19:22:51'),(112,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-04 11:43:55'),(113,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-04 13:35:35'),(114,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-04 14:51:02'),(115,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-04 14:51:04'),(116,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-04 14:58:26'),(117,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-08 19:28:37'),(118,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-08 19:52:27'),(119,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-08 20:28:27'),(120,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-08 20:34:15'),(121,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-09 13:54:36'),(122,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误1次','2019-07-15 14:54:55'),(123,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误2次','2019-07-15 14:55:04'),(124,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误3次','2019-07-15 14:55:13'),(125,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 14:56:01'),(126,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:12:27'),(127,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:21:22'),(128,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:23:49'),(129,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:28:29'),(130,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:55:46'),(131,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:58:03'),(132,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 16:22:23'),(133,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 16:26:43'),(134,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 16:32:22'),(135,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 16:52:17'),(136,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-16 09:41:44'),(137,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 09:41:47'),(138,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-16 09:56:40'),(139,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-16 09:58:05'),(140,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 09:58:13'),(141,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 10:04:45'),(142,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-16 10:05:13'),(143,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-16 10:05:34'),(144,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 10:05:52'),(145,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 19:32:28'),(146,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 20:01:44'),(147,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 20:02:57'),(148,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误1次','2019-07-16 20:23:13'),(149,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 20:23:19'),(150,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 20:34:34'),(151,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-17 13:38:03'),(152,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 13:38:07'),(153,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 13:39:22'),(154,'ytj','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-17 13:39:31'),(155,'ytj','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 13:39:35'),(156,'ytj','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 13:41:10'),(157,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 13:41:16'),(158,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 13:57:14'),(159,'ytj','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 13:57:19'),(160,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','密码输入错误1次','2019-07-17 14:00:21'),(161,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','验证码错误','2019-07-17 14:00:28'),(162,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-17 14:00:31'),(163,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','退出成功','2019-07-17 14:01:11'),(164,'hhe','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-17 14:01:18'),(165,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:11:25'),(166,'ytj','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-17 14:23:49'),(167,'ytj','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','退出成功','2019-07-17 14:24:09'),(168,'hhe','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-17 14:24:16'),(169,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 14:25:08'),(170,'hhe','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:25:16'),(171,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:36:33'),(172,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 14:36:47'),(173,'hhe','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:36:52'),(174,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:54:25'),(175,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 14:55:41'),(176,'hhe','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:56:25'),(177,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-19 09:54:09'),(178,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 09:54:11'),(179,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 10:35:38'),(180,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:07:26'),(181,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:09:36'),(182,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:17:53'),(183,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:36:42'),(184,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:41:22'),(185,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','密码输入错误1次','2019-07-19 14:36:07'),(186,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','验证码错误','2019-07-19 14:36:13'),(187,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-19 14:36:16'),(188,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-19 14:44:54'),(189,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 14:44:57'),(190,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 14:52:04'),(191,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 14:57:29'),(192,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-19 14:59:05'),(193,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 14:59:08'),(194,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 16:56:20'),(195,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-20 14:49:26'),(196,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-20 15:13:42'),(197,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-20 15:20:20'),(198,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-20 15:20:23'),(199,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-20 15:20:25');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-20 16:28:04
