package com.ruoyi.web.controller.system;

import java.util.ArrayList;
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
import com.ruoyi.system.domain.ExportedData;
import com.ruoyi.system.domain.Powerdata;
import com.ruoyi.system.domain.Powerinfo;
import com.ruoyi.system.domain.Powernum;
import com.ruoyi.system.service.IPowerdataService;
import com.ruoyi.system.service.IPowerinfoService;
import com.ruoyi.system.service.IPowernumService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.BaseEntity;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 电力数据导出 信息操作处理
 * 
 * @author ruoyi
 * @date 2020-03-07
 */
@Controller
@RequestMapping("/power/powerdata")
public class PowerdataController extends BaseController
{
    private String prefix = "power/powerdata";
	
	@Autowired
	private IPowerdataService powerdataService;
	@Autowired
	private IPowerinfoService powerinfoService;
	@Autowired
	private IPowernumService powernumService;
	
	@RequiresPermissions("system:powerdata:view")
	@GetMapping()
	public String powerdata()
	{
	    return prefix + "/powerdata";
	}
	
	/**
	 * 查询电力数据导出列表
	 */
	@RequiresPermissions("system:powerdata:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Powerdata powerdata)
	{
		startPage();
        List<Powerdata> list = powerdataService.selectPowerdataList(powerdata);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出电力数据导出列表
	 */
	@RequiresPermissions("system:powerdata:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Powerdata powerdata)
    {
		if(null == powerdata) {
			return null;
		}
		boolean isExportInfo = true;//"1".equals(powerdata.getPowerinfo());
		boolean isExportNum = true;//"1".equals(powerdata.getPowernum());
		
//        List<BaseEntity> list = new ArrayList<BaseEntity>();
    	List<Powerinfo> infolist = null;
    	if(isExportNum) {
    		infolist = powerinfoService.selectPowerinfoList(new Powerinfo());
    	}
        ExcelUtil<Powerinfo> infoutil = new ExcelUtil<Powerinfo>(Powerinfo.class);
        infoutil.exportExcel(infolist, "Powerinfo");

        List<Powernum> numlist = null;
    	if(isExportInfo) {
    		numlist = powernumService.selectPowernumList(new Powernum());
    	}
    	
        ExcelUtil<Powernum> numutil = new ExcelUtil<Powernum>(Powernum.class);
        return numutil.exportExcel(numlist, "Powernum");
    }
	
	/**
	 * 新增电力数据导出
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存电力数据导出
	 */
	@RequiresPermissions("system:powerdata:add")
	@Log(title = "电力数据导出", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Powerdata powerdata)
	{		
		if("on".equals(powerdata.getPowerinfo())) {
			powerdata.setPowerinfo("1");
		}else {
			powerdata.setPowerinfo("2");
		}
		if("on".equals(powerdata.getPowernum())) {
			powerdata.setPowernum("1");
		}else {
			powerdata.setPowernum("2");
		}
		return toAjax(powerdataService.insertPowerdata(powerdata));
	}

	/**
	 * 修改电力数据导出
	 */
	@GetMapping("/edit/{powerdataId}")
	public String edit(@PathVariable("powerdataId") Long powerdataId, ModelMap mmap)
	{
		Powerdata powerdata = powerdataService.selectPowerdataById(powerdataId);
		mmap.put("powerdata", powerdata);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存电力数据导出
	 */
	@RequiresPermissions("system:powerdata:edit")
	@Log(title = "电力数据导出", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Powerdata powerdata)
	{		
		return toAjax(powerdataService.updatePowerdata(powerdata));
	}
	
	/**
	 * 删除电力数据导出
	 */
	@RequiresPermissions("system:powerdata:remove")
	@Log(title = "电力数据导出", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(powerdataService.deletePowerdataByIds(ids));
	}
	
}
