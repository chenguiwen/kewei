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
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '琝韁0sr\0org.quartz.JobDataMap煱冭咯癨?\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap?\鑌名\臸(\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\??v\n\?\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0	L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj?KYt\0\0xpw\0\0b,\?\鄕pt\0\0pppt\01t\00/10 * * * * ?t\0绯荤粺榛樿锛堟棤鍙傦級sr\0java.lang.Long;媆鋹虖#\?\0J\0valuexr\0java.lang.Number啲?擻鄫\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0\nryNoParamst\0\0t\01t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzJobExecution','0','0','0','0',_binary '琝韁0sr\0org.quartz.JobDataMap煱冭咯癨?\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap?\鑌名\臸(\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\??v\n\?\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\诹\?`\?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0	L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0methodParamsq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj?KYt\0\0xpw\0\0b,\?\鄕pt\0\0pppt\00t\00/20 * * * * ?t\0绯荤粺榛樿锛堟湁鍙傦級sr\0java.lang.Long;媆鋹虖#\?\0J\0valuexr\0java.lang.Number啲?擻鄫\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0ryParamst\0ryt\01t\01x\0');
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
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','DESKTOP-AJIQBL31563722221758',1563722435784,15000);
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
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1563722230000,-1,5,'PAUSED','CRON',1563722222000,0,NULL,-1,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1563722240000,-1,5,'PAUSED','CRON',1563722222000,0,NULL,-1,'');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '鍙傛暟涓婚敭',
  `config_name` varchar(100) DEFAULT '' COMMENT '鍙傛暟鍚嶇О',
  `config_key` varchar(100) DEFAULT '' COMMENT '鍙傛暟閿悕',
  `config_value` varchar(100) DEFAULT '' COMMENT '鍙傛暟閿€?,
  `config_type` char(1) DEFAULT 'N' COMMENT '绯荤粺鍐呯疆锛圷鏄?N鍚︼級',
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鍙傛暟閰嶇疆琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'涓绘鏋堕〉-榛樿鐨偆鏍峰紡鍚嶇О','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','钃濊壊 skin-blue銆佺豢鑹?skin-green銆佺传鑹?skin-purple銆佺孩鑹?skin-red銆侀粍鑹?skin-yellow'),(2,'鐢ㄦ埛绠＄悊-璐﹀彿鍒濆瀵嗙爜','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍒濆鍖栧瘑鐮?123456');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '閮ㄩ棬id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '鐖堕儴闂╥d',
  `ancestors` varchar(50) DEFAULT '' COMMENT '绁栫骇鍒楄〃',
  `dept_name` varchar(30) DEFAULT '' COMMENT '閮ㄩ棬鍚嶇О',
  `order_num` int(4) DEFAULT '0' COMMENT '鏄剧ず椤哄簭',
  `leader` varchar(20) DEFAULT NULL COMMENT '璐熻矗浜?,
  `phone` varchar(11) DEFAULT NULL COMMENT '鑱旂郴鐢佃瘽',
  `email` varchar(50) DEFAULT NULL COMMENT '閭',
  `status` char(1) DEFAULT '0' COMMENT '閮ㄩ棬鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `del_flag` char(1) DEFAULT '0' COMMENT '鍒犻櫎鏍囧織锛?浠ｈ〃瀛樺湪 2浠ｈ〃鍒犻櫎锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='閮ㄩ棬琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','鍥藉鐢电綉',0,'鍒樻瞾','15888888888','lq@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:26:13'),(101,100,'0,100','鍥藉鐢电綉鍖椾含鍒嗗叕鍙?,1,'瀛欐偀绌?,'15888888888','swk@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:24:02'),(102,100,'0,100','鍥藉鐢电綉灞变笢鍒嗗叕鍙?,2,'鐚叓鎴?,'15888888888','zbj@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:25:03'),(103,101,'0,100,101','鍖椾含渚涚數鍏徃',1,'瀛欐偀绌?,'15888888888','swk@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:23:02'),(104,101,'0,100,101','甯傚満閮ㄩ棬',2,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(105,101,'0,100,101','娴嬭瘯閮ㄩ棬',3,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'0,100,101','璐㈠姟閮ㄩ棬',4,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'0,100,101','杩愮淮閮ㄩ棬',5,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'0,100,102','灞变笢渚涚數鍏徃',1,'鐚叓鎴?,'15888888888','zbj@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-07-21 20:24:17'),(109,102,'0,100,102','璐㈠姟閮ㄩ棬',2,'鑻ヤ緷','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(200,100,'0,100','鍥藉鐢电綉姹熻嫃鍒嗗叕鍙?,4,'娌欐偀鍑€','15019288938','swj@qq.com','0','0','admin','2019-07-06 15:58:30','admin','2019-07-21 20:26:13'),(201,100,'0,100','鍥藉鐢电綉娌冲寳鍒嗗叕鍙?,3,'鍞愪笁钘?,'13898372890','tsz@qq.com','0','0','admin','2019-07-14 16:24:44','admin','2019-07-21 20:25:59'),(202,201,'0,100,201','娌冲寳渚涚數鍏徃',1,'娌欐偀鍑€','17832398292','swj@qq.com','0','0','admin','2019-07-14 16:26:15','admin','2019-07-21 20:25:59'),(203,200,'0,100,200','姹熻嫃渚涚數鍏徃',1,'鍞愪笁钘?,'18398372379','tsz@qq.com','0','0','admin','2019-07-14 16:26:54','admin','2019-07-21 20:26:13'),(204,101,'0,100,101','鍖椾含娴锋穩鐢靛巶',2,'瀹嬫睙','15382397392','sj@qq.com','0','0','admin','2019-07-21 20:23:48','admin','2019-07-21 20:24:02'),(205,102,'0,100,102','灞变笢娴庡崡鐢靛巶',2,'鍗繆涔?,'13289372369','ljy@qq.com','0','0','admin','2019-07-21 20:24:50','admin','2019-07-21 20:25:03'),(206,201,'0,100,201','娌冲寳鐭冲搴勭數鍘?,2,'鍚寸敤','18323892039','wy@qq.com','0','0','admin','2019-07-21 20:25:42','',NULL),(207,200,'0,100,200','姹熻嫃鍗椾含鐢靛巶',2,'鍏瓩鑳?,'18329361238','gss@qq.com','0','0','admin','2019-07-21 20:26:45','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '瀛楀吀缂栫爜',
  `dict_sort` int(4) DEFAULT '0' COMMENT '瀛楀吀鎺掑簭',
  `dict_label` varchar(100) DEFAULT '' COMMENT '瀛楀吀鏍囩',
  `dict_value` varchar(100) DEFAULT '' COMMENT '瀛楀吀閿€?,
  `dict_type` varchar(100) DEFAULT '' COMMENT '瀛楀吀绫诲瀷',
  `css_class` varchar(100) DEFAULT NULL COMMENT '鏍峰紡灞炴€э紙鍏朵粬鏍峰紡鎵╁睍锛?,
  `list_class` varchar(100) DEFAULT NULL COMMENT '琛ㄦ牸鍥炴樉鏍峰紡',
  `is_default` char(1) DEFAULT 'N' COMMENT '鏄惁榛樿锛圷鏄?N鍚︼級',
  `status` char(1) DEFAULT '0' COMMENT '鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀛楀吀鏁版嵁琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'鐢?,'0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鎬у埆鐢?),(2,2,'濂?,'1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鎬у埆濂?),(3,3,'鏈煡','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鎬у埆鏈煡'),(4,1,'鏄剧ず','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鏄剧ず鑿滃崟'),(5,2,'闅愯棌','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','闅愯棌鑿滃崟'),(6,1,'姝ｅ父','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','姝ｅ父鐘舵€?),(7,2,'鍋滅敤','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍋滅敤鐘舵€?),(8,1,'姝ｅ父','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','姝ｅ父鐘舵€?),(9,2,'鏆傚仠','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍋滅敤鐘舵€?),(10,1,'鏄?,'Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','绯荤粺榛樿鏄?),(11,2,'鍚?,'N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','绯荤粺榛樿鍚?),(12,1,'閫氱煡','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','閫氱煡'),(13,2,'鍏憡','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍏憡'),(14,1,'姝ｅ父','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','姝ｅ父鐘舵€?),(15,2,'鍏抽棴','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍏抽棴鐘舵€?),(16,1,'鏂板','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鏂板鎿嶄綔'),(17,2,'淇敼','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','淇敼鎿嶄綔'),(18,3,'鍒犻櫎','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍒犻櫎鎿嶄綔'),(19,4,'鎺堟潈','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鎺堟潈鎿嶄綔'),(20,5,'瀵煎嚭','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','瀵煎嚭鎿嶄綔'),(21,6,'瀵煎叆','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','瀵煎叆鎿嶄綔'),(22,7,'寮洪€€','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','寮洪€€鎿嶄綔'),(23,8,'鐢熸垚浠ｇ爜','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鐢熸垚鎿嶄綔'),(24,9,'娓呯┖鏁版嵁','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','娓呯┖鎿嶄綔'),(25,1,'鎴愬姛','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','姝ｅ父鐘舵€?),(26,2,'澶辫触','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍋滅敤鐘舵€?);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '瀛楀吀涓婚敭',
  `dict_name` varchar(100) DEFAULT '' COMMENT '瀛楀吀鍚嶇О',
  `dict_type` varchar(100) DEFAULT '' COMMENT '瀛楀吀绫诲瀷',
  `status` char(1) DEFAULT '0' COMMENT '鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀛楀吀绫诲瀷琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'鐢ㄦ埛鎬у埆','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鐢ㄦ埛鎬у埆鍒楄〃'),(2,'鑿滃崟鐘舵€?,'sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鑿滃崟鐘舵€佸垪琛?),(3,'绯荤粺寮€鍏?,'sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','绯荤粺寮€鍏冲垪琛?),(4,'浠诲姟鐘舵€?,'sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','浠诲姟鐘舵€佸垪琛?),(5,'绯荤粺鏄惁','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','绯荤粺鏄惁鍒楄〃'),(6,'閫氱煡绫诲瀷','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','閫氱煡绫诲瀷鍒楄〃'),(7,'閫氱煡鐘舵€?,'sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','閫氱煡鐘舵€佸垪琛?),(8,'鎿嶄綔绫诲瀷','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鎿嶄綔绫诲瀷鍒楄〃'),(9,'绯荤粺鐘舵€?,'sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鐧诲綍鐘舵€佸垪琛?);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '浠诲姟ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '浠诲姟鍚嶇О',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '浠诲姟缁勫悕',
  `method_name` varchar(500) DEFAULT '' COMMENT '浠诲姟鏂规硶',
  `method_params` varchar(50) DEFAULT NULL COMMENT '鏂规硶鍙傛暟',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron鎵ц琛ㄨ揪寮?,
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '璁″垝鎵ц閿欒绛栫暐锛?绔嬪嵆鎵ц 2鎵ц涓€娆?3鏀惧純鎵ц锛?,
  `concurrent` char(1) DEFAULT '1' COMMENT '鏄惁骞跺彂鎵ц锛?鍏佽 1绂佹锛?,
  `status` char(1) DEFAULT '0' COMMENT '鐘舵€侊紙0姝ｅ父 1鏆傚仠锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT '' COMMENT '澶囨敞淇℃伅',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀹氭椂浠诲姟璋冨害琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams','','0/10 * * * * ?','1','1','1','admin','2018-03-16 11:33:00','admin','2019-07-04 11:45:54',''),(2,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','0/20 * * * * ?','1','0','1','admin','2018-03-16 11:33:00','admin','2019-07-04 11:45:56','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '浠诲姟鏃ュ織ID',
  `job_name` varchar(64) NOT NULL COMMENT '浠诲姟鍚嶇О',
  `job_group` varchar(64) NOT NULL COMMENT '浠诲姟缁勫悕',
  `method_name` varchar(500) DEFAULT NULL COMMENT '浠诲姟鏂规硶',
  `method_params` varchar(50) DEFAULT NULL COMMENT '鏂规硶鍙傛暟',
  `job_message` varchar(500) DEFAULT NULL COMMENT '鏃ュ織淇℃伅',
  `status` char(1) DEFAULT '0' COMMENT '鎵ц鐘舵€侊紙0姝ｅ父 1澶辫触锛?,
  `exception_info` varchar(2000) DEFAULT '' COMMENT '寮傚父淇℃伅',
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=752 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瀹氭椂浠诲姟璋冨害鏃ュ織琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
INSERT INTO `sys_job_log` VALUES (1,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:41:23'),(2,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:41:23'),(3,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:41:30'),(4,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:41:30'),(5,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:41:40'),(6,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:41:41'),(7,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:41:50'),(8,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:00'),(9,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:00'),(10,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:10'),(11,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:20'),(12,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:20'),(13,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:30'),(14,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:40'),(15,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:40'),(16,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:42:50'),(17,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:00'),(18,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:00'),(19,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:10'),(20,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:20'),(21,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:20'),(22,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:30'),(23,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:40'),(24,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:40'),(25,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:43:50'),(26,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:00'),(27,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:00'),(28,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:10'),(29,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:20'),(30,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:20'),(31,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:30'),(32,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:40'),(33,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:40'),(34,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:44:50'),(35,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:00'),(36,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:00'),(37,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:10'),(38,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:20'),(39,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:20'),(40,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:30'),(41,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:40'),(42,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:40'),(43,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:45:50'),(44,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:00'),(45,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:00'),(46,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:10'),(47,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:20'),(48,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:20'),(49,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:30'),(50,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:40'),(51,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:40'),(52,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:46:50'),(53,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:00'),(54,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:00'),(55,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:10'),(56,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:20'),(57,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:20'),(58,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:30'),(59,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:40'),(60,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:40'),(61,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:47:50'),(62,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:00'),(63,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:00'),(64,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:10'),(65,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:20'),(66,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:20'),(67,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:30'),(68,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:40'),(69,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:40'),(70,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:48:50'),(71,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:00'),(72,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:00'),(73,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:10'),(74,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:20'),(75,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:20'),(76,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:30'),(77,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:40'),(78,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:40'),(79,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:49:50'),(80,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:00'),(81,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:00'),(82,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:10'),(83,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:20'),(84,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:20'),(85,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:30'),(86,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:40'),(87,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:40'),(88,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:50:50'),(89,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:00'),(90,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:00'),(91,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:10'),(92,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:20'),(93,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:20'),(94,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:30'),(95,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:40'),(96,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:40'),(97,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:51:50'),(98,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:00'),(99,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:00'),(100,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:10'),(101,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:20'),(102,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:20'),(103,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:30'),(104,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:40'),(105,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:40'),(106,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:52:50'),(107,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:00'),(108,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:00'),(109,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:10'),(110,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:20'),(111,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:20'),(112,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:30'),(113,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:40'),(114,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:40'),(115,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:53:50'),(116,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:00'),(117,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:00'),(118,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:10'),(119,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:20'),(120,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:20'),(121,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:30'),(122,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:40'),(123,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:40'),(124,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:54:50'),(125,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:00'),(126,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:00'),(127,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:10'),(128,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:20'),(129,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:20'),(130,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:30'),(131,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:40'),(132,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:40'),(133,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:55:50'),(134,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:00'),(135,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:00'),(136,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:10'),(137,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:20'),(138,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:20'),(139,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:30'),(140,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:40'),(141,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:40'),(142,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:56:50'),(143,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:00'),(144,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:00'),(145,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:10'),(146,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:20'),(147,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:20'),(148,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:30'),(149,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:40'),(150,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:40'),(151,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:57:50'),(152,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:00'),(153,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:00'),(154,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:10'),(155,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:20'),(156,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:20'),(157,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:30'),(158,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:40'),(159,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:40'),(160,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:58:50'),(161,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:00'),(162,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:00'),(163,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:10'),(164,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:20'),(165,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:20'),(166,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:30'),(167,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:40'),(168,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:40'),(169,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 19:59:50'),(170,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:00'),(171,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:00'),(172,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:10'),(173,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:20'),(174,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:20'),(175,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:30'),(176,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:40'),(177,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:40'),(178,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:00:50'),(179,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:00'),(180,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:00'),(181,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:10'),(182,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:20'),(183,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:20'),(184,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:30'),(185,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:40'),(186,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:40'),(187,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:01:50'),(188,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:00'),(189,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:00'),(190,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:10'),(191,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:20'),(192,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:20'),(193,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:30'),(194,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:40'),(195,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:40'),(196,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:02:50'),(197,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:00'),(198,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:00'),(199,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:10'),(200,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:20'),(201,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:20'),(202,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:30'),(203,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:40'),(204,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:40'),(205,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:03:50'),(206,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:00'),(207,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:00'),(208,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:10'),(209,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:20'),(210,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:20'),(211,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:30'),(212,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:40'),(213,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:40'),(214,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:04:50'),(215,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:00'),(216,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:00'),(217,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:10'),(218,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:20'),(219,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:20'),(220,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:30'),(221,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:40'),(222,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:40'),(223,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:05:50'),(224,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:00'),(225,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:00'),(226,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:10'),(227,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:20'),(228,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:20'),(229,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:30'),(230,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:40'),(231,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:40'),(232,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:06:50'),(233,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:00'),(234,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:00'),(235,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:10'),(236,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:20'),(237,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:20'),(238,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:30'),(239,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:40'),(240,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:40'),(241,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:07:50'),(242,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:00'),(243,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:00'),(244,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:10'),(245,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:20'),(246,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:20'),(247,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:30'),(248,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:40'),(249,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:40'),(250,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:08:50'),(251,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:00'),(252,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:00'),(253,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:10'),(254,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:20'),(255,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:20'),(256,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:30'),(257,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:40'),(258,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:40'),(259,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:09:50'),(260,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:00'),(261,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:00'),(262,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:10'),(263,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:20'),(264,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:20'),(265,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:30'),(266,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:40'),(267,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:40'),(268,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:10:50'),(269,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:00'),(270,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:00'),(271,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:10'),(272,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:20'),(273,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:20'),(274,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:30'),(275,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:40'),(276,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:40'),(277,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:11:50'),(278,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:00'),(279,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:00'),(280,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:10'),(281,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:20'),(282,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:20'),(283,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:30'),(284,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:40'),(285,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:40'),(286,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:12:50'),(287,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:00'),(288,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:00'),(289,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:10'),(290,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:20'),(291,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:20'),(292,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:30'),(293,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:40'),(294,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:40'),(295,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:13:50'),(296,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:00'),(297,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:00'),(298,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:10'),(299,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:20'),(300,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:20'),(301,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:30'),(302,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:40'),(303,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:40'),(304,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:14:50'),(305,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:00'),(306,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:00'),(307,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:10'),(308,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:20'),(309,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:20'),(310,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:30'),(311,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:40'),(312,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:40'),(313,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:15:50'),(314,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:00'),(315,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:00'),(316,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:10'),(317,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:20'),(318,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:20'),(319,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:30'),(320,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:40'),(321,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:40'),(322,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:16:50'),(323,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:00'),(324,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:00'),(325,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:10'),(326,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:20'),(327,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:20'),(328,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:30'),(329,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:40'),(330,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:40'),(331,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:17:50'),(332,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:00'),(333,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:00'),(334,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:10'),(335,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:20'),(336,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:20'),(337,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:30'),(338,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:40'),(339,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:40'),(340,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:18:50'),(341,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:00'),(342,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:00'),(343,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:10'),(344,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:20'),(345,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:20'),(346,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:30'),(347,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:40'),(348,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:40'),(349,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:19:50'),(350,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:00'),(351,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:00'),(352,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:10'),(353,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:20'),(354,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:20'),(355,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:30'),(356,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:40'),(357,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:40'),(358,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:20:50'),(359,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:00'),(360,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:00'),(361,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:10'),(362,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:20'),(363,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:20'),(364,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:30'),(365,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:40'),(366,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:40'),(367,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:21:50'),(368,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:00'),(369,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:00'),(370,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:10'),(371,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:20'),(372,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:20'),(373,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:30'),(374,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:40'),(375,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:40'),(376,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:22:50'),(377,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:00'),(378,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:00'),(379,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:10'),(380,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:20'),(381,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:20'),(382,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:30'),(383,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:40'),(384,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:40'),(385,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:23:50'),(386,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:00'),(387,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:00'),(388,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:10'),(389,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:20'),(390,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:20'),(391,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:30'),(392,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:40'),(393,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:40'),(394,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:24:50'),(395,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:00'),(396,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:00'),(397,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:10'),(398,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:20'),(399,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:20'),(400,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:30'),(401,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:40'),(402,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:40'),(403,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:25:50'),(404,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:00'),(405,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:00'),(406,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:10'),(407,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:20'),(408,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:20'),(409,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:30'),(410,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:40'),(411,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:40'),(412,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:26:50'),(413,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:00'),(414,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:00'),(415,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:10'),(416,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:20'),(417,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:20'),(418,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:30'),(419,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:40'),(420,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:40'),(421,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:27:50'),(422,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:00'),(423,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:00'),(424,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:10'),(425,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:20'),(426,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:20'),(427,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:30'),(428,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:40'),(429,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:40'),(430,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:28:50'),(431,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:00'),(432,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:00'),(433,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:10'),(434,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:20'),(435,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:20'),(436,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:30'),(437,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:40'),(438,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:40'),(439,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:29:50'),(440,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:00'),(441,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:00'),(442,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:10'),(443,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:20'),(444,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:20'),(445,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:30'),(446,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:40'),(447,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:40'),(448,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:30:50'),(449,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:00'),(450,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:00'),(451,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:10'),(452,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:20'),(453,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:20'),(454,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:30'),(455,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:40'),(456,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:40'),(457,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:31:50'),(458,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:00'),(459,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:00'),(460,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:10'),(461,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:20'),(462,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:20'),(463,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:30'),(464,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:40'),(465,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:40'),(466,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:32:50'),(467,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:00'),(468,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:00'),(469,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:10'),(470,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:20'),(471,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:20'),(472,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:30'),(473,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:40'),(474,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:40'),(475,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:33:50'),(476,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:00'),(477,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:00'),(478,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:10'),(479,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:20'),(480,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:20'),(481,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:30'),(482,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:40'),(483,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:40'),(484,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:34:50'),(485,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:00'),(486,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:00'),(487,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:10'),(488,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:20'),(489,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:20'),(490,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:30'),(491,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:40'),(492,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:40'),(493,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:35:50'),(494,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:00'),(495,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:00'),(496,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:10'),(497,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:20'),(498,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:20'),(499,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:30'),(500,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:40'),(501,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:40'),(502,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:36:50'),(503,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:00'),(504,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:00'),(505,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:10'),(506,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:20'),(507,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:20'),(508,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:30'),(509,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:40'),(510,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:40'),(511,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:37:50'),(512,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:00'),(513,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:00'),(514,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:10'),(515,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:20'),(516,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:20'),(517,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:30'),(518,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:40'),(519,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:40'),(520,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:38:50'),(521,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:00'),(522,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:00'),(523,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:10'),(524,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:20'),(525,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:20'),(526,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:30'),(527,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:40'),(528,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:40'),(529,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:39:50'),(530,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:00'),(531,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:00'),(532,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:10'),(533,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:20'),(534,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:20'),(535,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:30'),(536,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:40'),(537,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:40'),(538,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:40:50'),(539,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:00'),(540,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:00'),(541,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:10'),(542,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:20'),(543,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:20'),(544,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:30'),(545,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:40'),(546,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:40'),(547,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:41:50'),(548,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:00'),(549,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:00'),(550,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:10'),(551,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:20'),(552,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:20'),(553,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:30'),(554,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:40'),(555,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:40'),(556,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:42:50'),(557,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:00'),(558,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:00'),(559,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:10'),(560,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:20'),(561,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:20'),(562,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:30'),(563,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:40'),(564,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:40'),(565,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:43:50'),(566,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:00'),(567,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:00'),(568,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:10'),(569,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:20'),(570,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:20'),(571,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:30'),(572,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:40'),(573,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:40'),(574,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:44:50'),(575,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:00'),(576,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:00'),(577,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:10'),(578,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:20'),(579,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:20'),(580,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:30'),(581,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:40'),(582,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:40'),(583,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:45:50'),(584,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:00'),(585,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:00'),(586,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:10'),(587,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:20'),(588,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:20'),(589,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:30'),(590,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:40'),(591,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:40'),(592,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:46:50'),(593,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:00'),(594,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:00'),(595,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:10'),(596,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:20'),(597,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:20'),(598,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:30'),(599,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:40'),(600,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:40'),(601,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:47:50'),(602,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:00'),(603,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:00'),(604,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:10'),(605,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:20'),(606,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:20'),(607,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:30'),(608,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:40'),(609,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:40'),(610,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:48:50'),(611,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:00'),(612,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:00'),(613,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:10'),(614,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:20'),(615,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:20'),(616,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:30'),(617,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:40'),(618,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:40'),(619,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:49:50'),(620,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:00'),(621,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:00'),(622,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:10'),(623,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:20'),(624,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:20'),(625,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:30'),(626,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:40'),(627,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:40'),(628,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:50:50'),(629,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:00'),(630,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:00'),(631,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:10'),(632,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:20'),(633,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:20'),(634,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:30'),(635,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:40'),(636,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:40'),(637,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:51:50'),(638,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:00'),(639,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:00'),(640,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:10'),(641,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:20'),(642,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:20'),(643,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:30'),(644,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:40'),(645,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:40'),(646,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:52:50'),(647,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:00'),(648,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:00'),(649,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:10'),(650,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:20'),(651,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:20'),(652,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:30'),(653,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:40'),(654,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:40'),(655,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:53:50'),(656,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:00'),(657,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:00'),(658,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:10'),(659,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:20'),(660,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:20'),(661,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:30'),(662,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:40'),(663,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:40'),(664,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:54:50'),(665,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:00'),(666,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:00'),(667,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:10'),(668,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:20'),(669,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:20'),(670,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:30'),(671,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:40'),(672,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:40'),(673,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:55:50'),(674,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:00'),(675,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:00'),(676,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:10'),(677,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:20'),(678,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:20'),(679,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:30'),(680,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:40'),(681,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:40'),(682,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:56:50'),(683,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:00'),(684,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:00'),(685,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:10'),(686,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:20'),(687,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:20'),(688,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:30'),(689,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:40'),(690,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:40'),(691,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:57:50'),(692,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:00'),(693,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:00'),(694,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:10'),(695,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:20'),(696,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:20'),(697,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:30'),(698,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:40'),(699,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:40'),(700,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:58:50'),(701,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:00'),(702,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:00'),(703,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:10'),(704,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:20'),(705,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:20'),(706,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:30'),(707,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:40'),(708,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:40'),(709,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 20:59:50'),(710,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:00'),(711,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:00'),(712,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:10'),(713,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:20'),(714,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:20'),(715,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:30'),(716,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:40'),(717,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:40'),(718,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:00:50'),(719,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:00'),(720,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:00'),(721,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:10'),(722,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:20'),(723,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:20'),(724,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:30'),(725,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:40'),(726,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:40'),(727,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:01:50'),(728,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:02:00'),(729,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:02:00'),(730,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-03 21:02:10'),(731,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:43:40'),(732,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:43:40'),(733,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:43:50'),(734,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:00'),(735,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:00'),(736,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:10'),(737,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:20'),(738,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:20'),(739,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:30'),(740,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:40'),(741,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:40'),(742,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:44:50'),(743,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:00'),(744,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:00'),(745,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:10'),(746,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:20'),(747,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:20'),(748,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:30'),(749,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:40'),(750,'ryTask','绯荤粺榛樿锛堟湁鍙傦級','ryParams','ry','ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:40'),(751,'ryTask','绯荤粺榛樿锛堟棤鍙傦級','ryNoParams',NULL,'ryTask 鎬诲叡鑰楁椂锛?姣','0','','2019-07-04 11:45:50');
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '璁块棶ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '鐧诲綍璐﹀彿',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '鐧诲綍IP鍦板潃',
  `login_location` varchar(255) DEFAULT '' COMMENT '鐧诲綍鍦扮偣',
  `browser` varchar(50) DEFAULT '' COMMENT '娴忚鍣ㄧ被鍨?,
  `os` varchar(50) DEFAULT '' COMMENT '鎿嶄綔绯荤粺',
  `status` char(1) DEFAULT '0' COMMENT '鐧诲綍鐘舵€侊紙0鎴愬姛 1澶辫触锛?,
  `msg` varchar(255) DEFAULT '' COMMENT '鎻愮ず娑堟伅',
  `login_time` datetime DEFAULT NULL COMMENT '璁块棶鏃堕棿',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='绯荤粺璁块棶璁板綍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (108,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-03 18:34:04'),(109,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-03 18:46:40'),(111,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-03 19:22:51'),(112,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-04 11:43:55'),(113,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-04 13:35:35'),(114,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-04 14:51:02'),(115,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-04 14:51:04'),(116,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-04 14:58:26'),(117,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-08 19:28:37'),(118,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-08 19:52:27'),(119,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-08 20:28:27'),(120,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-08 20:34:15'),(121,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-09 13:54:36'),(122,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','瀵嗙爜杈撳叆閿欒1娆?,'2019-07-15 14:54:55'),(123,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','瀵嗙爜杈撳叆閿欒2娆?,'2019-07-15 14:55:04'),(124,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','瀵嗙爜杈撳叆閿欒3娆?,'2019-07-15 14:55:13'),(125,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 14:56:01'),(126,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 15:12:27'),(127,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 15:21:22'),(128,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 15:23:49'),(129,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 15:28:29'),(130,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 15:55:46'),(131,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 15:58:03'),(132,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 16:22:23'),(133,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 16:26:43'),(134,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 16:32:22'),(135,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-15 16:52:17'),(136,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-16 09:41:44'),(137,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 09:41:47'),(138,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-16 09:56:40'),(139,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-16 09:58:05'),(140,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 09:58:13'),(141,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 10:04:45'),(142,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-16 10:05:13'),(143,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-16 10:05:34'),(144,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 10:05:52'),(145,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 19:32:28'),(146,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 20:01:44'),(147,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 20:02:57'),(148,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','瀵嗙爜杈撳叆閿欒1娆?,'2019-07-16 20:23:13'),(149,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 20:23:19'),(150,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-16 20:34:34'),(151,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-17 13:38:03'),(152,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 13:38:07'),(153,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-17 13:39:22'),(154,'ytj','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-17 13:39:31'),(155,'ytj','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 13:39:35'),(156,'ytj','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-17 13:41:10'),(157,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 13:41:16'),(158,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-17 13:57:14'),(159,'ytj','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 13:57:19'),(160,'admin','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','1','瀵嗙爜杈撳叆閿欒1娆?,'2019-07-17 14:00:21'),(161,'admin','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-17 14:00:28'),(162,'admin','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:00:31'),(163,'admin','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-17 14:01:11'),(164,'hhe','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:01:18'),(165,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:11:25'),(166,'ytj','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:23:49'),(167,'ytj','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-17 14:24:09'),(168,'hhe','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:24:16'),(169,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-17 14:25:08'),(170,'hhe','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:25:16'),(171,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:36:33'),(172,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-17 14:36:47'),(173,'hhe','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:36:52'),(174,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:54:25'),(175,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-17 14:55:41'),(176,'hhe','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-17 14:56:25'),(177,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-19 09:54:09'),(178,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 09:54:11'),(179,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 10:35:38'),(180,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 13:07:26'),(181,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 13:09:36'),(182,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 13:17:53'),(183,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 13:36:42'),(184,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 13:41:22'),(185,'admin','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','1','瀵嗙爜杈撳叆閿欒1娆?,'2019-07-19 14:36:07'),(186,'admin','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-19 14:36:13'),(187,'admin','127.0.0.1','鍐呯綉IP','Microsoft Edge','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 14:36:16'),(188,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-19 14:44:54'),(189,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 14:44:57'),(190,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 14:52:04'),(191,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 14:57:29'),(192,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-19 14:59:05'),(193,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 14:59:08'),(194,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-19 16:56:20'),(195,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-20 14:49:26'),(196,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-20 15:13:42'),(197,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-20 15:20:20'),(198,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-20 15:20:23'),(199,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-20 15:20:25'),(200,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 16:51:48'),(201,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 18:17:54'),(202,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 19:26:16'),(203,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 19:42:07'),(204,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 19:57:16'),(205,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 20:08:16'),(206,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-21 20:10:00'),(207,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 20:10:03'),(208,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-21 20:21:15'),(209,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 20:21:18'),(210,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:04:01'),(211,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:15:38'),(212,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:17:09'),(213,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:21:28'),(214,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:24:17'),(215,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-21 22:26:06'),(216,'nmw','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:26:17'),(217,'nmw','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:28:45'),(218,'nmw','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:34:53'),(219,'nmw','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-21 22:35:35'),(220,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:35:38'),(221,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-21 22:36:09'),(222,'nmw','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:36:16'),(223,'admin','127.0.0.1','鍐呯綉IP','Firefox','Windows 10','1','楠岃瘉鐮侀敊璇?,'2019-07-21 22:36:32'),(224,'admin','127.0.0.1','鍐呯綉IP','Firefox','Windows 10','1','瀵嗙爜杈撳叆閿欒1娆?,'2019-07-21 22:36:38'),(225,'admin','127.0.0.1','鍐呯綉IP','Firefox','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:36:43'),(226,'nmw','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','閫€鍑烘垚鍔?,'2019-07-21 22:39:26'),(227,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 22:40:54'),(228,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 23:02:17'),(229,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 23:05:49'),(230,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 23:11:23'),(231,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 23:12:50'),(232,'admin','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','0','鐧诲綍鎴愬姛','2019-07-21 23:17:15');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '鑿滃崟ID',
  `menu_name` varchar(50) NOT NULL COMMENT '鑿滃崟鍚嶇О',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '鐖惰彍鍗旾D',
  `order_num` int(4) DEFAULT '0' COMMENT '鏄剧ず椤哄簭',
  `url` varchar(200) DEFAULT '#' COMMENT '璇锋眰鍦板潃',
  `target` varchar(20) DEFAULT '' COMMENT '鎵撳紑鏂瑰紡锛坢enuItem椤电 menuBlank鏂扮獥鍙ｏ級',
  `menu_type` char(1) DEFAULT '' COMMENT '鑿滃崟绫诲瀷锛圡鐩綍 C鑿滃崟 F鎸夐挳锛?,
  `visible` char(1) DEFAULT '0' COMMENT '鑿滃崟鐘舵€侊紙0鏄剧ず 1闅愯棌锛?,
  `perms` varchar(100) DEFAULT NULL COMMENT '鏉冮檺鏍囪瘑',
  `icon` varchar(100) DEFAULT '#' COMMENT '鑿滃崟鍥炬爣',
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT '' COMMENT '澶囨敞',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鑿滃崟鏉冮檺琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'绯荤粺绠＄悊',0,1,'#','','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','绯荤粺绠＄悊鐩綍'),(2,'绯荤粺鐩戞帶',0,2,'#','','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','绯荤粺鐩戞帶鐩綍'),(3,'绯荤粺宸ュ叿',0,3,'#','','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','绯荤粺宸ュ叿鐩綍'),(100,'鐢ㄦ埛绠＄悊',1,1,'/system/user','','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鐢ㄦ埛绠＄悊鑿滃崟'),(101,'瑙掕壊绠＄悊',1,2,'/system/role','','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','瑙掕壊绠＄悊鑿滃崟'),(102,'鑿滃崟绠＄悊',1,3,'/system/menu','','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鑿滃崟绠＄悊鑿滃崟'),(103,'閮ㄩ棬绠＄悊',1,4,'/system/dept','','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','閮ㄩ棬绠＄悊鑿滃崟'),(104,'宀椾綅绠＄悊',1,5,'/system/post','','C','0','system:post:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','宀椾綅绠＄悊鑿滃崟'),(105,'瀛楀吀绠＄悊',1,6,'/system/dict','','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','瀛楀吀绠＄悊鑿滃崟'),(106,'鍙傛暟璁剧疆',1,7,'/system/config','','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍙傛暟璁剧疆鑿滃崟'),(107,'閫氱煡鍏憡',1,8,'/system/notice','','C','0','system:notice:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','閫氱煡鍏憡鑿滃崟'),(108,'鏃ュ織绠＄悊',1,9,'#','','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鏃ュ織绠＄悊鑿滃崟'),(109,'鍦ㄧ嚎鐢ㄦ埛',2,1,'/monitor/online','','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鍦ㄧ嚎鐢ㄦ埛鑿滃崟'),(110,'瀹氭椂浠诲姟',2,2,'/monitor/job','','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','瀹氭椂浠诲姟鑿滃崟'),(111,'鏁版嵁鐩戞帶',2,3,'/monitor/data','','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鏁版嵁鐩戞帶鑿滃崟'),(112,'鏈嶅姟鐩戞帶',2,3,'/monitor/server','','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鏈嶅姟鐩戞帶鑿滃崟'),(113,'琛ㄥ崟鏋勫缓',3,1,'/tool/build','','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','琛ㄥ崟鏋勫缓鑿滃崟'),(114,'浠ｇ爜鐢熸垚',3,2,'/tool/gen','','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','浠ｇ爜鐢熸垚鑿滃崟'),(115,'绯荤粺鎺ュ彛',3,3,'/tool/swagger','','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','绯荤粺鎺ュ彛鑿滃崟'),(500,'鎿嶄綔鏃ュ織',108,1,'/monitor/operlog','','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鎿嶄綔鏃ュ織鑿滃崟'),(501,'鐧诲綍鏃ュ織',108,2,'/monitor/logininfor','','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','鐧诲綍鏃ュ織鑿滃崟'),(1000,'鐢ㄦ埛鏌ヨ',100,1,'#','','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'鐢ㄦ埛鏂板',100,2,'#','','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'鐢ㄦ埛淇敼',100,3,'#','','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'鐢ㄦ埛鍒犻櫎',100,4,'#','','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'鐢ㄦ埛瀵煎嚭',100,5,'#','','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'鐢ㄦ埛瀵煎叆',100,6,'#','','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'閲嶇疆瀵嗙爜',100,7,'#','','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'瑙掕壊鏌ヨ',101,1,'#','','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'瑙掕壊鏂板',101,2,'#','','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'瑙掕壊淇敼',101,3,'#','','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'瑙掕壊鍒犻櫎',101,4,'#','','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'瑙掕壊瀵煎嚭',101,5,'#','','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'鑿滃崟鏌ヨ',102,1,'#','','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'鑿滃崟鏂板',102,2,'#','','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'鑿滃崟淇敼',102,3,'#','','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'鑿滃崟鍒犻櫎',102,4,'#','','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'閮ㄩ棬鏌ヨ',103,1,'#','','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'閮ㄩ棬鏂板',103,2,'#','','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'閮ㄩ棬淇敼',103,3,'#','','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'閮ㄩ棬鍒犻櫎',103,4,'#','','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'宀椾綅鏌ヨ',104,1,'#','','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'宀椾綅鏂板',104,2,'#','','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'宀椾綅淇敼',104,3,'#','','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'宀椾綅鍒犻櫎',104,4,'#','','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'宀椾綅瀵煎嚭',104,5,'#','','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'瀛楀吀鏌ヨ',105,1,'#','','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'瀛楀吀鏂板',105,2,'#','','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'瀛楀吀淇敼',105,3,'#','','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'瀛楀吀鍒犻櫎',105,4,'#','','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'瀛楀吀瀵煎嚭',105,5,'#','','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'鍙傛暟鏌ヨ',106,1,'#','','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'鍙傛暟鏂板',106,2,'#','','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'鍙傛暟淇敼',106,3,'#','','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'鍙傛暟鍒犻櫎',106,4,'#','','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'鍙傛暟瀵煎嚭',106,5,'#','','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'鍏憡鏌ヨ',107,1,'#','','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'鍏憡鏂板',107,2,'#','','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'鍏憡淇敼',107,3,'#','','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'鍏憡鍒犻櫎',107,4,'#','','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'鎿嶄綔鏌ヨ',500,1,'#','','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'鎿嶄綔鍒犻櫎',500,2,'#','','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'璇︾粏淇℃伅',500,3,'#','','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'鏃ュ織瀵煎嚭',500,4,'#','','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'鐧诲綍鏌ヨ',501,1,'#','','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'鐧诲綍鍒犻櫎',501,2,'#','','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'鏃ュ織瀵煎嚭',501,3,'#','','F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'鍦ㄧ嚎鏌ヨ',109,1,'#','','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'鎵归噺寮洪€€',109,2,'#','','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'鍗曟潯寮洪€€',109,3,'#','','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'浠诲姟鏌ヨ',110,1,'#','','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'浠诲姟鏂板',110,2,'#','','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'浠诲姟淇敼',110,3,'#','','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'浠诲姟鍒犻櫎',110,4,'#','','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'鐘舵€佷慨鏀?,110,5,'#','','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'浠诲姟璇︾粏',110,6,'#','','F','0','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'浠诲姟瀵煎嚭',110,7,'#','','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'鐢熸垚鏌ヨ',114,1,'#','','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'鐢熸垚浠ｇ爜',114,2,'#','','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2000,'鐑熷彴鐢靛巶',2005,5,'/power/powerinfo','menuItem','C','0','power:powerinfo:view','#','admin','2018-03-01 00:00:00','admin','2019-07-16 19:47:59','鐢靛巶鑿滃崟'),(2001,'鐢靛巶鏌ヨ',2000,1,'#','','F','0','power:powerinfo:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2002,'鐢靛巶鏂板',2000,2,'#','','F','0','power:powerinfo:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2003,'鐢靛巶淇敼',2000,3,'#','','F','0','power:powerinfo:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2004,'鐢靛巶鍒犻櫎',2000,4,'#','','F','0','power:powerinfo:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2005,'鐢靛巶鏁版嵁',0,5,'#','menuItem','M','0',NULL,'fa fa-industry','admin','2019-07-08 19:58:24','',NULL,''),(2007,'鏁版嵁缁熻',2005,6,'/power/powerinfo','menuItem','C','0','power:powerinfo:view','#','admin','2019-07-16 19:49:43','admin','2019-07-19 16:57:43',''),(2008,'鐢靛巶鏂板',2007,2,'#','','F','0','power:powerinfo:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2009,'鐢靛巶鏌ヨ',2007,1,'#','','F','0','power:powerinfo:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2010,'鐢靛巶淇敼',2007,3,'#','','F','0','power:powerinfo:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2011,'鐢靛巶鍒犻櫎',2007,4,'#','','F','0','power:powerinfo:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2017,'鐢靛姏鍏徃',2005,1,'/power/powernum','menuItem','C','0','power:powernum:view','#','admin','2018-03-01 00:00:00','admin','2019-07-20 15:14:03','鐢靛姏鍏徃鑿滃崟'),(2018,'鐢靛姏鍏徃鏌ヨ',2017,1,'#','','F','0','power:powernum:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2019,'鐢靛姏鍏徃鏂板',2017,2,'#','','F','0','power:powernum:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2020,'鐢靛姏鍏徃淇敼',2017,3,'#','','F','0','power:powernum:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2021,'鐢靛姏鍏徃鍒犻櫎',2017,4,'#','','F','0','power:powernum:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '鍏憡ID',
  `notice_title` varchar(50) NOT NULL COMMENT '鍏憡鏍囬',
  `notice_type` char(1) NOT NULL COMMENT '鍏憡绫诲瀷锛?閫氱煡 2鍏憡锛?,
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '鍏憡鍐呭',
  `status` char(1) DEFAULT '0' COMMENT '鍏憡鐘舵€侊紙0姝ｅ父 1鍏抽棴锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(255) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='閫氱煡鍏憡琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'娓╅Θ鎻愰啋锛氬鍖栫増','2','杩欐槸涓€涓鍖栫増','0','admin','2018-03-16 11:33:00','admin','2019-07-03 20:11:12','绠＄悊鍛?);
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '鏃ュ織涓婚敭',
  `title` varchar(50) DEFAULT '' COMMENT '妯″潡鏍囬',
  `business_type` int(2) DEFAULT '0' COMMENT '涓氬姟绫诲瀷锛?鍏跺畠 1鏂板 2淇敼 3鍒犻櫎锛?,
  `method` varchar(100) DEFAULT '' COMMENT '鏂规硶鍚嶇О',
  `operator_type` int(1) DEFAULT '0' COMMENT '鎿嶄綔绫诲埆锛?鍏跺畠 1鍚庡彴鐢ㄦ埛 2鎵嬫満绔敤鎴凤級',
  `oper_name` varchar(50) DEFAULT '' COMMENT '鎿嶄綔浜哄憳',
  `dept_name` varchar(50) DEFAULT '' COMMENT '閮ㄩ棬鍚嶇О',
  `oper_url` varchar(255) DEFAULT '' COMMENT '璇锋眰URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '涓绘満鍦板潃',
  `oper_location` varchar(255) DEFAULT '' COMMENT '鎿嶄綔鍦扮偣',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '璇锋眰鍙傛暟',
  `status` int(1) DEFAULT '0' COMMENT '鎿嶄綔鐘舵€侊紙0姝ｅ父 1寮傚父锛?,
  `error_msg` varchar(2000) DEFAULT '' COMMENT '閿欒娑堟伅',
  `oper_time` datetime DEFAULT NULL COMMENT '鎿嶄綔鏃堕棿',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鎿嶄綔鏃ュ織璁板綍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'涓汉淇℃伅',2,'com.ruoyi.web.controller.system.SysProfileController.update()',1,'admin','鐮斿彂閮ㄩ棬','/system/user/profile/update','127.0.0.1','鍐呯綉IP','{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"寮犵弬鐜甛" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 18:51:44'),(101,'涓汉淇℃伅',2,'com.ruoyi.web.controller.system.SysProfileController.update()',1,'admin','鐮斿彂閮ㄩ棬','/system/user/profile/update','127.0.0.1','鍐呯綉IP','{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"寮犵弬鐜甛" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 18:51:48'),(102,'鐢ㄦ埛绠＄悊',3,'com.ruoyi.web.controller.system.SysUserController.remove()',1,'admin','鐮斿彂閮ㄩ棬','/system/user/remove','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"2\" ]\r\n}',0,NULL,'2019-07-03 19:28:54'),(103,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"鏃燶" ],\r\n  \"deptName\" : [ \"鐝傜幃绉戞妧\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"寮犵弬鐜甛" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"zkw@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 19:30:38'),(104,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.run()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/run','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 19:41:12'),(105,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.run()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/run','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 19:41:23'),(106,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/changeStatus','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 19:41:25'),(107,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.run()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/run','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-03 19:41:28'),(108,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"jobName\" : [ \"ryTask\" ],\r\n  \"jobGroup\" : [ \"绯荤粺榛樿锛堟棤鍙傦級\" ],\r\n  \"methodName\" : [ \"ryNoParams\" ],\r\n  \"methodParams\" : [ \"\" ],\r\n  \"cronExpression\" : [ \"0/10 * * * * ?\" ],\r\n  \"misfirePolicy\" : [ \"1\" ],\r\n  \"concurrent\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2019-07-03 19:41:35'),(109,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.run()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/run','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"2\" ]\r\n}',0,NULL,'2019-07-03 19:41:41'),(110,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/changeStatus','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 19:41:43'),(111,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"jobName\" : [ \"ryTask\" ],\r\n  \"jobGroup\" : [ \"绯荤粺榛樿锛堟湁鍙傦級\" ],\r\n  \"methodName\" : [ \"ryParams\" ],\r\n  \"methodParams\" : [ \"ry\" ],\r\n  \"cronExpression\" : [ \"0/20 * * * * ?\" ],\r\n  \"misfirePolicy\" : [ \"1\" ],\r\n  \"concurrent\" : [ \"0\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2019-07-03 19:41:53'),(112,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"鏃燶" ],\r\n  \"deptName\" : [ \"鐝傜幃闆嗗洟\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"寮犵弬鐜甛" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"zkw@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 20:04:09'),(113,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"鐝傜幃闆嗗洟\" ],\r\n  \"deptName\" : [ \"鍖椾含鍒嗗叕鍙竆" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"鏂囩埛\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"cgw@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 20:04:39'),(114,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"102\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"鐝傜幃闆嗗洟\" ],\r\n  \"deptName\" : [ \"鍘﹂棬鍒嗗叕鍙竆" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"闆洴\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"www@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 20:08:58'),(115,'閫氱煡鍏憡',2,'com.ruoyi.web.controller.system.SysNoticeController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/notice/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"noticeId\" : [ \"1\" ],\r\n  \"noticeTitle\" : [ \"娓╅Θ鎻愰啋锛氬鍖栫増\" ],\r\n  \"noticeType\" : [ \"2\" ],\r\n  \"noticeContent\" : [ \"杩欐槸涓€涓鍖栫増\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-03 20:11:12'),(116,'閫氱煡鍏憡',3,'com.ruoyi.web.controller.system.SysNoticeController.remove()',1,'admin','鐮斿彂閮ㄩ棬','/system/notice/remove','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"2\" ]\r\n}',0,NULL,'2019-07-03 20:11:18'),(117,'鐧婚檰鏃ュ織',3,'com.ruoyi.web.controller.monitor.SysLogininforController.remove()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/logininfor/remove','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"107,106,105,104,103,102\" ]\r\n}',0,NULL,'2019-07-03 20:12:14'),(118,'鐧婚檰鏃ュ織',3,'com.ruoyi.web.controller.monitor.SysLogininforController.remove()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/logininfor/remove','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"101,100\" ]\r\n}',0,NULL,'2019-07-03 20:12:19'),(119,'鐧婚檰鏃ュ織',3,'com.ruoyi.web.controller.monitor.SysLogininforController.remove()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/logininfor/remove','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"110\" ]\r\n}',0,NULL,'2019-07-03 20:12:23'),(120,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/changeStatus','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-04 11:45:54'),(121,'瀹氭椂浠诲姟',2,'com.ruoyi.quartz.controller.SysJobController.changeStatus()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/job/changeStatus','127.0.0.1','鍐呯綉IP','{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"status\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-04 11:45:56'),(122,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/role/authDataScope','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"鏅€氳鑹瞈" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,105,106\" ]\r\n}',0,NULL,'2019-07-04 11:47:57'),(123,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/role/authDataScope','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"鏅€氳鑹瞈" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,105,106,107,102,108\" ]\r\n}',0,NULL,'2019-07-04 13:51:42'),(124,'鍦ㄧ嚎鐢ㄦ埛',7,'com.ruoyi.web.controller.monitor.SysUserOnlineController.batchForceLogout()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/online/batchForceLogout','127.0.0.1','鍐呯綉IP','{\r\n  \"ids[]\" : [ \"ae46066e-49d2-4c26-b373-e25b031ab415\" ]\r\n}',0,NULL,'2019-07-04 14:59:31'),(125,'鍦ㄧ嚎鐢ㄦ埛',7,'com.ruoyi.web.controller.monitor.SysUserOnlineController.batchForceLogout()',1,'admin','鐮斿彂閮ㄩ棬','/monitor/online/batchForceLogout','127.0.0.1','鍐呯綉IP','{\r\n  \"ids[]\" : [ \"edf8ffdd-b82a-4bf3-b46d-b77948734495\" ]\r\n}',0,NULL,'2019-07-04 14:59:36'),(126,'浠ｇ爜鐢熸垚',8,'com.ruoyi.generator.controller.GenController.genCode()',1,'admin','鐮斿彂閮ㄩ棬','/tool/gen/genCode/sys_powerinfo','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-08 19:28:57'),(127,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/role/authDataScope','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"绠＄悊鍛榎" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}',0,NULL,'2019-07-08 19:52:45'),(128,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/user/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"寮犵弬鐜甛" ],\r\n  \"dept.deptName\" : [ \"鐮斿彂閮ㄩ棬\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"绠＄悊鍛榎" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}',0,NULL,'2019-07-08 19:53:05'),(129,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"鐢靛巶\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-bolt\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:54:46'),(130,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛巶\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-bolt\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:55:35'),(131,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛巶\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:56:00'),(132,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"鐢靛巶\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:56:12'),(133,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛巶\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-bolt\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:56:20'),(134,'鑿滃崟绠＄悊',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/add','127.0.0.1','鍐呯綉IP','{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"鐢靛巶鏁版嵁\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-industry\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:58:24'),(135,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛巶\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-08 19:58:37'),(136,'鐢靛巶',1,'com.ruoyi.web.controller.power.PowerinfoController.addSave()',1,'admin',NULL,'/power/powerinfo/add','127.0.0.1','鍐呯綉IP','{\r\n  \"powerCode01\" : [ \"20\" ],\r\n  \"powerCode02\" : [ \"1\" ],\r\n  \"powerCode03\" : [ \"1\" ],\r\n  \"powerCode04\" : [ \"1\" ],\r\n  \"powerCode05\" : [ \"\" ],\r\n  \"powerCode06\" : [ \"\" ],\r\n  \"powerCode07\" : [ \"\" ],\r\n  \"powerCode08\" : [ \"\" ],\r\n  \"powerCode09\" : [ \"\" ],\r\n  \"powerCode10\" : [ \"\" ],\r\n  \"powerCode11\" : [ \"\" ],\r\n  \"powerCode12\" : [ \"\" ],\r\n  \"powerCode13\" : [ \"\" ],\r\n  \"powerCode14\" : [ \"\" ],\r\n  \"powerCode15\" : [ \"\" ],\r\n  \"powerCode16\" : [ \"\" ],\r\n  \"powerCode17\" : [ \"\" ],\r\n  \"powerCode18\" : [ \"\" ],\r\n  \"powerCode19\" : [ \"\" ],\r\n  \"powerCode20\" : [ \"\" ],\r\n  \"powerNum01\" : [ \"31\" ],\r\n  \"powerNum02\" : [ \"\" ],\r\n  \"powerNum03\" : [ \"\" ],\r\n  \"powerNum04\" : [ \"\" ],\r\n  \"powerNum05\" : [ \"\" ],\r\n  \"powerNum06\" : [ \"\" ],\r\n  \"powerNum07\" : [ \"\" ],\r\n  \"powerNum08\" : [ \"\" ],\r\n  \"powerNum09\" : [ \"\" ],\r\n  \"powerNum10\" : [ \"\" ],\r\n  \"powerNum11\" : [ \"\" ],\r\n  \"powerNum12\" : [ \"\" ],\r\n  \"powerNum13\" : [ \"\" ],\r\n  \"powerNum14\" : [ \"\" ],\r\n  \"powerNum15\" : [ \"\" ],\r\n  \"powerNum16\" : [ \"\" ],\r\n  \"powerNum17\" : [ \"\" ],\r\n  \"powerNum18\" : [ \"\" ],\r\n  \"powerNum19\" : [ \"\" ],\r\n  \"powerNum20\" : [ \"\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"delFlag\" : [ \"\" ],\r\n  \"createBy\" : [ \"\" ],\r\n  \"createTime\" : [ \"\" ],\r\n  \"updateBy\" : [ \"\" ],\r\n  \"updateTime\" : [ \"\" ]\r\n}',0,NULL,'2019-07-08 20:47:29'),(137,'鐢靛巶',2,'com.ruoyi.web.controller.power.PowerinfoController.editSave()',1,'admin',NULL,'/power/powerinfo/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"powerInfoId\" : [ \"10\" ],\r\n  \"powerCode01\" : [ \"10.90000000\" ],\r\n  \"powerCode02\" : [ \"3\" ],\r\n  \"powerCode03\" : [ \"0E-8\" ],\r\n  \"powerCode04\" : [ \"0E-8\" ],\r\n  \"powerCode05\" : [ \"0E-8\" ],\r\n  \"powerCode06\" : [ \"0E-8\" ],\r\n  \"powerCode07\" : [ \"0E-8\" ],\r\n  \"powerCode08\" : [ \"0E-8\" ],\r\n  \"powerCode09\" : [ \"0E-8\" ],\r\n  \"powerCode10\" : [ \"0E-8\" ],\r\n  \"powerCode11\" : [ \"0E-8\" ],\r\n  \"powerCode12\" : [ \"0E-8\" ],\r\n  \"powerCode13\" : [ \"0E-8\" ],\r\n  \"powerCode14\" : [ \"0E-8\" ],\r\n  \"powerCode15\" : [ \"0E-8\" ],\r\n  \"powerCode16\" : [ \"0E-8\" ],\r\n  \"powerCode17\" : [ \"0E-8\" ],\r\n  \"powerCode18\" : [ \"0E-8\" ],\r\n  \"powerCode19\" : [ \"0E-8\" ],\r\n  \"powerCode20\" : [ \"0E-8\" ],\r\n  \"powerNum01\" : [ \"142.00000000\" ],\r\n  \"powerNum02\" : [ \"44\" ],\r\n  \"powerNum03\" : [ \"0E-8\" ],\r\n  \"powerNum04\" : [ \"0E-8\" ],\r\n  \"powerNum05\" : [ \"0E-8\" ],\r\n  \"powerNum06\" : [ \"0E-8\" ],\r\n  \"powerNum07\" : [ \"0E-8\" ],\r\n  \"powerNum08\" : [ \"0E-8\" ],\r\n  \"powerNum09\" : [ \"0E-8\" ],\r\n  \"powerNum10\" : [ \"0E-8\" ],\r\n  \"powerNum11\" : [ \"0E-8\" ],\r\n  \"powerNum12\" : [ \"0E-8\" ],\r\n  \"powerNum13\" : [ \"0E-8\" ],\r\n  \"powerNum14\" : [ \"0E-8\" ],\r\n  \"powerNum15\" : [ \"0E-8\" ],\r\n  \"powerNum16\" : [ \"0E-8\" ],\r\n  \"powerNum17\" : [ \"0E-8\" ],\r\n  \"powerNum18\" : [ \"0E-8\" ],\r\n  \"powerNum19\" : [ \"0E-8\" ],\r\n  \"powerNum20\" : [ \"0E-8\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"delFlag\" : [ \"0\" ],\r\n  \"createBy\" : [ \"\" ],\r\n  \"createTime\" : [ \"\" ],\r\n  \"updateBy\" : [ \"\" ],\r\n  \"updateTime\" : [ \"\" ]\r\n}',0,NULL,'2019-07-08 20:47:47'),(138,'鐢靛巶',3,'com.ruoyi.web.controller.power.PowerinfoController.remove()',1,'admin',NULL,'/power/powerinfo/remove','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"11\" ]\r\n}',0,NULL,'2019-07-08 20:48:05'),(139,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin','鐮斿彂閮ㄩ棬','/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(  \n            \'10\'\n         )\' at line 3\r\n### The error may exist in file [C:\\Users\\Administrator\\eclipse\\keweispace\\kewei\\ruoyi-system\\target\\classes\\mapper\\power\\PowerinfoMapper.xml]\r\n### The error may involve com.ruoyi.power.mapper.PowerinfoMapper.selectPowerinfoListByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select powerInfoId, powerCode01, powerCode02, powerCode03, powerCode04, powerCode05, powerCode06, powerCode07, powerCode08, powerCode09, powerCode10, powerCode11, powerCode12, powerCode13, powerCode14, powerCode15, powerCode16, powerCode17, powerCode18, powerCode19, powerCode20, powerNum01, powerNum02, powerNum03, powerNum04, powerNum05, powerNum06, powerNum07, powerNum08, powerNum09, powerNum10, powerNum11, powerNum12, powerNum13, powerNum14, powerNum15, powerNum16, powerNum17, powerNum18, powerNum19, powerNum20, remark, del_flag, create_by, create_time, update_by, update_time from sys_powerinfo                (               ?          )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(  \n            \'10\'\n         )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(  \n            \'10\'\n         )\' at line 3','2019-07-15 16:33:22'),(140,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.executor.ExecutorException: A query was run and no Result Maps were found for the Mapped Statement \'com.ruoyi.power.mapper.PowerinfoMapper.selectPowerinfoListByIds\'.  It\'s likely that neither a Result Type nor a Result Map was specified.','2019-07-15 16:36:14'),(141,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'delFlag\' not found. Available parameters are [array]','2019-07-15 16:38:24'),(142,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'delFlag\' not found. Available parameters are [array]','2019-07-15 16:40:13'),(143,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin','鐮斿彂閮ㄩ棬','/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'delFlag\' not found. Available parameters are [collection, list]','2019-07-15 16:52:37'),(144,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'updateBy\' not found. Available parameters are [collection, list]','2019-07-15 16:56:46'),(145,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'powerInfoId) then #{powerinfo\' in \'class com.ruoyi.power.domain.Powerinfo\'','2019-07-15 17:24:12'),(146,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'id\' in \'class com.ruoyi.power.domain.Powerinfo\'','2019-07-15 17:28:20'),(147,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-07-15 17:29:30'),(148,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-07-15 17:31:54'),(149,'鐢靛巶',10,'com.ruoyi.web.controller.power.PowerinfoController.commit()',1,'admin',NULL,'/power/powerinfo/commit','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"10\" ]\r\n}',0,NULL,'2019-07-15 17:37:33'),(150,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐑熷彴鐢靛巶\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 19:48:00'),(151,'鑿滃崟绠＄悊',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/add','127.0.0.1','鍐呯綉IP','{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛姏鍏徃\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 19:49:43'),(152,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/role/authDataScope','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"绠＄悊鍛榎" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}',0,NULL,'2019-07-16 19:54:22'),(153,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛姏鍏徃\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 19:56:24'),(154,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛姏鍏徃\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 20:05:23'),(155,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鐮斿彂閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛姏鍏徃\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-16 20:06:17'),(156,'閲嶇疆瀵嗙爜',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin','鏍哥畻閮ㄩ棬','/system/user/resetPwd/103','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-17 13:39:12'),(157,'閲嶇疆瀵嗙爜',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/user/resetPwd','127.0.0.1','鍐呯綉IP','{\r\n  \"userId\" : [ \"103\" ],\r\n  \"loginName\" : [ \"ytj\" ],\r\n  \"password\" : [ \"111111\" ]\r\n}',0,NULL,'2019-07-17 13:39:16'),(158,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"鏍哥畻鍛榎" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"渚涚數鍏徃鏍哥畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-17 13:56:09'),(159,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"鏍哥畻鍛榎" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"渚涚數鍏徃鏍哥畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-17 13:56:21'),(160,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"缁撶畻鍛榎" ],\r\n  \"roleKey\" : [ \"jiesuan\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"鐢靛巶缁撶畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-17 13:56:27'),(161,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"鏍哥畻鍛榎" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"渚涚數鍏徃鏍哥畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-17 13:56:35'),(162,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"绠＄悊鍛榎" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"绠＄悊鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,2005,2000,2001,2002,2003,2004,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-17 13:57:05'),(163,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"缁撶畻鍛榎" ],\r\n  \"roleKey\" : [ \"jiesuan\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"鐢靛巶缁撶畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-17 13:57:09'),(164,'閲嶇疆瀵嗙爜',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin','鏍哥畻閮ㄩ棬','/system/user/resetPwd/102','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-17 14:00:51'),(165,'閲嶇疆瀵嗙爜',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/user/resetPwd','127.0.0.1','鍐呯綉IP','{\r\n  \"userId\" : [ \"102\" ],\r\n  \"loginName\" : [ \"hhe\" ],\r\n  \"password\" : [ \"111111\" ]\r\n}',0,NULL,'2019-07-17 14:00:55'),(166,'浠ｇ爜鐢熸垚',8,'com.ruoyi.generator.controller.GenController.genCode()',1,'admin',NULL,'/tool/gen/genCode/sys_powerinfo','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-19 09:56:44'),(167,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"绠＄悊鍛榎" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"绠＄悊鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,2012,2013,2014,2015,2016,2005,2000,2001,2002,2003,2004,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-19 10:36:41'),(168,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"缁撶畻鍛榎" ],\r\n  \"roleKey\" : [ \"jiesuan\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"鐢靛巶缁撶畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2012,2013,2014,2015,2016,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-19 10:36:48'),(169,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"鏍哥畻鍛榎" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"渚涚數鍏徃鏍哥畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2012,2013,2014,2015,2016,2005,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-19 10:36:53'),(170,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2012\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛巶\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo2:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 13:09:57'),(171,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2012\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鏁版嵁缁熻\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo2:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 15:08:57'),(172,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛姏鏁版嵁\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 16:57:18'),(173,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2012\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛姏鍏徃\" ],\r\n  \"url\" : [ \"/power/powerinfo2\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo2:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 16:57:28'),(174,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鏁版嵁缁熻\" ],\r\n  \"url\" : [ \"/power/powerinfo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powerinfo:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-19 16:57:43'),(175,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/remove/2013','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-20 14:49:52'),(176,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"鏍哥畻鍛榎" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"渚涚數鍏徃鏍哥畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2005,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-20 14:50:10'),(177,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"绠＄悊鍛榎" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"绠＄悊鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,2005,2000,2001,2002,2003,2004,2007,2009,2008,2010,2011\" ]\r\n}',0,NULL,'2019-07-20 14:50:17'),(178,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"缁撶畻鍛榎" ],\r\n  \"roleKey\" : [ \"jiesuan\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"鐢靛巶缁撶畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-20 14:50:25'),(179,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/remove/2013','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-20 14:50:32'),(180,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/remove/2014','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-20 14:50:39'),(181,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/remove/2015','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-20 14:50:49'),(182,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/remove/2016','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-20 14:51:01'),(183,'鑿滃崟绠＄悊',3,'com.ruoyi.web.controller.system.SysMenuController.remove()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/remove/2012','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-20 14:51:10'),(184,'浠ｇ爜鐢熸垚',8,'com.ruoyi.generator.controller.GenController.genCode()',1,'admin','鏍哥畻閮ㄩ棬','/tool/gen/genCode/sys_powernum','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-20 14:51:27'),(185,'鑿滃崟绠＄悊',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/menu/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"menuId\" : [ \"2017\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"鐢靛姏鍏徃\" ],\r\n  \"url\" : [ \"/power/powernum\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"power:powernum:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-20 15:14:03'),(186,'鐢靛姏鍏徃',1,'com.ruoyi.web.controller.power.PowernumController.addSave()',1,'admin','鏍哥畻閮ㄩ棬','/power/powernum/add','127.0.0.1','鍐呯綉IP','{\r\n  \"company\" : [ \"101\" ],\r\n  \"companyName\" : [ \"鍖椾含甯備緵鐢靛叕鍙竆" ],\r\n  \"powerNum01\" : [ \"3290.9\" ],\r\n  \"powerNum02\" : [ \"13902.1\" ],\r\n  \"powerNum03\" : [ \"32039.1\" ],\r\n  \"powerNum04\" : [ \"9043.9\" ],\r\n  \"powerNum05\" : [ \"3820.1\" ],\r\n  \"powerNum06\" : [ \"32948.7\" ],\r\n  \"remark\" : [ \"\" ]\r\n}',0,NULL,'2019-07-20 15:29:49'),(187,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉\" ],\r\n  \"deptName\" : [ \"鍥藉鐢电綉鍖椾含鍒嗗叕鍙竆" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"瀛欐偀绌篭" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"swk@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:21:42'),(188,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"102\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉\" ],\r\n  \"deptName\" : [ \"鍥藉鐢电綉灞变笢鍒嗗叕鍙竆" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"鐚叓鎴抃" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"zbj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:21:59'),(189,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"201\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉\" ],\r\n  \"deptName\" : [ \"鍥藉鐢电綉娌冲寳鍒嗗叕鍙竆" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"leader\" : [ \"鍞愪笁钘廫" ],\r\n  \"phone\" : [ \"13898372890\" ],\r\n  \"email\" : [ \"tsz@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:22:18'),(190,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"200\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉\" ],\r\n  \"deptName\" : [ \"鍥藉鐢电綉姹熻嫃鍒嗗叕鍙竆" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"leader\" : [ \"娌欐偀鍑€\" ],\r\n  \"phone\" : [ \"15019288938\" ],\r\n  \"email\" : [ \"swj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:22:39'),(191,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"parentId\" : [ \"101\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉鍖椾含鍒嗗叕鍙竆" ],\r\n  \"deptName\" : [ \"鍖椾含渚涚數鍏徃\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"瀛欐偀绌篭" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"swk@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:23:02'),(192,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/add','127.0.0.1','鍐呯綉IP','{\r\n  \"parentId\" : [ \"101\" ],\r\n  \"deptName\" : [ \"鍖椾含娴锋穩鐢靛巶\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"瀹嬫睙\" ],\r\n  \"phone\" : [ \"15382397392\" ],\r\n  \"email\" : [ \"sj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:23:48'),(193,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"204\" ],\r\n  \"parentId\" : [ \"101\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉鍖椾含鍒嗗叕鍙竆" ],\r\n  \"deptName\" : [ \"鍖椾含娴锋穩鐢靛巶\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"瀹嬫睙\" ],\r\n  \"phone\" : [ \"15382397392\" ],\r\n  \"email\" : [ \"sj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:24:02'),(194,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"108\" ],\r\n  \"parentId\" : [ \"102\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉灞变笢鍒嗗叕鍙竆" ],\r\n  \"deptName\" : [ \"灞变笢渚涚數鍏徃\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"鐚叓鎴抃" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"zbj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:24:17'),(195,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/add','127.0.0.1','鍐呯綉IP','{\r\n  \"parentId\" : [ \"102\" ],\r\n  \"deptName\" : [ \"娴庡崡鐢靛巶\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"鍗繆涔塡" ],\r\n  \"phone\" : [ \"13289372369\" ],\r\n  \"email\" : [ \"ljy@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:24:50'),(196,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"205\" ],\r\n  \"parentId\" : [ \"102\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉灞变笢鍒嗗叕鍙竆" ],\r\n  \"deptName\" : [ \"灞变笢娴庡崡鐢靛巶\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"鍗繆涔塡" ],\r\n  \"phone\" : [ \"13289372369\" ],\r\n  \"email\" : [ \"ljy@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:25:03'),(197,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/add','127.0.0.1','鍐呯綉IP','{\r\n  \"parentId\" : [ \"201\" ],\r\n  \"deptName\" : [ \"娌冲寳鐭冲搴勭數鍘俓" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"鍚寸敤\" ],\r\n  \"phone\" : [ \"18323892039\" ],\r\n  \"email\" : [ \"wy@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:25:42'),(198,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"202\" ],\r\n  \"parentId\" : [ \"201\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉娌冲寳鍒嗗叕鍙竆" ],\r\n  \"deptName\" : [ \"娌冲寳渚涚數鍏徃\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"娌欐偀鍑€\" ],\r\n  \"phone\" : [ \"17832398292\" ],\r\n  \"email\" : [ \"swj@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:25:59'),(199,'閮ㄩ棬绠＄悊',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"203\" ],\r\n  \"parentId\" : [ \"200\" ],\r\n  \"parentName\" : [ \"鍥藉鐢电綉姹熻嫃鍒嗗叕鍙竆" ],\r\n  \"deptName\" : [ \"姹熻嫃渚涚數鍏徃\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"鍞愪笁钘廫" ],\r\n  \"phone\" : [ \"18398372379\" ],\r\n  \"email\" : [ \"tsz@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:26:13'),(200,'閮ㄩ棬绠＄悊',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/dept/add','127.0.0.1','鍐呯綉IP','{\r\n  \"parentId\" : [ \"200\" ],\r\n  \"deptName\" : [ \"姹熻嫃鍗椾含鐢靛巶\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"鍏瓩鑳淺" ],\r\n  \"phone\" : [ \"18329361238\" ],\r\n  \"email\" : [ \"gss@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-07-21 20:26:45'),(201,'鐢ㄦ埛绠＄悊',3,'com.ruoyi.web.controller.system.SysUserController.remove()',1,'admin','鏍哥畻閮ㄩ棬','/system/user/remove','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"101\" ]\r\n}',0,NULL,'2019-07-21 20:27:14'),(202,'鐢ㄦ埛绠＄悊',3,'com.ruoyi.web.controller.system.SysUserController.remove()',1,'admin','鏍哥畻閮ㄩ棬','/system/user/remove','127.0.0.1','鍐呯綉IP','{\r\n  \"ids\" : [ \"102\" ]\r\n}',0,NULL,'2019-07-21 20:27:22'),(203,'鐢ㄦ埛绠＄悊',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/user/add','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"204\" ],\r\n  \"userName\" : [ \"铚樿洓绮綷" ],\r\n  \"deptName\" : [ \"鍖椾含娴锋穩鐢靛巶\" ],\r\n  \"phonenumber\" : [ \"15983237982\" ],\r\n  \"email\" : [ \"zzj@qq.com\" ],\r\n  \"loginName\" : [ \"zzj\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2019-07-21 20:31:09'),(204,'鐢ㄦ埛绠＄悊',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','鏍哥畻閮ㄩ棬','/system/user/add','127.0.0.1','鍐呯綉IP','{\r\n  \"deptId\" : [ \"205\" ],\r\n  \"userName\" : [ \"澶ч箯绮綷" ],\r\n  \"deptName\" : [ \"灞变笢娴庡崡鐢靛巶\" ],\r\n  \"phonenumber\" : [ \"15983237983\" ],\r\n  \"email\" : [ \"dpj@qq.com\" ],\r\n  \"loginName\" : [ \"dpj\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2019-07-21 20:32:08'),(205,'閲嶇疆瀵嗙爜',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin','鍖椾含渚涚數鍏徃','/system/user/resetPwd/100','127.0.0.1','鍐呯綉IP','{ }',0,NULL,'2019-07-21 22:25:58'),(206,'閲嶇疆瀵嗙爜',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()',1,'admin','鍖椾含渚涚數鍏徃','/system/user/resetPwd','127.0.0.1','鍐呯綉IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"loginName\" : [ \"nmw\" ],\r\n  \"password\" : [ \"111111\" ]\r\n}',0,NULL,'2019-07-21 22:26:02'),(207,'鐢ㄦ埛绠＄悊',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','鍖椾含渚涚數鍏徃','/system/user/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"鐗涢瓟鐜媆" ],\r\n  \"dept.deptName\" : [ \"灞变笢渚涚數鍏徃\" ],\r\n  \"phonenumber\" : [ \"15832983293\" ],\r\n  \"email\" : [ \"nmw@qq.com\" ],\r\n  \"loginName\" : [ \"nmw\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}',0,NULL,'2019-07-21 22:35:58'),(208,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鍖椾含渚涚數鍏徃','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"鏍哥畻鍛榎" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"渚涚數鍏徃鏍哥畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2005,2017,2018,2019,2020,2021\" ]\r\n}',0,NULL,'2019-07-21 22:37:07'),(209,'瑙掕壊绠＄悊',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','鍖椾含渚涚數鍏徃','/system/role/edit','127.0.0.1','鍐呯綉IP','{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"鏍哥畻鍛榎" ],\r\n  \"roleKey\" : [ \"hesuan\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"渚涚數鍏徃鏍哥畻鍛榎" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,3,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-07-21 22:38:08');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '宀椾綅ID',
  `post_code` varchar(64) NOT NULL COMMENT '宀椾綅缂栫爜',
  `post_name` varchar(50) NOT NULL COMMENT '宀椾綅鍚嶇О',
  `post_sort` int(4) NOT NULL COMMENT '鏄剧ず椤哄簭',
  `status` char(1) NOT NULL COMMENT '鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='宀椾綅淇℃伅琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','钁ｄ簨闀?,1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','閮ㄩ棬缁忕悊',2,'0','admin','2018-03-16 11:33:00','admin','2019-07-14 16:33:28',''),(4,'user','鏅€氬憳宸?,3,'0','admin','2018-03-16 11:33:00','admin','2019-07-14 16:33:44','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_powerinfo`
--

DROP TABLE IF EXISTS `sys_powerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_powerinfo` (
  `powerInfoId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '鐢靛巶id',
  `powerCode01` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode02` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode03` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode04` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode05` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode06` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode07` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode08` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode09` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode10` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode11` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode12` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode13` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode14` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode15` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode16` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode17` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode18` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode19` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerCode20` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢电爜',
  `powerNum01` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum02` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum03` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum04` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum05` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum06` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum07` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum08` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum09` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum10` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum11` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum12` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum13` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum14` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum15` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum16` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum17` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum18` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum19` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum20` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `remark` varchar(100) DEFAULT '' COMMENT '澶囨敞',
  `del_flag` char(1) DEFAULT NULL COMMENT '鍒犻櫎鏍囧織锛?浠ｈ〃瀛樺湪 2浠ｈ〃鍒犻櫎锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `company` bigint(20) DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL,
  PRIMARY KEY (`powerInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鐢靛巶琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_powerinfo`
--

LOCK TABLES `sys_powerinfo` WRITE;
/*!40000 ALTER TABLE `sys_powerinfo` DISABLE KEYS */;
INSERT INTO `sys_powerinfo` VALUES (10,10.90000000,3.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,142.00000000,44.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,'','0','','2019-07-15 17:37:30','寮犵弬鐜?,'2019-07-15 17:37:30',102,NULL);
/*!40000 ALTER TABLE `sys_powerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_powernum`
--

DROP TABLE IF EXISTS `sys_powernum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_powernum` (
  `powerInfoId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '鐢靛巶id',
  `powerNum01` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum02` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum03` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum04` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum05` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `powerNum06` decimal(20,8) DEFAULT '0.00000000' COMMENT '鐢甸噺',
  `remark` varchar(100) DEFAULT '' COMMENT '澶囨敞',
  `com_flag` char(1) DEFAULT NULL COMMENT '鎻愪氦鏍囧織锛?浠ｈ〃淇濆瓨鎬?2浠ｈ〃鎻愪氦鎬侊級',
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `company` bigint(20) DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL,
  PRIMARY KEY (`powerInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鐢靛姏鍏徃琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_powernum`
--

LOCK TABLES `sys_powernum` WRITE;
/*!40000 ALTER TABLE `sys_powernum` DISABLE KEYS */;
INSERT INTO `sys_powernum` VALUES (12,3290.90000000,13902.10000000,32039.10000000,9043.90000000,3820.10000000,32948.70000000,'','0','',NULL,'',NULL,101,NULL);
/*!40000 ALTER TABLE `sys_powernum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '瑙掕壊ID',
  `role_name` varchar(30) NOT NULL COMMENT '瑙掕壊鍚嶇О',
  `role_key` varchar(100) NOT NULL COMMENT '瑙掕壊鏉冮檺瀛楃涓?,
  `role_sort` int(4) NOT NULL COMMENT '鏄剧ず椤哄簭',
  `data_scope` char(1) DEFAULT '1' COMMENT '鏁版嵁鑼冨洿锛?锛氬叏閮ㄦ暟鎹潈闄?2锛氳嚜瀹氭暟鎹潈闄?3锛氭湰閮ㄩ棬鏁版嵁鏉冮檺 4锛氭湰閮ㄩ棬鍙婁互涓嬫暟鎹潈闄愶級',
  `status` char(1) NOT NULL COMMENT '瑙掕壊鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `del_flag` char(1) DEFAULT '0' COMMENT '鍒犻櫎鏍囧織锛?浠ｈ〃瀛樺湪 2浠ｈ〃鍒犻櫎锛?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瑙掕壊淇℃伅琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'绠＄悊鍛?,'admin',1,'1','0','0','admin','2018-03-16 11:33:00','admin','2019-07-20 14:50:17','绠＄悊鍛?),(2,'缁撶畻鍛?,'jiesuan',2,'4','0','0','admin','2018-03-16 11:33:00','admin','2019-07-20 14:50:25','鐢靛巶缁撶畻鍛?),(100,'鏍哥畻鍛?,'hesuan',3,'4','0','0','admin','2019-07-06 15:53:56','admin','2019-07-21 22:38:08','渚涚數鍏徃鏍哥畻鍛?);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '瑙掕壊ID',
  `dept_id` bigint(20) NOT NULL COMMENT '閮ㄩ棬ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瑙掕壊鍜岄儴闂ㄥ叧鑱旇〃';
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
  `role_id` bigint(20) NOT NULL COMMENT '瑙掕壊ID',
  `menu_id` bigint(20) NOT NULL COMMENT '鑿滃崟ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='瑙掕壊鍜岃彍鍗曞叧鑱旇〃';
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
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '鐢ㄦ埛ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '閮ㄩ棬ID',
  `login_name` varchar(30) NOT NULL COMMENT '鐧诲綍璐﹀彿',
  `user_name` varchar(30) NOT NULL COMMENT '鐢ㄦ埛鏄电О',
  `user_type` varchar(2) DEFAULT '00' COMMENT '鐢ㄦ埛绫诲瀷锛?0绯荤粺鐢ㄦ埛锛?,
  `email` varchar(50) DEFAULT '' COMMENT '鐢ㄦ埛閭',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '鎵嬫満鍙风爜',
  `sex` char(1) DEFAULT '0' COMMENT '鐢ㄦ埛鎬у埆锛?鐢?1濂?2鏈煡锛?,
  `avatar` varchar(100) DEFAULT '' COMMENT '澶村儚璺緞',
  `password` varchar(50) DEFAULT '' COMMENT '瀵嗙爜',
  `salt` varchar(20) DEFAULT '' COMMENT '鐩愬姞瀵?,
  `status` char(1) DEFAULT '0' COMMENT '甯愬彿鐘舵€侊紙0姝ｅ父 1鍋滅敤锛?,
  `del_flag` char(1) DEFAULT '0' COMMENT '鍒犻櫎鏍囧織锛?浠ｈ〃瀛樺湪 2浠ｈ〃鍒犻櫎锛?,
  `login_ip` varchar(50) DEFAULT '' COMMENT '鏈€鍚庣櫥闄咺P',
  `login_date` datetime DEFAULT NULL COMMENT '鏈€鍚庣櫥闄嗘椂闂?,
  `create_by` varchar(64) DEFAULT '' COMMENT '鍒涘缓鑰?,
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  `update_by` varchar(64) DEFAULT '' COMMENT '鏇存柊鑰?,
  `update_time` datetime DEFAULT NULL COMMENT '鏇存柊鏃堕棿',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鐢ㄦ埛淇℃伅琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','绠＄悊鍛?,'00','admin@163.com','15888888888','1','','21e801284319b8dd246f875e4d8995b9','690028','0','0','127.0.0.1','2019-07-21 23:17:15','admin','2018-03-16 11:33:00','ry','2019-07-21 23:17:15','绠＄悊鍛?),(2,103,'ywy','涓氬姟鍛?,'00','ywy@qq.com','15666666666','2','','3d3cfe5153857eb38e0d39c9991acd82','c1bbe2','0','2','127.0.0.1','2019-07-06 16:18:12','admin','2018-03-16 11:33:00','admin','2019-07-14 16:21:00','娴嬭瘯鍛?),(100,108,'nmw','鐗涢瓟鐜?,'00','nmw@qq.com','15832983293','0','','141ae57bb8da24ffd00dffe552c831ba','a58a1d','0','0','127.0.0.1','2019-07-21 22:36:17','admin','2019-07-14 16:28:40','admin','2019-07-21 22:36:16',''),(102,203,'hhe','绾㈠鍎?,'00','hhe@qq.com','18732882309','0','','a0e077f8a2f7c4656ff77f7c69b17e75','bc0136','0','2','127.0.0.1','2019-07-17 14:56:26','admin','2019-07-14 16:32:39','','2019-07-17 14:56:25',NULL),(103,103,'ytj','鐜夊厰绮?,'00','ytj@qq.com','13032983238','1','','233b37f4742b9c0a06472d172c7ae18a','14f9d8','0','0','127.0.0.1','2019-07-17 14:23:50','admin','2019-07-14 16:36:22','','2019-07-17 14:23:49',NULL),(104,204,'zzj','铚樿洓绮?,'00','zzj@qq.com','15983237982','1','','3fced9f6efcdfccfbda5552cb7067bf9','5e4fbe','0','0','',NULL,'admin','2019-07-21 20:31:09','',NULL,NULL),(105,205,'dpj','澶ч箯绮?,'00','dpj@qq.com','15983237983','0','','303ebf161c33938890016e5701c4ec4a','bd8966','0','0','',NULL,'admin','2019-07-21 20:32:08','',NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '鐢ㄦ埛浼氳瘽id',
  `login_name` varchar(50) DEFAULT '' COMMENT '鐧诲綍璐﹀彿',
  `dept_name` varchar(50) DEFAULT '' COMMENT '閮ㄩ棬鍚嶇О',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '鐧诲綍IP鍦板潃',
  `login_location` varchar(255) DEFAULT '' COMMENT '鐧诲綍鍦扮偣',
  `browser` varchar(50) DEFAULT '' COMMENT '娴忚鍣ㄧ被鍨?,
  `os` varchar(50) DEFAULT '' COMMENT '鎿嶄綔绯荤粺',
  `status` varchar(10) DEFAULT '' COMMENT '鍦ㄧ嚎鐘舵€乷n_line鍦ㄧ嚎off_line绂荤嚎',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session鍒涘缓鏃堕棿',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session鏈€鍚庤闂椂闂?,
  `expire_time` int(5) DEFAULT '0' COMMENT '瓒呮椂鏃堕棿锛屽崟浣嶄负鍒嗛挓',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鍦ㄧ嚎鐢ㄦ埛璁板綍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('a2489c55-2635-4c95-927f-528eccaea366','admin','鍖椾含渚涚數鍏徃','127.0.0.1','鍐呯綉IP','Chrome','Windows 10','on_line','2019-07-21 22:39:27','2019-07-21 23:17:15',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '鐢ㄦ埛ID',
  `post_id` bigint(20) NOT NULL COMMENT '宀椾綅ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鐢ㄦ埛涓庡矖浣嶅叧鑱旇〃';
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
  `user_id` bigint(20) NOT NULL COMMENT '鐢ㄦ埛ID',
  `role_id` bigint(20) NOT NULL COMMENT '瑙掕壊ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='鐢ㄦ埛鍜岃鑹插叧鑱旇〃';
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

-- Dump completed on 2019-07-21 23:20:47
