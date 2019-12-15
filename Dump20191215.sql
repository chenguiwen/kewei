-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: ruoyi
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0	L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/10 * * * * ?t\0系统默认（无参）sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0\nryNoParamst\0\0t\01t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzJobExecution','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0	L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\00t\00/20 * * * * ?t\0系统默认（有参）sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0ryParamst\0ryt\01t\01x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','DESKTOP-AJIQBL31576391523389',1576396751045,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1576391530000,-1,5,'PAUSED','CRON',1576391523000,0,NULL,-1,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1576391540000,-1,5,'PAUSED','CRON',1576391524000,0,NULL,-1,'');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','国家电网',0,'刘沁','15888888888','lq@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:26:13'),(101,100,'0,100','国家电网北京分公司',1,'孙悟空','15888888888','swk@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:24:02'),(102,100,'0,100','国家电网山东分公司',2,'猪八戒','15888888888','zbj@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:25:03'),(103,101,'0,100,101','北京供电公司',1,'孙悟空','15888888888','swk@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:23:02'),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'0,100,102','山东供电公司',1,'猪八戒','15888888888','zbj@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:24:17'),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(200,100,'0,100','国家电网江苏分公司',4,'沙悟净','15019288938','swj@qq.com','0','0','admin','2019-07-06 15:58:30','admin','2019-07-21 20:26:13'),(201,100,'0,100','国家电网河北分公司',3,'唐三藏','13898372890','tsz@qq.com','0','0','admin','2019-07-14 16:24:44','admin','2019-07-21 20:25:59'),(202,201,'0,100,201','河北供电公司',1,'沙悟净','17832398292','swj@qq.com','0','0','admin','2019-07-14 16:26:15','admin','2019-07-21 20:25:59'),(203,200,'0,100,200','江苏供电公司',1,'唐三藏','18398372379','tsz@qq.com','0','0','admin','2019-07-14 16:26:54','admin','2019-07-21 20:26:13'),(204,101,'0,100,101','北京海淀电厂',2,'宋江','15382397392','sj@qq.com','0','0','admin','2019-07-21 20:23:48','admin','2019-07-21 20:24:02'),(205,102,'0,100,102','山东济南电厂',2,'卢俊义','13289372369','ljy@qq.com','0','0','admin','2019-07-21 20:24:50','admin','2019-07-21 20:25:03'),(206,201,'0,100,201','河北石家庄电厂',2,'吴用','18323892039','wy@qq.com','0','0','admin','2019-07-21 20:25:42','',NULL),(207,200,'0,100,200','江苏南京电厂',2,'公孙胜','18329361238','gss@qq.com','0','0','admin','2019-07-21 20:26:45','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(11,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(12,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(13,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(14,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(15,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(16,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(17,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),(18,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),(19,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),(20,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),(21,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),(22,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),(23,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),(24,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),(25,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(26,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(6,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(7,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(8,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(9,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'ryTask','系统默认（无参）','ryNoParams','','0/10 * * * * ?','1','1','1','admin','2018-03-16 11:33:00','admin','2019-07-04 11:45:54',''),(2,'ryTask','系统默认（有参）','ryParams','ry','0/20 * * * * ?','1','0','1','admin','2018-03-16 11:33:00','admin','2019-07-04 11:45:56','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=752 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
INSERT INTO `sys_job_log` VALUES (1,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:41:23'),(2,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:41:23'),(3,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:41:30'),(4,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:41:30'),(5,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:41:40'),(6,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 19:41:41'),(7,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:41:50'),(8,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:42:00'),(9,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:42:00'),(10,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:42:10'),(11,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:42:20'),(12,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:42:20'),(13,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:42:30'),(14,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:42:40'),(15,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 19:42:40'),(16,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:42:50'),(17,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:00'),(18,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:00'),(19,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:10'),(20,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:20'),(21,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:20'),(22,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:30'),(23,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:40'),(24,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:40'),(25,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:43:50'),(26,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:44:00'),(27,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:44:00'),(28,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:44:10'),(29,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:44:20'),(30,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:44:20'),(31,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 19:44:30'),(32,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:44:40'),(33,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:44:40'),(34,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:44:50'),(35,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:00'),(36,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:00'),(37,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:10'),(38,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:20'),(39,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:20'),(40,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:30'),(41,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:40'),(42,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:40'),(43,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:45:50'),(44,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:00'),(45,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:00'),(46,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:10'),(47,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:20'),(48,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:20'),(49,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:30'),(50,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:40'),(51,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:40'),(52,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:46:50'),(53,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:47:00'),(54,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:47:00'),(55,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:47:10'),(56,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 19:47:20'),(57,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:47:20'),(58,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:47:30'),(59,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:47:40'),(60,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:47:40'),(61,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:47:50'),(62,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:48:00'),(63,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:48:00'),(64,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:48:10'),(65,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 19:48:20'),(66,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:48:20'),(67,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:48:30'),(68,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:48:40'),(69,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:48:40'),(70,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:48:50'),(71,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:49:00'),(72,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:49:00'),(73,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:49:10'),(74,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:49:20'),(75,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:49:20'),(76,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 19:49:30'),(77,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:49:40'),(78,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:49:40'),(79,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:49:50'),(80,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:00'),(81,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:00'),(82,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:10'),(83,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:20'),(84,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:20'),(85,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:30'),(86,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:40'),(87,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:40'),(88,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:50:50'),(89,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:00'),(90,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:00'),(91,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:10'),(92,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:20'),(93,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:20'),(94,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:30'),(95,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:40'),(96,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:40'),(97,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:51:50'),(98,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:52:00'),(99,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:52:00'),(100,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:52:10'),(101,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:52:20'),(102,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:52:20'),(103,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:52:30'),(104,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 19:52:40'),(105,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:52:40'),(106,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:52:50'),(107,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:00'),(108,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:00'),(109,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:10'),(110,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:20'),(111,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:20'),(112,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:30'),(113,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:40'),(114,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:40'),(115,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:53:50'),(116,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:00'),(117,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:00'),(118,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:10'),(119,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:20'),(120,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:20'),(121,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:30'),(122,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:40'),(123,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:40'),(124,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:54:50'),(125,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:55:00'),(126,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 19:55:00'),(127,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:55:10'),(128,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:55:20'),(129,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:55:20'),(130,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:55:30'),(131,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 19:55:40'),(132,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:55:40'),(133,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:55:50'),(134,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:56:00'),(135,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 19:56:00'),(136,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:56:10'),(137,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:56:20'),(138,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:56:20'),(139,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:56:30'),(140,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:56:40'),(141,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:56:40'),(142,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:56:50'),(143,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:00'),(144,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:00'),(145,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:10'),(146,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:20'),(147,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:20'),(148,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:30'),(149,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:40'),(150,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:40'),(151,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:57:50'),(152,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:58:00'),(153,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:58:00'),(154,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:58:10'),(155,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:58:20'),(156,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:58:20'),(157,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:58:30'),(158,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:58:40'),(159,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:58:40'),(160,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 19:58:50'),(161,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:59:00'),(162,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:59:00'),(163,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:59:10'),(164,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 19:59:20'),(165,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:59:20'),(166,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:59:30'),(167,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:59:40'),(168,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 19:59:40'),(169,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 19:59:50'),(170,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:00'),(171,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:00'),(172,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:10'),(173,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:20'),(174,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:20'),(175,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:30'),(176,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:40'),(177,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:40'),(178,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:00:50'),(179,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:01:00'),(180,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:01:00'),(181,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:01:10'),(182,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:01:20'),(183,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:01:20'),(184,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:01:30'),(185,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:01:40'),(186,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:01:40'),(187,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:01:50'),(188,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:02:00'),(189,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:02:00'),(190,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:02:10'),(191,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:02:20'),(192,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:02:20'),(193,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:02:30'),(194,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:02:40'),(195,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:02:40'),(196,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:02:50'),(197,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:03:00'),(198,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:03:00'),(199,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:03:10'),(200,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:03:20'),(201,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:03:20'),(202,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:03:30'),(203,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:03:40'),(204,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:03:40'),(205,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:03:50'),(206,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:00'),(207,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:00'),(208,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:10'),(209,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:20'),(210,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:20'),(211,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:30'),(212,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:40'),(213,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:40'),(214,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:04:50'),(215,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:00'),(216,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:00'),(217,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:10'),(218,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:20'),(219,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:20'),(220,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:30'),(221,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:40'),(222,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:40'),(223,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:05:50'),(224,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:00'),(225,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:00'),(226,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:10'),(227,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:20'),(228,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:20'),(229,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:30'),(230,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:40'),(231,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:40'),(232,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:06:50'),(233,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:00'),(234,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:00'),(235,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:10'),(236,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:20'),(237,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:20'),(238,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:30'),(239,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:40'),(240,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:40'),(241,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:07:50'),(242,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:08:00'),(243,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:08:00'),(244,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:08:10'),(245,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:08:20'),(246,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:08:20'),(247,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:08:30'),(248,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:08:40'),(249,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:08:40'),(250,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:08:50'),(251,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:09:00'),(252,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:09:00'),(253,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:09:10'),(254,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:09:20'),(255,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:09:20'),(256,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:09:30'),(257,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:09:40'),(258,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:09:40'),(259,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:09:50'),(260,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:10:00'),(261,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:10:00'),(262,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:10:10'),(263,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:10:20'),(264,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:10:20'),(265,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:10:30'),(266,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:10:40'),(267,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:10:40'),(268,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:10:50'),(269,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:11:00'),(270,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:11:00'),(271,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:11:10'),(272,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:11:20'),(273,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:11:20'),(274,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:11:30'),(275,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:11:40'),(276,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:11:40'),(277,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:11:50'),(278,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:00'),(279,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:00'),(280,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:10'),(281,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:20'),(282,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:20'),(283,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:30'),(284,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:40'),(285,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:40'),(286,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:12:50'),(287,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:00'),(288,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:00'),(289,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:10'),(290,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:20'),(291,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:20'),(292,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:30'),(293,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:40'),(294,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:40'),(295,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:13:50'),(296,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:00'),(297,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:00'),(298,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:10'),(299,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:20'),(300,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:20'),(301,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:30'),(302,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:40'),(303,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:40'),(304,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:14:50'),(305,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:00'),(306,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:00'),(307,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:10'),(308,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:20'),(309,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:20'),(310,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:30'),(311,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:40'),(312,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:40'),(313,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:15:50'),(314,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:16:00'),(315,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:16:00'),(316,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:16:10'),(317,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:16:20'),(318,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:16:20'),(319,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:16:30'),(320,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:16:40'),(321,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 20:16:40'),(322,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:16:50'),(323,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:17:00'),(324,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:17:00'),(325,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:17:10'),(326,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:17:20'),(327,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:17:20'),(328,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:17:30'),(329,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:17:40'),(330,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:17:40'),(331,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:17:50'),(332,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:00'),(333,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:00'),(334,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:10'),(335,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:20'),(336,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:20'),(337,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:30'),(338,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:40'),(339,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:40'),(340,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:18:50'),(341,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:00'),(342,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:00'),(343,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:10'),(344,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:20'),(345,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:20'),(346,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:30'),(347,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:40'),(348,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:40'),(349,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:19:50'),(350,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:00'),(351,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:00'),(352,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:10'),(353,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:20'),(354,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:20'),(355,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:30'),(356,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:40'),(357,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:40'),(358,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:20:50'),(359,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:21:00'),(360,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:21:00'),(361,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:21:10'),(362,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:21:20'),(363,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:21:20'),(364,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:21:30'),(365,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:21:40'),(366,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 20:21:40'),(367,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:21:50'),(368,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:00'),(369,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:00'),(370,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:10'),(371,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:20'),(372,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:20'),(373,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:30'),(374,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:40'),(375,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:40'),(376,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:22:50'),(377,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:00'),(378,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:00'),(379,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:10'),(380,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:20'),(381,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:20'),(382,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:30'),(383,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:40'),(384,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:40'),(385,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:23:50'),(386,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:00'),(387,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:00'),(388,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:10'),(389,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:20'),(390,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:20'),(391,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:30'),(392,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:40'),(393,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:40'),(394,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:24:50'),(395,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:00'),(396,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:00'),(397,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:10'),(398,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:20'),(399,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:20'),(400,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:30'),(401,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:40'),(402,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:40'),(403,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:25:50'),(404,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:26:00'),(405,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:26:00'),(406,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:26:10'),(407,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:26:20'),(408,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:26:20'),(409,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:26:30'),(410,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:26:40'),(411,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 20:26:40'),(412,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:26:50'),(413,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:00'),(414,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:00'),(415,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:10'),(416,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:20'),(417,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:20'),(418,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:30'),(419,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:40'),(420,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:40'),(421,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:27:50'),(422,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:28:00'),(423,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:28:00'),(424,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:28:10'),(425,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:28:20'),(426,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:28:20'),(427,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:28:30'),(428,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:28:40'),(429,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 20:28:40'),(430,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:28:50'),(431,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:29:00'),(432,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:29:00'),(433,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:29:10'),(434,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:29:20'),(435,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:29:20'),(436,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:29:30'),(437,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:29:40'),(438,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:29:40'),(439,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:29:50'),(440,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:00'),(441,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:00'),(442,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:10'),(443,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:20'),(444,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:20'),(445,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:30'),(446,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:40'),(447,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:40'),(448,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:30:50'),(449,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:31:00'),(450,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 20:31:00'),(451,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:31:10'),(452,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:31:20'),(453,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:31:20'),(454,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:31:30'),(455,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:31:40'),(456,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:31:40'),(457,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:31:50'),(458,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:00'),(459,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:00'),(460,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:10'),(461,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:20'),(462,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:20'),(463,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:30'),(464,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:40'),(465,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:40'),(466,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:32:50'),(467,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:00'),(468,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:00'),(469,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:10'),(470,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:20'),(471,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:20'),(472,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:30'),(473,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:40'),(474,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:40'),(475,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:33:50'),(476,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:34:00'),(477,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:34:00'),(478,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:34:10'),(479,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:34:20'),(480,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:34:20'),(481,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:34:30'),(482,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:34:40'),(483,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:34:40'),(484,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:34:50'),(485,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:35:00'),(486,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:35:00'),(487,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:35:10'),(488,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:35:20'),(489,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:35:20'),(490,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:35:30'),(491,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:35:40'),(492,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:35:40'),(493,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:35:50'),(494,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:00'),(495,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:00'),(496,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:10'),(497,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:20'),(498,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:20'),(499,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:30'),(500,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:40'),(501,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:40'),(502,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:36:50'),(503,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:37:00'),(504,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:37:00'),(505,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:37:10'),(506,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:37:20'),(507,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:37:20'),(508,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:37:30'),(509,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:37:40'),(510,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 20:37:40'),(511,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:37:50'),(512,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:00'),(513,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:00'),(514,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:10'),(515,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:20'),(516,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:20'),(517,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:30'),(518,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:40'),(519,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:40'),(520,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:38:50'),(521,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:00'),(522,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:00'),(523,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:10'),(524,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:20'),(525,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:20'),(526,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:30'),(527,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:40'),(528,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:40'),(529,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:39:50'),(530,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:00'),(531,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:00'),(532,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:10'),(533,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:20'),(534,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:20'),(535,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:30'),(536,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:40'),(537,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:40'),(538,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:40:50'),(539,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:41:00'),(540,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:41:00'),(541,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:41:10'),(542,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:41:20'),(543,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:41:20'),(544,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:41:30'),(545,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:41:40'),(546,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:41:40'),(547,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:41:50'),(548,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:42:00'),(549,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:42:00'),(550,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:42:10'),(551,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:42:20'),(552,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:42:20'),(553,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:42:30'),(554,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:42:40'),(555,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:42:40'),(556,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:42:50'),(557,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:00'),(558,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:00'),(559,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:10'),(560,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:20'),(561,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:20'),(562,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:30'),(563,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:40'),(564,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:40'),(565,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:43:50'),(566,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:00'),(567,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:00'),(568,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:10'),(569,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:20'),(570,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:20'),(571,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:30'),(572,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:40'),(573,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:40'),(574,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:44:50'),(575,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:00'),(576,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:00'),(577,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:10'),(578,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:20'),(579,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:20'),(580,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:30'),(581,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:40'),(582,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:40'),(583,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:45:50'),(584,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:00'),(585,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:00'),(586,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:10'),(587,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:20'),(588,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:20'),(589,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:30'),(590,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:40'),(591,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:40'),(592,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:46:50'),(593,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:00'),(594,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:00'),(595,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:10'),(596,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:20'),(597,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:20'),(598,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:30'),(599,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:40'),(600,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:40'),(601,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:47:50'),(602,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:00'),(603,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:00'),(604,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:10'),(605,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:20'),(606,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:20'),(607,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:30'),(608,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:40'),(609,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:40'),(610,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:48:50'),(611,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:00'),(612,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:00'),(613,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:10'),(614,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:20'),(615,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:20'),(616,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:30'),(617,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:40'),(618,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:40'),(619,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:49:50'),(620,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:00'),(621,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:00'),(622,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:10'),(623,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:20'),(624,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:20'),(625,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:30'),(626,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:40'),(627,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:40'),(628,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:50:50'),(629,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:51:00'),(630,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:51:00'),(631,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:51:10'),(632,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:51:20'),(633,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:51:20'),(634,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:51:30'),(635,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:51:40'),(636,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:51:40'),(637,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:51:50'),(638,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:52:00'),(639,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:52:00'),(640,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:52:10'),(641,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:52:20'),(642,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:52:20'),(643,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:52:30'),(644,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:52:40'),(645,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:52:40'),(646,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:52:50'),(647,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:00'),(648,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:00'),(649,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:10'),(650,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:20'),(651,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:20'),(652,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:30'),(653,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:40'),(654,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:40'),(655,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:53:50'),(656,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:00'),(657,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:00'),(658,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:10'),(659,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:20'),(660,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:20'),(661,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:30'),(662,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:40'),(663,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:40'),(664,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:54:50'),(665,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:00'),(666,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:00'),(667,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:10'),(668,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:20'),(669,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:20'),(670,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:30'),(671,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:40'),(672,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:40'),(673,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:55:50'),(674,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:00'),(675,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:00'),(676,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:10'),(677,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:20'),(678,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:20'),(679,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:30'),(680,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:40'),(681,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:40'),(682,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:56:50'),(683,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:00'),(684,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:00'),(685,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:10'),(686,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:20'),(687,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:20'),(688,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:30'),(689,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:40'),(690,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:40'),(691,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:57:50'),(692,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:58:00'),(693,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:58:00'),(694,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:58:10'),(695,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:58:20'),(696,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:58:20'),(697,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:58:30'),(698,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:58:40'),(699,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:58:40'),(700,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:58:50'),(701,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:59:00'),(702,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-03 20:59:00'),(703,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:59:10'),(704,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:59:20'),(705,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:59:20'),(706,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:59:30'),(707,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 20:59:40'),(708,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 20:59:40'),(709,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-03 20:59:50'),(710,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:00'),(711,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:00'),(712,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:10'),(713,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:20'),(714,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:20'),(715,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:30'),(716,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:40'),(717,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:40'),(718,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:00:50'),(719,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:00'),(720,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:00'),(721,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:10'),(722,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:20'),(723,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:20'),(724,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:30'),(725,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:40'),(726,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:40'),(727,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:01:50'),(728,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:02:00'),(729,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-03 21:02:00'),(730,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-03 21:02:10'),(731,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:43:40'),(732,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-04 11:43:40'),(733,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:43:50'),(734,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:44:00'),(735,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-04 11:44:00'),(736,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-04 11:44:10'),(737,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:44:20'),(738,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：1毫秒','0','','2019-07-04 11:44:20'),(739,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:44:30'),(740,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-04 11:44:40'),(741,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-04 11:44:40'),(742,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-04 11:44:50'),(743,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：1毫秒','0','','2019-07-04 11:45:00'),(744,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-04 11:45:00'),(745,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:45:10'),(746,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:45:20'),(747,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-04 11:45:20'),(748,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:45:30'),(749,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:45:40'),(750,'ryTask','系统默认（有参）','ryParams','ry','ryTask 总共耗时：0毫秒','0','','2019-07-04 11:45:40'),(751,'ryTask','系统默认（无参）','ryNoParams',NULL,'ryTask 总共耗时：0毫秒','0','','2019-07-04 11:45:50');
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (108,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-03 18:34:04'),(109,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-03 18:46:40'),(111,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-03 19:22:51'),(112,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-04 11:43:55'),(113,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-04 13:35:35'),(114,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-04 14:51:02'),(115,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-04 14:51:04'),(116,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-04 14:58:26'),(117,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-08 19:28:37'),(118,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-08 19:52:27'),(119,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-08 20:28:27'),(120,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-08 20:34:15'),(121,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-09 13:54:36'),(122,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误1次','2019-07-15 14:54:55'),(123,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误2次','2019-07-15 14:55:04'),(124,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误3次','2019-07-15 14:55:13'),(125,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 14:56:01'),(126,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:12:27'),(127,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:21:22'),(128,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:23:49'),(129,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:28:29'),(130,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:55:46'),(131,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 15:58:03'),(132,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 16:22:23'),(133,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 16:26:43'),(134,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 16:32:22'),(135,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-15 16:52:17'),(136,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-16 09:41:44'),(137,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 09:41:47'),(138,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-16 09:56:40'),(139,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-16 09:58:05'),(140,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 09:58:13'),(141,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 10:04:45'),(142,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-16 10:05:13'),(143,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-16 10:05:34'),(144,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 10:05:52'),(145,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 19:32:28'),(146,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 20:01:44'),(147,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 20:02:57'),(148,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误1次','2019-07-16 20:23:13'),(149,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 20:23:19'),(150,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-16 20:34:34'),(151,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-17 13:38:03'),(152,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 13:38:07'),(153,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 13:39:22'),(154,'ytj','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-17 13:39:31'),(155,'ytj','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 13:39:35'),(156,'ytj','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 13:41:10'),(157,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 13:41:16'),(158,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 13:57:14'),(159,'ytj','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 13:57:19'),(160,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','密码输入错误1次','2019-07-17 14:00:21'),(161,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','验证码错误','2019-07-17 14:00:28'),(162,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-17 14:00:31'),(163,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','退出成功','2019-07-17 14:01:11'),(164,'hhe','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-17 14:01:18'),(165,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:11:25'),(166,'ytj','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-17 14:23:49'),(167,'ytj','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','退出成功','2019-07-17 14:24:09'),(168,'hhe','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-17 14:24:16'),(169,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 14:25:08'),(170,'hhe','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:25:16'),(171,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:36:33'),(172,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 14:36:47'),(173,'hhe','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:36:52'),(174,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:54:25'),(175,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-17 14:55:41'),(176,'hhe','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-17 14:56:25'),(177,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-19 09:54:09'),(178,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 09:54:11'),(179,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 10:35:38'),(180,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:07:26'),(181,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:09:36'),(182,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:17:53'),(183,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:36:42'),(184,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 13:41:22'),(185,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','密码输入错误1次','2019-07-19 14:36:07'),(186,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','验证码错误','2019-07-19 14:36:13'),(187,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-19 14:36:16'),(188,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-19 14:44:54'),(189,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 14:44:57'),(190,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 14:52:04'),(191,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 14:57:29'),(192,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-19 14:59:05'),(193,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 14:59:08'),(194,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-19 16:56:20'),(195,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-20 14:49:26'),(196,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-20 15:13:42'),(197,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-20 15:20:20'),(198,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-20 15:20:23'),(199,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-20 15:20:25'),(200,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 16:51:48'),(201,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 18:17:54'),(202,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 19:26:16'),(203,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 19:42:07'),(204,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 19:57:16'),(205,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 20:08:16'),(206,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-21 20:10:00'),(207,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 20:10:03'),(208,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-21 20:21:15'),(209,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 20:21:18'),(210,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:04:01'),(211,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:15:38'),(212,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:17:09'),(213,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:21:28'),(214,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:24:17'),(215,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-21 22:26:06'),(216,'nmw','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:26:17'),(217,'nmw','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:28:45'),(218,'nmw','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:34:53'),(219,'nmw','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-21 22:35:35'),(220,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:35:38'),(221,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-21 22:36:09'),(222,'nmw','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:36:16'),(223,'admin','127.0.0.1','内网IP','Firefox','Windows 10','1','验证码错误','2019-07-21 22:36:32'),(224,'admin','127.0.0.1','内网IP','Firefox','Windows 10','1','密码输入错误1次','2019-07-21 22:36:38'),(225,'admin','127.0.0.1','内网IP','Firefox','Windows 10','0','登录成功','2019-07-21 22:36:43'),(226,'nmw','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-07-21 22:39:26'),(227,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 22:40:54'),(228,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 23:02:17'),(229,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 23:05:49'),(230,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 23:11:23'),(231,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 23:12:50'),(232,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-21 23:17:15'),(233,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-24 22:48:20'),(234,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-24 22:48:23'),(235,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-24 22:55:50'),(236,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-07-24 22:57:55'),(237,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-24 22:57:58'),(238,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-24 23:01:02'),(239,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-24 23:03:25'),(240,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-07-24 23:08:13'),(241,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','密码输入错误1次','2019-07-24 23:12:22'),(242,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','验证码错误','2019-07-24 23:12:28'),(243,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-07-24 23:12:30'),(244,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-09-22 16:03:10'),(245,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误1次','2019-12-14 11:34:35'),(246,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误2次','2019-12-14 11:34:45'),(247,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-12-14 11:34:52'),(248,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误3次','2019-12-14 11:34:56'),(249,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-12-14 11:35:10'),(250,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-12-14 11:51:25'),(251,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-12-14 11:59:40'),(252,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-12-14 12:17:09'),(253,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-12-14 12:17:15'),(254,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-12-15 13:21:11'),(255,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-12-15 13:44:41'),(256,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-12-15 14:46:31'),(257,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-12-15 15:39:47'),(258,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-12-15 15:39:50');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统监控目录'),(3,'系统工具',0,3,'#','','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(100,'用户管理',1,1,'/system/user','','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','system:post:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','system:notice:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,3,'/monitor/server','','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单'),(113,'表单构建',3,1,'/tool/build','','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),(114,'代码生成',3,2,'/tool/gen','','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(115,'系统接口',3,3,'/tool/swagger','','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'用户导入',100,6,'#','','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'重置密码',100,7,'#','','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色查询',101,1,'#','','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色新增',101,2,'#','','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色修改',101,3,'#','','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色删除',101,4,'#','','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'角色导出',101,5,'#','','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单查询',102,1,'#','','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单新增',102,2,'#','','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单修改',102,3,'#','','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单删除',102,4,'#','','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'岗位查询',104,1,'#','','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位新增',104,2,'#','','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位修改',104,3,'#','','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位删除',104,4,'#','','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位导出',104,5,'#','','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'字典查询',105,1,'#','','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典新增',105,2,'#','','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典修改',105,3,'#','','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典删除',105,4,'#','','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典导出',105,5,'#','','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'参数查询',106,1,'#','','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数新增',106,2,'#','','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数修改',106,3,'#','','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数删除',106,4,'#','','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数导出',106,5,'#','','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'公告查询',107,1,'#','','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告新增',107,2,'#','','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告修改',107,3,'#','','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告删除',107,4,'#','','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'操作查询',500,1,'#','','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'操作删除',500,2,'#','','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'详细信息',500,3,'#','','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'日志导出',500,4,'#','','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'登录查询',501,1,'#','','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录删除',501,2,'#','','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'日志导出',501,3,'#','','F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'在线查询',109,1,'#','','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'批量强退',109,2,'#','','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'单条强退',109,3,'#','','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'任务查询',110,1,'#','','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务新增',110,2,'#','','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务修改',110,3,'#','','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务删除',110,4,'#','','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'状态修改',110,5,'#','','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'任务详细',110,6,'#','','F','0','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'任务导出',110,7,'#','','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'生成查询',114,1,'#','','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'生成代码',114,2,'#','','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2000,'发电厂',2005,1,'/power/powerinfo','menuItem','C','0','power:powerinfo:view','#','admin','2018-03-01 00:00:00','admin','2019-12-15 15:40:12','电厂菜单'),(2001,'电厂查询',2000,1,'#','','F','0','power:powerinfo:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2002,'电厂新增',2000,2,'#','','F','0','power:powerinfo:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2003,'电厂修改',2000,3,'#','','F','0','power:powerinfo:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2004,'电厂删除',2000,4,'#','','F','0','power:powerinfo:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2005,'电力信息',0,5,'#','menuItem','M','0','','fa fa-industry','admin','2019-07-08 19:58:24','admin','2019-12-15 13:21:50',''),(2007,'数据统计',2005,6,'/power/powerinfo','menuItem','C','0','power:powerinfo:view','#','admin','2019-07-16 19:49:43','admin','2019-07-19 16:57:43',''),(2008,'电厂新增',2007,2,'#','','F','0','power:powerinfo:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2009,'电厂查询',2007,1,'#','','F','0','power:powerinfo:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2010,'电厂修改',2007,3,'#','','F','0','power:powerinfo:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2011,'电厂删除',2007,4,'#','','F','0','power:powerinfo:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2017,'供电公司',2005,1,'/power/powernum','menuItem','C','0','power:powernum:view','#','admin','2018-03-01 00:00:00','admin','2019-12-15 13:22:07','电力公司菜单'),(2018,'电力公司查询',2017,1,'#','','F','0','power:powernum:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2019,'电力公司新增',2017,2,'#','','F','0','power:powernum:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2020,'电力公司修改',2017,3,'#','','F','0','power:powernum:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2021,'电力公司删除',2017,4,'#','','F','0','power:powernum:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：孵化版','2','这是一个孵化版','0','admin','2018-03-16 11:33:00','admin','2019-07-03 20:11:12','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.update()',1,'admin','研发部门','/system/user/profile/update','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"张珂玮\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 18:51:44'),(101,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.update()',1,'admin','研发部门','/system/user/profile/update','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"张珂玮\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 18:51:48'),(102,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()',1,'admin','研发部门','/system/user/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"2\" ]\r\n}',0,NULL,'2019-07-03 19:28:54'),(103,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"无\" ],\r\n  \"deptName\" : [ \"珂玮科技\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"张珂玮\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"zkw@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 19:30:38'),(104,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.run()',1,'admin','研发部门','/monitor/job/run','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 19:41:12'),(105,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.run()',1,'admin','研发部门','/monitor/job/run','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 19:41:23'),(106,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 19:41:25'),(107,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.run()',1,'admin','研发部门','/monitor/job/run','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 19:41:28'),(108,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.editSave()',1,'admin','研发部门','/monitor/job/edit','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"jobName\" : [ \"ryTask\" ],\r\n  \"jobGroup\" : [ \"系统默认（无参）\" ],\r\n  \"methodName\" : [ \"ryNoParams\" ],\r\n  \"methodParams\" : [ \"\" ],\r\n  \"cronExpression\" : [ \"0/10 * * * * ?\" ],\r\n  \"misfirePolicy\" : [ \"1\" ],\r\n  \"concurrent\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2019-07-03 19:41:35'),(109,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.run()',1,'admin','研发部门','/monitor/job/run','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"2\" ]\r\n}',0,NULL,'2019-07-03 19:41:41'),(110,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 19:41:43'),(111,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.editSave()',1,'admin','研发部门','/monitor/job/edit','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"jobName\" : [ \"ryTask\" ],\r\n  \"jobGroup\" : [ \"系统默认（有参）\" ],\r\n  \"methodName\" : [ \"ryParams\" ],\r\n  \"methodParams\" : [ \"ry\" ],\r\n  \"cronExpression\" : [ \"0/20 * * * * ?\" ],\r\n  \"misfirePolicy\" : [ \"1\" ],\r\n  \"concurrent\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2019-07-03 19:41:53'),(112,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"无\" ],\r\n  \"deptName\" : [ \"珂玮集团\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"张珂玮\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"zkw@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 20:04:09'),(113,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"珂玮集团\" ],\r\n  \"deptName\" : [ \"北京分公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"文爷\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"cgw@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 20:04:39'),(114,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"102\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"珂玮集团\" ],\r\n  \"deptName\" : [ \"厦门分公司\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"雯雯\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"www@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 20:08:58'),(115,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.editSave()',1,'admin','研发部门','/system/notice/edit','127.0.0.1','内网IP','{\r\n  \"noticeId\" : [ \"1\" ],\r\n  \"noticeTitle\" : [ \"温馨提醒：孵化版\" ],\r\n  \"noticeType\" : [ \"2\" ],\r\n  \"noticeContent\" : [ \"这是一个孵化版\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 20:11:12'),(116,'通知公告',3,'com.ruoyi.web.controller.system.SysNoticeController.remove()',1,'admin','研发部门','/system/notice/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"2\" ]\r\n}',0,NULL,'2019-07-03 20:11:18'),(117,'登陆日志',3,'com.ruoyi.web.controller.monitor.SysLogininforController.remove()',1,'admin','研发部门','/monitor/logininfor/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"107,106,105,104,103,102\" ]\r\n}',0,NULL,'2019-07-03 20:12:14'),(118,'登陆日志',3,'com.ruoyi.web.controller.monitor.SysLogininforController.remove()',1,'admin','研发部门','/monitor/logininfor/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"101,100\" ]\r\n}',0,NULL,'2019-07-03 20:12:19'),(119,'登陆日志',3,'com.ruoyi.web.controller.monitor.SysLogininforController.remove()',1,'admin','研发部门','/monitor/logininfor/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"110\" ]\r\n}',0,NULL,'2019-07-03 20:12:23'),(120,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-04 11:45:54'),(121,'定时任务',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()',1,'admin','研发部门','/monitor/job/changeStatus','127.0.0.1','内网IP','{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"status\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-04 11:45:56'),(122,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,105,106\" ]\r\n}',0,NULL,'2019-07-04 11:47:57'),(123,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,105,106,107,102,108\" ]\r\n}',0,NULL,'2019-07-04 13:51:42'),(124,'在线用户',7,'com.ruoyi.web.controller.monitor.SysUserOnlineController.batchForceLogout()',1,'admin','研发部门','/monitor/online/batchForceLogout','127.0.0.1','内网IP','{\r\n  \"ids[]\" : [ \"ae46066e-49d2-4c26-b373-e25b031ab415\" ]\r\n}',0,NULL,'2019-07-04 14:59:31'),(125,'在线用户',7,'com.ruoyi.web.controller.monitor.SysUserOnlineController.batchForceLogout()',1,'admin','研发部门','/monitor/online/batchForceLogout','127.0.0.1','内网IP','{\r\n  \"ids[]\" : [ \"edf8ffdd-b82a-4bf3-b46d-b77948734495\" ]\r\n}',0,NULL,'2019-07-04 14:59:36'),(126,'代码生成',8,'com.ruoyi.generator.controller.GenController.genCode()',1,'admin','研发部门','/tool/gen/genCode/sys_powerinfo','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-08 19:28:57'),(127,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}',0,NULL,'2019-07-08 19:52:45'),(128,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"张珂玮\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-08 19:53:05'),(129,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-bolt\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:54:46'),(130,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-bolt\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:55:35'),(131,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:56:00'),(132,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:56:12'),(133,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-bolt\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:56:20'),(134,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"电厂数据\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-industry\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:58:24'),(135,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:58:37'),(136,'电厂',1,'com.ruoyi.web.controller.power.PowerinfoController.addSave()',1,'admin',NULL,'/power/powerinfo/add','127.0.0.1','内网IP','{\r\n  \"powerCode01\" : [ \"20\" ],\r\n  \"powerCode02\" : [ \"1\" ],\r\n  \"powerCode03\" : [ \"1\" ],\r\n  \"powerCode04\" : [ \"1\" ],\r\n  \"powerCode05\" : [ \"\" ],\r\n  \"powerCode06\" : [ \"\" ],\r\n  \"powerCode07\" : [ \"\" ],\r\n  \"powerCode08\" : [ \"\" ],\r\n  \"powerCode09\" : [ \"\" ],\r\n  \"powerCode10\" : [ \"\" ],\r\n  \"powerCode11\" : [ \"\" ],\r\n  \"powerCode12\" : [ \"\" ],\r\n  \"powerCode13\" : [ \"\" ],\r\n  \"powerCode14\" : [ \"\" ],\r\n  \"powerCode15\" : [ \"\" ],\r\n  \"powerCode16\" : [ \"\" ],\r\n  \"powerCode17\" : [ \"\" ],\r\n  \"powerCode18\" : [ \"\" ],\r\n  \"powerCode19\" : [ \"\" ],\r\n  \"powerCode20\" : [ \"\" ],\r\n  \"powerNum01\" : [ \"31\" ],\r\n  \"powerNum02\" : [ \"\" ],\r\n  \"powerNum03\" : [ \"\" ],\r\n  \"powerNum04\" : [ \"\" ],\r\n  \"powerNum05\" : [ \"\" ],\r\n  \"powerNum06\" : [ \"\" ],\r\n  \"powerNum07\" : [ \"\" ],\r\n  \"powerNum08\" : [ \"\" ],\r\n  \"powerNum09\" : [ \"\" ],\r\n  \"powerNum10\" : [ \"\" ],\r\n  \"powerNum11\" : [ \"\" ],\r\n  \"powerNum12\" : [ \"\" ],\r\n  \"powerNum13\" : [ \"\" ],\r\n  \"powerNum14\" : [ \"\" ],\r\n  \"powerNum15\" : [ \"\" ],\r\n  \"powerNum16\" : [ \"\" ],\r\n  \"powerNum17\" : [ \"\" ],\r\n  \"powerNum18\" : [ \"\" ],\r\n  \"powerNum19\" : [ \"\" ],\r\n  \"powerNum20\" : [ \"\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"delFlag\" : [ \"\" ],\r\n  \"createBy\" : [ \"\" ],\r\n  \"createTime\" : [ \"\" ],\r\n  \"updateBy\" : [ \"\" ],\r\n  \"updateTime\" : [ \"\" ]\r\n}',0,NULL,'2019-07-08 20:47:29'),(137,'电厂',2,'com.ruoyi.web.controller.power.PowerinfoController.editSave()',1,'admin',NULL,'/power/powerinfo/edit','127.0.0.1','内网IP','{\r\n  \"powerInfoId\" : [ \"10\" ],\r\n  \"powerCode01\" : [ \"10.90000000\" ],\r\n  \"powerCode02\" : [ \"3\" ],\r\n  \"powerCode03\" : [ \"0E-8\" ],\r\n  \"powerCode04\" : [ \"0E-8\" ],\r\n  \"powerCode05\" : [ \"0E-8\" ],\r\n  \"powerCode06\" : [ \"0E-8\" ],\r\n  \"powerCode07\" : [ \"0E-8\" ],\r\n  \"powerCode08\" : [ \"0E-8\" ],\r\n  \"powerCode09\" : [ \"0E-8\" ],\r\n  \"powerCode10\" : [ \"0E-8\" ],\r\n  \"powerCode11\" : [ \"0E-8\" ],\r\n  \"powerCode12\" : [ \"0E-8\" ],\r\n  \"powerCode13\" : [ \"0E-8\" ],\r\n  \"powerCode14\" : [ \"0E-8\" ],\r\n  \"powerCode15\" : [ \"0E-8\" ],\r\n  \"powerCode16\" : [ \"0E-8\" ],\r\n  \"powerCode17\" : [ \"0E-8\" ],\r\n  \"powerCode18\" : [ \"0E-8\" ],\r\n  \"powerCode19\" : [ \"0E-8\" ],\r\n  \"powerCode20\" : [ \"0E-8\" ],\r\n  \"powerNum01\" : [ \"142.00000000\" ],\r\n  \"powerNum02\" : [ \"44\" ],\r\n  \"powerNum03\" : [ \"0E-8\" ],\r\n  \"powerNum04\" : [ \"0E-8\" ],\r\n  \"powerNum05\" : [ \"0E-8\" ],\r\n  \"powerNum06\" : [ \"0E-8\" ],\r\n  \"powerNum07\" : [ \"0E-8\" ],\r\n  \"powerNum08\" : [ \"0E-8\" ],\r\n  \"powerNum09\" : [ \"0E-8\" ],\r\n  \"powerNum10\" : [ \"0E-8\" ],\r\n  \"powerNum11\" : [ \"0E-8\" ],\r\n  \"powerNum12\" : [ \"0E-8\" ],\r\n  \"powerNum13\" : [ \"0E-8\" ],\r\n  \"powerNum14\" : [ \"0E-8\" ],\r\n  \"powerNum15\" : [ \"0E-8\" ],\r\n  \"powerNum16\" : [ \"0E-8\" ],\r\n  \"powerNum17\" : [ \"0E-8\" ],\r\n  \"powerNum18\" : [ \"0E-8\" ],\r\n  \"powerNum19\" : [ \"0E-8\" ],\r\n  \"powerNum20\" : [ \"0E-8\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"delFlag\" : [ \"0\" ],\r\n  \"createBy\" : [ \"\" ],\r\n  \"createTime\" : [ \"\" ],\r\n  \"updateBy\" : [ \"\" ],\r\n  \"updateTime\" : [ \"\" ]\r\n}',0,NULL,'2019-07-08 20:47:47'),(138,'电厂',3,'com.ruoyi.web.controller.power.PowerinfoController.remove()',1,'admin',NULL,'/power/powerinfo/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"11\" ]\r\n}',0,NULL,'2019-07-08 20:48:05'),(139,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin','研发部门','/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(  \n            \'10\'\n         )\' at line 3\r\n### The error may exist in file [C:\\Users\\Administrator\\eclipse\\keweispace\\kewei\\ruoyi-system\\target\\classes\\mapper\\power\\PowerinfoMapper.xml]\r\n### The error may involve com.ruoyi.power.mapper.PowerinfoMapper.selectPowerinfoListByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select powerInfoId, powerCode01, powerCode02, powerCode03, powerCode04, powerCode05, powerCode06, powerCode07, powerCode08, powerCode09, powerCode10, powerCode11, powerCode12, powerCode13, powerCode14, powerCode15, powerCode16, powerCode17, powerCode18, powerCode19, powerCode20, powerNum01, powerNum02, powerNum03, powerNum04, powerNum05, powerNum06, powerNum07, powerNum08, powerNum09, powerNum10, powerNum11, powerNum12, powerNum13, powerNum14, powerNum15, powerNum16, powerNum17, powerNum18, powerNum19, powerNum20, remark, del_flag, create_by, create_time, update_by, update_time from sys_powerinfo                (               ?          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(  \n            \'10\'\n         )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(  \n            \'10\'\n         )\' at line 3','2019-07-15 16:33:22'),(140,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.executor.ExecutorException: A query was run and no Result Maps were found for the Mapped Statement \'com.ruoyi.power.mapper.PowerinfoMapper.selectPowerinfoListByIds\'.  It\'s likely that neither a Result Type nor a Result Map was specified.','2019-07-15 16:36:14'),(141,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'delFlag\' not found. Available parameters are [array]','2019-07-15 16:38:24'),(142,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'delFlag\' not found. Available parameters are [array]','2019-07-15 16:40:13'),(143,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin','研发部门','/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'delFlag\' not found. Available parameters are [collection, list]','2019-07-15 16:52:37'),(144,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'updateBy\' not found. Available parameters are [collection, list]','2019-07-15 16:56:46'),(145,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'powerInfoId) then #{powerinfo\' in \'class com.ruoyi.power.domain.Powerinfo\'','2019-07-15 17:24:12'),(146,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'id\' in \'class com.ruoyi.power.domain.Powerinfo\'','2019-07-15 17:28:20'),(147,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-07-15 17:29:30'),(148,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-07-15 17:31:54'),(149,'电厂',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-07-15 17:37:33'),(150,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"烟台电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 19:48:00'),(151,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电力公司\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 19:49:43'),(152,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}',0,NULL,'2019-07-16 19:54:22'),(153,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电力公司\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 19:56:24'),(154,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电力公司\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 20:05:23'),(155,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电力公司\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 20:06:17'),(156,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin','核算部门','/system/user/resetPwd/103','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-17 13:39:12'),(157,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()',1,'admin','核算部门','/system/user/resetPwd','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"103\" ],\r\n  \"loginName\" : [ \"ytj\" ],\r\n  \"password\" : [ \"111111\" ]\r\n}',0,NULL,'2019-07-17 13:39:16'),(158,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"核算员\" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"供电公司核算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-17 13:56:09'),(159,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"核算员\" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"供电公司核算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-17 13:56:21'),(160,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"结算员\" ],\r\n  \"roleKey\" : [ \"jiesuan\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"电厂结算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-17 13:56:27'),(161,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"核算员\" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"供电公司核算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-17 13:56:35'),(162,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,2005,2000,2001,2002,2003,2004,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-17 13:57:05'),(163,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"结算员\" ],\r\n  \"roleKey\" : [ \"jiesuan\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"电厂结算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-17 13:57:09'),(164,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin','核算部门','/system/user/resetPwd/102','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-17 14:00:51'),(165,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()',1,'admin','核算部门','/system/user/resetPwd','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"102\" ],\r\n  \"loginName\" : [ \"hhe\" ],\r\n  \"password\" : [ \"111111\" ]\r\n}',0,NULL,'2019-07-17 14:00:55'),(166,'代码生成',8,'com.ruoyi.generator.controller.GenController.genCode()',1,'admin',NULL,'/tool/gen/genCode/sys_powerinfo','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-19 09:56:44'),(167,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,2012,2013,2014,2015,2016,2005,2000,2001,2002,2003,2004,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-19 10:36:41'),(168,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"结算员\" ],\r\n  \"roleKey\" : [ \"jiesuan\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"电厂结算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2012,2013,2014,2015,2016,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-19 10:36:48'),(169,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"核算员\" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"供电公司核算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2012,2013,2014,2015,2016,2005,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-19 10:36:53'),(170,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','核算部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2012\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo2:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 13:09:57'),(171,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','核算部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2012\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"数据统计\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo2:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 15:08:57'),(172,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','核算部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电力数据\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 16:57:18'),(173,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','核算部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2012\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电力公司\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo2:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 16:57:28'),(174,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','核算部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"数据统计\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 16:57:43'),(175,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','核算部门','/system/menu/remove/2013','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-20 14:49:52'),(176,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"核算员\" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"供电公司核算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2005,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-20 14:50:10'),(177,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,2005,2000,2001,2002,2003,2004,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-20 14:50:17'),(178,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','核算部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"结算员\" ],\r\n  \"roleKey\" : [ \"jiesuan\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"电厂结算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-20 14:50:25'),(179,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','核算部门','/system/menu/remove/2013','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-20 14:50:32'),(180,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','核算部门','/system/menu/remove/2014','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-20 14:50:39'),(181,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','核算部门','/system/menu/remove/2015','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-20 14:50:49'),(182,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','核算部门','/system/menu/remove/2016','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-20 14:51:01'),(183,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','核算部门','/system/menu/remove/2012','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-20 14:51:10'),(184,'代码生成',8,'com.ruoyi.generator.controller.GenController.genCode()',1,'admin','核算部门','/tool/gen/genCode/sys_powernum','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-20 14:51:27'),(185,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','核算部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2017\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"电力公司\" ],\r\n  \"url\" : [ \"/power/powernum\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powernum:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-20 15:14:03'),(186,'电力公司',1,'com.ruoyi.web.controller.power.PowernumController.addSave()',1,'admin','核算部门','/power/powernum/add','127.0.0.1','内网IP','{\r\n  \"company\" : [ \"101\" ],\r\n  \"companyName\" : [ \"北京市供电公司\" ],\r\n  \"powerNum01\" : [ \"3290.9\" ],\r\n  \"powerNum02\" : [ \"13902.1\" ],\r\n  \"powerNum03\" : [ \"32039.1\" ],\r\n  \"powerNum04\" : [ \"9043.9\" ],\r\n  \"powerNum05\" : [ \"3820.1\" ],\r\n  \"powerNum06\" : [ \"32948.7\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2019-07-20 15:29:49'),(187,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"国家电网\" ],\r\n  \"deptName\" : [ \"国家电网北京分公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"孙悟空\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"swk@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:21:42'),(188,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"102\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"国家电网\" ],\r\n  \"deptName\" : [ \"国家电网山东分公司\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"猪八戒\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"zbj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:21:59'),(189,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"201\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"国家电网\" ],\r\n  \"deptName\" : [ \"国家电网河北分公司\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"leader\" : [ \"唐三藏\" ],\r\n  \"phone\" : [ \"13898372890\" ],\r\n  \"email\" : [ \"tsz@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:22:18'),(190,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"200\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"国家电网\" ],\r\n  \"deptName\" : [ \"国家电网江苏分公司\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"leader\" : [ \"沙悟净\" ],\r\n  \"phone\" : [ \"15019288938\" ],\r\n  \"email\" : [ \"swj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:22:39'),(191,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"parentId\" : [ \"101\" ],\r\n  \"parentName\" : [ \"国家电网北京分公司\" ],\r\n  \"deptName\" : [ \"北京供电公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"孙悟空\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"swk@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:23:02'),(192,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','核算部门','/system/dept/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"101\" ],\r\n  \"deptName\" : [ \"北京海淀电厂\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"宋江\" ],\r\n  \"phone\" : [ \"15382397392\" ],\r\n  \"email\" : [ \"sj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:23:48'),(193,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"204\" ],\r\n  \"parentId\" : [ \"101\" ],\r\n  \"parentName\" : [ \"国家电网北京分公司\" ],\r\n  \"deptName\" : [ \"北京海淀电厂\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"宋江\" ],\r\n  \"phone\" : [ \"15382397392\" ],\r\n  \"email\" : [ \"sj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:24:02'),(194,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"108\" ],\r\n  \"parentId\" : [ \"102\" ],\r\n  \"parentName\" : [ \"国家电网山东分公司\" ],\r\n  \"deptName\" : [ \"山东供电公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"猪八戒\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"zbj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:24:17'),(195,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','核算部门','/system/dept/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"102\" ],\r\n  \"deptName\" : [ \"济南电厂\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"卢俊义\" ],\r\n  \"phone\" : [ \"13289372369\" ],\r\n  \"email\" : [ \"ljy@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:24:50'),(196,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"205\" ],\r\n  \"parentId\" : [ \"102\" ],\r\n  \"parentName\" : [ \"国家电网山东分公司\" ],\r\n  \"deptName\" : [ \"山东济南电厂\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"卢俊义\" ],\r\n  \"phone\" : [ \"13289372369\" ],\r\n  \"email\" : [ \"ljy@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:25:03'),(197,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','核算部门','/system/dept/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"201\" ],\r\n  \"deptName\" : [ \"河北石家庄电厂\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"吴用\" ],\r\n  \"phone\" : [ \"18323892039\" ],\r\n  \"email\" : [ \"wy@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:25:42'),(198,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"202\" ],\r\n  \"parentId\" : [ \"201\" ],\r\n  \"parentName\" : [ \"国家电网河北分公司\" ],\r\n  \"deptName\" : [ \"河北供电公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"沙悟净\" ],\r\n  \"phone\" : [ \"17832398292\" ],\r\n  \"email\" : [ \"swj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:25:59'),(199,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','核算部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"203\" ],\r\n  \"parentId\" : [ \"200\" ],\r\n  \"parentName\" : [ \"国家电网江苏分公司\" ],\r\n  \"deptName\" : [ \"江苏供电公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"唐三藏\" ],\r\n  \"phone\" : [ \"18398372379\" ],\r\n  \"email\" : [ \"tsz@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:26:13'),(200,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','核算部门','/system/dept/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"200\" ],\r\n  \"deptName\" : [ \"江苏南京电厂\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"公孙胜\" ],\r\n  \"phone\" : [ \"18329361238\" ],\r\n  \"email\" : [ \"gss@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:26:45'),(201,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()',1,'admin','核算部门','/system/user/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"101\" ]\r\n}',0,NULL,'2019-07-21 20:27:14'),(202,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()',1,'admin','核算部门','/system/user/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"102\" ]\r\n}',0,NULL,'2019-07-21 20:27:22'),(203,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','核算部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"204\" ],\r\n  \"userName\" : [ \"蜘蛛精\" ],\r\n  \"deptName\" : [ \"北京海淀电厂\" ],\r\n  \"phonenumber\" : [ \"15983237982\" ],\r\n  \"email\" : [ \"zzj@qq.com\" ],\r\n  \"loginName\" : [ \"zzj\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2019-07-21 20:31:09'),(204,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','核算部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"205\" ],\r\n  \"userName\" : [ \"大鹏精\" ],\r\n  \"deptName\" : [ \"山东济南电厂\" ],\r\n  \"phonenumber\" : [ \"15983237983\" ],\r\n  \"email\" : [ \"dpj@qq.com\" ],\r\n  \"loginName\" : [ \"dpj\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2019-07-21 20:32:08'),(205,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin','北京供电公司','/system/user/resetPwd/100','127.0.0.1','内网IP','{ }',0,NULL,'2019-07-21 22:25:58'),(206,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()',1,'admin','北京供电公司','/system/user/resetPwd','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"loginName\" : [ \"nmw\" ],\r\n  \"password\" : [ \"111111\" ]\r\n}',0,NULL,'2019-07-21 22:26:02'),(207,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','北京供电公司','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"牛魔王\" ],\r\n  \"dept.deptName\" : [ \"山东供电公司\" ],\r\n  \"phonenumber\" : [ \"15832983293\" ],\r\n  \"email\" : [ \"nmw@qq.com\" ],\r\n  \"loginName\" : [ \"nmw\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2019-07-21 22:35:58'),(208,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','北京供电公司','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"核算员\" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"供电公司核算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2005,2017,2018,2019,2020,2021\" ]\r\n}',0,NULL,'2019-07-21 22:37:07'),(209,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','北京供电公司','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"核算员\" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"供电公司核算员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-21 22:38:08'),(210,'电厂',3,'com.ruoyi.web.controller.system.PowerinfoController.commitBill()',1,'admin','北京供电公司','/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"12\" ]\r\n}',0,NULL,'2019-12-14 12:19:17'),(211,'电厂',3,'com.ruoyi.web.controller.system.PowerinfoController.commitBill()',1,'admin','北京供电公司','/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-12-14 12:19:30'),(212,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','北京供电公司','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"发电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-12-15 13:21:36'),(213,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','北京供电公司','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"电力信息\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-industry\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-12-15 13:21:50'),(214,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','北京供电公司','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2017\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"供电公司\" ],\r\n  \"url\" : [ \"/power/powernum\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powernum:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-12-15 13:22:07'),(215,'电厂',3,'com.ruoyi.web.controller.system.PowerinfoController.commitBill()',1,'admin','北京供电公司','/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-12-15 14:02:14'),(216,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','北京供电公司','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"发电厂\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-12-15 15:40:12'),(217,'电厂',3,'com.ruoyi.web.controller.system.PowerinfoController.commitBill()',1,'admin','北京供电公司','/power/powerinfo/commit','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-12-15 15:40:30');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','部门经理',2,'0','admin','2018-03-16 11:33:00','admin','2019-07-14 16:33:28',''),(4,'user','普通员工',3,'0','admin','2018-03-16 11:33:00','admin','2019-07-14 16:33:44','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

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
  `department` bigint(20) DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`powerInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电厂表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_powerinfo`
--

LOCK TABLES `sys_powerinfo` WRITE;
/*!40000 ALTER TABLE `sys_powerinfo` DISABLE KEYS */;
INSERT INTO `sys_powerinfo` VALUES (10,10.90000000,3.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,142.00000000,44.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,'','0','','2019-07-15 17:37:30','张珂玮','2019-07-15 17:37:30',102,NULL,'2'),(12,90.20000000,34.00000000,243.70000000,323.20000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,43.00000000,254.93000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,'','0','','2019-07-24 17:37:30','张珂玮','2019-07-24 17:37:30',102,NULL,'1');
/*!40000 ALTER TABLE `sys_powerinfo` ENABLE KEYS */;
UNLOCK TABLES;

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
  `status` char(1) DEFAULT NULL COMMENT '提交标志（0代表保存态 2代表提交态）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `department` bigint(20) DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL,
  PRIMARY KEY (`powerInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电力公司表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_powernum`
--

LOCK TABLES `sys_powernum` WRITE;
/*!40000 ALTER TABLE `sys_powernum` DISABLE KEYS */;
INSERT INTO `sys_powernum` VALUES (11,3290.90000000,13902.10000000,32039.10000000,9043.90000000,3820.10000000,32948.70000000,'','0','','2019-07-15 17:37:30','',NULL,101,NULL),(13,4343.20000000,2983.10000000,3.65000000,34.54000000,545.67000000,2392.98000000,'','0','','2019-07-24 17:37:30','',NULL,101,NULL);
/*!40000 ALTER TABLE `sys_powernum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','admin','2019-07-20 14:50:17','管理员'),(2,'结算员','jiesuan',2,'4','0','0','admin','2018-03-16 11:33:00','admin','2019-07-20 14:50:25','电厂结算员'),(100,'核算员','hesuan',3,'4','0','0','admin','2019-07-06 15:53:56','admin','2019-07-21 22:38:08','供电公司核算员');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1),(1,2),(1,3),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,500),(1,501),(1,1000),(1,1001),(1,1002),(1,1003),(1,1004),(1,1005),(1,1006),(1,1007),(1,1008),(1,1009),(1,1010),(1,1011),(1,1012),(1,1013),(1,1014),(1,1015),(1,1016),(1,1017),(1,1018),(1,1019),(1,1020),(1,1021),(1,1022),(1,1023),(1,1024),(1,1025),(1,1026),(1,1027),(1,1028),(1,1029),(1,1030),(1,1031),(1,1032),(1,1033),(1,1034),(1,1035),(1,1036),(1,1037),(1,1038),(1,1039),(1,1040),(1,1041),(1,1042),(1,1043),(1,1044),(1,1045),(1,1046),(1,1047),(1,1048),(1,1049),(1,1050),(1,1051),(1,1052),(1,1053),(1,1054),(1,1055),(1,2000),(1,2001),(1,2002),(1,2003),(1,2004),(1,2005),(1,2007),(1,2008),(1,2009),(1,2010),(1,2011),(2,1),(2,3),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,2000),(2,2001),(2,2002),(2,2003),(2,2004),(2,2005),(100,1),(100,3),(100,100),(100,101),(100,102),(100,103),(100,104),(100,105),(100,106),(100,107),(100,108),(100,500),(100,501),(100,1000),(100,1001),(100,1002),(100,1003),(100,1004),(100,1005),(100,1006),(100,1007),(100,1008),(100,1009),(100,1010),(100,1011),(100,1012),(100,1013),(100,1014),(100,1015),(100,1016),(100,1017),(100,1018),(100,1019),(100,1020),(100,1021),(100,1022),(100,1023),(100,1024),(100,1025),(100,1026),(100,1027),(100,1028),(100,1029),(100,1030),(100,1031),(100,1032),(100,1033),(100,1034),(100,1035),(100,1036),(100,1037),(100,1038),(100,1039),(100,1040),(100,1041),(100,1042),(100,1043),(100,1044),(100,1045),(100,2000),(100,2001),(100,2002),(100,2003),(100,2004),(100,2005);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','管理员','00','admin@163.com','15888888888','1','','21e801284319b8dd246f875e4d8995b9','690028','0','0','127.0.0.1','2019-12-15 15:39:51','admin','2018-03-16 11:33:00','ry','2019-12-15 15:39:50','管理员'),(2,103,'ywy','业务员','00','ywy@qq.com','15666666666','2','','3d3cfe5153857eb38e0d39c9991acd82','c1bbe2','0','2','127.0.0.1','2019-07-06 16:18:12','admin','2018-03-16 11:33:00','admin','2019-07-14 16:21:00','测试员'),(100,108,'nmw','牛魔王','00','nmw@qq.com','15832983293','0','','141ae57bb8da24ffd00dffe552c831ba','a58a1d','0','0','127.0.0.1','2019-07-21 22:36:17','admin','2019-07-14 16:28:40','admin','2019-07-21 22:36:16',''),(102,203,'hhe','红孩儿','00','hhe@qq.com','18732882309','0','','a0e077f8a2f7c4656ff77f7c69b17e75','bc0136','0','2','127.0.0.1','2019-07-17 14:56:26','admin','2019-07-14 16:32:39','','2019-07-17 14:56:25',NULL),(103,103,'ytj','玉兔精','00','ytj@qq.com','13032983238','1','','233b37f4742b9c0a06472d172c7ae18a','14f9d8','0','0','127.0.0.1','2019-07-17 14:23:50','admin','2019-07-14 16:36:22','','2019-07-17 14:23:49',NULL),(104,204,'zzj','蜘蛛精','00','zzj@qq.com','15983237982','1','','3fced9f6efcdfccfbda5552cb7067bf9','5e4fbe','0','0','',NULL,'admin','2019-07-21 20:31:09','',NULL,NULL),(105,205,'dpj','大鹏精','00','dpj@qq.com','15983237983','0','','303ebf161c33938890016e5701c4ec4a','bd8966','0','0','',NULL,'admin','2019-07-21 20:32:08','',NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('e523038e-0499-4a91-bbb5-58f9d47aa8c1','admin','北京供电公司','127.0.0.1','内网IP','Chrome','Windows 10','on_line','2019-12-15 15:39:44','2019-12-15 15:46:22',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2),(100,4),(101,4),(102,4),(103,4),(104,4),(105,4);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(100,100),(101,100),(102,2),(103,100),(104,2),(105,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15 16:06:37
