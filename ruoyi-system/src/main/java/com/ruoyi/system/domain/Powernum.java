package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.ruoyi.common.annotation.Excels;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excel.Type;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;
import java.math.BigDecimal;

/**
 * 电力公司表 sys_powernum
 * 
 * @author ruoyi
 * @date 2019-08-28
 */
public class Powernum extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 电厂id */
	private Long powerInfoId;
	/** 1.2#主变高压侧电量之和 */
	private BigDecimal powerNum01;
	/** 1#机原始上网电量 */
	private BigDecimal powerNum02;
	/** 2#机原始上网电量 */
	private BigDecimal powerNum03;
	/** 供电侧电量 */
	private BigDecimal powerNum04;
	/** 1#机结算上网电量 */
	private BigDecimal powerNum05;
	/** 2#机结算上网电量 */
	private BigDecimal powerNum06;
	/** 提交标志（0代表保存态 2代表提交态） */
	private String status;
	/** 部门 */
	private Long department;
	/** 表单时间 */
	private Date billDate;
    /** 部门对象 */
    @Excels({
        @Excel(name = "部门名称", targetAttr = "deptName", type = Type.EXPORT),
        @Excel(name = "部门负责人", targetAttr = "leader", type = Type.EXPORT)
    })
    private SysDept dept;
    
	public void setPowerInfoId(Long powerInfoId) 
	{
		this.powerInfoId = powerInfoId;
	}

	public Long getPowerInfoId() 
	{
		return powerInfoId;
	}
	public void setPowerNum01(BigDecimal powerNum01) 
	{
		this.powerNum01 = powerNum01;
	}

	public BigDecimal getPowerNum01() 
	{
		return powerNum01;
	}
	public void setPowerNum02(BigDecimal powerNum02) 
	{
		this.powerNum02 = powerNum02;
	}

	public BigDecimal getPowerNum02() 
	{
		return powerNum02;
	}
	public void setPowerNum03(BigDecimal powerNum03) 
	{
		this.powerNum03 = powerNum03;
	}

	public BigDecimal getPowerNum03() 
	{
		return powerNum03;
	}
	public void setPowerNum04(BigDecimal powerNum04) 
	{
		this.powerNum04 = powerNum04;
	}

	public BigDecimal getPowerNum04() 
	{
		return powerNum04;
	}
	public void setPowerNum05(BigDecimal powerNum05) 
	{
		this.powerNum05 = powerNum05;
	}

	public BigDecimal getPowerNum05() 
	{
		return powerNum05;
	}
	public void setPowerNum06(BigDecimal powerNum06) 
	{
		this.powerNum06 = powerNum06;
	}

	public BigDecimal getPowerNum06() 
	{
		return powerNum06;
	}
	public void setStatus(String status) 
	{
		this.status = status;
	}

	public String getStatus() 
	{
		return status;
	}
	public void setDepartment(Long department) 
	{
		this.department = department;
	}

	public Long getDepartment() 
	{
		return department;
	}
	public void setBillDate(Date billDate) 
	{
		this.billDate = billDate;
	}

	public Date getBillDate() 
	{
		return billDate;
	}

    public SysDept getDept() {
    	if(dept == null) {
    		dept = new SysDept();
    	}
		return dept;
	}

	public void setDept(SysDept dept) {
		this.dept = dept;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("powerInfoId", getPowerInfoId())
            .append("powerNum01", getPowerNum01())
            .append("powerNum02", getPowerNum02())
            .append("powerNum03", getPowerNum03())
            .append("powerNum04", getPowerNum04())
            .append("powerNum05", getPowerNum05())
            .append("powerNum06", getPowerNum06())
            .append("remark", getRemark())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("department", getDepartment())
            .append("billDate", getBillDate())
            .toString();
    }
}
