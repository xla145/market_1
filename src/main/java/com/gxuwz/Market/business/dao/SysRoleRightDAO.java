package com.gxuwz.Market.business.dao;


import com.gxuwz.Market.business.entity.SysRoleRight;
import com.gxuwz.core.dao.impl.BaseDaoImpl;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("sysRoleRightDAO")
public class SysRoleRightDAO extends BaseDaoImpl<SysRoleRight> {
	/**
	 * 删除对象
	 * @param roleId 角色编号
	 */
	public void deleteByRoleId(String roleId){
		String hql="delete from SysRoleRight srr where srr.roleId='"+roleId+"'";
		this.update(hql);
	}
	/**
	 * 根据角色编号查询出角色权限
	 * @param roleId 角色编号
	 */
	@SuppressWarnings("unchecked")
	public List<SysRoleRight> findByRoleId(String roleId){
		String hql = "from SysRoleRight where roleId='"+roleId+"'";
		return this.findByHql(hql);
		
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
		return this.findByHql(queryString);
	}
}
