package test.dao;

import com.data_analyze.teacher.service.TeacherService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.base.BaseTest;

/**
 * Created by jiacheng on 17-3-31.
 */
public class TeacherDaoTest extends BaseTest {
    @Autowired
    TeacherService teacherService;
    @Test
    public void hello() {
        System.out.println("hello");
    }

    @Test
    public void hello2() {
        teacherService.hello();
    }
}
