package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.Powerinfo;
import java.util.List;	

/**
 * 电厂 数据层
 * 
 * @author ruoyi
 * @date 2019-08-28
 */
public interface PowerinfoMapper 
{
	/**
     * 查询电厂信息
     * 
     * @param powerInfoId 电厂ID
     * @return 电厂信息
     */
	public Powerinfo selectPowerinfoById(Long powerInfoId);
	public List<Powerinfo> selectPowerinfoByIds(String[] powerInfoIds);
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
     * 删除电厂
     * 
     * @param powerInfoId 电厂ID
     * @return 结果
     */
	public int deletePowerinfoById(Long powerInfoId);
	
	/**
     * 批量删除电厂
     * 
     * @param powerInfoIds 需要删除的数据ID
     * @return 结果
     */
	public int deletePowerinfoByIds(String[] powerInfoIds);
	
}