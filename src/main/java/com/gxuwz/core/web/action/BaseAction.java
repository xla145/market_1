package com.gxuwz.core.web.action;

import com.gxuwz.Market.SystemContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 控制层公共类
 * @author  tyy
 */
public class BaseAction extends ActionSupport {

    private static final long serialVersionUID = -5391490758289533136L;
    private static Logger logger = LoggerFactory.getLogger(BaseAction.class);

    private Integer page = 0;//1
    private Integer row = 0;//100
    private String action;
    private String forwardView;//自定义的跳转页面
    private HttpServletResponse response;//获取response
    private PrintWriter printWriter;//获取输出
    private HttpServletRequest req;

    /**
     * 获取response
     * @return
     */
    public HttpServletResponse getResponse() {
        if (null == response) {
            response = ServletActionContext.getResponse();
            response.setContentType(SystemContext.ACTION_CONTENT_TYPE);
            response.setHeader("Cache-Control", "no-cache");
        }
        return response;
    }

    /**
     * 获取PrintWriter
     * @return
     */
    public PrintWriter getPrintWriter() {
        if (null == printWriter) {
            try {
                printWriter = getResponse().getWriter();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return printWriter;
    }

    public HttpServletRequest getRequest() {
        return ServletActionContext.getRequest();
    }

    protected String getContextPath() {
        return getRequest().getContextPath();
    }


    /**
     * 获取请求的值
     * @param paramName
     * @return
     */
    protected String getParameters(String paramName,String defaultValue) {
        if (req == null) {
            req = getRequest();
        }
        return req.getParameter(paramName) == null ? defaultValue:req.getParameter(paramName);
    }


    /**
     * 获取请求的值
     * @param paramName
     * @return
     */
    protected Integer getParametersToInteger(String paramName,Integer defaultValue) {
        if (req == null) {
            req = getRequest();
        }
        String value = req.getParameter(paramName);
        if (StringUtils.isBlank(value)) {
            return defaultValue;
        }
        try{
            int r = Integer.valueOf(value).intValue();
            return r;
        }catch(Exception e){
            logger.error("转化失败，原因是【"+e.getMessage()+"】");
        }
        return defaultValue;
    }

    protected HttpSession getSession() {
        return getRequest().getSession();
    }

    public String getRootPath() {
        ActionContext ac = ActionContext.getContext();
        ServletContext sc = (ServletContext) ac
                .get(ServletActionContext.SERVLET_CONTEXT);
        String rootURL = sc.getRealPath("/");
        return rootURL;
    }

    public String getForwardView() {
        return forwardView;
    }

    public void setForwardView(String forwardView) {
        this.forwardView = forwardView;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setRow(Integer row) {
        this.row = row;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public int getPage() {
        if (page == null || page == 0) {
            page = SystemContext.DEFUALT_PAGE_NUM;
        }
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRow() {
        if (row == null || row == 0) {
            row = SystemContext.DEFUALT_PAGE_SIZE;
        }
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    private String[] delids;


    public String[] getDelids() {
        return delids;
    }

    public void setDelids(String[] delids) {
        this.delids = delids;
    }
}
