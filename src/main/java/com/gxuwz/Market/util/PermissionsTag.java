package com.gxuwz.Market.util;

import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.util.List;

/**
 * 自定义权限标签类，从session中获取用户权限的list
 * 与标签体传过来的参数比较，判断是否具有权限，有则
 * 显示菜单没有，则不显示
 *
 * @author 蒙译文
 * @date 2015.09.15
 */
public class PermissionsTag extends TagSupport {

    private static final long serialVersionUID = 1L;

    private String menu;//判断外层菜单是否要显示
    private String right;//权限id

    public String getMenu() {
        return menu;
    }

    public void setMenu(String menu) {
        this.menu = menu;
    }

    public String getRight() {
        return right;
    }

    public void setRight(String right) {
        this.right = right;
    }

    public int doStartTag() throws JspException {
        HttpSession session = pageContext.getSession();
        List<String> listRight = (List<String>) session.getAttribute("listRight");

        //判定整个外层菜单
        String[] menus;
        if (null != menu) {
            menus = menu.split(",");
            int flag = 0;//判定是否显示外层菜单
            for (int i = 0; i < menus.length; i++) {
                if (!listRight.contains(menus[i])) {//当menus不存在listRight中时则flag+1
                    flag++;
                }
            }
            if (flag == menus.length) {
                return TagSupport.SKIP_BODY;//不输出标签体内容
            } else {
                return TagSupport.EVAL_BODY_INCLUDE;//输出标签体内容
            }
        }

        //判定单个按钮
        if (null != listRight && listRight.contains(right)) {//如果有权限
            return TagSupport.EVAL_BODY_INCLUDE;//输出标签体内容
        } else {//没有权限
            return TagSupport.SKIP_BODY;//不输出标签体内容
        }
    }
}
