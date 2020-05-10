package com.ruoyi.web.controller.system;

import java.math.BigDecimal;
import java.util.ArrayList;
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
import com.ruoyi.system.domain.Powernum;
import com.ruoyi.system.service.IPowernumService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.util.ShiroUtils;

/**
 * 电力公司 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-08-28
 */
@Controller
@RequestMapping("/power/powernum")
public class PowernumController extends BaseController
{
    private String prefix = "power/powernum";
	
	@Autowired
	private IPowernumService powernumService;
	
	@RequiresPermissions("power:powernum:view")
	@GetMapping()
	public String powernum()
	{
	    return prefix + "/powernum";
	}
	
	/**
	 * 查询电力公司列表
	 */
	@RequiresPermissions("power:powernum:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Powernum powernum)
	{
		startPage();
        List<Powernum> list = powernumService.selectPowernumList(powernum);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出电力公司列表
	 */
	@RequiresPermissions("power:powernum:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Powernum powernum)
    {
    	List<Powernum> list = powernumService.selectPowernumList(powernum);
        ExcelUtil<Powernum> util = new ExcelUtil<Powernum>(Powernum.class);
        return util.exportExcel(list, "powernum");
    }
	
	/**
	 * 新增电力公司
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存电力公司
	 */
	@RequiresPermissions("power:powernum:add")
	@Log(title = "电力公司", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Powernum powernum)
	{		
		powernum.setBillDate(new Date());
		powernum.setCreateBy(ShiroUtils.getSysUser().getUserName());
		powernum.setCreateTime(new Date());
		powernum.setStatus("0");
		return toAjax(powernumService.insertPowernum(powernum));
	}

	/**
	 * 修改电力公司
	 */
	@GetMapping("/edit/{powerInfoId}")
	public String edit(@PathVariable("powerInfoId") Long powerInfoId, ModelMap mmap)
	{
		Powernum powernum = powernumService.selectPowernumById(powerInfoId);
		mmap.put("powernum", powernum);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存电力公司
	 */
	@RequiresPermissions("power:powernum:edit")
	@Log(title = "电力公司", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Powernum powernum)
	{		
		powernum.setUpdateBy(ShiroUtils.getSysUser().getUserName());
		powernum.setUpdateTime(new Date());
		return toAjax(powernumService.updatePowernum(powernum));
	}
	
	/**
	 * 提交电力公司
	 * */
//	@RequiresPermissions("power:powernum:commit")
	@Log(title = "电力公司", businessType = BusinessType.UPDATE)
	@PostMapping("/commit")
	@ResponseBody
	public AjaxResult commitBill(String ids) {
		Powernum powernum = powernumService.selectPowernumById(ids);
		powernum.setStatus("1");
//		SysUser user = ShiroUtils.getSysUser();
		powernum.setUpdateTime(new Date());
		return toAjax(powernumService.updatePowernum(powernum));
	}
	
	/**
	 * 删除电力公司
	 */
	@RequiresPermissions("power:powernum:remove")
	@Log(title = "电力公司", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(powernumService.deletePowernumByIds(ids));
	}
	
	/**
	 * 计算电厂表单
	 * */
	@Log(title = "电厂", businessType = BusinessType.CALCULATE1)
	@PostMapping( "/calculate1")
	@ResponseBody
	public AjaxResult calculate1(String ids)
	{		
		startPage();
        List<Powernum> returnResult = new ArrayList<Powernum>();        
        List<Powernum> list = powernumService.selectPowernumList(new Powernum());
		for (int i = 0; i < list.size(); i++) {
			if(ids.contains((list.get(i).getPowerInfoId().toString()))) {
				Powernum Powernum = (Powernum) list.get(i);
				BigDecimal result = new BigDecimal(0);
				result = result.add(Powernum.getPowerNum01());
				result = result.add(Powernum.getPowerNum02());
				result = result.add(Powernum.getPowerNum03());
				result = result.add(Powernum.getPowerNum04());
				result = result.add(Powernum.getPowerNum05());
				result = result.add(Powernum.getPowerNum06());
				Powernum.setResult(result);
				returnResult.add(Powernum);
			}
		}
		return toAjax(powernumService.updatePowernums(returnResult));
	}

	/**
	 * 计算电厂表单
	 * */
	@Log(title = "电厂", businessType = BusinessType.CALCULATE2)
	@PostMapping( "/calculate2")
	@ResponseBody
	public AjaxResult calculate2(String ids)
	{		
		startPage();
        List<Powernum> returnResult = new ArrayList<Powernum>();        
        List<Powernum> list = powernumService.selectPowernumList(new Powernum());
		for (int i = 0; i < list.size(); i++) {
			if(ids.contains((list.get(i).getPowerInfoId().toString()))) {
				Powernum Powernum = (Powernum) list.get(i);
				BigDecimal result = new BigDecimal(0);
				result = result.add(Powernum.getPowerNum01());
				result = result.add(Powernum.getPowerNum02());
				result = result.add(Powernum.getPowerNum03());
				result = result.add(Powernum.getPowerNum04());
				result = result.add(Powernum.getPowerNum05());
				result = result.add(Powernum.getPowerNum06());
				Powernum.setResult(result);
				returnResult.add(Powernum);
			}
		}
		return toAjax(powernumService.updatePowernums(returnResult));
	}

	/**
	 * 计算电厂表单3
	 * */
	@Log(title = "电厂", businessType = BusinessType.CALCULATE3)
	@PostMapping( "/calculate3")
	@ResponseBody
	public AjaxResult calculate3(String ids)
	{		
		startPage();
        List<Powernum> returnResult = new ArrayList<Powernum>();        
        List<Powernum> list = powernumService.selectPowernumList(new Powernum());
		for (int i = 0; i < list.size(); i++) {
			if(ids.contains((list.get(i).getPowerInfoId().toString()))) {
				Powernum Powernum = (Powernum) list.get(i);
				BigDecimal result = new BigDecimal(0);
				result = result.add(Powernum.getPowerNum01());
				result = result.add(Powernum.getPowerNum02());
				result = result.add(Powernum.getPowerNum03());
				result = result.add(Powernum.getPowerNum04());
				result = result.add(Powernum.getPowerNum05());
				result = result.add(Powernum.getPowerNum06());
				Powernum.setResult(result);
				returnResult.add(Powernum);
			}
		}
		return toAjax(powernumService.updatePowernums(returnResult));
	}

	/**
	 * 计算电厂表单4
	 * */
	@Log(title = "电厂", businessType = BusinessType.CALCULATE4)
	@PostMapping( "/calculate4")
	@ResponseBody
	public AjaxResult calculate4(String ids)
	{		
		startPage();
        List<Powernum> returnResult = new ArrayList<Powernum>();        
        List<Powernum> list = powernumService.selectPowernumList(new Powernum());
		for (int i = 0; i < list.size(); i++) {
			if(ids.contains((list.get(i).getPowerInfoId().toString()))) {
				Powernum Powernum = (Powernum) list.get(i);
				BigDecimal result = new BigDecimal(0);
				result = result.add(Powernum.getPowerNum01());
				result = result.add(Powernum.getPowerNum02());
				result = result.add(Powernum.getPowerNum03());
				result = result.add(Powernum.getPowerNum04());
				result = result.add(Powernum.getPowerNum05());
				result = result.add(Powernum.getPowerNum06());
				Powernum.setResult(result);
				returnResult.add(Powernum);
			}
		}
		return toAjax(powernumService.updatePowernums(returnResult));
	}

	/**
	 * 计算电厂表单5
	 * */
	@Log(title = "电厂", businessType = BusinessType.CALCULATE5)
	@PostMapping( "/calculate5")
	@ResponseBody
	public AjaxResult calculate5(String ids)
	{		
		startPage();
        List<Powernum> returnResult = new ArrayList<Powernum>();        
        List<Powernum> list = powernumService.selectPowernumList(new Powernum());
		for (int i = 0; i < list.size(); i++) {
			if(ids.contains((list.get(i).getPowerInfoId().toString()))) {
				Powernum Powernum = (Powernum) list.get(i);
				BigDecimal result = new BigDecimal(0);
				result = result.add(Powernum.getPowerNum01());
				result = result.add(Powernum.getPowerNum02());
				result = result.add(Powernum.getPowerNum03());
				result = result.add(Powernum.getPowerNum04());
				result = result.add(Powernum.getPowerNum05());
				result = result.add(Powernum.getPowerNum06());
				Powernum.setResult(result);
				returnResult.add(Powernum);
			}
		}
		return toAjax(powernumService.updatePowernums(returnResult));
	}

	
}
