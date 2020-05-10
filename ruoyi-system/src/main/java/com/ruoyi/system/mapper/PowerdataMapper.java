package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.Powerdata;
import java.util.List;	

/**
 * 电力数据导出 数据层
 * 
 * @author ruoyi
 * @date 2020-03-07
 */
public interface PowerdataMapper 
{
	/**
     * 查询电力数据导出信息
     * 
     * @param powerdataId 电力数据导出ID
     * @return 电力数据导出信息
     */
	public Powerdata selectPowerdataById(Long powerdataId);
	
	/**
     * 查询电力数据导出列表
     * 
     * @param powerdata 电力数据导出信息
     * @return 电力数据导出集合
     */
	public List<Powerdata> selectPowerdataList(Powerdata powerdata);
	
	/**
     * 新增电力数据导出
     * 
     * @param powerdata 电力数据导出信息
     * @return 结果
     */
	public int insertPowerdata(Powerdata powerdata);
	
	/**
     * 修改电力数据导出
     * 
     * @param powerdata 电力数据导出信息
     * @return 结果
     */
	public int updatePowerdata(Powerdata powerdata);
	
	/**
     * 删除电力数据导出
     * 
     * @param powerdataId 电力数据导出ID
     * @return 结果
     */
	public int deletePowerdataById(Long powerdataId);
	
	/**
     * 批量删除电力数据导出
     * 
     * @param powerdataIds 需要删除的数据ID
     * @return 结果
     */
	public int deletePowerdataByIds(String[] powerdataIds);
	
}