<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>系统出现异常</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">

        <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery.js"></script>
        <script language="javascript">
            $(function () {
                $('.error').css({'position': 'absolute', 'left': ($(window).width() - 490) / 2});
                $(window).resize(function () {
                    $('.error').css({'position': 'absolute', 'left': ($(window).width() - 490) / 2});
                })
            });
        </script>
    </head>
    <body style="background:#edf6fa;">
        <div class="place">
            <span>位置：</span>
            <ul class="placeul">
                <li><a href="#">首页</a></li>
                <li><a href="#">500错误提示</a></li>
            </ul>
        </div>
        <div class="error">
            <h2>非常遗憾，服务器出现异常！</h2>
            <div class="reindex"><a href="${basePath}/front/Login_openIndex.action" target="rightFrame">返回首页</a></div>
        </div>
    </body>
</html>
