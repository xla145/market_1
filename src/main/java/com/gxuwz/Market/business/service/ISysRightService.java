package com.gxuwz.Market.business.service;

import java.util.List;

import com.gxuwz.Market.business.entity.SysRight;
import com.gxuwz.core.pagination.Result;

/**
 * <p>Title: 类名：权限-业务逻辑--接口</p>
 * <p>Description:mailsender-业务逻辑/n</p>
 * @author:	卢善坚，汪嘉惠
 * @date:2015.08.11
 */
public interface ISysRightService {
	/**
	 * 根据条件查找分页
	 * @param sysMerchantUnit 模型
	 * @param page 第几页
	 * @param row 长度
	 * @return
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public Result<SysRight> find(SysRight sysRight, int page, int row);
	/**
	 * 添加权限
	 * @param sysRight
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public void add(SysRight sysRight);
	/**
	 * 根据id查询一条记录
	 * @param id
	 * @return
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public SysRight findById(String rightId);
	/**
	 * 保存修改权限信息
	 * @param sysRight
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public void update(SysRight sysRight);
	/**
	 * 根据id删除一条记录
	 * @param id
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public void delete(String id);
	/**
	 * 查询所有权限
	 * @return
	 */
	public List<SysRight> getRightAll();
	/**
	 * 验证权限编号是否重复
	 * @param rightId
	 * @return
	 */
	public String checkRightId(String rightId);
}
