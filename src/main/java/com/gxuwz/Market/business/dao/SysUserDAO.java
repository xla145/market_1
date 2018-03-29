package com.gxuwz.Market.business.dao;


import com.gxuwz.Market.business.entity.SysUser;
import com.gxuwz.core.dao.impl.BaseDaoImpl;
import com.gxuwz.core.pagination.Result;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * A data access object (DAO) providing persistence and search support for
 * SysUser entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.gxuwz.Market.business.entity.SysUser
 * @author MyEclipse Persistence Tools
 */

@Repository("sysUserDAO")
public class SysUserDAO extends BaseDaoImpl<SysUser> {
	
	/**
	 * 根据条件查找分页
	 * @param sysUser 模型
	 * @param page 第几页
	 * @param size 长度
	 * @return
	 * @author 卢善坚，潘恒飞
	 * @date 2015.8.8
	 */
	public Result<SysUser> find(SysUser sysUser, int page, int size){
		String queryString = "from SysUser where 1=1";
		if(null != sysUser.getUserName()){
			queryString = queryString + " and user_name like '%"+sysUser.getUserName()+"%' or user_address like '%"+sysUser.getUserName()+"%'";
		}
		int start=(page-1)*size;
		int limit = size;
		return (Result<SysUser> )super.find(queryString, null, null, start, limit);
	}

	
	/**
	 * 验证用户名是否重复
	 * @param userId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<SysUser> checkUserId(String userId){
		String hql = "from SysUser where userId = ?";
		return super.findByHql(hql,userId);
	}
	
	/**
	 * 判断服务器是否存在该值（用户名是否重复，手机号码是否重复等）
	 * @param property SysUser对象的属性
	 * @param value 值
	 * @return true -重复了，false-不重复
	 */
	public boolean isHadValue(String property,String value){
		boolean isT = false;
		String hql = "from SysUser where "+property+" = ?";
		List<SysUser> list = super.findByHql(hql,value);
		if(null != list && 0<list.size()){
			isT = true;
		}
		return isT;
	}

	/**
	 * 根据property属性的值value获取对象
	 * @param property SysUser对象的属性
	 * @param value 值
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public SysUser findSysUserByProperty(String property,String value){
		SysUser sysUser = null;
		String hql = "from SysUser where "+property+" = '"+value+"'";
		List<SysUser> list = this.findByHql(hql);
		if(null != list && 0 <list.size()){
			sysUser = list.get(0);
		}
		return sysUser;
	}

	@SuppressWarnings("unchecked")
	public SysUser findSysUserByUserNameOrUserId(String userName){
		SysUser sysUser = null;
		sysUser = this.findSysUserByProperty("userName", userName);
		if(null == sysUser){
			sysUser = this.findSysUserByProperty("userId", userName);
		}
		return sysUser;
	}

	/**
	 * 根据property属性的值value获取对象
	 * @param userId SysUser对象的属性
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public SysUser findByUserid(String userId){
		SysUser sysUser = null;
		String hql = "from SysUser where userId = '"+userId+"'";
		List<SysUser> list = this.findByHql(hql);
		if(null != list && 0<list.size()){
			sysUser = list.get(0);
		}
		return sysUser;
	}


}