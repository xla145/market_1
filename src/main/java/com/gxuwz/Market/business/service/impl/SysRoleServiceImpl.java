package com.gxuwz.Market.business.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gxuwz.Market.business.dao.SysRoleDAO;
import com.gxuwz.Market.business.entity.SysRole;
import com.gxuwz.Market.business.entity.SysRoleRight;
import com.gxuwz.Market.business.service.ISysRoleRightService;
import com.gxuwz.Market.business.service.ISysRoleService;
import com.gxuwz.core.pagination.Result;

/**
 * <p>Title: 类名：权限-业务逻辑--实现</p>
 * <p>Description:mailsender-业务逻辑/n</p>
 * @author:	梧州学院 软件开发中心 庞光垚
 * @date:2015.07.31
 */
@Service("sysRoleService")
public class SysRoleServiceImpl implements ISysRoleService {
	@Autowired
	private SysRoleDAO sysRoleDAO;
	
	@Autowired
	private ISysRoleRightService sysRoleRightService;

	/**
	 * 根据条件查找分页
	 * @param sysMerchantUnit 模型
	 * @param page 第几页
	 * @param row 长度
	 * @return
	 */
	public Result<SysRole> find(SysRole sysRole, int page, int row){
		return sysRoleDAO.find(sysRole, page, row);
	}
	
	/**
	 * 保存权限
	 * @param sysRole 权限
	 */
	public void add(SysRole sysRole, String[] rightId){
		for(int i = 0; i < rightId.length; i++){
			SysRoleRight sysRoleRight = new SysRoleRight();
			sysRoleRight.setRoleId(sysRole.getRoleId());
			sysRoleRight.setRightId(rightId[i]);
			sysRoleRightService.addRoleRight(sysRoleRight);
		}
		sysRoleDAO.save(sysRole);
	}

	/**
	 * 根据id查询一条数据
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	@Override
	public SysRole findById(String roleId) {
		return sysRoleDAO.get(SysRole.class, roleId);
	}

	/**
	 * 保存角色修改信息
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	@Override
	public void update(SysRole sysRole, String[] rightId) {
		//根据角色编号删除角色权限
		sysRoleRightService.delete(sysRole.getRoleId());
		//添加角色权限
		for(int i = 0; i < rightId.length; i++){
			SysRoleRight sysRoleRight = new SysRoleRight();
			sysRoleRight.setRoleId(sysRole.getRoleId());
			sysRoleRight.setRightId(rightId[i]);
			sysRoleRightService.addRoleRight(sysRoleRight);
		}
		//更新角色信息
		sysRoleDAO.update(sysRole);
		
	}

	/**
	 * 删除角色信息
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	@Override
	public void delete(String roleId) {
		sysRoleRightService.delete(roleId);		
		sysRoleDAO.remove(findById(roleId));
	}
	/**
	 * 验证角色编号是否重复
	 * @param roleId 角色编号
	 */
	@Override
	public String checkRoleName(String roleId) {
		SysRole sysRole = sysRoleDAO.get(SysRole.class, roleId);
		if(null != sysRole){
			return "no";
		}else{
			return "ok";
		}
		
	}
	/**
	 * 查询所有角色信息
	 */
	@Override
	public List<SysRole> getRoleAll() {
		return sysRoleDAO.getAll(SysRole.class);
	}

}
