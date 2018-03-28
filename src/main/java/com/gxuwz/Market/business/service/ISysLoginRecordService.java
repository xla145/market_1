package com.gxuwz.Market.business.service;

import java.util.List;

import com.gxuwz.Market.business.entity.SysLoginRecord;
import com.gxuwz.core.pagination.Result;

public interface ISysLoginRecordService {
	
	/**
	 * 查询所有用户登陆记录
	 * @param page
	 * @param row
	 * @return
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	public Result<SysLoginRecord> findAll(int page, int row, String logtype);

	/**
	 * 根据用户登录id，查询用户信息
	 * @param userId
	 * @return
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	public SysLoginRecord findById(int id);
	
	/**
	 * 删除某条用户登录记录
	 * @param userId
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	public void delete(int id);
	
	/**
	 * 添加登录的用户
	 * @param sysLoginRecord
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.12
	 */
	public void add(SysLoginRecord sysLoginRecord);

}
