package com.gxuwz.Market.business.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gxuwz.Market.business.dao.SysRightDAO;
import com.gxuwz.Market.business.entity.SysRight;
import com.gxuwz.Market.business.service.ISysRightService;
import com.gxuwz.core.pagination.Result;

/**
 * <p>Title: 类名：权限-业务逻辑--实现</p>
 * <p>Description:mailsender-业务逻辑/n</p>
 * @author:	卢善坚，汪嘉惠
 * @date:2015.07.31
 */
@Service("sysRightService")
public class SysRightServiceImpl implements ISysRightService {
	@Autowired
	private SysRightDAO sysRightDAO;
	
	/**
	 * 根据条件查找分页
	 * @param sysMerchantUnit 模型
	 * @param page 第几页
	 * @param row 长度
	 * @return
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public Result<SysRight> find(SysRight sysRight, int page, int row) {
		
		return sysRightDAO.find(sysRight, page, row);
	}


	/**
	 * 添加权限
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	@Override
	public void add(SysRight sysRight) {
		sysRightDAO.save(sysRight);
		
	}

	/**
	 * 根据id查询一条记录
	 * @param id
	 * @return
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	@Override
	public SysRight findById(String rightId) {
		
		return sysRightDAO.get(SysRight.class, rightId);
	}

	/**
	 * 保存修改权限信息
	 * @param sysRight 
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	@Override
	public void update(SysRight sysRight) {
		sysRightDAO.update(sysRight);
	}

	/**
	 * 根据id删除一条记录
	 * @param id
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	@Override
	public void delete(String id) {
		sysRightDAO.remove(findById(id));
		
	}

	/**
	 * 查询所有权限
	 * @return
	 */
	@Override
	public List<SysRight> getRightAll() {
		return sysRightDAO.getAllRight();
	}

	/**
	 * 验证权限编号是否重复
	 * @param rightId 权限编号
	 */
	@Override
	public String checkRightId(String rightId) {
		SysRight sysRight = sysRightDAO.get(SysRight.class, rightId);
		if(null != sysRight){
			return "no";
		}else{
			return "ok";
		}
	}

}
