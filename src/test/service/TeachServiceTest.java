package test.service;

import com.data_analyze.teach.service.TeachService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

import java.util.*;

/**
 * Created by jiacheng on 17-4-6.
 */
public class TeachServiceTest extends BaseTest{
    @Autowired
    private TeachService teachService;

    @Test
    public void getAveTeachDataTest() {
        Map<String, Float> map = teachService.getAveTeachData("2016");
        System.out.println(map);
    }

    @Test
    public void getSumTeachDataTest() {
        Map<String, Float> map = teachService.getSumTeachData("2016");
        System.out.println(map);
    }

    @Test
    public void getFirstTenTeachData() {
        Map<String, Float> map = teachService.getFirstTenTeachData("2016","计算机科学与技术系");
        System.out.println(map);
    }

    @Test
    public void getFirstToTenFromAllTeachData() {
        Map<String, Float> map = teachService.getFirstToTenFromAllTeachData("2016");
        ArrayList<Map.Entry<String, Float>> list = new ArrayList<>(map.entrySet());
        Collections.sort(list, new Comparator<Map.Entry<String, Float>>() {
            @Override
            public int compare(Map.Entry<String, Float> t0, Map.Entry<String, Float> t1) {
                return (int) (t0.getValue()-t1.getValue());
            }
        });
        System.out.println(list);
    }

    @Test
    public void getAveRealTeachData() {
        Map<String, Float> map15 = teachService.getAveRealTeachData("2015");
        Map<String, Float> map12 = teachService.getAveRealTeachData("2012");
        System.out.println(map15);
        System.out.println(map12);
    }

    @Test
    public void getRealSumTeachData() {
        Map<String, Float> map = teachService.getRealSumTeachData("2010");
        System.out.println(map);
    }

    @Test
    public void getNewFirstToTenTeachData() {
        Map<String, Float> map = teachService.getNewFirstToTenTeachData("2010", "计算机科学与技术系");
        System.out.println(map);
    }
}
