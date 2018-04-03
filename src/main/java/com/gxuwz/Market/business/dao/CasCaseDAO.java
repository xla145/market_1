package com.gxuwz.Market.business.dao;

import org.springframework.stereotype.Repository;

import com.gxuwz.Market.business.entity.CasCase;
import com.gxuwz.core.dao.impl.BaseDaoImpl;

@Repository("casPatientDAO")
public class CasCaseDAO extends BaseDaoImpl<CasCase>{
//添加病例
	public boolean add(CasCase casCase) {
		CasCase cas = save(casCase);
		if ( cas == null ) {
			return false;
		}
		return true;
	}
	//


}
