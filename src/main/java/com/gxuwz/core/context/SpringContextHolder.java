package com.gxuwz.core.context;

import org.springframework.context.ApplicationContext;
import org.springframework.util.Assert;
/**
 * Spring container
 * @author <a href=mailto:amu_1115@126.com> amu </a>
 * @version $ SpringContextHolder.java 2015-6-6 06:22:11
 */
public class SpringContextHolder {


    private static ApplicationContext applicationContext;

    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    public static void setApplicationContext(ApplicationContext applicationContext) {
        SpringContextHolder.applicationContext = applicationContext;
    }
    
   /**
    * 
    * @param <T>
    * @param requiredType
    * @return
    */
    public static <T> T getBean(Class<T> requiredType) {
        Assert.notNull(applicationContext);
        return applicationContext.getBean(requiredType);
    }


}
