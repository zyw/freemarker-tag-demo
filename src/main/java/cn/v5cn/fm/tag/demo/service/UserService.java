package cn.v5cn.fm.tag.demo.service;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by ZXF-PC1 on 2015/7/23.
 */
@Service("userService")
public class UserService {

    public List<Map<String,String>> userList(){
        List<Map<String,String>> users = Lists.newArrayList();

        Map<String,String> user = Maps.newHashMap();
        user.put("name","张三000000000000");
        user.put("eamil","zhangsan@163.com");
        user.put("age","23");

        users.add(user);

        user = Maps.newHashMap();
        user.put("name","张三2");
        user.put("eamil","zhangsan2@163.com");
        user.put("age","13");

        users.add(user);

        return users;
    }
}
