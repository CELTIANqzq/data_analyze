package test.dao;

import com.data_analyze.teacher.dao.TeacherMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.base.BaseTest;

import java.util.List;
import java.util.Map;

/**
 * Created by jiacheng on 17-3-31.
 */
public class TeachDaoTest extends BaseTest {
    @Autowired
    TeacherMapper teacherMapper;

    @Test
    public void testExecute() {
        Integer a = teacherMapper.execute("select count(*) from teachers");

        System.out.println(a);
    }
}
