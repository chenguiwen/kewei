package com.ruoyi.power.mapper;

import com.ruoyi.power.domain.Powerinfo;
import java.util.List;	

/**
 * 电厂 数据层
 * 
 * @author ruoyi
 * @date 2019-07-08
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
	
	/**
     * 查询电厂列表
     * 
     * @param powerinfo 电厂信息
     * @return 电厂集合
     */
	public List<Powerinfo> selectPowerinfoList(Powerinfo powerinfo);
	public List<Powerinfo> selectPowerinfo(Long company);
	public List<Powerinfo> selectPowerinfoListByIds(String[] ids);
	public List<Powerinfo> selectPowerinfoListCommited(Long company);
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
	
	/**
	 * 提交
	 * */
	public int commitPowerinfoById(Long powerInfoId);
	
	/**
	 * 批量提交
	 * */
	public int commitPowerinfoList(List<Powerinfo> powerinfos);	
}