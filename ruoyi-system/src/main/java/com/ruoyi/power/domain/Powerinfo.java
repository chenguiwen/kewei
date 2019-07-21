package com.ruoyi.power.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excels;
import com.ruoyi.common.annotation.Excel.Type;
import com.ruoyi.common.core.domain.BaseEntity;
import com.ruoyi.system.domain.SysDept;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 电厂表 sys_powerinfo
 * 
 * @author ruoyi
 * @date 2019-07-08
 */
public class Powerinfo extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 电厂id */
	private Long powerInfoId;
	/** 电码 */
	private BigDecimal powerCode01;
	/** 电码 */
	private BigDecimal powerCode02;
	/** 电码 */
	private BigDecimal powerCode03;
	/** 电码 */
	private BigDecimal powerCode04;
	/** 电码 */
	private BigDecimal powerCode05;
	/** 电码 */
	private BigDecimal powerCode06;
	/** 电码 */
	private BigDecimal powerCode07;
	/** 电码 */
	private BigDecimal powerCode08;
	/** 电码 */
	private BigDecimal powerCode09;
	/** 电码 */
	private BigDecimal powerCode10;
	/** 电码 */
	private BigDecimal powerCode11;
	/** 电码 */
	private BigDecimal powerCode12;
	/** 电码 */
	private BigDecimal powerCode13;
	/** 电码 */
	private BigDecimal powerCode14;
	/** 电码 */
	private BigDecimal powerCode15;
	/** 电码 */
	private BigDecimal powerCode16;
	/** 电码 */
	private BigDecimal powerCode17;
	/** 电码 */
	private BigDecimal powerCode18;
	/** 电码 */
	private BigDecimal powerCode19;
	/** 电码 */
	private BigDecimal powerCode20;
	/** 电量 */
	private BigDecimal powerNum01;
	/** 电量 */
	private BigDecimal powerNum02;
	/** 电量 */
	private BigDecimal powerNum03;
	/** 电量 */
	private BigDecimal powerNum04;
	/** 电量 */
	private BigDecimal powerNum05;
	/** 电量 */
	private BigDecimal powerNum06;
	/** 电量 */
	private BigDecimal powerNum07;
	/** 电量 */
	private BigDecimal powerNum08;
	/** 电量 */
	private BigDecimal powerNum09;
	/** 电量 */
	private BigDecimal powerNum10;
	/** 电量 */
	private BigDecimal powerNum11;
	/** 电量 */
	private BigDecimal powerNum12;
	/** 电量 */
	private BigDecimal powerNum13;
	/** 电量 */
	private BigDecimal powerNum14;
	/** 电量 */
	private BigDecimal powerNum15;
	/** 电量 */
	private BigDecimal powerNum16;
	/** 电量 */
	private BigDecimal powerNum17;
	/** 电量 */
	private BigDecimal powerNum18;
	/** 电量 */
	private BigDecimal powerNum19;
	/** 电量 */
	private BigDecimal powerNum20;
	/** 删除标志（0代表存在 2代表删除） */
	private String delFlag;
	/** 所属公司 */
	private Long company;
	/** 单据日期 */
    @JsonFormat(pattern = "yyyy-MM")
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
	public void setPowerCode01(BigDecimal powerCode01) 
	{
		this.powerCode01 = powerCode01;
	}

	public BigDecimal getPowerCode01() 
	{
		return powerCode01;
	}
	public void setPowerCode02(BigDecimal powerCode02) 
	{
		this.powerCode02 = powerCode02;
	}

	public BigDecimal getPowerCode02() 
	{
		return powerCode02;
	}
	public void setPowerCode03(BigDecimal powerCode03) 
	{
		this.powerCode03 = powerCode03;
	}

	public BigDecimal getPowerCode03() 
	{
		return powerCode03;
	}
	public void setPowerCode04(BigDecimal powerCode04) 
	{
		this.powerCode04 = powerCode04;
	}

	public BigDecimal getPowerCode04() 
	{
		return powerCode04;
	}
	public void setPowerCode05(BigDecimal powerCode05) 
	{
		this.powerCode05 = powerCode05;
	}

	public BigDecimal getPowerCode05() 
	{
		return powerCode05;
	}
	public void setPowerCode06(BigDecimal powerCode06) 
	{
		this.powerCode06 = powerCode06;
	}

	public BigDecimal getPowerCode06() 
	{
		return powerCode06;
	}
	public void setPowerCode07(BigDecimal powerCode07) 
	{
		this.powerCode07 = powerCode07;
	}

	public BigDecimal getPowerCode07() 
	{
		return powerCode07;
	}
	public void setPowerCode08(BigDecimal powerCode08) 
	{
		this.powerCode08 = powerCode08;
	}

	public BigDecimal getPowerCode08() 
	{
		return powerCode08;
	}
	public void setPowerCode09(BigDecimal powerCode09) 
	{
		this.powerCode09 = powerCode09;
	}

	public BigDecimal getPowerCode09() 
	{
		return powerCode09;
	}
	public void setPowerCode10(BigDecimal powerCode10) 
	{
		this.powerCode10 = powerCode10;
	}

	public BigDecimal getPowerCode10() 
	{
		return powerCode10;
	}
	public void setPowerCode11(BigDecimal powerCode11) 
	{
		this.powerCode11 = powerCode11;
	}

	public BigDecimal getPowerCode11() 
	{
		return powerCode11;
	}
	public void setPowerCode12(BigDecimal powerCode12) 
	{
		this.powerCode12 = powerCode12;
	}

	public BigDecimal getPowerCode12() 
	{
		return powerCode12;
	}
	public void setPowerCode13(BigDecimal powerCode13) 
	{
		this.powerCode13 = powerCode13;
	}

	public BigDecimal getPowerCode13() 
	{
		return powerCode13;
	}
	public void setPowerCode14(BigDecimal powerCode14) 
	{
		this.powerCode14 = powerCode14;
	}

	public BigDecimal getPowerCode14() 
	{
		return powerCode14;
	}
	public void setPowerCode15(BigDecimal powerCode15) 
	{
		this.powerCode15 = powerCode15;
	}

	public BigDecimal getPowerCode15() 
	{
		return powerCode15;
	}
	public void setPowerCode16(BigDecimal powerCode16) 
	{
		this.powerCode16 = powerCode16;
	}

	public BigDecimal getPowerCode16() 
	{
		return powerCode16;
	}
	public void setPowerCode17(BigDecimal powerCode17) 
	{
		this.powerCode17 = powerCode17;
	}

	public BigDecimal getPowerCode17() 
	{
		return powerCode17;
	}
	public void setPowerCode18(BigDecimal powerCode18) 
	{
		this.powerCode18 = powerCode18;
	}

	public BigDecimal getPowerCode18() 
	{
		return powerCode18;
	}
	public void setPowerCode19(BigDecimal powerCode19) 
	{
		this.powerCode19 = powerCode19;
	}

	public BigDecimal getPowerCode19() 
	{
		return powerCode19;
	}
	public void setPowerCode20(BigDecimal powerCode20) 
	{
		this.powerCode20 = powerCode20;
	}

	public BigDecimal getPowerCode20() 
	{
		return powerCode20;
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
	public void setPowerNum07(BigDecimal powerNum07) 
	{
		this.powerNum07 = powerNum07;
	}

	public BigDecimal getPowerNum07() 
	{
		return powerNum07;
	}
	public void setPowerNum08(BigDecimal powerNum08) 
	{
		this.powerNum08 = powerNum08;
	}

	public BigDecimal getPowerNum08() 
	{
		return powerNum08;
	}
	public void setPowerNum09(BigDecimal powerNum09) 
	{
		this.powerNum09 = powerNum09;
	}

	public BigDecimal getPowerNum09() 
	{
		return powerNum09;
	}
	public void setPowerNum10(BigDecimal powerNum10) 
	{
		this.powerNum10 = powerNum10;
	}

	public BigDecimal getPowerNum10() 
	{
		return powerNum10;
	}
	public void setPowerNum11(BigDecimal powerNum11) 
	{
		this.powerNum11 = powerNum11;
	}

	public BigDecimal getPowerNum11() 
	{
		return powerNum11;
	}
	public void setPowerNum12(BigDecimal powerNum12) 
	{
		this.powerNum12 = powerNum12;
	}

	public BigDecimal getPowerNum12() 
	{
		return powerNum12;
	}
	public void setPowerNum13(BigDecimal powerNum13) 
	{
		this.powerNum13 = powerNum13;
	}

	public BigDecimal getPowerNum13() 
	{
		return powerNum13;
	}
	public void setPowerNum14(BigDecimal powerNum14) 
	{
		this.powerNum14 = powerNum14;
	}

	public BigDecimal getPowerNum14() 
	{
		return powerNum14;
	}
	public void setPowerNum15(BigDecimal powerNum15) 
	{
		this.powerNum15 = powerNum15;
	}

	public BigDecimal getPowerNum15() 
	{
		return powerNum15;
	}
	public void setPowerNum16(BigDecimal powerNum16) 
	{
		this.powerNum16 = powerNum16;
	}

	public BigDecimal getPowerNum16() 
	{
		return powerNum16;
	}
	public void setPowerNum17(BigDecimal powerNum17) 
	{
		this.powerNum17 = powerNum17;
	}

	public BigDecimal getPowerNum17() 
	{
		return powerNum17;
	}
	public void setPowerNum18(BigDecimal powerNum18) 
	{
		this.powerNum18 = powerNum18;
	}

	public BigDecimal getPowerNum18() 
	{
		return powerNum18;
	}
	public void setPowerNum19(BigDecimal powerNum19) 
	{
		this.powerNum19 = powerNum19;
	}

	public BigDecimal getPowerNum19() 
	{
		return powerNum19;
	}
	public void setPowerNum20(BigDecimal powerNum20) 
	{
		this.powerNum20 = powerNum20;
	}

	public BigDecimal getPowerNum20() 
	{
		return powerNum20;
	}
	public void setDelFlag(String delFlag) 
	{
		this.delFlag = delFlag;
	}

	public String getDelFlag() 
	{
		return delFlag;
	}

    public Long getCompany() {
		return company;
	}

	public void setCompany(Long company) {
		this.company = company;
	}

	public Date getBillDate() {
		return billDate;
	}

	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}

    public SysDept getDept()
    {
        if (dept == null)
        {
            dept = new SysDept();
        }
        return dept;
    }

    public void setDept(SysDept dept)
    {
        this.dept = dept;
    }


	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("powerInfoId", getPowerInfoId())
            .append("powerCode01", getPowerCode01())
            .append("powerCode02", getPowerCode02())
            .append("powerCode03", getPowerCode03())
            .append("powerCode04", getPowerCode04())
            .append("powerCode05", getPowerCode05())
            .append("powerCode06", getPowerCode06())
            .append("powerCode07", getPowerCode07())
            .append("powerCode08", getPowerCode08())
            .append("powerCode09", getPowerCode09())
            .append("powerCode10", getPowerCode10())
            .append("powerCode11", getPowerCode11())
            .append("powerCode12", getPowerCode12())
            .append("powerCode13", getPowerCode13())
            .append("powerCode14", getPowerCode14())
            .append("powerCode15", getPowerCode15())
            .append("powerCode16", getPowerCode16())
            .append("powerCode17", getPowerCode17())
            .append("powerCode18", getPowerCode18())
            .append("powerCode19", getPowerCode19())
            .append("powerCode20", getPowerCode20())
            .append("powerNum01", getPowerNum01())
            .append("powerNum02", getPowerNum02())
            .append("powerNum03", getPowerNum03())
            .append("powerNum04", getPowerNum04())
            .append("powerNum05", getPowerNum05())
            .append("powerNum06", getPowerNum06())
            .append("powerNum07", getPowerNum07())
            .append("powerNum08", getPowerNum08())
            .append("powerNum09", getPowerNum09())
            .append("powerNum10", getPowerNum10())
            .append("powerNum11", getPowerNum11())
            .append("powerNum12", getPowerNum12())
            .append("powerNum13", getPowerNum13())
            .append("powerNum14", getPowerNum14())
            .append("powerNum15", getPowerNum15())
            .append("powerNum16", getPowerNum16())
            .append("powerNum17", getPowerNum17())
            .append("powerNum18", getPowerNum18())
            .append("powerNum19", getPowerNum19())
            .append("powerNum20", getPowerNum20())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("company", getCompany())
            .append("dept", getDept())
            .toString();
    }
}
