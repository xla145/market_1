<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改角色权限信息</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/third/jquery-validation-1.14.0/lib/jquery.js"></script>
<script type="text/javascript" src="<%= basePath%>third/jquery-validation-1.14.0/dist/jquery.validate.js"></script>
<script type="text/javascript" src="<%= basePath%>third/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script type="text/javascript" src="<%=path %>/js/common.js"></script> 
<script type="text/javascript">
        $(function(){
			
			//如果是新增成功，会返回1，如果是1，则提示保存成功
			if("1" == "${actionState}"){
				alert('保存成功！');
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
                    "sysRight.rightName":{
                        required:true,
                        rangelength:[2,20]
                    },
                    "sysRight.rightType":{
                        required:true,
                        digits:true,
                        rangelength:[1,4] 
                    },
                    "sysRight.rightSortOrder":{
                        required:true,
                        digits:true,
                        rangelength:[1,4]
                    }
                },
                messages:{
                    "sysRight.rightName":{
                        required:"必填",
                        rangelength:$.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                    "sysRight.rightType":{
                        required: "必填",
                        digits:"请输入整数",
                        rangelength:$.validator.format("最小长度:{0}, 最大长度:{1}。")
                    },
                    "sysRight.rightSortOrder":{
                        required: "必填",
                        digits:"请输入整数",
                        rangelength:$.validator.format("最小长度:{0}, 最大长度:{1}。")
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
    <li><a href="#">角色权限管理</a></li>
    <li><a href="#">基本信息</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>角色权限基本信息</span></div>
    <form action="<%= basePath%>/biz/SysRight_update.action" method="post" id="commonform">
     
    <ul class="forminfo">
    <input name="sysRight.rightId" type="hidden" value="${sysRight.rightId}"/>
    <li><label>权限编号</label><label style="width:50%">${sysRight.rightId}</label></li>
    <li><label>权限名称</label><input name="sysRight.rightName" type="text"  class="dfinput" value="${sysRight.rightName}"/><i><font color="#FF0000">*必填</font>不能超过20个汉字</i></li>
    <li><label>资源路径</label><input name="resourcePath" id="resourcePath" type="text" class="dfinput" value="${sysRight.resourcePath}" /></li>
    <li><label>权限类别</label><input name="sysRight.rightType" type="text"  class="dfinput" value="${sysRight.rightType}" /><i><font color="#FF0000">*必填</font>1-4位整数</i></li>
    <li><label>排序序号</label><input name="sysRight.rightSortOrder" type="text"  class="dfinput" value="${sysRight.rightSortOrder}"/><i><font color="#FF0000">*必填</font>1-4位整数</i></li>
    <li><label>&nbsp;</label><input name="add_btn" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    </div>

</body>

</html>
