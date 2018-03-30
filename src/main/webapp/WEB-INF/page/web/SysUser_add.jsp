<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<%@ include file="/WEB-INF/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户-新增</title>
    <link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path %>/css/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        $(document).ready(function (e) {
            $(".select2").uedSelect({
                width: 155
            });
        });
    </script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">系统管理</a></li>
        <li><a href="#">新增用户</a></li>
    </ul>
</div>

<div class="formbody" id="tab1">

    <div class="formtitle"><span>基本信息</span></div>
    <form action="<%= basePath%>/biz/SysUser_add.action" method="post" id="commonform">
        <ul class="forminfo">
            <li><label>用户编号</label><input name="sysUser.userId" id="userId" type="text" class="dfinput"/><i><font
                    color="#FF0000">*必填</font>不能超过20个字母</i><span id="gradeInfo"></span></li>
            <li><label>昵称</label><input name="sysUser.userName" type="text" class="dfinput"/><i><font color="#FF0000">*必填</font>不能超过20个汉字</i>
            </li>
            <li><label>真实姓名</label><input name="sysUser.userRealName" type="text" class="dfinput"/><i><font
                    color="#FF0000">*必填</font>不能超过20个汉字</i></li>
            <!-- <li><label>头像</label><input name="sysUser.userImg" type="text"  class="dfinput" value="${sysUser.userImg}"/></li> -->
            <li><label>密码</label><input name="sysUser.userPassword" type="password" class="dfinput"/><i><font
                    color="#FF0000">*必填</font>6-16位字母、数字或下滑线组成</i></li>
            <li><label>手机号</label><input name="sysUser.userTelephone" type="text" class="dfinput"/><i><font
                    color="#FF0000">*必填</font>11位大陆手机号</i></li>
            <li><label>地址</label><input name="sysUser.userAddress" type="text" class="dfinput"></input><i><font
                    color="#FF0000">*必填</font>不能超过150个汉字</i></li>

            <li><label>邮箱</label><input name="sysUser.userEmail" type="text" class="dfinput"></input></li>
            <li><label>微信</label><input name="sysUser.userWeixin" type="text" class="dfinput"></input></li>
            <li><label>微博</label><input name="sysUser.userWeibo" type="text" class="dfinput"></input></li>
            <li><label>QQ</label><input name="sysUser.userQq" type="text" class="dfinput"></input></li>
            <input name="sysUser.merchantId" id="merchantId" type="hidden"/>
            <li><label>所属单位</label><input placeholder="关键字搜索" name="name" type="text" class="dfinput" id="merchant"
                                          onkeyup="find()"></input>
                <div id="items" style="top:618px"></div>
            </li>

            <li><label><font style="font-weight: bold">类别</font></label>
                <label><input class="radio1" type="radio" name="sysUser.userType" value="3" checked="checked"></input>管理公司</label>
                <label><input class="radio1" type="radio" name="sysUser.userType" value="2"></input>商家 </label>
                <label><input class="radio1" type="radio" name="sysUser.userType" value="0"></input> 用户 </label>
            </li>
            <li><label><font style="font-weight: bold">角色名称</font></label>
                <input type="text" name="checkRoleId" readonly="readonly"/>
                <s:iterator value="roles" id="id">
            <li style="display:inline"><input name="roleId" id="roleId" type="checkbox" class="dfinput1"
                                              value="${roleId}"/>${roleName}</li>
            </s:iterator>
            </li>
        </ul>
        <ul class="seachform">
            <li><label>&nbsp;&nbsp;&nbsp;</label><label><font style="font-weight: bold">区域</font></label></li>
            <li><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><label>省(直辖市)：</label>
                <div class="vocation">
                    <select id="provinceId" name="tourProductProvince" class="select2">
                        <option value="">请选择...</option>
                        <s:iterator value="comDistricts">
                            <option value="${name }" id="${id }">${name }</option>
                        </s:iterator>
                    </select>
                </div>
            </li>
            <li><label>市级：</label>
                <div class="vocation">
                    <select id="shijiId" name="tourProductCity" class="select2">
                        <option value="">请选择...</option>
                    </select>
                </div>
            </li>
        </ul>
        <ul class="forminfo">
            <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
        </ul>
    </form>
</div>
</body>
</html>
