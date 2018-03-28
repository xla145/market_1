package com.gxuwz.Market.business.service;

import java.util.List;

import com.gxuwz.Market.business.entity.SysRoleRight;

public interface ISysRoleRightService {

	/**
	 * 添加角色权限
	 * @param sysRoleRight
	 */
	public void addRoleRight(SysRoleRight sysRoleRight);
	/**
	 * 删除角色权限
	 * @param id
	 */
	public void delete(String id);

	/**
	 * 根据角色编号查询出所有权限
	 * @param roleId
	 * @return
	 */
	public List<SysRoleRight> findByRole(String roleId);
}
