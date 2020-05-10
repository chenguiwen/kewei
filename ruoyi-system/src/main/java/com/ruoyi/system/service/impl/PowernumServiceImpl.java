package com.ruoyi.system.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ruoyi.system.mapper.PowernumMapper;
import com.ruoyi.system.domain.Powernum;
import com.ruoyi.system.service.IPowernumService;
import com.ruoyi.common.core.text.Convert;

/**
 * 电力公司 服务层实现
 * 
 * @author ruoyi
 * @date 2019-08-28
 */
@Service
@Transactional
public class PowernumServiceImpl implements IPowernumService 
{
	@Autowired
	private PowernumMapper powernumMapper;

	/**
     * 查询电力公司信息
     * 
     * @param powerInfoId 电力公司ID
     * @return 电力公司信息
     */
    @Override
	public Powernum selectPowernumById(Long powerInfoId)
	{
	    return powernumMapper.selectPowernumById(powerInfoId);
	}
	public Powernum selectPowernumById(String powernumIds) {
	    return powernumMapper.selectPowernumById(Convert.toStrArray(powernumIds));		
	}
	public List<Powernum> selectPowernumByIds(String powernumIds) {
		List<Powernum> list = new ArrayList<Powernum>();
		String[] ids = Convert.toStrArray(powernumIds);
		for (int i = 0; i < ids.length; i++) {
			list.add(powernumMapper.selectPowernumById(Convert.toStrArray(ids[i])));
		}
	    return list;		
	}
	
	/**
     * 查询电力公司列表
     * 
     * @param powernum 电力公司信息
     * @return 电力公司集合
     */
	@Override
	public List<Powernum> selectPowernumList(Powernum powernum)
	{
	    return powernumMapper.selectPowernumList(powernum);
	}
	
    /**
     * 新增电力公司
     * 
     * @param powernum 电力公司信息
     * @return 结果
     */
	@Override
	public int insertPowernum(Powernum powernum)
	{
	    return powernumMapper.insertPowernum(powernum);
	}
	
	/**
     * 修改电力公司
     * 
     * @param powernum 电力公司信息
     * @return 结果
     */
	@Override
	public int updatePowernum(Powernum powernum)
	{
	    return powernumMapper.updatePowernum(powernum);
	}
	@Transactional
	public int updatePowernums(List<Powernum> powernums) {
		if(1 >= powernums.size()) {
			return powernumMapper.updatePowernum(powernums.get(0));
		}
		else {
			for (int i = 0; i < powernums.size(); i++) {
				powernumMapper.updatePowernum(powernums.get(i));
				if(i == powernums.size()-1) {
					return powernumMapper.updatePowernum(powernums.get(i));
				}
			}
			return powernumMapper.updatePowernum(powernums.get(powernums.size()-1));
		}
	}

	/**
     * 删除电力公司对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deletePowernumByIds(String ids)
	{
		return powernumMapper.deletePowernumByIds(Convert.toStrArray(ids));
	}
	
}
