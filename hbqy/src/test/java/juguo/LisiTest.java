package juguo;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Lisi;
import org.fkit.service.LisiService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:/WEB-INF/applicationContext.xml","classpath*:/WEB-INF/spring-config.xml"})
public class LisiTest {
	 @Autowired
	 private LisiService lisiService;
	@Before
	public void getalltest() {
		List<Lisi> lisi_list=lisiService.getAll();
		System.out.println("取出所有用户已经买过的书籍"+lisi_list);
	}
	//测试加入历史订单的方法
	@Test
	public void addlisitest() {
		Lisi lisi=lisiService.saveLisi(10);
		System.out.print("测试加入历史订单的方法，测试成功"+lisi);
	}
	//测试评价的方法
	@Test
	public void pingjiatest() {
		lisiService.pingjia("5满意", "4可以", "5满意",5);
		System.out.println("测试评价的方法");
		
	}
	

}
