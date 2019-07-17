package com.ruoyi.web.controller.power;

import java.util.Date;
import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.power.domain.Powerinfo;
import com.ruoyi.power.service.IPowerinfoService;
import com.ruoyi.system.domain.SysRole;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysRoleService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.util.ShiroUtils;

/**
 * 电厂 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-07-08
 */
@Controller
@RequestMapping("/power/powerinfo")
public class PowerinfoController extends BaseController
{
    private String prefix = "power/powerinfo";
	
	@Autowired
	private IPowerinfoService powerinfoService;
	
	@Autowired
	private ISysRoleService roleService;
	
	@RequiresPermissions("power:powerinfo:view")
	@GetMapping()
	public String powerinfo()
	{
		SysUser user = ShiroUtils.getSysUser();
		
		Long[] roleIds = user.getRoleIds();
		if(null == roleIds || 0 == roleIds.length) {
			SysRole role = roleService.selectRoleById(user.getRoleId());
			if(role == null) {
			    return prefix + "/powerinfo";								
			}
			String roleName = role.getRoleName();
			if("结算员".equals(roleName)) {
			    return prefix + "2/powerinfo2";				
			}
		}
		for (int i = 0; i < roleIds.length; i++) {
			SysRole role = roleService.selectRoleById(roleIds[i]);
			if("结算员".equals(role.getRoleName())) {
			    return prefix + "2/powerinfo2";				
			}
		}
	    return prefix + "/powerinfo";
	}
	
	/**
	 * 查询电厂列表
	 */
	@RequiresPermissions("power:powerinfo:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Powerinfo powerinfo)
	{
		startPage();
        List<Powerinfo> list = powerinfoService.selectPowerinfoList(powerinfo);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出电厂列表
	 */
	@RequiresPermissions("power:powerinfo:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Powerinfo powerinfo)
    {
    	List<Powerinfo> list = powerinfoService.selectPowerinfoList(powerinfo);
        ExcelUtil<Powerinfo> util = new ExcelUtil<Powerinfo>(Powerinfo.class);
        return util.exportExcel(list, "powerinfo");
    }
	
	/**
	 * 新增电厂
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存电厂
	 */
	@RequiresPermissions("power:powerinfo:add")
	@Log(title = "电厂", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Powerinfo powerinfo)
	{		
		return toAjax(powerinfoService.insertPowerinfo(powerinfo));
	}

	/**
	 * 修改电厂
	 */
	@GetMapping("/edit/{powerInfoId}")
	public String edit(@PathVariable("powerInfoId") Long powerInfoId, ModelMap mmap)
	{
		Powerinfo powerinfo = powerinfoService.selectPowerinfoById(powerInfoId);
		mmap.put("powerinfo", powerinfo);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存电厂
	 */
	@RequiresPermissions("power:powerinfo:edit")
	@Log(title = "电厂", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Powerinfo powerinfo)
	{		
		return toAjax(powerinfoService.updatePowerinfo(powerinfo));
	}
	
	/**
	 * 删除电厂
	 */
	@RequiresPermissions("power:powerinfo:remove")
	@Log(title = "电厂", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(powerinfoService.deletePowerinfoByIds(ids));
	}
	
	@RequiresPermissions("power:powerinfo:commit")
	@Log(title = "电厂",businessType = BusinessType.COMMIT)
	@PostMapping("/commit")
	@ResponseBody
	public AjaxResult commit(String ids) {
		List<Powerinfo> powerinfos = powerinfoService.selectPowerinfoListByIds(ids);
		String userName = ShiroUtils.getSysUser().getUserName();
		for (Powerinfo powerinfo : powerinfos) {
			powerinfo.setUpdateBy(userName);
			powerinfo.setUpdateTime(new Date());
			powerinfo.setDelFlag("2");
		}
		return toAjax(powerinfoService.commitPowerinfoList(powerinfos));
	}
}
