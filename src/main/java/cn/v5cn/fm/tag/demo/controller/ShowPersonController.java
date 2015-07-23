package cn.v5cn.fm.tag.demo.controller;

import cn.v5cn.fm.tag.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

/**
 * Created by ZXF-PC1 on 2015/7/23.
 */
@Controller
public class ShowPersonController {

    @Autowired
    private UserService userService;

    @RequestMapping("/showPerson")
    public String showPerson(ModelMap modelMap) {
        List<Map<String, String>> userList = userService.userList();
        System.out.println(userList.size()+"=========================");
        modelMap.put("name","张三ddd");

        modelMap.put("email","levinzhang1981@gmail.com");
        return "index";
    }
}
