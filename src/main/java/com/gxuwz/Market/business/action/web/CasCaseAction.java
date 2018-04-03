package com.gxuwz.Market.business.action.web;

import org.springframework.beans.factory.annotation.Autowired;

import com.gxuwz.Market.business.entity.CasCase;
import com.gxuwz.Market.business.entity.CasPatient;
import com.gxuwz.Market.business.service.ICasPatientService;
import com.gxuwz.core.pagination.Result;
import com.gxuwz.core.web.action.BaseAction;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class CasCaseAction extends BaseAction implements Preparable, ModelDriven{
	private static final long serialVersionUID = -2313123L;
	//http://127.0.0.1:8080//biz/CasCase_list.action
	protected static final String LIST_JSP = "/WEB-INF/page/web/CasCase_list.jsp";
	protected static final String ADD_JSP = "/WEB-INF/page/web/CasCase_add.jsp";
	protected static final String MESSAGE_JSP = "/WEB-INF/page/web/CasCase_message.jsp";

	@Autowired
	private ICasPatientService casPatientService;
	private CasCase casCase;
	private CasPatient casPatient;// 病人模型
	private Result<CasPatient> pageResult;// 分页
	
	public String openAdd() {
		pageResult = casPatientService.find(casPatient, getPage(), getRow());
		setForwardView(ADD_JSP);
		return SUCCESS;
	}
	public String openMessage() {
		setForwardView(MESSAGE_JSP);
		return SUCCESS;
	}
	public String list() throws Exception {
		//System.out.println(casPatient.getPatientName());
		pageResult = casPatientService.find(casPatient, getPage(), getRow());
		setForwardView(LIST_JSP);
		return SUCCESS;
	}
	
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return casCase;
	}
	/*public String list() throws Exception {
		//System.out.println(casPatient.getPatientName());
		//pageResult = casPatientService.find(casPatient, getPage(), getRow());
		pageResult = casPatientService.find(casPatient, getPage(), getRow());
		setForwardView(LIST_JSP);
		return SUCCESS;
	}*/

	@Override
	public void prepare() throws Exception {
		if(null == casCase){
			casCase = new CasCase();
		}
		if(null == casPatient){
			casPatient = new CasPatient();
		}
	}

	public CasCase getCasCase() {
		return casCase;
	}

	public CasPatient getCasPatient() {
		return casPatient;
	}
	public void setCasPatient(CasPatient casPatient) {
		this.casPatient = casPatient;
	}
	public void setCasCase(CasCase casCase) {
		this.casCase = casCase;
	}
	public Result<CasPatient> getPageResult() {
		return pageResult;
	}
	public void setPageResult(Result<CasPatient> pageResult) {
		this.pageResult = pageResult;
	}
	
}
