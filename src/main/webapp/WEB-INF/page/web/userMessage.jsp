<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改用户信息</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/common.js"></script>

<script type="text/javascript" src="<%= basePath%>/third/jquery-validation-1.14.0/lib/jquery.js"></script>
<script type="text/javascript" src="<%= basePath%>/third/jquery-validation-1.14.0/dist/jquery.validate.js"></script>
<script type="text/javascript" src="<%= basePath%>/third/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script type="text/javascript">
       $(document).ready(function(){
              var type = $("#userType").val();
              if(type == 0){
                     $("input:radio").eq(0).attr("checked","true");
              }
              if(type == 2){
                     $("input:radio").eq(1).attr("checked","true");
              }
              if(type == 3){
                     $("input:radio").eq(2).attr("checked","true");
              }
       });
</script> 

<script type="text/javascript">
	$(function(){
		//验证用户名 
		$("#userId").blur(function(){//给用户编号添加失去焦点事件
			var url = "/front/SysJson_checkUserName.action";
			var id = $(this).val();//获取用户编号的输入值 
			var inputValue = $(this).attr("userId");//获取原来的用户编号
			id = $.trim(id);
			if(id != inputValue){//如果输入的和原来的不等，校验用户编号
				if(id != ""){
					$.post(url,{"checkName":id},function(data){//发送请求验证用户编号 
						if(data == "true"){//如果返回 true,提示已存在 
							$("#gradeInfo").html("<font color=\"red\">您输入的编号已存在！请重新输入！</font>"); 
						}else{
							$("#gradeInfo").html("");
						}
					},"json");
				}
			}
			$("#gradeInfo").html("");
		});

		
		//验证密码
		
		$("#oldPwd").blur(function(){//给旧密码添加失去焦点事件
			var url = "/front/SysJson_checkUserPasswd.action";
			var pwd = $(this).val();//获取用户输入的密码 
			pwd = $.trim(pwd);
			var rawPwd = $(this).attr("pwdValue");
			if(pwd != ""){
				$.post(url,{"checkName":pwd,"rawPassword":rawPwd},function(data){//发送请求验证输入旧密码
					if(data == "false"){//如果返回 false,提示密码输入有误  
						$("#oldPasswd").html("<font color=\"red\">您输入密码有误！请重新输入！</font>");
						i++;
					}else{
						$("#oldPasswd").html("");
					}
				},"json");
			}
		});
		/**
		已在 jquery validate 中验证
		
		//验证两次输入的密码是否相同 
		$("#againPassword").blur(function(){
			var againPasswd = $(this).val();//第二次输入的密码
			var newPasswd = $("#newPassword").val();//第一次输入的密码 
			if(againPasswd != newPasswd ){
				$("#againPasswd").html("<font color=\"red\">您两次输入的密码不相同 ！请重新输入！</font>");
			}else{
				$("#againPasswd").html("");
			}
			
		});
		
		$("#newPassword").blur(function(){
			var newPasswd = $(this).val();
			var againPasswd = $("#againPassword").val();
			if($.trim(againPasswd) != ""){
				if(againPasswd != newPasswd ){
				$("#againPasswd").html("<font color=\"red\">您两次输入的密码不相同 ！请重新输入！</font>");
				}else{
					$("#againPasswd").html("");
				}
			}
		});*/
		
	});
</script>
<script type="text/javascript">
        $(function(){
        //如果是新增成功，会返回1，如果是1，则提示保存成功
			if("1" == "${actionState}"){
				alert('修改成功！');
			}
            $("#commonform").validate({
                errorClass: "errorInfo", //默认为错误的样式类为：error
                focusInvalid: false, //当为false时，验证无效时，没有焦点响应  
                onkeyup: false,   
                submitHandler: function(form){   //表单提交句柄,为一回调函数，带一个参数：form   
					checkFrom();
                    form.submit();   //提交表单   
                },   
                rules:{
                    "sysUser.userId":{
                        required:true,
                        rangelength:[1,20]
                    },
                    "sysUser.userName":{
                        required:true,
                        rangelength:[2,20]
                    },
                    "sysUser.userRealName":{
                        required:true,
                        rangelength:[2,20]
                    },
                    "oldPwd":{
                    	required:true
                    },
                    "newPassword":{
                        rangelength:[6,16]
                    },
                    "sysUser.userPassword":{
                        equalTo:"#newPassword"
                    }
                    
                },
                messages:{
                    "sysUser.userId":{
                        required:"必填",
                        rangelength: $.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                    "sysUser.userName":{
                        required:"必填",
                        rangelength: $.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                    "sysUser.userRealName":{
                        required: "必填",
                        rangelength: $.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                     "oldPwd":{
                    	required:"必填"
                    },
                    "newPassword":{
                        rangelength:$.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                    "sysUser.userPassword":{
                    	equalTo:"两次输入密码不一致!"
                    }
                }  
            });    
        });
</script>
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">用户管理</a></li>
    <li><a href="#">基本信息</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>用户基本信息</span></div>
    <form action="<%= basePath%>/biz/SysUser_updateUserMessage.action" method="post" id="commonform">
    <input type="hidden" name="sysUser.userType" value="${sysUser.userType}"  id="userType"/> 
    <input type="hidden" name="sysUser.id" value="${sysUser.id}"/>
    <input name="sysUser.userAddress" type="hidden"  class="dfinput" value="${sysUser.userAddress}"/>
    <input name="sysUser.userImg" type="hidden"  class="dfinput" value="${sysUser.userImg}"/>
    <input name="sysUser.userId" type="hidden" value="${sysUser.userId}"/>
    <input name="oldPassword" type="hidden" value="${sysUser.userPassword}"/>
    <input name="sysUser.merchantId" type="hidden" value="${sysUser.merchantId}"/>
    
    <ul class="forminfo">
    <%-- <li><label>用户编号</label><input name="sysUser.userId" type="text" id="userId" class="dfinput" readonly="readonly" value="${sysUser.userId}" userId="${sysUser.userId}"/><span id="gradeInfo"></span></li> --%>
    <li><label>昵称</label><input name="sysUser.userName" type="text"  class="dfinput" value="${sysUser.userName}"/><i><font color="#FF0000">*必填</font>不能超过20个汉字</i></li>
    <li><label>真实姓名</label><input name="sysUser.userRealName" type="text" class="dfinput" value="${sysUser.userRealName}"/><i><font color="#FF0000">*必填</font>不能超过20个汉字</i></li>
    <li><label>旧密码</label><input id="oldPwd" name="oldPwd" type="password"  class="dfinput" pwdValue="${sysUser.userPassword}"/><i><font color="#FF0000">*必填</font>6-16位字母、数字或下滑线组成</i><span id="oldPasswd"></span></li>
    <li><label>新密码</label><input id="newPassword" name="newPassword" type="password"  class="dfinput" /><i><font color="#FF0000">(若不修改可不填)</font>6-16位字母、数字或下滑线组成</i></li>
    <li><label>确认密码</label><input id="againPassword" name="sysUser.userPassword" type="password"  class="dfinput" /><span id="againPasswd"></span></li>
    <li><label>联系方式</label><input name="sysUser.userTelephone" type="text" class="dfinput" value="${sysUser.userTelephone}"/></li>
    <li><label>邮箱</label><input name="sysUser.userEmail" type="text" class="dfinput" value="${sysUser.userEmail}"></input></li>
    <li><label>QQ</label><input name="sysUser.userQq" type="text" class="dfinput" value="${sysUser.userQq}"></input></li>
     <s:iterator value="userRoles" id="w">
     	 <li><input  name="roleId"  type="hidden" class="userRole" value="${roleId}" /></li>
     </s:iterator>
    <li><label>&nbsp;</label><input name="add_btn" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    </div>

</body>

</html>
