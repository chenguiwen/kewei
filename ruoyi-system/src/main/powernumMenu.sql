-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司', '3', '1', '/power1/powernum', 'C', '0', 'power1:powernum:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '电力公司菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司查询', @parentId, '1',  '#',  'F', '0', 'power1:powernum:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司新增', @parentId, '2',  '#',  'F', '0', 'power1:powernum:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司修改', @parentId, '3',  '#',  'F', '0', 'power1:powernum:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('电力公司删除', @parentId, '4',  '#',  'F', '0', 'power1:powernum:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
