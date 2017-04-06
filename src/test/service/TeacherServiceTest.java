package test.service;


import com.data_analyze.teacher.service.TeacherService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

import java.util.Map;

/**
 * Created by jiacheng on 17-4-6.
 */
public class TeacherServiceTest extends BaseTest {
    @Autowired
    private TeacherService teacherService;
    @Test
    public void testQueryPostData() {
        Map<String,Integer> map = teacherService.queryPostData("电子信息工程系");
        System.out.println(map);
    }

    @Test
    public void testGetAllPostData() {
        Map<String, Map<String, Integer>> postMap = teacherService.getAllPostData();
        System.out.println(postMap.get("QTZYJSGW"));
        System.out.println(postMap.get("JSGW"));
    }

}
