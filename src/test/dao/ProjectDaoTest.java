package test.dao;

import com.data_analyze.project.dao.ProjectMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

/**
 * Created by jiacheng on 17-4-6.
 */
public class ProjectDaoTest extends BaseTest {
    @Autowired
    ProjectMapper projectMapper;

    @Test
    public void getAllBudget() {
        float a = projectMapper.getAllBudget("2016");
        System.out.println(a);
    }

    @Test
    public void getBudgetInOffice() {
        float a = projectMapper.getBudgetInOffice("2016", "计算机科学与技术系");
        System.out.println(a);
    }
}
