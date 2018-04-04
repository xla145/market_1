package com.gxuwz.Market.business.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gxuwz.Market.business.entity.CasCase;
import com.gxuwz.core.dao.impl.BaseDaoImpl;

@Repository("casCaseDAO")
public class CasCaseDAO extends BaseDaoImpl<CasCase>{
//添加病例
	public CasCase add(CasCase casCase) {
		CasCase cas = save(casCase);
		return cas;
	}
	//通过病人编号查找全部病例
	public List<CasCase> getAllCasesByPatientCode(String patientCode ) {
		//查询获取全部的数据
		List<CasCase> list=super.findByHql("from CasCase where patientCode=?",patientCode);
		return list;
    }
    
	


}
