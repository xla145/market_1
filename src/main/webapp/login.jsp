<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ include file="/WEB-INF/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <base href="<%= basePath%>">
    <title>欢迎登录智能二维码微信营销平台</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="js/jquery.js"></script>
    <script language="javascript">
        $(function () {
            $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 692) / 2});
            $(window).resize(function () {
                $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 692) / 2});
            })
        });
    </script>
</head>
<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
<div id="mainBody">
    <div id="cloud1" class="cloud"></div>
    <div id="cloud2" class="cloud"></div>
</div>
<div class="logintop">
    <span>欢迎登录智能二维码微信营销平台</span>
    <ul>
        <li><a href="#">回首页</a></li>
        <li><a href="#">帮助</a></li>
        <li><a href="#">关于</a></li>
    </ul>
</div>
<div class="loginbody">
    <span class="systemlogo"></span>
    <div class="loginbox">
        <form action="${path}/front/Login_webLogin.action" method="post">
            <ul>
                <li><input name="userName" id="userName" type="text" class="loginuser" value="admin"
                           onclick="JavaScript:this.value=''"/></li>
                <li><input name="userPassword" id="userPassword" type="password" class="loginpwd" value="0774123"
                           onclick="JavaScript:this.value=''"/></li>
                <li><input name="" type="submit" class="loginbtn" value="登录"/>
                    <!--<label><input name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a href="#">忘记密码？</a></label>-->
                </li>
            </ul>
        </form>
    </div>
</div>
<div class="loginbm">技术支持：梧州学院软件开发中心</div>
</body>
</html>
