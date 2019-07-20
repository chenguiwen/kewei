package com.ruoyi.power.service;

import com.ruoyi.power.domain.Powernum;
import java.util.List;

/**
 * 电力公司 服务层
 * 
 * @author ruoyi
 * @date 2019-07-20
 */
public interface IPowernumService 
{
	/**
     * 查询电力公司信息
     * 
     * @param powerInfoId 电力公司ID
     * @return 电力公司信息
     */
	public Powernum selectPowernumById(Long powerInfoId);
	
	/**
     * 查询电力公司列表
     * 
     * @param powernum 电力公司信息
     * @return 电力公司集合
     */
	public List<Powernum> selectPowernumList(Powernum powernum);
	
	/**
     * 新增电力公司
     * 
     * @param powernum 电力公司信息
     * @return 结果
     */
	public int insertPowernum(Powernum powernum);
	
	/**
     * 修改电力公司
     * 
     * @param powernum 电力公司信息
     * @return 结果
     */
	public int updatePowernum(Powernum powernum);
		
	/**
     * 删除电力公司信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deletePowernumByIds(String ids);
	
}
