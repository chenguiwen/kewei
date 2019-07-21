package com.ruoyi.power.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.power.mapper.PowernumMapper;
import com.ruoyi.power.domain.Powernum;
import com.ruoyi.power.service.IPowernumService;
import com.ruoyi.common.annotation.DataScope;
import com.ruoyi.common.core.text.Convert;

/**
 * 电力公司 服务层实现
 * 
 * @author ruoyi
 * @date 2019-07-20
 */
@Service
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
	
	/**
     * 查询电力公司列表
     * 
     * @param powernum 电力公司信息
     * @return 电力公司集合
     */
	@Override
    @DataScope(tableAlias = "sys_powernum")
	public List<Powernum> selectPowernumList(Powernum powernum)
	{
	    return powernumMapper.selectPowernumList(powernum);
	}

	@Override
    @DataScope(tableAlias = "sys_powernum")
	public List<Powernum> selectPowernumListCommited(Long company) {
		return powernumMapper.selectPowernumListCommited(company);
	}

	@Override
    @DataScope(tableAlias = "sys_powernum")
	public List<Powernum> selectPowernumList(Long company) {
		return powernumMapper.selectPowernum(company);
	}

	@Override
    @DataScope(tableAlias = "sys_powernum")
	public List<Powernum> selectPowernumListByIds(String ids) {
		return powernumMapper.selectPowernumListByIds(ids);
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
