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
-- Table structure for table `sys_powerinfo`
--

DROP TABLE IF EXISTS `sys_powerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_powerinfo` (
  `powerInfoId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '电厂id',
  `powerCode01` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode02` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode03` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode04` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode05` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode06` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode07` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode08` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode09` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode10` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode11` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode12` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode13` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode14` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode15` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode16` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode17` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode18` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode19` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerCode20` decimal(20,8) DEFAULT '0.00000000' COMMENT '电码',
  `powerNum01` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum02` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum03` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum04` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum05` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum06` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum07` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum08` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum09` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum10` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum11` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum12` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum13` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum14` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum15` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum16` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum17` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum18` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum19` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `powerNum20` decimal(20,8) DEFAULT '0.00000000' COMMENT '电量',
  `remark` varchar(100) DEFAULT '' COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `company` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`powerInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电厂表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_powerinfo`
--

LOCK TABLES `sys_powerinfo` WRITE;
/*!40000 ALTER TABLE `sys_powerinfo` DISABLE KEYS */;
INSERT INTO `sys_powerinfo` VALUES (10,10.90000000,3.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,142.00000000,44.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,'','2','','2019-07-15 17:37:30','张珂玮','2019-07-15 17:37:30',NULL);
/*!40000 ALTER TABLE `sys_powerinfo` ENABLE KEYS */;
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
