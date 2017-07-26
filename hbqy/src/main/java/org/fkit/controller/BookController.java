package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.fkit.domain.Book;
import org.fkit.domain.Cart;
import org.fkit.domain.User;
import org.fkit.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BookController {
	/**
	 *自动注入BookService
	 * */
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;

	/**
	 * 处理href请求
	 * */
	// 获得所有团体服饰集合
	@RequestMapping(value="/ttdz")
	 public String tuantidingzhi(Model model){
		// 获得所有产品集合
		String booktype="ttdz";
		List<Book> ttdz_list = bookService.ttdzgetAll(booktype);
		// 将产品集合添加到model当中
		model.addAttribute("ttdz_list", ttdz_list);
		// 跳转到ttdz页面
		return "ttdz";
	}
	
	// 获得所有手工定制集合
		@RequestMapping(value="/sgdz")
		public String shougongdingzhi(Model model){
			String booktype="sgdz";
			List<Book> sgdz_list=bookService.sgdzgetAll(booktype); 
			// 将手工定制集合添加到model当中
			model.addAttribute("sgdz_list", sgdz_list);
			// 跳转到sgdz页面
			return "sgdz";
		}
		

		/**
		 * 处理href请求
		 * */
		// 获得所有校园纪念集合
		@RequestMapping(value="/xyjn")
		 public String xiaoyuanjinian(Model model){
			// 获得所有产品集合
			String booktype="xyjn";
			List<Book> xyjn_list = bookService.xyjngetAll(booktype);
			// 将产品集合添加到model当中
			model.addAttribute("xyjn_list", xyjn_list);
			// 跳转到xyjn页面
			return "xyjn";
		}
		
		/**
		 * 处理href请求
		 * */
		
		//遍历book
		 @RequestMapping(value = "/qingyuchanping")
			public String jieguobooks(Model model) {
				
				// 获得所有产品集合
				List<Book> book_list = bookService.getAll();
				// 将所有产品集合添加到model当中
				
				model.addAttribute("book_list", book_list);
				// 跳转到good页面
				return "good";
			
			}
		 
		
		 
		//下架
			@RequestMapping(value="/removegood")
			public String removebook(Model model,HttpServletRequest request){
				String id = request.getParameter("book_id");
				int id_ = Integer.parseInt(id);				
				bookService.removeBook(id_);				
				List<Book> book_list = bookService.getAll();
				// 将产品集合添加到model当中
				model.addAttribute("book_list", book_list);
				// 跳转到good页面
				return "good";
	}

			@RequestMapping(value = "/goodadd",method = RequestMethod.POST)

			public ModelAndView bookadd(String bookimage,String bookimage1,String bookimage2,String bookimage3,String bookimage4,String bookname,String booknomber,String booktype,String bookintro,String bookprice,int bookcount,ModelAndView mv, HttpSession session,Model model) {
				// 根据输入的登录名和密码向数据库中添加新的用户信息,完成加入
				Book book = bookService.bookadd(bookimage,bookimage1,bookimage2,bookimage3,bookimage4,bookname,booknomber,booktype,bookintro,bookprice,bookcount);
				// 注册成功，将book对象设置到HttpSession作用范围域
				session.setAttribute("book", book);
				
				List<Book> book_list = bookService.getAll();
				// 将产品集合添加到model当中
				
				model.addAttribute("book_list", book_list);
				// 转发到good请求
				mv.setViewName("good");
				return mv;
			}
			//多图展示
			@RequestMapping(value="/xiangqing")
			public String xiang(HttpServletRequest request,Model model){
				String book_id = request.getParameter("book_id");
				int id = Integer.parseInt(book_id);
				Book book=bookService.find(id);
				model.addAttribute("book", book);
				model.addAttribute("img1", book.getBookimage1());
				model.addAttribute("img2", book.getBookimage2());
				model.addAttribute("img3", book.getBookimage3());
				model.addAttribute("img4", book.getBookimage4());
				model.addAttribute("intro", book.getBookintro());
				model.addAttribute("price", book.getBookprice());
				model.addAttribute("bookname", book.getBookname());
				return "detail";
				
			}
		

}