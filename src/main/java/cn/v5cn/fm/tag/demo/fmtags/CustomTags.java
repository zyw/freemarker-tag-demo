package cn.v5cn.fm.tag.demo.fmtags;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapperBuilder;
import freemarker.template.SimpleHash;
import org.springframework.stereotype.Component;

/**
 * Created by zyw on 15/7/28.
 */
@Component
public class CustomTags extends SimpleHash {

    public CustomTags(){
        super(new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_22).build());
        put("test",new ContentListTag());
    }
}
