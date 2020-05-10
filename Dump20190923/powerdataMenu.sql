-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力数据导出', '3', '1', '/system/powerdata', 'C', '0', 'system:powerdata:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '电力数据导出菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力数据导出查询', @parentId, '1',  '#',  'F', '0', 'system:powerdata:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力数据导出新增', @parentId, '2',  '#',  'F', '0', 'system:powerdata:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力数据导出修改', @parentId, '3',  '#',  'F', '0', 'system:powerdata:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力数据导出删除', @parentId, '4',  '#',  'F', '0', 'system:powerdata:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
