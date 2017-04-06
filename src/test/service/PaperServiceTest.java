package test.service;

import com.data_analyze.paper.service.PaperService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.BaseTest;

import java.util.Map;

/**
 * Created by jiacheng on 17-4-6.
 */
public class PaperServiceTest extends BaseTest {
    @Autowired
    private PaperService paperService;

    @Test
    public void getPaperNumber() {
        Map<String, Integer> map = paperService.getPaperNumber("2016");
        System.out.println(map);
    }
}
