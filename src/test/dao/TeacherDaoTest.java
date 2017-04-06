package test.dao;

import com.data_analyze.teacher.dao.TeacherMapper;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jiacheng on 17-3-31.
 */
public class TeacherDaoTest extends BaseTest {
    @Autowired
    TeacherMapper teacherMapper;

    @Test
    public void testGetSalaryIdFromName() {
        System.out.println(teacherMapper.getSalaryIdFromName("谢国兰"));
        System.out.println(teacherMapper.getSalaryIdFromName("asdf"));
    }

    @Test
    public void testQueryByOneColumn() {
        List<Teacher> teacherList = teacherMapper.queryByOneColumn("degree","博士");
        System.out.println(teacherList.size());
    }

    @Test
    public void testLikeQueryByOneColumn() {
        List<Teacher> teacherList = teacherMapper.likeQueryByOneColumn("graduate_province","江西");
        System.out.println(teacherList.size());
    }

    @Test
    public void testQueryByColumns() {
        Map<String, String> maps = new HashMap<>();
        maps.put("office","计算机科学与技术系");
        maps.put("job","教师岗位");
        List<Teacher> teacherList = teacherMapper.queryByColumns(maps);
        System.out.println(teacherList);
    }



}
