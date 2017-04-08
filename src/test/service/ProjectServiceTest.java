package test.service;

import com.data_analyze.project.service.ProjectService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

import java.util.Iterator;
import java.util.Map;

/**
 * Created by jiacheng on 17-4-6.
 */
public class ProjectServiceTest extends BaseTest {
    @Autowired
    ProjectService projectService;

    @Test
    public void getAveProjectMoneyData() {
        Map<String, Float> map = projectService.getAveProjectMoneyData("2016");
        System.out.println(map);
    }

    @Test
    public void getSumProjectMoneyData() {
        Map<String, Float> map = projectService.getSumProjectMoneyData("2016");
        System.out.println(map);
    }

    @Test
    public void getFirstToFiveFromAllMoneyData() {
        Map<String, Float> map = projectService.getFirstToFiveFromAllMoneyData("2015");
        System.out.println(map);
    }
}
