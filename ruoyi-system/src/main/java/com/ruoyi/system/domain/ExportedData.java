package com.ruoyi.system.domain;

import java.util.List;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excels;
import com.ruoyi.common.annotation.Excel.Type;

public class ExportedData {
	
    @Excels({
    	@Excel(name="1.2#主变高压侧电量之和", targetAttr = "powerNum01",type = Type.EXPORT),
    	@Excel(name="1#机原始上网电量", targetAttr = "powerNum02",type = Type.EXPORT)
    })
	private List<Powernum> nums;

    @Excels({
        @Excel(name = "A线有功反向(总)", targetAttr = "powerCode01", type = Type.EXPORT),
        @Excel(name = "A线有功正向(总)", targetAttr = "powerCode02", type = Type.EXPORT)
    })
	private List<Powerinfo> infos;
	
	
	public List<Powernum> getNums() {
		return nums;
	}
	public void setNums(List<Powernum> nums) {
		this.nums = nums;
	}
	public List<Powerinfo> getInfos() {
		return infos;
	}
	public void setInfos(List<Powerinfo> infos) {
		this.infos = infos;
	}

}
