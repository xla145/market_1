<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>病例管理</title>
	<link href="<%=path%>/css/style.css?v=2018040301" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/css/select.css" rel="stylesheet" type="text/css" />
	<link href="<%=path%>/third/layui/css/layui.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		.main {
			margin: 10px;
			width: 98%;
		}
		.main .layui-elem-quote {
			padding: 8px;
		}
		.forminfo {
			overflow: hidden;margin-bottom: 10px;
		}
		.forminfo li {
			color: #898e93;
		}
		.main .patient-msg span, .case-msg ul.forminfo  span {
			minWidth: 86px;
			line-height: 34px;
			display: block;
			float: left;
			margin-right: 21px;
		}
		.layui-elem-quote .layui-btn-sm {
			height: 23px;
			line-height: 23px;
			padding: 0 10px;
			font-size: 12px;
		}
		.forminfo li label{width:auto;line-height:34px; display:block; float:left;}
		#add-form .layui-form-label span {
			color:  red;
		}
	</style>
	<script type="text/javascript" src="<%=path%>/third/layui/layui.js"></script>
</head>
<%@ include file="CasCase_add.jsp"%>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">病例管理</a></li>
		</ul>
	</div>
	<div class="main">
		<blockquote class="layui-elem-quote">病人基本信息</blockquote>
		<div class="patient-msg">
			<ul class="forminfo" style="">
				<li><label>病人编号：</label><span>${casPatient.patientCode}</span> <label>病人姓名：</label><span>${casPatient.patientName}</span><label>性别：</label><span><s:if test="casPatient.patientSex==0">男</s:if><s:else>女</s:else></span>
				<label>年龄：</label><span>${casPatient.patientAge}</span><label>民族：</label><span>${casPatient.patientNation}</span><label>婚姻状况：</label><span><s:if test="casPatient.patientMarriage==1">已婚</s:if><s:else>未婚</s:else></span>
				<label>职业：</label><span>${casPatient.patientJob}</span><label>联系方式：</label><span>${casPatient.patientPhone}</span><label>出生地：</label><span>${casPatient.patientBirthplace}</span></li>
			</ul>
		</div>
		<blockquote class="layui-elem-quote">病例信息 <a class="layui-btn layui-btn-sm operator-btn" data-type="add" style="float: right;" >添加</a></blockquote>
		<div class="case-msg">
			<div class="layui-collapse">
				<div class="layui-colla-item">
					<h2 class="layui-colla-title">病例一：</h2>
					<div class="layui-colla-content layui-show">
						<ul class="forminfo">
							<li><label>就诊时间：</label><span>${casPatient.patientAge}</span></li>
							<li><label>脈象：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌质：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌苔：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌体：</label><span>${casPatient.patientAge}</span></li>
							<li><label>六经症状：</label>
								<span>
									<s:if test="casPatient.patientSex==0">太阴</s:if>
									<s:elseif test="casPatient.patientSex==1">少阴</s:elseif>
									<s:elseif test="casPatient.patientSex==2">厥阴</s:elseif>
									<s:elseif test="casPatient.patientSex==3">太阳</s:elseif>
									<s:elseif test="casPatient.patientSex==4">阳明</s:elseif>
									<s:elseif test="casPatient.patientSex==5">少阳</s:elseif>
								</span>
							<li><label>面部皮肤：</label>
								<span>
									<s:if test="casPatient.patientSex==0">青</s:if>
									<s:elseif test="casPatient.patientSex==1">赤</s:elseif>
									<s:elseif test="casPatient.patientSex==2">黄</s:elseif>
									<s:elseif test="casPatient.patientSex==3">白</s:elseif>
									<s:elseif  test="casPatient.patientSex==4">黑</s:elseif>
								</span>
						    </li>
							<li><label>咳嗽：</label><span>${casPatient.patientAge}</span></li>
							<li><label>大便：</label><span>${casPatient.patientAge}</span></li>
							<li><label>小便：</label><span>${casPatient.patientAge}</span></li>
							<li><label>冷热：</label><span>${casPatient.patientAge}</span></li>
							<li><label>汗：</label><span>${casPatient.patientAge}</span></li>
							<li><label>头身：</label><span>${casPatient.patientAge}</span></li>
							<li><label>饮食：</label><span>${casPatient.patientAge}</span></li>
							<li><label>渴：</label><span>${casPatient.patientAge}</span></li>
							<li><label>耳：</label><span>${casPatient.patientAge}</span></li>
							<li><label>耳油：</label><span>${casPatient.patientAge}</span></li>
							<li><label>月经：</label><span>${casPatient.patientAge}</span></li>
							<li><label>肝功能：</label><span>${casPatient.patientAge}</span></li>
							<li><label>肾功能：</label><span>${casPatient.patientAge}</span></li>
							<li><label>血常规：</label><span>${casPatient.patientAge}</span></li>
						</ul>
					</div>
				</div>
				<div class="layui-colla-item">
					<h2 class="layui-colla-title">病例二：</h2>
					<div class="layui-colla-content">
						<ul class="forminfo">
							<li><label>就诊时间：</label><span>${casPatient.patientAge}</span></li>
							<li><label>脈象：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌质：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌苔：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌体：</label><span>${casPatient.patientAge}</span></li>
							<li><label>六经症状：</label>
								<span>
									<s:if test="casPatient.patientSex==0">太阴</s:if>
									<s:elseif test="casPatient.patientSex==1">少阴</s:elseif>
									<s:elseif test="casPatient.patientSex==2">厥阴</s:elseif>
									<s:elseif test="casPatient.patientSex==3">太阳</s:elseif>
									<s:elseif test="casPatient.patientSex==4">阳明</s:elseif>
									<s:elseif test="casPatient.patientSex==5">少阳</s:elseif>
								</span>
							<li><label>面部皮肤：</label>
								<span>
									<s:if test="casPatient.patientSex==0">青</s:if>
									<s:elseif test="casPatient.patientSex==1">赤</s:elseif>
									<s:elseif test="casPatient.patientSex==2">黄</s:elseif>
									<s:elseif test="casPatient.patientSex==3">白</s:elseif>
									<s:elseif  test="casPatient.patientSex==4">黑</s:elseif>
								</span>
							</li>
							<li><label>咳嗽：</label><span>${casPatient.patientAge}</span></li>
							<li><label>大便：</label><span>${casPatient.patientAge}</span></li>
							<li><label>小便：</label><span>${casPatient.patientAge}</span></li>
							<li><label>冷热：</label><span>${casPatient.patientAge}</span></li>
							<li><label>汗：</label><span>${casPatient.patientAge}</span></li>
							<li><label>头身：</label><span>${casPatient.patientAge}</span></li>
							<li><label>饮食：</label><span>${casPatient.patientAge}</span></li>
							<li><label>渴：</label><span>${casPatient.patientAge}</span></li>
							<li><label>耳：</label><span>${casPatient.patientAge}</span></li>
							<li><label>耳油：</label><span>${casPatient.patientAge}</span></li>
							<li><label>月经：</label><span>${casPatient.patientAge}</span></li>
							<li><label>肝功能：</label><span>${casPatient.patientAge}</span></li>
							<li><label>肾功能：</label><span>${casPatient.patientAge}</span></li>
							<li><label>血常规：</label><span>${casPatient.patientAge}</span></li>
						</ul>
					</div>
				</div>
				<div class="layui-colla-item">
					<h2 class="layui-colla-title">病例三：</h2>
					<div class="layui-colla-content">
						<ul class="forminfo">
							<li><label>就诊时间：</label><span>${casPatient.patientAge}</span></li>
							<li><label>脈象：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌质：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌苔：</label><span>${casPatient.patientAge}</span></li>
							<li><label>舌体：</label><span>${casPatient.patientAge}</span></li>
							<li><label>六经症状：</label>
								<span>
									<s:if test="casPatient.patientSex==0">太阴</s:if>
									<s:elseif test="casPatient.patientSex==1">少阴</s:elseif>
									<s:elseif test="casPatient.patientSex==2">厥阴</s:elseif>
									<s:elseif test="casPatient.patientSex==3">太阳</s:elseif>
									<s:elseif test="casPatient.patientSex==4">阳明</s:elseif>
									<s:elseif test="casPatient.patientSex==5">少阳</s:elseif>
								</span>
							<li><label>面部皮肤：</label>
								<span>
									<s:if test="casPatient.patientSex==0">青</s:if>
									<s:elseif test="casPatient.patientSex==1">赤</s:elseif>
									<s:elseif test="casPatient.patientSex==2">黄</s:elseif>
									<s:elseif test="casPatient.patientSex==3">白</s:elseif>
									<s:elseif  test="casPatient.patientSex==4">黑</s:elseif>
								</span>
							</li>
							<li><label>咳嗽：</label><span>${casPatient.patientAge}</span></li>
							<li><label>大便：</label><span>${casPatient.patientAge}</span></li>
							<li><label>小便：</label><span>${casPatient.patientAge}</span></li>
							<li><label>冷热：</label><span>${casPatient.patientAge}</span></li>
							<li><label>汗：</label><span>${casPatient.patientAge}</span></li>
							<li><label>头身：</label><span>${casPatient.patientAge}</span></li>
							<li><label>饮食：</label><span>${casPatient.patientAge}</span></li>
							<li><label>渴：</label><span>${casPatient.patientAge}</span></li>
							<li><label>耳：</label><span>${casPatient.patientAge}</span></li>
							<li><label>耳油：</label><span>${casPatient.patientAge}</span></li>
							<li><label>月经：</label><span>${casPatient.patientAge}</span></li>
							<li><label>肝功能：</label><span>${casPatient.patientAge}</span></li>
							<li><label>肾功能：</label><span>${casPatient.patientAge}</span></li>
							<li><label>血常规：</label><span>${casPatient.patientAge}</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
        //注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
        layui.use(['element','common','laydate','form'], function(){
            var $ = layui.jquery, element = layui.element,common = layui.common,laydate = layui.laydate,form = layui.form;
            laydate.render({elem: '#visitTime'})
            var active = {
                add: function () {
                    common.addForm({
						content: $('#add-form'),
						area:['800px','500px'],
						title:'添加病例',
                        yes: function (index, layero) {
                            var formEm = $(layero).find("form");
                            if (!form.onVerify(formEm)){
                                return false;
                            }
                            /**表单提交 **/
                            $.post('<%=basePath%>/bizJson/CasCase_add.action', formEm.serialize(), function(result){
                                if(result.code == 0){
                                    formEm[0].reset();	//清空弹框表单内容
                                    layer.close(index);	//关闭弹框
                                    return;
                                }
                                layer.msg(result.msg);
                            });
                        }
					})
                }
			}
            //绑定操作按钮
            $('.operator-btn').on('click', function(){
                var type = $(this).data('type');
                active[type] ? active[type].call(this) : '';
            });
        });
	</script>
</body>
</html>