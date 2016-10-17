package cn.v5cn.fm.tag.demo;

import cn.v5cn.fm.tag.demo.util.SpringContextUtil;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

/**
 * Created by ZXF-PC1 on 2015/7/23.
 */

@SpringBootApplication
public class ApplicationMan {
    public static void main(String[] args) {
        ApplicationContext applicationContext = SpringApplication.run(ApplicationMan.class,args);
        SpringContextUtil.setApplicationContext(applicationContext);
    }
}
