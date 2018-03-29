package com.gxuwz.Market.business.dao;

import com.gxuwz.Market.business.entity.SysRole;
import com.gxuwz.core.dao.impl.BaseDaoImpl;
import com.gxuwz.core.pagination.Result;
import org.springframework.stereotype.Repository;

/**
 * A data access object (DAO) providing persistence and search support for
 * SysUser entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 *
 * @author MyEclipse Persistence Tools
 */

@Repository("sysRoleDAO")
public class SysRoleDAO extends BaseDaoImpl<SysRole> {
	
	/**
	 * 根据条件查找分页
	 * @param model 模型
	 * @param page 第几页
	 * @param size 长度
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Result<SysRole> find(SysRole model, int page, int size) {
		String queryString="from SysRole where 1=1";
		if(null != model.getRoleName()){
			queryString = queryString + " and role_name like '%"+model.getRoleName()+"%'";
		}
		int start=(page-1)*size;
		int limit =size;
		return super.find(queryString, null, null, start, limit);
	}
}