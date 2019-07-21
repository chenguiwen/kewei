package com.ruoyi.web.controller.power;

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
import com.ruoyi.common.constant.RoleConstants;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.power.domain.Powernum;
import com.ruoyi.power.service.IPowernumService;
import com.ruoyi.system.domain.SysDept;
import com.ruoyi.system.domain.SysRole;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysDeptService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.util.ShiroUtils;

/**
 * 电力公司 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-07-20
 */
@Controller
@RequestMapping("/power/powernum")
public class PowernumController extends BaseController
{
    private String prefix = "power/powernum";
	
	@Autowired
	private IPowernumService powernumService;
	
	@Autowired
	private ISysDeptService deptService;
	
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
		SysUser user = ShiroUtils.getSysUser();
		List<SysRole> roles = user.getRoles();
		int role = 0;
		for(int i = 0; i < roles.size(); i ++) {
			String roleKey = roles.get(i).getRoleKey();
			//判断是否为核算员
			if(RoleConstants.HESUAN.equals(roleKey) && role < 2 ) {
				role = 1;
			}
			//判断是否为管理员
			if(RoleConstants.ADMIN.equals(roleKey)) {
				role = 2;
			}
		}
		List<Powernum> list = new ArrayList<Powernum>();
		if(role == 0) {//结算员
			Long company = user.getDeptId();
			SysDept dept = deptService.selectDeptById(company);
        	list = powernumService.selectPowernumList(dept.getParentId());
		}
		else if(role == 1) {//核算员
			Long company = user.getDeptId();
			SysDept dept = deptService.selectDeptById(company);
        	list = powernumService.selectPowernumListCommited(dept.getParentId());			
		}
		else {//管理员
        	list = powernumService.selectPowernumList(powernum);			
		}
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
	
}
