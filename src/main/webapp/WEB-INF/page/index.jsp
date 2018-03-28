<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <base href="<%= basePath%>"/>
	<title>无标题文档</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
	$(function(){
		var url = "<%= basePath%>/biz/ServiceTourProduct_getTotalNumber.action";
		$.post(url,{"type":1},function(data){
			$("#product").html(data);
		},"json");
	
		$.post(url,{"type":2},function(data){
			$("#tour").html(data);
		},"json");
		
		$.post("<%= basePath%>/biz/ServiceTripMate_getTotalTripMate.action",function(data){
			$("#tripMate").html(data);
		},"json");
		
		$.post("<%= basePath%>/biz/ServiceRaiders_getTotalRaiders.action",function(data){
			$("#raiders").html(data);
		},"json");
	});	
</script>

</head>


	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="#">首页</a>
				</li>
			</ul>
		</div>

		<div class="mainindex">


			<div class="welinfo">
				<span><img src="images/sun.png" alt="天气" />
				</span>
				<b>${sessionScope.sysUser.userName}早上好，欢迎使用智能二维码微信营销平台</b>
				<a href="<%= basePath%>/biz/SysUser_openMessage.action?id=${sessionScope.sysUser.id }&userId=${sessionScope.sysUser.userId }">帐号设置</a>
            </div>

			<!--<div class="welinfo">
				<span><img src="images/time.png" alt="时间" />
				</span>
				<i>您上次登录的时间：2013-10-09 15:22</i> （不是您登录的？
				<a href="#">请点这里</a>）
			</div>-->

			<div class="xline"></div>

			<ul class="iconlist">

				<li>
					<img src="images/ico01.png" />
					<p>
						预留图标：<em id="product"></em>
					</p>
				</li>
				<li>
					<img src="images/ico02.png" />
					<p>
						预留图标：<em id="tour"></em>
					</p>
				</li>
				<li>
					<img src="images/ico03.png" />
					<p>
						预留图标：<em id="tripMate"></em>
					</p>
				</li>
				<li>
					<img src="images/ico04.png" />
					<p>
						预留图标：<em id="raiders"></em>
					</p>
				</li>
				<!-- 
				<li>
					<img src="images/ico05.png" />
					<p>
						<a href="#">目录管理</a>
					</p>
				</li>
				<li>
					<img src="images/ico06.png" />
					<p>
						<a href="#">查询</a>
					</p>
				</li> -->

			</ul>

			<div class="ibox">
				<a class="ibtn"><img src="images/iadd.png" />添加新的快捷功能</a>
			</div>

			<div class="xline"></div>
			<div class="box"></div>

			<div class="welinfo">
				<span><img src="images/dp.png" alt="提醒" />
				</span>
				<b>智能二维码微信营销平台服务器运行状态</b>
			</div>

			<ul class="infolist">
				
				<li><%  
    double total = (Runtime.getRuntime().totalMemory()) / (1024.0 * 1024);  
    double max = (Runtime.getRuntime().maxMemory()) / (1024.0 * 1024);  
    double free = (Runtime.getRuntime().freeMemory()) / (1024.0 * 1024);  
    
    out.println("最大内存量(当前JVM的最大可用内存): " + max + "MB<br/>"); %></li> 
    <li><%
    out.println("内存总量(当前JVM占用的内存总数): " + total + "MB<br/>"); %></li>
	<li><%  out.println("空闲内存量(当前JVM空闲内存): " + free + "MB<br/>");   %></li>
    <li><%out.println("JVM实际可用内存: " + (max - total + free) + "MB<br/>");   %></li>
		 <li><% %></li>
				<li>
					<span>您可以快速进**管理操作</span><a class="ibtn">某某管理</a>
				</li>
				<li>
					<span>您可以进行密码修改、账户设置等操作</span><a class="ibtn">用户管理</a>
				</li>
			</ul>
            <div class="welinfo">
				<span><img src="images/ico05.png" width="32px" height="32px" alt="提醒" />
				</span>
				<b>点击以***</b>
			</div>

			<ul class="infolist">
				
				<li><a href="#" target="_blank">下载***</a></li>
			</ul>

			<div class="xline"></div>

			<div class="uimakerinfo">
				<b>技术支持：<a
					href="#" target="_blank">梧州学院 软件开发中心</a>
				</b>
			</div>




		</div>



	</body>

</html>
