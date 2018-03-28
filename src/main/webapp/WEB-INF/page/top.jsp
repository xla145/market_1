<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page language="java" import="com.gxuwz.Market.business.entity.*" %>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <base href="<%= basePath%>"/>
<title>功能导航菜单</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>

</head>

<body style="background:url(images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="main.jsp" target="_parent"><img src="images/logo.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <li><a href="<%= basePath%>/biz/SysUser_openMessage.action?id=${sessionScope.sysUser.id }&userId=${sessionScope.sysUser.userId }" target="rightFrame" class="selected"><img src="images/icon01.png" title="工作台" /><h2>个人信息修改</h2></a></li>
    <li><a href="#" target="rightFrame"><img src="images/icon02.png" title="模型管理" /><h2>菜单预留</h2></a></li>
    <li><a href="#"  target="rightFrame"><img src="images/icon03.png" title="模块设计" /><h2>菜单预留</h2></a></li>
    <li><a href="#"  target="rightFrame"><img src="images/icon04.png" title="常用工具" /><h2>菜单预留</h2></a></li>
    <li><a href="#" target="rightFrame"><img src="images/icon05.png" title="文件管理" /><h2>菜单预留</h2></a></li>
    <li><a href="#"  target="rightFrame"><img src="images/icon06.png" title="系统设置" /><h2>菜单预留</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="${basePath}/front/Login_openIndex.action" target="rightFrame">回到首页</a></li>
    <li><a href="<%= basePath%>" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>${sessionScope.sysUser.userName}</span>
    <i>消息</i>
    <b>5</b>
    </div>    
    
    </div>

</body>
</html>
