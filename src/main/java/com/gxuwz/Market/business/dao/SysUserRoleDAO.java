package com.gxuwz.Market.business.dao;

import com.gxuwz.Market.business.entity.SysUserRole;
import com.gxuwz.core.dao.impl.BaseDaoImpl;
import com.gxuwz.core.pagination.Result;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("sysUserRoleDAO")
public class SysUserRoleDAO extends BaseDaoImpl<SysUserRole> {

	
	/**
	 * 根据条件查找分页
	 * @param model 模型
	 * @param page 第几页
	 * @param size 长度
	 * @return
	 * @author 潘恒飞，蒙译文
	 */
	@SuppressWarnings("unchecked")
	public Result<SysUserRole> find(SysUserRole model, int page, int size) {
		String queryString="from SysUserRole where 1=1";
		int start=(page-1)*size;
		int limit =size;
		return (Result<SysUserRole>)super.find(queryString, null, null, start, limit);
	}
	/**
	 * 删除对象
	 * @param userId 用户编号
	 */
	public void deleteByUserId(String userId){
		String hql="delete from SysUserRole srr where srr.userId = ?";
		super.update(hql,userId);
	}
	/**
	 * 根据用户编号查询用户角色信息
	 * @param userId
	 * @return
	 */
	public List<SysUserRole> findByUserId(String userId){
		String hql = "from SysUserRole where userId = '"+userId+"'";
		return (List<SysUserRole>)super.findByHql(hql);
	}
}
