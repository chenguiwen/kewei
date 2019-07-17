package com.ruoyi.power.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.power.mapper.PowerinfoMapper;
import com.ruoyi.power.domain.Powerinfo;
import com.ruoyi.power.service.IPowerinfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 电厂 服务层实现
 * 
 * @author ruoyi
 * @date 2019-07-08
 */
@Service
public class PowerinfoServiceImpl implements IPowerinfoService 
{
	@Autowired
	private PowerinfoMapper powerinfoMapper;

	/**
     * 查询电厂信息
     * 
     * @param powerInfoId 电厂ID
     * @return 电厂信息
     */
    @Override
	public Powerinfo selectPowerinfoById(Long powerInfoId)
	{
	    return powerinfoMapper.selectPowerinfoById(powerInfoId);
	}
	
	/**
     * 查询电厂列表
     * 
     * @param powerinfo 电厂信息
     * @return 电厂集合
     */
	@Override
	public List<Powerinfo> selectPowerinfoList(Powerinfo powerinfo)
	{
	    return powerinfoMapper.selectPowerinfoList(powerinfo);
	}

	@Override
	public List<Powerinfo> selectPowerinfoListByIds(String ids) {
		return powerinfoMapper.selectPowerinfoListByIds(Convert.toStrArray(ids));
	}

	@Override
	public List<Powerinfo> selectPowerinfoListCommited() {
		return powerinfoMapper.selectPowerinfoListCommited();
	}
    /**
     * 新增电厂
     * 
     * @param powerinfo 电厂信息
     * @return 结果
     */
	@Override
	public int insertPowerinfo(Powerinfo powerinfo)
	{
	    return powerinfoMapper.insertPowerinfo(powerinfo);
	}
	
	/**
     * 修改电厂
     * 
     * @param powerinfo 电厂信息
     * @return 结果
     */
	@Override
	public int updatePowerinfo(Powerinfo powerinfo)
	{
	    return powerinfoMapper.updatePowerinfo(powerinfo);
	}

	/**
     * 删除电厂对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deletePowerinfoByIds(String ids)
	{
		return powerinfoMapper.deletePowerinfoByIds(Convert.toStrArray(ids));
	}

	@Override
	public int commitPowerinfoList(List<Powerinfo> powerinfos) {
		return powerinfoMapper.commitPowerinfoList(powerinfos);
	}
	
}
