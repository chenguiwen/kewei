package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excels;
import com.ruoyi.common.annotation.Excel.Type;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 电力数据导出表 sys_powerdata
 * 
 * @author ruoyi
 * @date 2020-03-07
 */
public class Powerdata extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 电厂id */
	private Long powerdataId;
	/** 发电厂数据 */
	private String powerinfo;
	/** 电力公司数据 */
	private String powernum;
	private Long department;
	/** 导出部门数据 */
    @Excels({
        @Excel(name = "部门名称", targetAttr = "deptName", type = Type.EXPORT),
        @Excel(name = "部门负责人", targetAttr = "leader", type = Type.EXPORT)
    })
    private SysDept dept;
	/** 导出表单时间内数据 */
	private Date billDate;

	public void setPowerdataId(Long powerdataId) 
	{
		this.powerdataId = powerdataId;
	}

	public Long getPowerdataId() 
	{
		return powerdataId;
	}
	public void setPowerinfo(String powerinfo) 
	{
		this.powerinfo = powerinfo;
	}

	public String getPowerinfo() 
	{
		return powerinfo;
	}
	public void setPowernum(String powernum) 
	{
		this.powernum = powernum;
	}

	public String getPowernum() 
	{
		return powernum;
	}
	public void setDepartment(Long department) 
	{
		this.department = department;
	}

	public Long getDepartment() 
	{
		return department;
	}
	public void setDepartment(SysDept dept) 
	{
		this.dept = dept;
	}

	public SysDept getDept() 
	{
		return dept;
	}
	public void setBillDate(Date billDate) 
	{
		this.billDate = billDate;
	}

	public Date getBillDate() 
	{
		return billDate;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("powerdataId", getPowerdataId())
            .append("powerinfo", getPowerinfo())
            .append("powernum", getPowernum())
            .append("remark", getRemark())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("department", getDepartment())
            .append("billDate", getBillDate())
            .toString();
    }
}
