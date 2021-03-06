package test.dao;

import com.data_analyze.teach.dao.TeachMapper;
import com.data_analyze.teach.entity.Teach;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

import java.util.Iterator;
import java.util.List;

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
        float all = teachMapper.getAllWork("2012");
        System.out.println(all);
    }
    @Test
    public void testGetOfficeWork() {
        float csWork = teachMapper.getOfficeWork("2012","计算机科学与技术系");
        System.out.println(csWork);
    }

    @Test
    public void queryTeachByPageInOffice() {
        List<Teach> list = teachMapper.queryTeachByPageInOffice("2012", "计算机科学与技术系", "0", "5");
        for(Iterator it = list.iterator(); it.hasNext(); ) {
            System.out.println(it.next());
        }
    }

    @Test
    public void queryTeachByPage() {
        List<Teach> list = teachMapper.queryTeachByPage("2012",  "0", "5");
        for(Iterator it = list.iterator(); it.hasNext(); ) {
            System.out.println(it.next());
        }
    }

    @Test
    public void getAllRealWork() {
        Float all16 = teachMapper.getAllRealWork("2016");
        Float all12 = teachMapper.getAllRealWork("2012");
        System.out.println(all16);
        System.out.println(all12);
    }

    @Test
    public void getOfficeRealWork() {
        float csWork = teachMapper.getOfficeRealWork("2010","计算机科学与技术系");
        System.out.println(csWork);
    }

    @Test
    public void queryRealTeachByPageInOffice() {
        List<Teach> list = teachMapper.queryRealTeachByPageInOffice("2010", "计算机科学与技术系","0","10");
        for(int i=0; i<list.size(); ++i) {
            System.out.println(list.get(i));
        }
    }
}
