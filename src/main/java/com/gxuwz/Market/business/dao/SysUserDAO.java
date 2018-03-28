package com.gxuwz.Market.business.dao;


import com.gxuwz.Market.business.entity.SysRoleRight;
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
	@SuppressWarnings("unchecked")
	public Result<SysUser> find(SysUser sysUser, int page, int size){
		String queryString = "from SysUser where 1=1";
		if(null != sysUser.getUserName()){
			queryString = queryString + " and user_name like '%"+sysUser.getUserName()+"%' or user_address like '%"+sysUser.getUserName()+"%'";
		}
		int start=(page-1)*size;
		int limit =size;
		return (Result<SysUser> )super.find(queryString, null, null, start, limit);
	}
	
	/**
	 * 用户登录（app端）--第三方登录
	 * @param loginNameValue 微博、微信、qq服务器返回的id
	 * @param loginType 登录方式：1-qq，2-微信，3-微博
	 * @return Users 对象列表
	 */
	public List<SysUser> findByOtherId(String loginNameValue,int loginType){
		//List<SysUser> listUser = null;
		String queryString = "from SysUser where 1=1 ";
		if(1 == loginType){
			queryString = queryString + " and userQq = '"+loginNameValue+"'";
		}
		if(2 == loginType){
			queryString = queryString + " and userWeixin = '"+loginNameValue+"'";
		}
		if(3 == loginType){
			queryString = queryString + " and userWeibo = '"+loginNameValue+"'";
		}
		return this.getHibernateTemplate().find(queryString);
	}
	
	/**
	 * 验证用户名是否重复
	 * @param userId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<SysUser> checkUserId(String userId){
		String hql = "from SysUser where userId = '"+userId+"'";
		return this.getHibernateTemplate().find(hql);
	}
	
	/**
	 * 判断服务器是否存在该值（用户名是否重复，手机号码是否重复等）
	 * @param property SysUser对象的属性
	 * @param value 值
	 * @return true -重复了，false-不重复
	 */
	public boolean isHadValue(String property,String value){
		boolean isT = false;
		String hql = "from SysUser where "+property+" = '"+value+"'";
		List<SysUser> list = this.getHibernateTemplate().find(hql);
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
		List<SysUser> list = this.getHibernateTemplate().find(hql);
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
		List<SysUser> list = this.getHibernateTemplate().find(hql);
		if(null != list && 0<list.size()){
			sysUser = list.get(0);
		}
		return sysUser;
	}
	/**
	 * 根据用户id查询用户的权限id
	 * @param userId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<SysRoleRight> findUserPermissions(String userId) {
		String queryString="select new com.gxuwz.Market.business.entity.SysRoleRight(srr.rightId) " +
				   "from SysUser su,SysUserRole sur,SysRole sr,SysRoleRight srr "+
		           "where su.userId=sur.userId and sur.roleId=sr.roleId and sr.roleId=srr.roleId and su.userId='"+userId+"'";
		return getHibernateTemplate().find(queryString);
	}
}