package com.gxuwz.Market.business.service;

import java.util.List;

import com.gxuwz.Market.business.entity.SysRole;
import com.gxuwz.core.pagination.Result;

/**
 * <p>Title: 类名：权限-业务逻辑--接口</p>
 * <p>Description:mailsender-业务逻辑/n</p>
 * @author:	梧州学院 软件开发中心 庞光垚
 * @date:2015.07.31
 */
public interface ISysRoleService {

	/**
	 * 根据条件查找分页
	 * @param sysMerchantUnit 模型
	 * @param page 第几页
	 * @param row 长度
	 * @return
	 */
	public Result<SysRole> find(SysRole sysRole, int page, int row);
	/**
	 * 保存权限
	 * @param sysRole 权限
	 */
	public void add(SysRole sysRole, String[] rightId);
	
	/**
	 * 根据id查询一条数据
	 * @param id
	 * @return
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public SysRole findById(String roleId);
	/**
	 * 保存角色修改信息
	 * @param sysRole 模型
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public void update(SysRole sysRole, String[] rightId);
	/**
	 * 删除角色信息
	 * @param sysRole 模型
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public void delete(String roleId);
	/**
	 * 验证角色编号是否重复
	 * @param roleId 角色编号
	 */
	public String checkRoleName(String roleId);
	/**
	 * 查询所有角色信息
	 */
	public List<SysRole> getRoleAll();
}
