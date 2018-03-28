package com.gxuwz.Market.business.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gxuwz.Market.business.dao.SysLoginRecordDAO;
import com.gxuwz.Market.business.entity.SysLoginRecord;
import com.gxuwz.Market.business.service.ISysLoginRecordService;
import com.gxuwz.core.pagination.Result;

@Service("sysLoginRecordService")
public class SysLoginRecordServiceImpl implements ISysLoginRecordService {
	@Autowired
	private SysLoginRecordDAO sysLoginRecordDAO;

	
	/**
	 * 查询所有用户登陆记录
	 * @param page
	 * @param row
	 * @return
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	@Override
	public Result<SysLoginRecord> findAll(int page, int row,String logtype) {
		return sysLoginRecordDAO.find(page, row, logtype);
	}
	
	/**
	 * 根据用户登录id，查询用户信息
	 * @param userId
	 * @return
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	@Override
	public SysLoginRecord findById(int id) {
		return sysLoginRecordDAO.get(SysLoginRecord.class, id);
	}
	
	/**
	 * 根据Id删除用户登录记录
	 * @param userId
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	@Override
	public void delete(int id) {
		sysLoginRecordDAO.remove(findById(id));		
	}
	
	/**
	 * 添加登录的用户
	 * @param sysLoginRecord
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.12
	 */
	@Override
	public void add(SysLoginRecord sysLoginRecord) {
		sysLoginRecordDAO.save(sysLoginRecord);
		
	}



}
