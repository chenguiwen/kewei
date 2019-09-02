package com.ruoyi.web.controller.system;

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
import com.ruoyi.system.domain.Powerinfo;
import com.ruoyi.system.service.IPowerinfoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 电厂 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-08-28
 */
@Controller
@RequestMapping("/system/powerinfo")
public class PowerinfoController extends BaseController
{
    private String prefix = "system/powerinfo";
	
	@Autowired
	private IPowerinfoService powerinfoService;
	
	@RequiresPermissions("system:powerinfo:view")
	@GetMapping()
	public String powerinfo()
	{
	    return prefix + "/powerinfo";
	}
	
	/**
	 * 查询电厂列表
	 */
	@RequiresPermissions("system:powerinfo:list")
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
	@RequiresPermissions("system:powerinfo:export")
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
	@RequiresPermissions("system:powerinfo:add")
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
	@RequiresPermissions("system:powerinfo:edit")
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
	@RequiresPermissions("system:powerinfo:remove")
	@Log(title = "电厂", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(powerinfoService.deletePowerinfoByIds(ids));
	}
	
	/**
	 * 提交电厂表单
	 * */
	@RequiresPermissions("system:powerinfo:remove")
	@Log(title = "电厂", businessType = BusinessType.DELETE)
	@PostMapping( "/commit")
	@ResponseBody
	public AjaxResult commitBill(Long powerInfoId)
	{		
		Powerinfo powerinfo = powerinfoService.selectPowerinfoById(powerInfoId);
		powerinfo.setStatus("1");
		return toAjax(powerinfoService.updatePowerinfo(powerinfo));
	}
	
}
