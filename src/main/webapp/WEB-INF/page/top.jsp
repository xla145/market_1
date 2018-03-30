    <div class="topleft">
        <a href="${basePath}/front/Login_openIndex.action" target="rightFrame"><img src="images/logo.png" title="系统首页"/></a>
    </div>

    <%--<ul class="nav">--%>
    <%--<li><a href="<%= basePath%>/biz/SysUser_openMessage.action?id=${sessionScope.sysUser.id }&userId=${sessionScope.sysUser.userId }" target="rightFrame" class="selected"><img src="images/icon01.png" title="工作台" /><h2>个人信息修改</h2></a></li>--%>
    <%--<li><a href="#" target="rightFrame"><img src="images/icon02.png" title="模型管理" /><h2>菜单预留</h2></a></li>--%>
    <%--<li><a href="#"  target="rightFrame"><img src="images/icon03.png" title="模块设计" /><h2>菜单预留</h2></a></li>--%>
    <%--<li><a href="#"  target="rightFrame"><img src="images/icon04.png" title="常用工具" /><h2>菜单预留</h2></a></li>--%>
    <%--<li><a href="#" target="rightFrame"><img src="images/icon05.png" title="文件管理" /><h2>菜单预留</h2></a></li>--%>
    <%--<li><a href="#"  target="rightFrame"><img src="images/icon06.png" title="系统设置" /><h2>菜单预留</h2></a></li>--%>
    <%--</ul>--%>

    <div class="topright">
        <ul>
            <li><span><img src="images/help.png" title="帮助" class="helpimg"/></span><a href="javascript:void(0)">帮助</a></li>
            <li><a href="javascript:void(0)">关于</a></li>
            <li><a href="${basePath}/front/Login_openIndex.action" target="rightFrame">回到首页</a></li>
            <li><a href="<%=basePath%>" target="_parent">退出</a></li>
        </ul>
        <div class="user">
            <span>${sessionScope.sysUser.userName}</span>
            <i>消息</i>
            <b>5</b>
        </div>
    </div>
<script type="text/javascript">
    $(function () {
        //顶部导航切换
        $(".nav li a").click(function () {
            $(".nav li a.selected").removeClass("selected")
            $(this).addClass("selected");
        })
    })
</script>
