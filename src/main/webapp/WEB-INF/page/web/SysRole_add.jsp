<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>角色-新增</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/third/jquery-validation-1.14.0/lib/jquery.js"></script>
<script type="text/javascript" src="<%=path %>/js/common.js"></script>

<script type="text/javascript">
	$(function(){
		var url = "/front/SysJson_checkRoleName.action";
		$("#roleId").blur(function(){//给角色编号添加失去焦点事件
			var id = $("input[name='roleId']").val();//获取角色编号值 
			$.post(url,{"checkName":id},function(data){//发送请求验证角色编号 
				if(data == "no"){//如果返回 no,提示已存在 
					$("#gradeInfo").html("<font color=\"red\">您输入的编号存在！请重新输入！</font>"); 
				}else{//否则隐藏 
					$("#gradeInfo").hide();
				}
			},"json");
		});
	});
</script>
<script type="text/javascript" src="<%= basePath%>third/jquery-validation-1.14.0/dist/jquery.validate.js"></script>
<script type="text/javascript" src="<%= basePath%>third/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script type="text/javascript">
        $(function(){
			//如果是新增成功，会返回1，如果是1，则提示保存成功
			if("1" == "${actionState}"){
				alert('保存成功！');
			}
			//当没有添加权限时使用验证
			jQuery.validator.addMethod("checkRightId", function(value, element) {   
			    if($("input[name='rightId']").val()==undefined){
            		return false;
            	}else{
            		return true;
            	}
			}, ""),
            $("#commonform").validate({
                errorClass: "errorInfo", //默认为错误的样式类为：error
                focusInvalid: false, //当为false时，验证无效时，没有焦点响应  
                onkeyup: false,   
                submitHandler: function(form){   //表单提交句柄,为一回调函数，带一个参数：form   
					checkFrom();
                    form.submit();   //提交表单   
                },   
                rules:{
                    "roleId":{
                        required:true,
                        rangelength:[2,20]
                    },
                    "roleName":{
                        required:true,
                        rangelength:[2,20]
                    },
                    "roleSortOrder":{
                        required:true,
                        digits:true,
                        rangelength:[1,4] 
                    },
                    "checkRightId":{
                    	checkRightId:true
                    },
                    "rightId":{
                        required:true
                    }
                },
                messages:{
                    "roleId":{
                        required:"必填",
                        rangelength:$.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                    "roleName":{
                        required:"必填",
                        rangelength:$.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                    "roleSortOrder":{
                        required: "必填",
                        digits:"请输入整数",
                        rangelength:$.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                    "rightId":{
                        required:""
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
    <li><a href="#">系统管理</a></li>
    <li><a href="#">新增角色</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>角色基本信息</span></div>
    <form action="<%= basePath%>/biz/SysRole_add.action" method="post" id="commonform">
    <ul class="forminfo">
    <li><label>角色编号</label><input name="roleId" id="roleId" type="text"  class="dfinput"/><i><font color="#FF0000">*必填</font>英文</i><span id="gradeInfo"></span></li>
    <li><label>角色名称</label><input name="roleName" id="roleName" type="text" class="dfinput" /><i><font color="#FF0000">*必填</font>不能超过20个汉字</i></li>
    <li><label>排序序号</label><input name="roleSortOrder" id="roleSortOrder" type="text" class="dfinput" /><i><font color="#FF0000">*必填</font></i></li>
    <li><label>权限名称</label><i><font color="#FF0000">*必填</font>至少选择一个权限</i>
    	<input type="text" name="checkRightId" readonly="readonly" />
    </li>
    <li>
    	<ul style="margin-left:80px;">
	    	<s:iterator value="sysRights" id="id">
	    		<li style="display: inline;"><label for="rightId_${rightId}" style="width:150px;"><input name="rightId" id="rightId_${rightId}" type="checkbox" class="dfinput1" value="${rightId}" />${rightName}</label>
	    		</li>
	    	</s:iterator>
    	</ul>
    </li>
    <li> <br/><br/><label>&nbsp;</label><input name="add_btn" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    
    </div>


</body>

</html>
