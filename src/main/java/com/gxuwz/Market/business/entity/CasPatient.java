package com.gxuwz.Market.business.entity;

import java.util.Date;

/**
 * CasPatient entity. @author MyEclipse Persistence Tools
 */

public class CasPatient implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String patientCode;
	private String patientName;
	private Integer patientSex;
	private Integer patientAge;
	private String patientNation;
	private Integer patientMarriage;
	private String patientBirthplace;
	private String patientJob;
	private String patientPhone;
	private Date createTime;
	private Date updateTime;
	private Integer status;
	private String remark;

	// Constructors
	public CasPatient() {
		
	}



	// Property accessors
	public CasPatient(String patientCode, String patientName, Integer patientSex, Integer patientAge,
			String patientNation, Integer patientMarriage, String patientBirthplace, String patientJob,
			String patientPhone, Date createTime, Date updateTime, Integer status, String remark) {
		super();
		this.patientCode = patientCode;
		this.patientName = patientName;
		this.patientSex = patientSex;
		this.patientAge = patientAge;
		this.patientNation = patientNation;
		this.patientMarriage = patientMarriage;
		this.patientBirthplace = patientBirthplace;
		this.patientJob = patientJob;
		this.patientPhone = patientPhone;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.status = status;
		this.remark = remark;
	}


	public String getPatientCode() {
		return this.patientCode;
	}

	

	public void setPatientCode(String patientCode) {
		this.patientCode = patientCode;
	}

	public Integer getPatientSex() {
		return patientSex;
	}

	public void setPatientSex(Integer patientSex) {
		this.patientSex = patientSex;
	}

	public Integer getPatientMarriage() {
		return patientMarriage;
	}

	public void setPatientMarriage(Integer patientMarriage) {
		this.patientMarriage = patientMarriage;
	}

	public String getPatientName() {
		return this.patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}


	public Integer getPatientAge() {
		return this.patientAge;
	}

	public void setPatientAge(Integer patientAge) {
		this.patientAge = patientAge;
	}

	public String getPatientNation() {
		return this.patientNation;
	}

	public void setPatientNation(String patientNation) {
		this.patientNation = patientNation;
	}


	public String getPatientBirthplace() {
		return this.patientBirthplace;
	}

	public void setPatientBirthplace(String patientBirthplace) {
		this.patientBirthplace = patientBirthplace;
	}

	public String getPatientJob() {
		return this.patientJob;
	}

	public void setPatientJob(String patientJob) {
		this.patientJob = patientJob;
	}

	public String getPatientPhone() {
		return this.patientPhone;
	}

	public void setPatientPhone(String patientPhone) {
		this.patientPhone = patientPhone;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	

}