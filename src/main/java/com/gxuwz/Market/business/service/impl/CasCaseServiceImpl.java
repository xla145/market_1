package com.gxuwz.Market.business.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gxuwz.Market.business.dao.CasCaseDAO;
import com.gxuwz.Market.business.entity.CasCase;
import com.gxuwz.Market.business.service.ICasCaseService;

@Service("ICasCaseService")
public class CasCaseServiceImpl implements ICasCaseService {
	
	@Autowired
	private CasCaseDAO casCaseDAO;

	/**
	 * 添加
	 */
	@Override
	public CasCase add(CasCase casCase) {
		//String casPatientCode = CommonUtil.getId("CPT");
		casCase.setPatientCode("A_10001");
		return casCaseDAO.add(casCase);
	}
	public List<CasCase> getAllCasesByPatientCode(String patientCode ) {
		//查询获取全部的数据
		return casCaseDAO.getAllCasesByPatientCode(patientCode);
    }

}
