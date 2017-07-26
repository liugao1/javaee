package juguo;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:/WEB-INF/applicationContext.xml","classpath*:/WEB-INF/spring-config.xml"})

public class UserTest {

	 @Autowired
	    private UserService userService;

	//测试用户注册的功能
	@Before
	public void regtest() {
		userService.register("王二辉", "erhui", "183760", "13903962232", "河南", "1611715144@qq.com");
		System.out.println("测试用户注册的功能");
	}
	
	//测试通过账户和邮箱找回密码的功能
		@Test
		public void findtset() {
			User user=userService.find("erhui", "1611715144@qq.com");
			System.out.println("测试通过账户和邮箱找回密码的功能");
			System.out.println("您测试的账户密码是"+user.getPassword());
		}
	//测试读取用户的功能
		
	@Test
	public void findAlltest() {
		List<User> user_list=userService.getAll();
		System.out.println("测试读取用户的功能");
		System.out.print(user_list);
	}
	

}
