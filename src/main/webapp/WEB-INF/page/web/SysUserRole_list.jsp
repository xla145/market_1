<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商家（单位）列表</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=path %>/js/common.js"></script>
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


<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
var merchantId;
  $(".tablelinkdelete").click(function(){

 merchantId = $(this).attr("id_value");

  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
  window.location.href="<%= basePath%>/biz/SysMerchantUnit_delete.action?merchantId="+merchantId;
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
<style type="text/css">
.tablelinkdelete{color:#056dae;}

.find{height:31px;margin-top:-5px;margin-left:-10px;

}
.find1{height:31px;margin-right:-14px;margin-top:-5px;

}

</style>
</head>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">系统角色</a></li>
    <li><a href="#">用户角色</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
     <form action="<%= basePath%>/biz/SysMerchantUnit_list.action" method="post"  target="rightFrame">
    	      <li><span><input class="find" name="sysMerchantUnit.merchantName"   placeholder="请输入商家名称或地址"><input class="find1" type="submit" value="查询">
    	 </span></li>
    	  </form>
        <li class="clicks"><span><img src="<%=path%>/images/t01.png" /></span><a href="<%= basePath%>/biz/SysMerchantUnit_openAdd.action" >添加</a></li>
        <li class="click"><span><img src="<%=path%>/images/t02.png" /></span>修改</li>
        <li><span><img src="<%=path%>/images/t03.png" /></span>删除</li>
        </ul>
        
        <ul class="toolbar1">
        <li><span><img src="<%=path%>/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
    	
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>序号<i class="sort"><img src="<%=path%>/images/px.gif" /></i></th>
        <th>角色编号</th>
         <th>用户编号</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="pageResult.data">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>${id}</td>
        <td>${roleId}</td>
         <td>${userId}</td>
        </tr> 
        </s:iterator>
        </tbody>
    </table>
    
   <!-- 
      <div class="pagin">
    	<div class="message">共<i class="blue">${pageResult.totalPage}</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    -->
 <div class="pagin">
 	<div class="message">
 	共<i class="blue">${pageResult.total}</i>条记录
 	<i class="blue">${pageResult.totalPage}</i>页，
 	当前显示第&nbsp;<i class="blue">${pageResult.page}</i>页
 	</div>
 </div>
   
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

    
 
	
	     <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认删除信息 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>

</body>

</html>
