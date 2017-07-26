package juguo;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Book;
import org.fkit.service.BookService;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:/WEB-INF/applicationContext.xml","classpath*:/WEB-INF/spring-config.xml"})

public class BookTest {
	 @Autowired
	    private BookService bookService;
    //测试添加书籍方法
	@Before
	public void bookaddtest() {
		bookService.bookadd("sh1.jpg","sh2.jpg","sh3.jpg","sh4.jpg","sh5.jpg", "幸福生活（test）", "sh_test", "shbook", "测试添加书籍方法", "0", 0);
		System.out.println("添加书籍方法测试成功");
	}
	@Test
	public void findbook() {
       Book book=bookService.find(1);
       System.out.println("测试找书方法，测试找id=1的书籍信息"+book);
	}
	@Test
	public void listbook() {
		List<Book> book_list=bookService.getAll();
		System.out.println("所有书籍信息"+book_list);
	}

}
