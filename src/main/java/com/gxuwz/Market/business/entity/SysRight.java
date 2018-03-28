package com.gxuwz.Market.business.entity;

/**
 * SysRight entity. @author MyEclipse Persistence Tools
 */

public class SysRight implements java.io.Serializable {

	// Fields

	private String rightId;
	private String rightName;
	private String resourcePath;
	private Integer rightType;
	private Integer rightSortOrder;

	// Constructors

	/** default constructor */
	public SysRight() {
	}

	/** full constructor */
	public SysRight(String rightName, String resourcePath, Integer rightType,
			Integer rightSortOrder) {
		this.rightName = rightName;
		this.resourcePath = resourcePath;
		this.rightType = rightType;
		this.rightSortOrder = rightSortOrder;
	}

	// Property accessors

	public String getRightId() {
		return this.rightId;
	}

	public void setRightId(String rightId) {
		this.rightId = rightId;
	}

	public String getRightName() {
		return this.rightName;
	}

	public void setRightName(String rightName) {
		this.rightName = rightName;
	}

	public String getResourcePath() {
		return this.resourcePath;
	}

	public void setResourcePath(String resourcePath) {
		this.resourcePath = resourcePath;
	}

	public Integer getRightType() {
		return this.rightType;
	}

	public void setRightType(Integer rightType) {
		this.rightType = rightType;
	}

	public Integer getRightSortOrder() {
		return this.rightSortOrder;
	}

	public void setRightSortOrder(Integer rightSortOrder) {
		this.rightSortOrder = rightSortOrder;
	}

}