package juguo;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Cart;
import org.fkit.service.CartService;
import org.fkit.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:/WEB-INF/applicationContext.xml","classpath*:/WEB-INF/spring-config.xml"})
public class CartTest {

	 @Autowired
	    private CartService cartService;
	@Before
	public void getalltest() {
		List<Cart> cart_list=cartService.getAll();
		System.out.println("遍历购物车的所有商品"+cart_list);
	}
   @Test
   public void cleartest() {
	   cartService.clearCart();
	   System.out.println("测试清空购物车的功能，测试成功");
   }
}
