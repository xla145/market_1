package com.gxuwz.Market.business.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gxuwz.Market.business.entity.CasPatient;
import com.gxuwz.Market.business.entity.SysRoleRight;
import com.gxuwz.Market.business.entity.SysUser;
import com.gxuwz.core.dao.impl.BaseDaoImpl;
import com.gxuwz.core.pagination.Result;

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
		String queryString = "from CasPatient where 1=1";
		if(casPatient.getPatientName() != null){
			queryString = queryString + " and patient_name like '%"+casPatient.getPatientName()+"%'";
		}
		int start=(page-1)*size;
		int limit =size;
		System.out.println("----queryString"+queryString);
		Result<CasPatient> data =  (Result<CasPatient> )super.find(queryString, null, null, start, limit);
		return data;
	}


	/**
	 * 获取病人数据
	 * @param patientName
	 * @return
	 */
	public CasPatient findCasPatientByPatientName(String patientName){
		CasPatient casPatient= null; 
		String hql = "from CasPatient where patient_name = '"+patientName+"'";
		
		return casPatient;
	}

	/**
	 * 获取病人数据
	 * @param patientCode
	 * @return
	 */
	public CasPatient findCasPatientByPatientCode(String patientCode){
		CasPatient casPatient= null; 
		String hql = "from CasPatient where patient_code= '"+patientCode+"'";
		List<CasPatient> list = this.getHibernateTemplate().find(hql);
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
		List<CasPatient> list=(List<CasPatient>) this.getHibernateTemplate().find("from CasPatient");
		return list;
    }
}
