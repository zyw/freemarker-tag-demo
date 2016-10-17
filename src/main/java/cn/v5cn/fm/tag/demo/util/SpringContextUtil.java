package cn.v5cn.fm.tag.demo.util;

import org.springframework.context.ApplicationContext;

/**
 * Created by zyw on 2016/10/17.
 */
public class SpringContextUtil {

    private static ApplicationContext applicationContext;

    public static void setApplicationContext(ApplicationContext context) {
        applicationContext = context;
    }

    public static Object getBean(String beanId) {
        return applicationContext.getBean(beanId);
    }
}
