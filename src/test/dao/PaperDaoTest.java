package test.dao;

import com.data_analyze.paper.dao.PaperMapper;
import com.data_analyze.paper.entity.Paper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

import java.util.Iterator;
import java.util.List;

/**
 * Created by jiacheng on 17-4-6.
 */
public class PaperDaoTest extends BaseTest {
    @Autowired
    private PaperMapper paperMapper;

    @Test
    public void queryAll() {
        List<Paper> list = paperMapper.queryAll("2016", "SCI");
        for(Iterator<Paper> it = list.iterator(); it.hasNext(); ) {
            Paper paper = it.next();
            System.out.println(paper);
        }
    }

    @Test
    public void queryAllInOffice() {
        List<Paper> list = paperMapper.queryAllInOffice("2016", "计算机科学与技术系", "SCI");
        for(Iterator<Paper> it = list.iterator(); it.hasNext(); ) {
            Paper paper = it.next();
            System.out.println(paper);
        }
    }
}
