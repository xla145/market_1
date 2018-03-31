package com.gxuwz.Market.business.service;

import java.util.List;

import com.gxuwz.Market.business.entity.CasPatient;
import com.gxuwz.Market.business.entity.SysRole;
import com.gxuwz.Market.business.entity.SysUser;
import com.gxuwz.core.pagination.Result;

public interface ICasPatientService {
	
	/**
	 * 添加
	 * @param casPatient
	 */
	public boolean add(CasPatient casPatient);
	
	
	/**
	 * 查询
	 * @param casPatient
	 * @param page
	 * @param row
	 * @return
	 */
	public Result<CasPatient> find(CasPatient casPatient, int page, int row);
	
	public CasPatient findByPatientName(String patientName);
	public CasPatient findByPatientCode(String patientCode);
	public List<CasPatient> getAll();
	public void update(CasPatient casPatient);
	
	/**
	 * 病人的删除
	 * @param patientCode
	 */
	public void delete(String patientCode);

}
