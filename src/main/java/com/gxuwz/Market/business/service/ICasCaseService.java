package com.gxuwz.Market.business.service;

import java.util.List;

import com.gxuwz.Market.business.entity.CasCase;

public interface ICasCaseService {
	//添加病例
	CasCase add(CasCase casCase);
	//通过病人编号查找所有病例
	public List<CasCase> getAllCasesByPatientCode(String patientCode );

}
