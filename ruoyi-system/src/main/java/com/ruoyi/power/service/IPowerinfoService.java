package com.ruoyi.power.service;

import com.ruoyi.power.domain.Powerinfo;
import java.util.List;

/**
 * 电厂 服务层
 * 
 * @author ruoyi
 * @date 2019-07-08
 */
public interface IPowerinfoService 
{
	/**
     * 查询电厂信息
     * 
     * @param powerInfoId 电厂ID
     * @return 电厂信息
     */
	public Powerinfo selectPowerinfoById(Long powerInfoId);
	
	/**
     * 查询电厂列表
     * 
     * @param powerinfo 电厂信息
     * @return 电厂集合
     */
	public List<Powerinfo> selectPowerinfoList(Powerinfo powerinfo);
	
	/**
     * 新增电厂
     * 
     * @param powerinfo 电厂信息
     * @return 结果
     */
	public int insertPowerinfo(Powerinfo powerinfo);
	
	/**
     * 修改电厂
     * 
     * @param powerinfo 电厂信息
     * @return 结果
     */
	public int updatePowerinfo(Powerinfo powerinfo);
		
	/**
     * 删除电厂信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deletePowerinfoByIds(String ids);
	
}
