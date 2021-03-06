package com.ruoyi.system.service;

import com.ruoyi.system.domain.Powerinfo;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

/**
 * 电厂 服务层
 * 
 * @author ruoyi
 * @date 2019-08-28
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
	public List<Powerinfo> selectPowerinfoByIds(String powerInfoIds);
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
	@Transactional
	public int updatePowerinfo(Powerinfo powerinfo);
	@Transactional(rollbackFor = Exception.class)
	public int updatePowerinfos(List<Powerinfo> powerinfo);
		
	/**
     * 删除电厂信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deletePowerinfoByIds(String ids);
	
}
