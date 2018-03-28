package com.gxuwz.Market.business.action.web;


import com.gxuwz.Market.business.entity.SysRight;
import com.gxuwz.Market.business.service.ISysRightService;
import com.gxuwz.core.pagination.Result;
import com.gxuwz.core.web.action.BaseAction;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * <p>Title: 类名：角色权限-控制器--实现</p>
 * <p>Description:控制器/n</p>
 * @author:	卢善坚，汪嘉惠
 * @date:2015.08.11
 */
public class SysRightAction extends BaseAction implements Preparable, ModelDriven{
	
	protected static final String LIST_JSP = "/WEB-INF/page/web/SysRight_list.jsp";
	protected static final String ADD_JSP = "/WEB-INF/page/web/SysRight_add.jsp";
	protected static final String EDIT_JSP = "/WEB-INF/page/web/SysRight_edit.jsp";
	
	protected final Log logger=LogFactory.getLog(getClass());
	
	private Result<SysRight> pageResult; //分页
	private SysRight sysRight;
	@Autowired
	private ISysRightService sysRightService;
	
	@Override
	public void prepare() throws Exception {
		if(null == sysRight){
			sysRight = new SysRight();
		}
		
	}

	/**
	 * 列表
	 * @return
	 * @throws Exception
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public String list()throws Exception{
		logger.info("##ysRole列表读取...");
		pageResult = sysRightService.find(sysRight, getPage(), getRow());
		setForwardView(LIST_JSP);
		return SUCCESS;
	}
	/**
	 * 添加权限
	 * @return
	 * @throws Exception
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public String add() throws Exception{
		sysRightService.add(sysRight);
		sysRight.setRightName(null);
		return list();
	}
	/**
	 * 保存修改信息
	 * @return
	 * @throws Exception
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public String update() throws Exception{
		sysRightService.update(sysRight);
		sysRight.setRightName(null);
		return list();
	}
	/**
	 * 删除权限
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		sysRightService.delete(sysRight.getRightId());
		return list();
	}
	
	/**
	 * 页面跳转
	 * @return
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public String openList(){
		
		return SUCCESS;
	}
	/**
	 * 跳转到添加页面
	 * @return
	 */
	public String openAdd(){
		forwardView = ADD_JSP;
		return SUCCESS;
	}
	/**
	 * 跳转到修改页面
	 * @return
	 * @author 卢善坚，汪嘉惠
	 * @date 2015.8.10
	 */
	public String openEdit(){
		//System.out.println(sysRight.getRightId());
		sysRight = sysRightService.findById(sysRight.getRightId());
		//System.out.println("9999999999999999");
		forwardView = EDIT_JSP;
		return SUCCESS;
	}
	
	@Override
	public Object getModel() {
		
		return sysRight;
	}


	public Result<SysRight> getPageResult() {
		return pageResult;
	}

	public void setPageResult(Result<SysRight> pageResult) {
		this.pageResult = pageResult;
	}

	public SysRight getSysRight() {
		return sysRight;
	}

	public void setSysRight(SysRight sysRight) {
		this.sysRight = sysRight;
	}

	


}
