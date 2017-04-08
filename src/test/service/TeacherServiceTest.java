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

    @Test
    public void testGetJobLeveData() {
        Map<String, Integer> map = teacherService.getJobLeveData();
        System.out.println(map);
    }

    @Test
    public void testGetAllHrProvinceData() {
        Map<String, Map<String, Integer>> map = teacherService.getAllHrProvinceData();
        Map<String, Integer> doctor = map.get("BS");
        Map<String, Integer> master = map.get("SS");
        Map<String, Integer> bachelor = map.get("XS");
        System.out.println(doctor);
        System.out.println(master);
        System.out.println(bachelor);
    }

    @Test
    public void getAllDoctorName() {
        Map<String, String> map = teacherService.getAllDoctorName();
        System.out.println(map);
    }
}
