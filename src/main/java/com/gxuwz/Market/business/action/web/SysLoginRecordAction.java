package com.gxuwz.Market.business.action.web;


import com.gxuwz.Market.business.entity.SysLoginRecord;
import com.gxuwz.Market.business.service.ISysLoginRecordService;
import com.gxuwz.core.pagination.Result;
import com.gxuwz.core.web.action.BaseAction;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import org.springframework.beans.factory.annotation.Autowired;

public class SysLoginRecordAction extends BaseAction implements Preparable, ModelDriven {

	private static final long serialVersionUID = -2025587568675799563L;
	
	private String LIST_JSP="/WEB-INF/page/web/SysLoginRecord_list.jsp";
    @Autowired
	private ISysLoginRecordService sysLoginRecordService;
	
	private SysLoginRecord sysLoginRecord;

	private Result<SysLoginRecord> pageResult;
	
	@Override
	public void prepare() throws Exception {
		if(null == sysLoginRecord){
			sysLoginRecord = new SysLoginRecord();
		}
	}
	/**
	 * 获取用户登录记录列表
	 * @return
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	public String list(){
		//日志类型 
		String logtype = getRequest().getParameter("logtype");
		getRequest().getSession().setAttribute("logtype", logtype);
		pageResult = sysLoginRecordService.findAll(getPage(), getRow(),logtype);
		forwardView = LIST_JSP;
		return SUCCESS;
	}
	
	/**
	 * 删除某条用户登录记录
	 * @author 潘恒飞，卢善坚
	 * @date 2015.09.11
	 */
	public String delete(){
		sysLoginRecordService.delete(sysLoginRecord.getId());
		return list();
	}
	
	
	@Override
	public Object getModel() {
		return sysLoginRecord;
	}

	public SysLoginRecord getSysLoginRecord() {
		return sysLoginRecord;
	}

	public void setSysLoginRecord(SysLoginRecord sysLoginRecord) {
		this.sysLoginRecord = sysLoginRecord;
	}
	public Result<SysLoginRecord> getPageResult() {
		return pageResult;
	}
	public void setPageResult(Result<SysLoginRecord> pageResult) {
		this.pageResult = pageResult;
	}
}
