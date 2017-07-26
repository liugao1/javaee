package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.domain.Book;
import org.fkit.domain.Cart;
import org.fkit.domain.Order;
import org.fkit.service.BookService;
import org.fkit.service.CartService;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class OrderController {
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;
	//我的订单
	@RequestMapping(value="/order")
	public String order(Model model){
	        // 获得所有产品集合
			List<Order> order_list = orderService.getAll();
			// 将产品集合添加到model当中		
			model.addAttribute("order_list", order_list);
			// 跳转到order页面
			return "order";
			}
	
	//删除订单的东西
		@RequestMapping(value="/removeorder")
		public String removeorder(Model model,HttpServletRequest request){
			String book_id = request.getParameter("book_id");
			int book_id_ = Integer.parseInt(book_id);
			orderService.removeOrder(book_id_);
			List<Order> order_list = orderService.getAll();
			// 将产品集合添加到model当中
			model.addAttribute("order_list", order_list);
			// 跳转到order页面
			return "order";
			}
		//添加订单
		
		@RequestMapping(value = "/savecartorder")
		public String savecartorder(HttpServletRequest request,Model model){
			String book_id = request.getParameter("book_id");
			int book_id_ = Integer.parseInt(book_id);
			Order order=orderService.findOrder(book_id_);
			Cart cart=cartService.findCart(book_id_);
			int cartcount=cart.getCount();
			if (order == null) {
				orderService.saveOrder(book_id_,cartcount);				
			}else {			
				orderService.addOrder(book_id_,cartcount);				
			}			
			Order order1=orderService.findOrder(book_id_);
			int counter=order1.getCount();
			System.out.println("这是订单的数量:"+counter);
			Book book=bookService.find(book_id_);
			int count=book.getBookcount();	
			System.out.println("这是总产品的数量:"+count);
			int nowcount=count-counter;
			System.out.println("现在产品数量是："+nowcount);
			bookService.updatecount(nowcount,counter, book_id_);	
			cartService.removeCart(book_id_);
			
			List<Order> order_list = orderService.getAll();
			// 将产品集合添加到model当中
			model.addAttribute("order_list", order_list);
			return "order";
		}
		//添加订单
		@RequestMapping(value = "/saveorder")
		public String saveorder(HttpServletRequest request,Model model){
			String book_id = request.getParameter("book_id");
			int book_id_ = Integer.parseInt(book_id);
			Order order=orderService.findOrder(book_id_);
			int cartcount=1;
			if (order == null) {
				orderService.saveOrder(book_id_,cartcount);				
			}else {			
				orderService.addOrder(book_id_,cartcount);				
			}			
			List<Order> order_list = orderService.getAll();
			// 将产品集合添加到model当中
			model.addAttribute("order_list", order_list);
			return "order";
		}
}
