package test.service;

import com.data_analyze.teach.service.TeachService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

import java.util.Map;

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
}
