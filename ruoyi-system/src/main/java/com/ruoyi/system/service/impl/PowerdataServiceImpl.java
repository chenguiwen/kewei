package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.PowerdataMapper;
import com.ruoyi.system.domain.Powerdata;
import com.ruoyi.system.service.IPowerdataService;
import com.ruoyi.common.core.text.Convert;

/**
 * 电力数据导出 服务层实现
 * 
 * @author ruoyi
 * @date 2020-03-07
 */
@Service
public class PowerdataServiceImpl implements IPowerdataService 
{
	@Autowired
	private PowerdataMapper powerdataMapper;

	/**
     * 查询电力数据导出信息
     * 
     * @param powerdataId 电力数据导出ID
     * @return 电力数据导出信息
     */
    @Override
	public Powerdata selectPowerdataById(Long powerdataId)
	{
	    return powerdataMapper.selectPowerdataById(powerdataId);
	}
	
	/**
     * 查询电力数据导出列表
     * 
     * @param powerdata 电力数据导出信息
     * @return 电力数据导出集合
     */
	@Override
	public List<Powerdata> selectPowerdataList(Powerdata powerdata)
	{
	    return powerdataMapper.selectPowerdataList(powerdata);
	}
	
    /**
     * 新增电力数据导出
     * 
     * @param powerdata 电力数据导出信息
     * @return 结果
     */
	@Override
	public int insertPowerdata(Powerdata powerdata)
	{
	    return powerdataMapper.insertPowerdata(powerdata);
	}
	
	/**
     * 修改电力数据导出
     * 
     * @param powerdata 电力数据导出信息
     * @return 结果
     */
	@Override
	public int updatePowerdata(Powerdata powerdata)
	{
	    return powerdataMapper.updatePowerdata(powerdata);
	}

	/**
     * 删除电力数据导出对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deletePowerdataByIds(String ids)
	{
		return powerdataMapper.deletePowerdataByIds(Convert.toStrArray(ids));
	}
	
}
