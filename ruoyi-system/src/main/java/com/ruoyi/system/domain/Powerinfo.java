package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;
import java.math.BigDecimal;

/**
 * 电厂表 sys_powerinfo
 * 
 * @author ruoyi
 * @date 2019-08-28
 */
public class Powerinfo extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 电厂id */
	private Long powerInfoId;
	/** A线有功反向(总) */
	private BigDecimal powerCode01;
	/** A线有功正向(总) */
	private BigDecimal powerCode02;
	/** B线有功反向(总) */
	private BigDecimal powerCode03;
	/** B线有功正向(总) */
	private BigDecimal powerCode04;
	/** C线有功反向(总) */
	private BigDecimal powerCode05;
	/** C线有功正向(总) */
	private BigDecimal powerCode06;
	/** #1机组 */
	private BigDecimal powerNum01;
	/** #2机组 */
	private BigDecimal powerNum02;
	/** #3机组 */
	private BigDecimal powerNum03;
	/** #4机组 */
	private BigDecimal powerNum04;
	/** #5机组 */
	private BigDecimal powerNum05;
	/** #6机组 */
	private BigDecimal powerNum06;
	/** 状态（0代表保存 2代表提交） */
	private String status;
	/** 部门 */
	private Long department;
	/** 表单时间 */
	private Date billDate;

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

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("powerInfoId", getPowerInfoId())
            .append("powerCode01", getPowerCode01())
            .append("powerCode02", getPowerCode02())
            .append("powerCode03", getPowerCode03())
            .append("powerCode04", getPowerCode04())
            .append("powerCode05", getPowerCode05())
            .append("powerCode06", getPowerCode06())
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
