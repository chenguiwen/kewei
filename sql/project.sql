CREATE TABLE `sys_powerinfo` (  `powerInfoId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '电厂id',  `powerCode01` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode02` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode03` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode04` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode05` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode06` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode07` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode08` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode09` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode10` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode11` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode12` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode13` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode14` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode15` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode16` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode17` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode18` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode19` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerCode20` decimal(20,8) DEFAULT '0.0' COMMENT '电码',  `powerNum01` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum02` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum03` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum04` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum05` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum06` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum07` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum08` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum09` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum10` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum11` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum12` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum13` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum14` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum15` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum16` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum17` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum18` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum19` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `powerNum20` decimal(20,8) DEFAULT '0.0' COMMENT '电量',  `remark` varchar(100) DEFAULT '' COMMENT '备注',  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',  `create_time` datetime DEFAULT NULL COMMENT '创建时间',  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',  `update_time` datetime DEFAULT NULL COMMENT '更新时间',  PRIMARY KEY (`powerInfoId`)) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电厂表';
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='电力公司表';

-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂', '3', '1', '/power/powerinfo', 'C', '0', 'power:powerinfo:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '电厂菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂查询', @parentId, '1',  '#',  'F', '0', 'power:powerinfo:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂新增', @parentId, '2',  '#',  'F', '0', 'power:powerinfo:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂修改', @parentId, '3',  '#',  'F', '0', 'power:powerinfo:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂删除', @parentId, '4',  '#',  'F', '0', 'power:powerinfo:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');


-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司', '3', '1', '/power/powernum', 'C', '0', 'power:powernum:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '电力公司菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司查询', @parentId, '1',  '#',  'F', '0', 'power:powernum:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司新增', @parentId, '2',  '#',  'F', '0', 'power:powernum:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司修改', @parentId, '3',  '#',  'F', '0', 'power:powernum:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司删除', @parentId, '4',  '#',  'F', '0', 'power:powernum:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
