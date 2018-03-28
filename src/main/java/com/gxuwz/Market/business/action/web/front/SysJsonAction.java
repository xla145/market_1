package com.gxuwz.Market.business.action.web.front;


import com.google.gson.Gson;
import com.gxuwz.Market.business.service.ISysRightService;
import com.gxuwz.Market.business.service.ISysRoleService;
import com.gxuwz.Market.business.service.ISysUserService;
import com.gxuwz.core.web.action.BaseAction;
import com.opensymphony.xwork2.Preparable;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * <p>Title: 类名：（系统设置相关）使用Json数据表的形式，返回数据</p>
 * <p>Description:控制器/n</p>
 * @author:	梧州学院 软件开发中心  卢善坚，汪嘉惠  <a href=mailto:116861519@qq.com>庞光垚 </a>
 * @date:2015.07.31
 */
@SuppressWarnings({ "serial", "unchecked", "rawtypes" })
public class SysJsonAction extends BaseAction implements Preparable{

	private static final long serialVersionUID = -4104125263890869018L;
	
	@Autowired
	private ISysRoleService sysRoleService;
	@Autowired
	private ISysRightService sysRightService;
	@Autowired
	private ISysUserService sysUserService;
	
	private String checkName;//用户输入的要校验名字
	
	private String rawPassword;
	public void prepare() throws Exception {
		
	}
	/**
	 * 验证角色编号是否有重复
	 * @return
	 * @throws IOException
	 */
	public String checkRoleName() throws IOException{
		String check = sysRoleService.checkRoleName(checkName);
		Gson gson = new Gson();
		String json = gson.toJson(check);
		PrintWriter writer = getPrintWriter();
		writer.write(json);
		writer.flush();
		writer.close();
		return null;
	}

	/**
	 * 验证权限编号是否有重复
	 * @return
	 * @throws IOException
	 */
	public String checkRightName() throws IOException{
		String check = sysRightService.checkRightId(checkName);
		Gson gson = new Gson();
		String json = gson.toJson(check);
		PrintWriter writer = getPrintWriter();
		writer.write(json);
		writer.flush();
		writer.close();
		return null;
	}
	/**
	 * 检验用户编号是否存在
	 * @return
	 */
	public String checkUserName()throws IOException{
		boolean result = sysUserService.checkUserId(checkName);
		Gson gson = new Gson();
		String json = gson.toJson(""+result);
		PrintWriter writer = getPrintWriter();
		writer.write(json);
		writer.flush();
		writer.close();
		return null;
	}

	/**
	 * 检验用户输入密码是否正确
	 * @return
	 * @throws IOException
	 */
	public String checkUserPasswd()throws IOException{
		boolean result = sysUserService.checkPasswd(checkName, rawPassword);
		Gson gson = new Gson();
		String json = gson.toJson(""+result);
		PrintWriter writer = getPrintWriter();
		writer.write(json);
		writer.flush();
		writer.close();
		return null;
	}
	
	public String getCheckName() {
		return checkName;
	}
	public void setCheckName(String checkName) {
		this.checkName = checkName;
	}
	public String getRawPassword() {
		return rawPassword;
	}
	public void setRawPassword(String rawPassword) {
		this.rawPassword = rawPassword;
	}
	
	
}
