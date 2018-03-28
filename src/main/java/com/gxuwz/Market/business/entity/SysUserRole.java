package com.gxuwz.Market.business.entity;

/**
 * SysUserRole entity. @author MyEclipse Persistence Tools
 */

public class SysUserRole implements java.io.Serializable {

	// Fields

	private Integer id;
	private String roleId;
	private String userId;

	// Constructors

	/** default constructor */
	public SysUserRole() {
	}

	/** full constructor */
	public SysUserRole(String roleId, String userId) {
		this.roleId = roleId;
		this.userId = userId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleId() {
		return this.roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

}