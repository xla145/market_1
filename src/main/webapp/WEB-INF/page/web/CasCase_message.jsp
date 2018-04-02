<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>修改病人信息</title>
	<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/css/select.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">病人管理</a></li>
			<li><a href="#">病人基本信息</a></li>
		</ul>
	</div>
	<div class="formbody" id="tab1">
		<div class="formtitle">
			<span>基本信息</span>
		</div>
	<div class="formtitle"><span>病例基本信息</span></div>
    <form action="<%= basePath%>/biz/CasPatient_add.action" method="post" id="commonform">
	    <ul class="forminfo">
		    <li><label>就诊时间</label><input name="casCase.visitime" type="text" class="dfinput" value="${casPatient.patientCode}"/></li>
		    <li><label>脈象</label><input name="casCase.pulse" type="text" class="dfinput" value="${casCase.pulse}"/></li>
		    <li><label>舌质</label><input name="casCase.tongueQuality" type="text" class="dfinput" value="${casCase.tongueQuality}"/></li>
		    <li><label>舌苔</label><input name="casCase.fur" type="text" class="dfinput" value="${casCase.fur}"/></li>
		    <li><label>舌体</label><input name="casCase.tongue" type="text" class="dfinput" value="${casCase.tongue}"/></li>
		    <li><label>六经症状</label>
		    	<s:if test="casCase.sixChannel==0"> 
									       太阴<input name="casCase.sixChannel" type="radio" class="dfradio" checked value="0"/>
		    						       少阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="1"/>
		   							       厥阴 <input name="casCase.sixChannel" type="radio" class="dfradio" value="2"/>
		    						       太阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="3"/>
		    						       阳明 <input name="casCase.sixChannel" type="radio" class="dfradio" value="4"/>
		    						       少阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="5"/>
				</s:if>
				<s:elseif test="casCase.sixChannel==1"> 
									       太阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="0"/>
		    						       少阴<input name="casCase.sixChannel" type="radio" class="dfradio" checked value="1"/>
		   							       厥阴 <input name="casCase.sixChannel" type="radio" class="dfradio" value="2"/>
		    						       太阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="3"/>
		    						       阳明 <input name="casCase.sixChannel" type="radio" class="dfradio" value="4"/>
		    						       少阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="5"/>
				</s:elseif>
				<s:elseif test="casCase.sixChannel==2"> 
									       太阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="0"/>
		    						       少阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="1"/>
		   							       厥阴 <input name="casCase.sixChannel" type="radio" class="dfradio" checked value="2"/>
		    						       太阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="3"/>
		    						       阳明 <input name="casCase.sixChannel" type="radio" class="dfradio" value="4"/>
		    						       少阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="5"/>
				</s:elseif>
				<s:elseif test="casCase.sixChannel==3"> 
									       太阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="0"/>
		    						       少阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="1"/>
		   							       厥阴 <input name="casCase.sixChannel" type="radio" class="dfradio" value="2"/>
		    						       太阳<input name="casCase.sixChannel" type="radio" class="dfradio" checked value="3"/>
		    						       阳明 <input name="casCase.sixChannel" type="radio" class="dfradio" value="4"/>
		    						       少阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="5"/>
				</s:elseif>
				<s:elseif test="casCase.sixChannel==4"> 
									       太阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="0"/>
		    						       少阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="1"/>
		   							       厥阴 <input name="casCase.sixChannel" type="radio" class="dfradio" value="2"/>
		    						       太阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="3"/>
		    						       阳明 <input name="casCase.sixChannel" type="radio" class="dfradio" checked value="4"/>
		    						       少阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="5"/>
				</s:elseif>
				<s:elseif test="casCase.sixChannel==5"> 
									       太阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="0"/>
		    						       少阴<input name="casCase.sixChannel" type="radio" class="dfradio" value="1"/>
		   							       厥阴 <input name="casCase.sixChannel" type="radio" class="dfradio" value="2"/>
		    						       太阳<input name="casCase.sixChannel" type="radio" class="dfradio" value="3"/>
		    						       阳明 <input name="casCase.sixChannel" type="radio" class="dfradio" value="4"/>
		    						       少阳<input name="casCase.sixChannel" type="radio" class="dfradio" checked value="5"/>
				</s:elseif>
		    <li><label>面部皮肤</label>
		        <s:if test="casCase.face==0"> 
		        					       青<input name="casCase.face" type="radio" class="dfradio" checked value="0"/> 
									       赤<input name="casCase.face" type="radio" class="dfradio" value="1"/> 
		   							       黄 <input name="casCase.face" type="radio" class="dfradio" value="2"/> 
		    						       白<input name="casCase.face" type="radio" class="dfradio" value="3"/> 
		    						       黑 <input name="casCase.face" type="radio" class="dfradio" value="4"/> 
				</s:if>
				<s:elseif test="casCase.face==1"> 
		        					       青<input name="casCase.face" type="radio" class="dfradio" value="0"/> 				
									       赤<input name="casCase.face" type="radio" class="dfradio" checked value="1"/> 
		   							       黄 <input name="casCase.face" type="radio" class="dfradio" value="2"/> 
		    						       白<input name="casCase.face" type="radio" class="dfradio" value="3"/> 
		    						       黑 <input name="casCase.face" type="radio" class="dfradio" value="4"/> 
				</s:elseif>
				<s:elseif test="casCase.face==2"> 
		        					       青<input name="casCase.face" type="radio" class="dfradio" value="0"/> 				
									       赤<input name="casCase.face" type="radio" class="dfradio" value="1"/> 
		   							       黄 <input name="casCase.face" type="radio" class="dfradio" checked value="2"/> 
		    						       白<input name="casCase.face" type="radio" class="dfradio" value="3"/> 
		    						       黑 <input name="casCase.face" type="radio" class="dfradio" value="4"/> 
				</s:elseif>
				<s:elseif test="casCase.face==3"> 
		        					       青<input name="casCase.face" type="radio" class="dfradio" value="0"/> 				
									       赤<input name="casCase.face" type="radio" class="dfradio" value="1"/> 
		   							       黄 <input name="casCase.face" type="radio" class="dfradio" value="2"/> 
		    						       白<input name="casCase.face" type="radio" class="dfradio" checked value="3"/> 
		    						       黑 <input name="casCase.face" type="radio" class="dfradio" value="4"/> 
				</s:elseif>
				<s:elseif  test="casCase.face==4"> 
		        					       青<input name="casCase.face" type="radio" class="dfradio" value="0"/> 				
									       赤<input name="casCase.face" type="radio" class="dfradio" value="1"/> 
		   							       黄 <input name="casCase.face" type="radio" class="dfradio" value="2"/> 
		    						       白<input name="casCase.face" type="radio" class="dfradio" value="3"/> 
		    						       黑 <input name="casCase.face" type="radio" class="dfradio" checked value="4"/> 
				</s:elseif></li>
				
		    <li><label>咳嗽</label><input name="casCase.cough" type="text" class="dfinput" value="${casCase.cough}"/></li>
		    <li><label>大便</label><input name="casCase.excrement" type="text" class="dfinput" value="${casCase.excrement}" /></li>
		    <li><label>小便</label><input name="casCase.pee" type="text" class="dfinput" value="${casCase.pee}"></input></li>
		    <li><label>冷热</label><input name="casCase.coldHot" type="text" class="dfinput" value="${casCase.coldHot}"></input></li>
		    <li><label>汗</label><input name="casCase.sweat" type="text" class="dfinput" value="${casCase.sweat}"></input></li>
		    <li><label>头身</label><input name="casCase.headBody" type="text" class="dfinput" value="${casCase.headBody}"/></li>
		    <li><label>饮食</label><input name="casCase.diet" type="text" class="dfinput"  value="${casCase.diet}"/></li>
		    <li><label>渴</label><input name="casCase.thirsty" type="text" class="dfinput" value="${casCase.thirsty}"/></li>
		    <li><label>耳</label><input name="casCase.ear" type="text" class="dfinput" value="${casCase.ear}"/></li>
		    <li><label>耳油</label><input name="casCase.earOil" type="text" class="dfinput" value="${casCase.earOil}"/></li>
		    <li><label>月经</label><input name="casCase.menstruation" type="text" class="dfinput" value="${casCase.menstruation}"/></li>
		    <li><label>肝功能</label><input name="casCase.liverFunction" type="text" class="dfinput"  value="${casCase.liverFunction}"/></li>
		    <li><label>肾功能</label><input name="casCase.renalFunction" type="text" class="dfinput" value="${casCase.renalFunction}"></input></li>
		    <li><label>血常规</label><input name="casCase.bloodRoutine" type="text" class="dfinput" value="${casCase.bloodRoutine}"></input></li>
	     </ul> 
	     <ul class="forminfo">
	    	<li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	     </ul>
    </form>  
    </div>
</body>
</html>