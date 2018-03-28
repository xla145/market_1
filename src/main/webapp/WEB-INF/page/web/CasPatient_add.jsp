<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户-新增</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%= basePath%>/third/jquery-validation-1.14.0/lib/jquery.js"></script>
</head>
<body>
	<div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
		    <li><a href="#">病例管理</a></li>
		    <li><a href="#">新增病人</a></li>
	    </ul>
    </div>
    <div class="formbody" id="tab1">
    <div class="formtitle"><span>基本信息</span></div>
    <form action="<%= basePath%>/biz/CasPatient_add.action" method="post" id="commonform">
	    <ul class="forminfo">
		    <li><label>病人姓名</label><input name="casPatient.patientName" type="text" class="dfinput" /></li>
		    <li><label>性别</label>男<input name="casPatient.patientSex" type="radio" class="dfradio" value="0"/>女<input name="casPatient.patientSex" type="radio" class="dfradio" value="1"/></li>
		    <li><label>年龄</label><input name="casPatient.patientAge" type="text" class="dfinput" /></li>
		    <li><label>民族</label><input name="casPatient.patientNation" type="text" class="dfinput"  /></li>
		    <li><label>婚姻状况</label>已婚<input name="casPatient.patientMarriage" type="radio" class="dfradio" value="0"/>未婚<input name="casPatient.patientMarriage" type="radio" class="dfradio" value="1"/></li>
		    <li><label>出生地</label><input name="casPatient.patientBirthplace" type="text" class="dfinput" ></input></li>
		    <li><label>职业</label><input name="casPatient.patientJob" type="text" class="dfinput" ></input></li>
		    <li><label>联系方式</label><input name="casPatient.patientPhone" type="text" class="dfinput" ></input></li>
	     </ul> 
	     <ul class="forminfo">
	    	<li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	     </ul>
    </form>  
    </div>
</body>
</html>