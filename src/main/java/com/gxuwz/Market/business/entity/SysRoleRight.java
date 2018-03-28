package com.gxuwz.Market.business.entity;



/**
 * SysRoleRight entity. @author MyEclipse Persistence Tools
 */

public class SysRoleRight  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String roleId;
     private String rightId;


    // Constructors

    /** default constructor */
    public SysRoleRight() {
    }

    
    /** full constructor */
    public SysRoleRight(String roleId, String rightId) {
        this.roleId = roleId;
        this.rightId = rightId;
    }
    
    public SysRoleRight(String rightId) {
		this.rightId = rightId;
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

    public String getRightId() {
        return this.rightId;
    }
    
    public void setRightId(String rightId) {
        this.rightId = rightId;
    }
   








}