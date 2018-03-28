package com.gxuwz.Market.business.entity;

/**
 * SysRole entity. @author MyEclipse Persistence Tools
 */

public class SysRole implements java.io.Serializable {

	// Fields

	private String roleId;
	private String roleName;
	private Integer roleSortOrder;

	// Constructors

	/** default constructor */
	public SysRole() {
	}

	/** minimal constructor */
	public SysRole(String roleId, String roleName) {
		this.roleId = roleId;
		this.roleName = roleName;
	}

	/** full constructor */
	public SysRole(String roleId, String roleName, Integer roleSortOrder) {
		this.roleId = roleId;
		this.roleName = roleName;
		this.roleSortOrder = roleSortOrder;
	}

	// Property accessors

	public String getRoleId() {
		return this.roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Integer getRoleSortOrder() {
		return this.roleSortOrder;
	}

	public void setRoleSortOrder(Integer roleSortOrder) {
		this.roleSortOrder = roleSortOrder;
	}

}