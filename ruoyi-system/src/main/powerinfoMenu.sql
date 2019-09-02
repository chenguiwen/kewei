-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂', '3', '1', '/system/powerinfo', 'C', '0', 'system:powerinfo:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '电厂菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂查询', @parentId, '1',  '#',  'F', '0', 'system:powerinfo:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂新增', @parentId, '2',  '#',  'F', '0', 'system:powerinfo:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂修改', @parentId, '3',  '#',  'F', '0', 'system:powerinfo:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电厂删除', @parentId, '4',  '#',  'F', '0', 'system:powerinfo:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
