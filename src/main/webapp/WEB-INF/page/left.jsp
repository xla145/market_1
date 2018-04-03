<div class="lefttop">
    <span></span>功能菜单
</div>
<dl class="leftmenu">
    <p:permissions menu="addMerchantUnit,editMerchantUnit,deleteMerchantUnit,addUser,editUser,deleteUser,addRole,
			editRole,deleteRole,addRight,editRight,deleteRight,addComTag,editComTag,deleteComTag,addLoginRecord,viewMessage">
        <dd>
            <div class="title">
                <span><img src="images/leftico04.png"/> </span>病例管理
            </div>
            <ul class="menuson">
                <p:permissions menu="addUser,editUser,deleteUsere">
                    <li>
                        <cite></cite><a href="<%= basePath%>/biz/CasCase_list.action"
                                        target="rightFrame">病例管理</a><i></i>
                    </li>
                </p:permissions>
                <p:permissions menu="addRole,editRole,deleteRole">
                    <li>
                        <cite></cite><a href="<%=basePath%>/biz/CasPatient_list.action"
                                        target="rightFrame">病人管理</a><i></i>
                    </li>
                </p:permissions>
            </ul>
        </dd>
        <dd>
            <div class="title">
                <span><img src="images/leftico04.png"/> </span>系统管理
            </div>
            <ul class="menuson">
                <p:permissions menu="addUser,editUser,deleteUsere">
                    <li>
                        <cite></cite><a href="<%=basePath%>/biz/SysUser_list.action"
                                        target="rightFrame">用户管理</a><i></i>
                    </li>
                </p:permissions>
                <p:permissions menu="addRole,editRole,deleteRole">
                    <li>
                        <cite></cite><a href="<%= basePath%>/biz/SysRole_list.action"
                                        target="rightFrame">角色管理</a><i></i>
                    </li>
                </p:permissions>
                <p:permissions menu="addRight,editRight,deleteRight">
                    <li>
                        <cite></cite><a href="<%= basePath%>/biz/SysRight_list.action"
                                        target="rightFrame">权限管理</a><i></i>
                    </li>
                </p:permissions>
                <p:permissions menu="deleteLoginRecord">
                    <li>
                        <cite></cite><a href="<%= basePath%>/biz/SysLoginRecord_list.action"
                                        target="rightFrame">登陆记录列表</a><i></i>
                    </li>
                </p:permissions>
            </ul>
        </dd>
    </p:permissions>
</dl>
