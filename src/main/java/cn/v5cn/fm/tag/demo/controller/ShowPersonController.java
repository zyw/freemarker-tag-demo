package cn.v5cn.fm.tag.demo.controller;

import cn.v5cn.fm.tag.demo.service.UserService;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import freemarker.core.ParseException;
import freemarker.template.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.Map;

/**
 * Created by ZXF-PC1 on 2015/7/23.
 */
@Controller
public class ShowPersonController {

    @Autowired
    private UserService userService;

    @Autowired
    private Configuration configuration;

    @RequestMapping("/showPerson")
    public String showPerson(ModelMap modelMap) {
        List<Map<String, String>> userList = userService.userList();
        System.out.println(userList.size()+"=========================");
        modelMap.put("name","张三ddd");

        modelMap.put("email","levinzhang1981@gmail.com");
        return "index";
    }

    @RequestMapping(value = "/static")
    public void staticPage(HttpServletResponse response) throws IOException, TemplateException {
        Template template = configuration.getTemplate("index.ftl");

        Map<String,String> ftlRoot = Maps.newHashMap();
        ftlRoot.put("name","张三ddd");
        ftlRoot.put("email", "levinzhang1981@gmail.com");

        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        template.process(ftlRoot, out);

        out.flush();
    }

    @ResponseBody
    @RequestMapping(value = "/static2")
    public ImmutableMap<String,String> staticPage2() throws IOException, TemplateException {
        Template template = configuration.getTemplate("index.ftl");

        Map<String,String> ftlRoot = Maps.newHashMap();
        ftlRoot.put("name", "张三ddd");
        ftlRoot.put("email", "levinzhang1981@gmail.com");

        String path = this.getClass().getResource("/static").getPath();
        //FileWriter fileWriter = new FileWriter(path+"/index.html");
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(path+"/index.html"),"UTF-8"));
        template.process(ftlRoot,bw);

        bw.flush();

        return ImmutableMap.of("status","1");
    }
}
