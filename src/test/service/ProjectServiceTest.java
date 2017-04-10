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
    public void getFirstTenFromAllMoneyData() {
        Map<String, Float> map = projectService.getFirstTenFromAllMoneyData("2015");
        System.out.println(map);
    }

    @Test
    public void getEveryYearMoneyData() {
        Map<String, Float> map = projectService.getEveryYearMoneyData("2010");
        System.out.println(map);
    }

    @Test
    public void getAllYearSumMoneyData() {
        Map<String, Float> map = projectService.getAllYearSumMoneyData();
        System.out.println(map);
    }
}
