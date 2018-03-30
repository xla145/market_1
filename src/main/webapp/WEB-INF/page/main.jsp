<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<%@ include file="/WEB-INF/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
        <title>智能二维码微信营销平台</title>
        <base href="<%= basePath%>"/>
        <link href="css/style.css?v=20180331" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery.js"></script>
    </head>
    <body>
        <div class="main">
            <div class="top" style="background:url('<%=basePath%>images/topbg.gif') repeat-x;overflow: hidden;">
                <%@ include file="top.jsp" %>
            </div>
            <div class="main">
                <div class="left">
                    <%@ include file="left.jsp" %>
                </div>
                <div class="right-content">
                    <iframe src="${basePath}/front/Login_openIndex.action" name="rightFrame" scrolling="auto"></iframe>
                </div>
            </div>
        </div>
    </body>
</html>
<script type="text/javascript">
    $(function() {
        //导航切换
        $(".menuson li").click(function() {
            $(".menuson li.active").removeClass("active");
            $(this).addClass("active");
        });
        $('.title').click(function() {
            var $ul = $(this).next('ul');
            $('dd').find('ul').slideUp();
            if ($ul.is(':visible')) {
                $(this).next('ul').slideUp();
            } else {
                $(this).next('ul').slideDown();
            }
        });
        //iframe自适应
        $(window).on('resize',function() {
            var $content = $('.right-content');
            $content.find('iframe').each(function() {
                $(this).height($content.height());
                $(this).width($content.width());
            });
        }).resize();
    });
</script>
