package com.gxuwz.Market.business.action.web;


import com.gxuwz.Market.business.entity.SysRight;
import com.gxuwz.Market.business.entity.SysRole;
import com.gxuwz.Market.business.entity.SysRoleRight;
import com.gxuwz.Market.business.service.ISysRightService;
import com.gxuwz.Market.business.service.ISysRoleRightService;
import com.gxuwz.Market.business.service.ISysRoleService;
import com.gxuwz.core.pagination.Result;
import com.gxuwz.core.web.action.BaseAction;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * <p>Title: 类名：商户单位-控制器--实现</p>
 * <p>Description:控制器/n</p>
 * @author:	梧州学院 软件开发中心  庞光垚  <a href=mailto:116861519@qq.com>庞光垚 </a>
 * @date:2015.07.31
 */
public class SysRoleAction extends BaseAction implements Preparable, ModelDriven{

	private static final long serialVersionUID = -4104125263890869018L;
	protected static final String LIST_JSP = "/WEB-INF/page/web/SysRole_list.jsp";
	protected static final String ADD_JSP = "/WEB-INF/page/web/SysRole_add.jsp";
	protected static final String EDIT_JSP = "/WEB-INF/page/web/SysRole_edit.jsp";
	
	protected final Log logger=LogFactory.getLog(getClass());
	@Autowired
	private ISysRoleService sysRoleService;
	
	@Autowired
	private ISysRightService sysRightService;
	
	@Autowired
	private ISysRoleRightService sysRoleRightService;
	
	private String[] rightId;
	 
	private SysRoleRight sysRoleRight;
	private SysRole sysRole;
	private Result<SysRole> pageResult; //分页
	private List<SysRight> sysRights;//权限
	private List<SysRoleRight> roleRights;//角色权限
	
	@Override
	public void prepare() throws Exception {
		if(null == sysRole){
			sysRole = new SysRole();
		}
		if(null == sysRoleRight){
			sysRoleRight = new SysRoleRight();
		}
	}
	/**
	 * 添加角色
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception{
		//System.out.println(sysRole.getRoleName());
		//System.out.println("rightId.length="+rightId.length);
		sysRoleService.add(sysRole,rightId);
		sysRole.setRoleName(null);
		return list();
	}
	
	/**
	 * 列表
	 * @return
	 * @throws Exception
	 */
	public String list()throws Exception{
		logger.info("##sysRole列表读取...");
		pageResult = sysRoleService.find(sysRole, getPage(),getRow());
		setForwardView(LIST_JSP);
		return SUCCESS;
	}
	/**
	 * 保存修改信息
	 * @return
	 * @throws Exception
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public String update() throws Exception{
		sysRoleService.update(sysRole, rightId);
		sysRole.setRoleName(null);
		return list();
	}
	/**
	 * 删除角色
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		sysRoleService.delete(sysRole.getRoleId());
		return list();
	}
	
	
	/**
	 * 跳转到add页面
	 * @return
	 */
	public String openAdd(){
		sysRights = sysRightService.getRightAll();
		setForwardView(ADD_JSP);
		return SUCCESS;
	}
	
	/**
	 * 页面跳转
	 * @return
	 */
	public String openList(){
		
		return SUCCESS;
	}
	/**
	 * 跳转到修改页面
	 * @return
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public String openEdit(){
		
		sysRoleRight.setRoleId(sysRole.getRoleId());
		//查询角色的权限
		roleRights = sysRoleRightService.findByRole(sysRoleRight.getRoleId());
		//查询权限表
		sysRights = sysRightService.getRightAll();
		//根据角色编号查询角色信息
		sysRole = sysRoleService.findById(sysRole.getRoleId());
		forwardView = EDIT_JSP;
		return SUCCESS;
	}
	
	@Override
	public Object getModel() {
		
		return sysRole;
	}

	public SysRole getSysRole() {
		return sysRole;
	}

	public void setSysRole(SysRole sysRole) {
		this.sysRole = sysRole;
	}

	public Result<SysRole> getPageResult() {
		return pageResult;
	}

	public void setPageResult(Result<SysRole> pageResult) {
		this.pageResult = pageResult;
	}
	public String[] getRightId() {
		return rightId;
	}
	public void setRightId(String[] rightId) {
		this.rightId = rightId;
	}
	
	public List<SysRight> getSysRights() {
		return sysRights;
	}
	public void setSysRights(List<SysRight> sysRights) {
		this.sysRights = sysRights;
	}
	public List<SysRoleRight> getRoleRights() {
		return roleRights;
	}
	public void setRoleRights(List<SysRoleRight> roleRights) {
		this.roleRights = roleRights;
	}

}
