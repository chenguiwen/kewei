package com.ruoyi.power.mapper;

import com.ruoyi.power.domain.Powernum;
import java.util.List;	

/**
 * 电力公司 数据层
 * 
 * @author ruoyi
 * @date 2019-07-20
 */
public interface PowernumMapper 
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
	public List<Powernum> selectPowernumListCommited(Long company);
	public List<Powernum> selectPowernum(Long company);
	public List<Powernum> selectPowernumListByIds(String ids);
	
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
     * 删除电力公司
     * 
     * @param powerInfoId 电力公司ID
     * @return 结果
     */
	public int deletePowernumById(Long powerInfoId);
	
	/**
     * 批量删除电力公司
     * 
     * @param powerInfoIds 需要删除的数据ID
     * @return 结果
     */
	public int deletePowernumByIds(String[] powerInfoIds);
	
}