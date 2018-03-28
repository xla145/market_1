package com.gxuwz.Market.business.entity;

import java.sql.Timestamp;

/**
 * SysLoginRecord entity. @author MyEclipse Persistence Tools
 */

public class SysLoginRecord implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userId;
	private String userName;
	private String loginIp;
	private Timestamp loginTime;
	private String operateContent;
	private Integer operateType;

	// Constructors

	/** default constructor */
	public SysLoginRecord() {
	}

	/** full constructor */
	public SysLoginRecord(String userId, String userName, String loginIp,
			Timestamp loginTime, String operateContent) {
		this.userId = userId;
		this.userName = userName;
		this.loginIp = loginIp;
		this.loginTime = loginTime;
		this.operateContent = operateContent;
		this.operateType = operateType;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getLoginIp() {
		return this.loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	public Timestamp getLoginTime() {
		return this.loginTime;
	}

	public void setLoginTime(Timestamp loginTime) {
		this.loginTime = loginTime;
	}

	public String getOperateContent() {
		return this.operateContent;
	}

	public void setOperateContent(String operateContent) {
		this.operateContent = operateContent;
	}

	public Integer getOperateType() {
		return operateType;
	}

	public void setOperateType(Integer operateType) {
		this.operateType = operateType;
	}

}