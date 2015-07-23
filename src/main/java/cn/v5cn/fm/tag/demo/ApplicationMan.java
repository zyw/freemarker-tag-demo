package cn.v5cn.fm.tag.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * Created by ZXF-PC1 on 2015/7/23.
 */

@EnableAutoConfiguration
@ComponentScan
@Configuration
public class ApplicationMan {
    public static void main(String[] args) {
        SpringApplication.run(ApplicationMan.class,args);
    }
}
