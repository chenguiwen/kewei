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
  `powerCode01` decimal(20,8) DEFAULT '0.00000000' COMMENT 'A线有功反向(总)',
  `powerCode02` decimal(20,8) DEFAULT '0.00000000' COMMENT 'A线有功正向(总)',
  `powerCode03` decimal(20,8) DEFAULT '0.00000000' COMMENT 'B线有功反向(总)',
  `powerCode04` decimal(20,8) DEFAULT '0.00000000' COMMENT 'B线有功正向(总)',
  `powerCode05` decimal(20,8) DEFAULT '0.00000000' COMMENT 'C线有功反向(总)',
  `powerCode06` decimal(20,8) DEFAULT '0.00000000' COMMENT 'C线有功正向(总)',
  `powerNum01` decimal(20,8) DEFAULT '0.00000000' COMMENT '#1机组',
  `powerNum02` decimal(20,8) DEFAULT '0.00000000' COMMENT '#2机组',
  `powerNum03` decimal(20,8) DEFAULT '0.00000000' COMMENT '#3机组',
  `powerNum04` decimal(20,8) DEFAULT '0.00000000' COMMENT '#4机组',
  `powerNum05` decimal(20,8) DEFAULT '0.00000000' COMMENT '#5机组',
  `powerNum06` decimal(20,8) DEFAULT '0.00000000' COMMENT '#6机组',
  `remark` varchar(100) DEFAULT '' COMMENT '备注',
  `status` char(1) DEFAULT NULL COMMENT '状态（0代表保存 2代表提交）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `department` bigint(20) DEFAULT NULL COMMENT '部门',
  `bill_date` datetime DEFAULT NULL COMMENT '表单时间',
  PRIMARY KEY (`powerInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电厂表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_powerinfo`
--

LOCK TABLES `sys_powerinfo` WRITE;
/*!40000 ALTER TABLE `sys_powerinfo` DISABLE KEYS */;
INSERT INTO `sys_powerinfo` VALUES (14,21.00000000,54.00000000,6547.00000000,765.00000000,342.00000000,876.00000000,45.00000000,867.00000000,234.00000000,675.00000000,895.00000000,965.00000000,'略','1','',NULL,'',NULL,205,NULL),(15,4234.00000000,543.00000000,63545.00000000,897.00000000,9645.00000000,92344.00000000,343.00000000,543.00000000,453.00000000,6547.00000000,4366675.00000000,345.00000000,'略',NULL,'',NULL,'',NULL,207,NULL);
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

-- Dump completed on 2019-09-23 11:44:04
