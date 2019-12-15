package com.ruoyi.web.controller.system;

import java.time.LocalTime;
import java.util.Date;
import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.joda.LocalDateParser;
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
import com.ruoyi.framework.util.ShiroUtils;

/**
 * 电厂 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-08-28
 */
@Controller
@RequestMapping("/power/powerinfo")
public class PowerinfoController extends BaseController
{
    private String prefix = "power/powerinfo";
	
	@Autowired
	private IPowerinfoService powerinfoService;
	
	@RequiresPermissions("power:powerinfo:view")
	@GetMapping()
	public String powerinfo()
	{
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
		powerinfo.setBillDate(new Date());
		powerinfo.setCreateBy(ShiroUtils.getSysUser().getUserName());
		powerinfo.setCreateTime(new Date());
		powerinfo.setStatus("0");
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
		powerinfo.setUpdateBy(ShiroUtils.getSysUser().getUserName());
		powerinfo.setUpdateTime(new Date());
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
	
	/**
	 * 提交电厂表单
	 * */
	@RequiresPermissions("power:powerinfo:commit")
	@Log(title = "电厂", businessType = BusinessType.DELETE)
	@PostMapping( "/commit")
	@ResponseBody
	public AjaxResult commitBill(String ids)
	{		
		List<Powerinfo> powerinfos = powerinfoService.selectPowerinfoByIds(ids);
		for (int i = 0; i < powerinfos.size(); i++) {
			Powerinfo powerinfo = (Powerinfo) powerinfos.get(i);
			powerinfo.setStatus("2");
		}
		return toAjax(powerinfoService.updatePowerinfos(powerinfos));
	}
	
}
