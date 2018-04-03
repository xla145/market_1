package com.gxuwz.Market.business.action.web;

import org.springframework.beans.factory.annotation.Autowired;

import com.gxuwz.Market.business.entity.CasPatient;
import com.gxuwz.Market.business.service.ICasPatientService;
import com.gxuwz.core.pagination.Result;
import com.gxuwz.core.web.action.BaseAction;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class CasPatientAction extends BaseAction implements Preparable, ModelDriven{

	private static final long serialVersionUID = 1L;

	protected static final String UPDATE_JSP = "/WEB-INF/page/web/CasPatient_edit.jsp";
	protected static final String LIST_JSP = "/WEB-INF/page/web/CasPatient_list.jsp";
	protected static final String ADD_JSP = "/WEB-INF/page/web/CasPatient_add.jsp";

	@Autowired
	private ICasPatientService casPatientService;

	private CasPatient casPatient;// 病人模型
	private Result<CasPatient> pageResult;// 分页
	//private int actionState;// 操作状态。1-操作成功（保存成功）


	@Override
	public void prepare() throws Exception {
		if(null == casPatient){
			casPatient = new CasPatient();
		}
	}
	/**
	 * 添加功能
	 * 
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception {
		casPatientService.add(casPatient);
		casPatient = new CasPatient();
		return list();
	}

	/**
	 * 查询数据 并返回列表页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception {
		//System.out.println(casPatient.getPatientName());
		pageResult = casPatientService.find(casPatient, getPage(), getRow());
		setForwardView(LIST_JSP);
		return SUCCESS;
	}


	/**
	 * 跳转到添加页面
	 * 
	 * @return
	 */
	public String openAdd() {
		setForwardView(ADD_JSP);
		return SUCCESS;
	}

	/**
	 * 打开修改信息页面
	 */
	public String openEdit() {
		casPatient = casPatientService.findByPatientCode(casPatient.getPatientCode());
		setForwardView(UPDATE_JSP);
		return SUCCESS;
		
    }
	
	public String update() throws Exception{
		casPatientService.update(casPatient);
		return list();
	}
	
	/**
	 * 删除
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		String patientCode = getParameters("patientCode", null);
		casPatientService.delete(patientCode);
		return list();
	}
	
	@Override
	public Object getModel() {
		return casPatient;
	}
	
	public CasPatient getCasPatient() {
		return casPatient;
	}

	public void setCasPatient(CasPatient casPatient) {
		this.casPatient = casPatient;
	}

	public Result<CasPatient> getPageResult() {
		return pageResult;
	}

	public void setPageResult(Result<CasPatient> pageResult) {
		this.pageResult = pageResult;
	}

	
}