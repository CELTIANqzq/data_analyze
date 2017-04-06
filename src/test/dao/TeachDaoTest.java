package test.dao;

import com.data_analyze.teach.dao.TeachMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

/**
 * Created by jiacheng on 17-4-6.
 */
public class TeachDaoTest extends BaseTest{
    @Autowired
    private TeachMapper teachMapper;

    @Test
    public void testExecute() {
        int n = teachMapper.execute("select count(*) from teach2016;");
        System.out.println(n);
    }

    @Test
    public void testGetAllWork() {
        float all = teachMapper.getAllWork("2016");
        System.out.println(all);
    }
    @Test
    public void testGetOfficeWork() {
        float csWork = teachMapper.getOfficeWork("2016","计算机科学与技术系");
        System.out.println(csWork);
    }
}
