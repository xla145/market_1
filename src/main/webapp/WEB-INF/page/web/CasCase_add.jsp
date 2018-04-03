<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>病例列表</title>
	<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=path%>/js/common.js"></script>
	<script type="text/javascript">
		/*
		 *_contextPath:上下文路径
		 *_modulePath: 模块路径
		 */
		var  _contextPath="<%=path%>";
		var  _modulePath=_contextPath+"/sys/";
		$(document).ready(function(){
		  $(".clicks").click(function(){
		   _open(_modulePath+"textures_open.action?view=add");
		  });
		});
	</script>
	</head>
<body>
<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">病例管理</a></li>
			<li><a href="#">病例管理</a></li>
		</ul>
	</div>

	<div class="formbody">
				<form action="<%=basePath%>/biz/CasPatient_openAdd.action"
					method="post" target="rightFrame">
					<div>
					<ul class="seachform">
						<li><label>病人</label><input class="scinput"
							name="casPatient.patientName" placeholder="请输入病人姓名" /></li>
						<li><input name="" type="submit" class="scbtn" value="新增病人" /></li>
						<li class="clickk"><span><img src="<%=path%>/images/t01.png" /></span><a
							href="<%=basePath%>/biz/CasPatient_openAdd.action">新增病人</a></li>
					 </ul>
					</div>
				</form>
				</div>
    <div class="formbody" id="tab1">
    <div class="formtitle"><span>病例基本信息</span></div>
    <form action="<%= basePath%>/biz/CasPatient_add.action" method="post" id="commonform">
	    <ul class="forminfo">
		    <li><label>就诊时间</label><input name="casCase.visitime" type="text" class="dfinput" /></li>
		    <li><label>脈象</label><input name="casCase.pulse" type="text" class="dfinput" /></li>
		    <li><label>舌质</label><input name="casCase.tongueQuality" type="text" class="dfinput" /></li>
		    <li><label>舌苔</label><input name="casCase.fur" type="text" class="dfinput" /></li>
		    <li><label>舌体</label><input name="casCase.tongue" type="text" class="dfinput" /></li>
		    <li><label>六经症状</label>太阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="0"/>
		    						       少阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="1"/>
		   							       厥阴 <input name="casCase.sixChannel" type="radio" class="dfradio" value="2"/>
		    						       太阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="3"/>
		    						       阳明 <input name="casCase.sixChannel" type="radio" class="dfradio" value="4"/>
		    						       少阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="5"/> </li>
		    <li><label>面部皮肤</label>青<input name="casCase.face" type="radio" class="dfradio" value="0"/> 
		    						       赤<input name="casCase.face" type="radio" class="dfradio" value="1"/> 
		   							       黄 <input name="casCase.face" type="radio" class="dfradio" value="2"/> 
		    						       白<input name="casCase.face" type="radio" class="dfradio" value="3"/> 
		    						       黑 <input name="casCase.face" type="radio" class="dfradio" value="4"/> 
		    <li><label>咳嗽</label><input name="casCase.cough" type="text" class="dfinput" /></li>
		    <li><label>大便</label><input name="casCase.excrement" type="text" class="dfinput"  /></li>
		    <li><label>小便</label><input name="casCase.pee" type="text" class="dfinput" ></input></li>
		    <li><label>冷热</label><input name="casCase.coldHot" type="text" class="dfinput" ></input></li>
		    <li><label>汗</label><input name="casCase.sweat" type="text" class="dfinput" ></input></li>
		    <li><label>头身</label><input name="casCase.headBody" type="text" class="dfinput" /></li>
		    <li><label>饮食</label><input name="casCase.diet" type="text" class="dfinput"  /></li>
		    <li><label>渴</label><input name="casCase.thirsty" type="text" class="dfinput" ></input></li>
		    <li><label>耳</label><input name="casCase.ear" type="text" class="dfinput" ></input></li>
		    <li><label>耳油</label><input name="casCase.earOil" type="text" class="dfinput" ></input></li>
		    <li><label>月经</label><input name="casCase.menstruation" type="text" class="dfinput" /></li>
		    <li><label>肝功能</label><input name="casCase.liverFunction" type="text" class="dfinput"  /></li>
		    <li><label>肾功能</label><input name="casCase.renalFunction" type="text" class="dfinput" ></input></li>
		    <li><label>血常规</label><input name="casCase.bloodRoutine" type="text" class="dfinput" ></input></li>
	     </ul> 
	     <ul class="forminfo">
	    	<li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	     </ul>
    </form>  
    </div>
</body>
</html>