package cn.v5cn.fm.tag.demo.fmtags;

import cn.v5cn.fm.tag.demo.service.UserService;
import cn.v5cn.fm.tag.demo.util.SpringContextUtil;
import freemarker.core.Environment;
import freemarker.template.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by ZXF-PC1 on 2015/7/23.
 */
public class ContentListTag implements TemplateDirectiveModel {

    @Override
    public void execute(Environment env, Map map, TemplateModel[] templateModels, TemplateDirectiveBody body) throws TemplateException, IOException {
        List<Map<String, String>> userList = ((UserService)SpringContextUtil.getBean("userService")).userList();
        env.setVariable("contents", new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_22).build().wrap(userList));
        if(body != null){
            body.render(env.getOut());
        }
    }
}
