package com.gxuwz.Market.business.action.web;

import com.alibaba.fastjson.JSONObject;
import com.gxuwz.Market.business.entity.CasCase;
import com.gxuwz.Market.business.entity.CasPatient;
import com.gxuwz.Market.business.service.ICasPatientService;
import com.gxuwz.Market.util.JsonBean;
import com.gxuwz.core.pagination.Result;
import com.gxuwz.core.web.action.BaseAction;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import org.springframework.beans.factory.annotation.Autowired;

public class CasCaseAction extends BaseAction implements Preparable, ModelDriven{
	private static final long serialVersionUID = -2313123L;
	protected static final String LIST_JSP = "/WEB-INF/page/web/CasCase_list.jsp";
	protected static final String ADD_JSP = "/WEB-INF/page/web/CasCase_add.jsp";
	protected static final String MESSAGE_JSP = "/WEB-INF/page/web/CasCase_message.jsp";

	@Autowired
	private ICasPatientService casPatientService;
	private CasCase casCase;
	private CasPatient casPatient;// 病人模型
	private Result<CasCase> casCasePageResult;// 分页
	private Result<CasPatient> pageResult;// 分页
	// 返回json
	private JSONObject data;

	/**
	 * 跳转病例信息页面
	 * @return
	 */
	public String openMessage() {
		String patientCode = getParameters("patientCode",null);
		casPatient = casPatientService.findByPatientCode(patientCode);
		setForwardView(MESSAGE_JSP);
		return SUCCESS;
	}

	
	@Override
	public Object getModel() {
		return casCase;
	}

	/**
	 * 获取病例列表
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception {
		pageResult = casPatientService.find(casPatient, getPage(), getRow());
		data = JsonBean.success("success",pageResult);
		return SUCCESS;
	}


	/**
	 * 获取病例列表
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception {
		System.out.println(com.alibaba.fastjson.JSON.toJSON(casCase));
		data = JsonBean.success("success",casCase); // 病例的model 已经获取到值，差加入到数据库
		return SUCCESS;
	}

	@Override
	public void prepare() throws Exception {

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

	public ICasPatientService getCasPatientService() {
		return casPatientService;
	}

	public void setCasPatientService(ICasPatientService casPatientService) {
		this.casPatientService = casPatientService;
	}

	public Result<CasCase> getCasCasePageResult() {
		return casCasePageResult;
	}

	public void setCasCasePageResult(Result<CasCase> casCasePageResult) {
		this.casCasePageResult = casCasePageResult;
	}

	public Result<CasPatient> getPageResult() {
		return pageResult;
	}

	public void setPageResult(Result<CasPatient> pageResult) {
		this.pageResult = pageResult;
	}

	public JSONObject getData() {
		return data;
	}

	public void setData(JSONObject data) {
		this.data = data;
	}
}
