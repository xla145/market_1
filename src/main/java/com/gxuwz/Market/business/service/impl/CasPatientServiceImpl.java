package com.gxuwz.Market.business.service.impl;


import com.alibaba.fastjson.JSON;
import com.gxuwz.Market.business.constant.CasPatientConstant;
import com.gxuwz.Market.business.dao.CasPatientDAO;
import com.gxuwz.Market.business.entity.CasPatient;
import com.gxuwz.Market.business.service.ICasPatientService;
import com.gxuwz.core.pagination.Result;
import com.gxuwz.core.util.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service("ICasPatientService")
public class CasPatientServiceImpl implements ICasPatientService {

	@Autowired
	private CasPatientDAO casPatientDAO;

	/**
	 * 添加
	 */
	@Override
	public boolean add(CasPatient casPatient) {
		String casPatientCode = CommonUtil.getId("CPT");
		casPatient.setPatientCode(casPatientCode);
		casPatient.setStatus(CasPatientConstant.CAS_PATIENT_INITIAL_STATUS);
		casPatient.setCreateTime(new Date());
		casPatient.setUpdateTime(new Date());
		return casPatientDAO.add(casPatient);
	}

	/**
	 * 查询
	 */
	@Override
	public Result<CasPatient> find(CasPatient casPatient, int page, int row) {
		return casPatientDAO.find(casPatient, page, row);
	}


	/**
	 * 根据病人名字查询病人对象
	 * @param patientName
	 * @return 用户对象
	 */
	@Override
	public CasPatient findByPatientName(String patientName){
		return casPatientDAO.findCasPatientByPatientName(patientName);
	}


	/**
	 * 根据病人编号查询病人对象
	 * @param patientCode
	 * @return 用户对象
	 */
	@Override
	public CasPatient findByPatientCode(String patientCode){
		return casPatientDAO.findCasPatientByPatientCode(patientCode);
	}

	/**
	 * 获取所有数据
	 * @return 病人集合
	 */

	@Override
	public List<CasPatient> getAll() {
		return casPatientDAO.getAll(CasPatient.class);
	}

	/**
	 * 更新病人数据
	 * @param casPatient
	 */
	@Override
	public void update(CasPatient casPatient) {
		System.out.println(JSON.toJSON(casPatient));
		casPatient.setUpdateTime(new Date());
		casPatientDAO.update(casPatient);

	}

	/**
	 * 删除功能（软删除）
	 * @param patientCode
	 */
	@Override
	public void delete(String patientCode) {
		casPatientDAO.delete(patientCode);
	}
}
