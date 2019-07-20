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
-- Table structure for table `sys_powernum`
--

DROP TABLE IF EXISTS `sys_powernum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_powernum` (
  `powerInfoId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '电厂id',
  `powerNum01` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum02` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum03` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum04` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum05` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum06` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `remark` varchar(100) DEFAULT '' COMMENT '备注',
  `com_flag` char(1) DEFAULT NULL COMMENT '提交标志（0代表保存态 2代表提交态）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `company` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`powerInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电力公司表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_powernum`
--

LOCK TABLES `sys_powernum` WRITE;
/*!40000 ALTER TABLE `sys_powernum` DISABLE KEYS */;
INSERT INTO `sys_powernum` VALUES (12,3290.90000000,13902.10000000,32039.10000000,9043.90000000,3820.10000000,32948.70000000,'',NULL,'',NULL,'',NULL,101);
/*!40000 ALTER TABLE `sys_powernum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-20 16:28:07
