package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.ruoyi.system.mapper.PowerinfoMapper;
import com.ruoyi.system.domain.Powerinfo;
import com.ruoyi.system.service.IPowerinfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 电厂 服务层实现
 * 
 * @author ruoyi
 * @date 2019-08-28
 */
@EnableTransactionManagement
@Service
@Transactional
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
    @Transactional
    public List<Powerinfo> selectPowerinfoByIds(String powerInfoIds){
    	//1\
    	//2\
    	//3\
    	return powerinfoMapper.selectPowerinfoByIds(Convert.toStrArray(powerInfoIds));
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
	@Transactional
	public int updatePowerinfo(Powerinfo powerinfo)
	{
		
	    return powerinfoMapper.updatePowerinfo(powerinfo);
	}
	@Transactional
	public int updatePowerinfos(List<Powerinfo> powerinfos) {
		if(1 >= powerinfos.size()) {
			return powerinfoMapper.updatePowerinfo(powerinfos.get(0));
		}
		else {
			for (int i = 0; i < powerinfos.size(); i++) {
				powerinfoMapper.updatePowerinfo(powerinfos.get(i));
				if(i == powerinfos.size()-1) {
					return powerinfoMapper.updatePowerinfo(powerinfos.get(i));
				}
			}
			return powerinfoMapper.updatePowerinfo(powerinfos.get(powerinfos.size()-1));
		}
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
	
}
