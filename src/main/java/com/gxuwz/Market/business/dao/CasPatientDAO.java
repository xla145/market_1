package com.gxuwz.Market.business.dao;

import com.gxuwz.Market.business.constant.CasPatientConstant;
import com.gxuwz.Market.business.entity.CasPatient;
import com.gxuwz.core.dao.impl.BaseDaoImpl;
import com.gxuwz.core.pagination.Result;
import com.gxuwz.core.util.CommonUtil;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("casPatientDAO")
public class CasPatientDAO extends BaseDaoImpl<CasPatient>{

	/**
	 * 添加
	 * @param casPatient
	 * @return
	 */
	public boolean add(CasPatient casPatient) {
		CasPatient cas = save(casPatient);
		if ( cas == null ) {
			return false;
		}
		return false;
	}


	/**
	 * 获取列表数据
	 * @param casPatient
	 * @param page
	 * @param size
	 * @return
	 */
	public Result<CasPatient> find(CasPatient casPatient, int page, int size){
		String queryString = "from CasPatient where 1=1 AND status != "+CasPatientConstant.CAS_PATIENT_DEL_STATUS;
		// 按名称搜索
		if(casPatient.getPatientName() != null){
			queryString = queryString + " and patient_name like '%"+casPatient.getPatientName()+"%'";
		}
		if (casPatient.getPatientNation() != null) {
			queryString = queryString + " and patient_nation like '%"+casPatient.getPatientNation()+"%'";
		}
		int start=(page-1)*size;
		int limit = size;
		Result<CasPatient> data =  (Result<CasPatient> )super.find(queryString, null, null, start, limit);
		return data;
	}


	/**
	 * 获取病人数据
	 * @param patientName
	 * @return
	 */
	public CasPatient findCasPatientByPatientName(String patientName){
		String hql = "from CasPatient where patient_name =  ?";
		List<CasPatient> casPatients = super.findByHql(hql, CommonUtil.queryLike(patientName));
		if (casPatients == null) {
			return null;
		}
		return casPatients.get(0);
	}

	/**
	 * 获取病人数据
	 * @param patientCode
	 * @return
	 */
	public CasPatient findCasPatientByPatientCode(String patientCode){
		CasPatient casPatient= null; 
		String hql = "from CasPatient where patient_code= ?";
		List<CasPatient> list = super.findByHql(hql,patientCode);
		if(null != list && 0 < list.size()){
			casPatient = list.get(0);
		}
		return casPatient;
	}

	/**
	 * 获取所有数据
	 * @return
	 */
    public List<CasPatient> getAll() {
		//查询获取全部的数据
		List<CasPatient> list=(List<CasPatient>) super.findByHql("from CasPatient");
		return list;
    }
    
    public void delete (String patientCode) {
    	String hql = "UPDATE CasPatient SET status=?,updateTime=now() WHERE patientCode =?";
    	try {
    		super.update(hql,CasPatientConstant.CAS_PATIENT_DEL_STATUS, patientCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    }
}
